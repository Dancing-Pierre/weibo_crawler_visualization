# -*- coding: utf-8 -*-
import locale

import jieba
import pymysql
from flask import Flask
from flask import render_template
from flask import request, redirect, url_for
from flask_sqlalchemy import SQLAlchemy
from sqlalchemy import create_engine

locale.setlocale(locale.LC_ALL, 'en_US.UTF-8')
app = Flask(__name__)

conn = pymysql.connect(
    host='localhost',
    user='root',
    passwd='123456',
    db='weibo',
    charset='utf8'
)
app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql+pymysql://root:123456@localhost:3306/weibo'
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = True
app.secret_key = "lycadgwer"
db = SQLAlchemy(app)
engine = create_engine(app.config['SQLALCHEMY_DATABASE_URI'])


class HotSearch(db.Model):
    __tablename__ = 'hot_search'
    id = db.Column(db.Integer, autoincrement=True, primary_key=True)
    date = db.Column(db.Date, nullable=False)
    time = db.Column(db.Time, nullable=False)
    hot_index = db.Column(db.Integer, nullable=False)
    name = db.Column(db.String(255, collation='utf8mb4_unicode_ci'), nullable=False)
    raw_hot = db.Column(db.Integer, nullable=False)
    label_name = db.Column(db.String(255, collation='utf8mb4_unicode_ci'), nullable=False)
    url = db.Column(db.String(255, collation='utf8mb4_unicode_ci'), nullable=False)

    def __repr__(self):
        return f'<HotSearch {self.name}>'


# 首页重定向列表页
@app.route("/")
def index():
    return table(1)


# 热搜标签分布图
@app.route("/label")
def label():
    sql = """
    SELECT
      CASE WHEN label_name = '' THEN '无' ELSE label_name END AS label_name,
      COUNT(*) AS count
    FROM hot_search
    GROUP BY label_name;
    """
    cursor = conn.cursor()
    cursor.execute(sql)
    data_list = cursor.fetchall()
    label_list = []
    num_list = []
    for item in data_list:
        # 标签
        label_list.append(item[0])
        # 数量
        num_list.append(item[1])
    return render_template("label_bar.html", label_list=label_list, num_list=num_list)


# 最新一天标签占比图
@app.route("/label_pie")
def label_pie():
    sql = """
       SELECT CASE WHEN label_name = '' THEN '无' ELSE label_name END AS label_name,
               COUNT(*) AS count
        FROM hot_search
        where date = (SELECT max(date) from hot_search)
        GROUP BY label_name;
        """
    cursor = conn.cursor()
    cursor.execute(sql)
    list = cursor.fetchall()
    return render_template("label_pie.html", list=list)


# 热搜词频
@app.route('/word_num')
def word_num():
    stopwords = set([line.strip() for line in open(r"./matplotlib_photo/filter.txt", encoding='utf-8').readlines()])
    sql = "select `name` from hot_search"
    cursor = conn.cursor()
    # 执行sql
    cursor.execute(sql)
    # 采集数据量
    result = cursor.fetchall()
    text = ""
    for item in result:
        text = text + str(item[0])
    cursor.close()
    conn.cursor()
    Is = jieba.lcut(text.replace(' ', ''))
    # 这里建一个列表用于记录列表中的所有唯一值出现的次数
    dict = {}
    for key in Is:
        if key in stopwords:
            pass
        else:
            dict[key] = dict.get(key, 0) + 1
    word_list = []
    num_list = []
    for key in dict:
        word_list.append(key)
        num_list.append(dict[key])
    return render_template('word_num.html', word_list=word_list, num_list=num_list)


# 词云
@app.route("/word_cloud")
def word_cloud():
    return render_template("word_cloud.html")


# 热搜列表
@app.route("/table/<int:page_num>")
def table(page_num):
    if not page_num:
        page_num = 1
    # 提交到前台的记录条数和当前页
    room_list = HotSearch.query.paginate(per_page=10, page=page_num, error_out=True)
    return render_template("table.html", room_list=room_list)


# 热搜查询
@app.route("/weibo_select", methods=['POST'])
def user_select():
    search_name = request.form.get("search_name")
    if search_name == '':
        return redirect(url_for('table', page_num=1))
    position_list = HotSearch.query.filter(HotSearch.name.like("%{0}%".format(search_name)))
    return render_template("table.html", room_list=position_list, search_name=search_name)


# 最新热搜热度走势
@app.route("/new_line")
def new_line():
    sql = """
    SELECT name, MAX(raw_hot) AS max_raw_hot
    FROM hot_search
    GROUP BY name
    ORDER BY max_raw_hot DESC
    LIMIT 5;
    """
    cursor = conn.cursor()
    cursor.execute(sql)
    data_list = cursor.fetchall()
    label_list = []
    num_list = []
    for item in data_list:
        num_list.append(item[0])
        label_list.append(item[1])
    return render_template("new_line.html", num_list=num_list, label_list=label_list)


if __name__ == '__main__':
    app.run(debug=True)
    # db.create_all()

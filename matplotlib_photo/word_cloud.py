import jieba

from wordcloud import WordCloud
import pymysql

stopwords = set([line.strip() for line in open(r"filter.txt", encoding='utf-8').readlines()])
# 准备数据
conn = pymysql.connect(
    host='127.0.0.1',
    user='root',
    password='123456',
    db='weibo',
    charset='utf8'
)

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

Is = jieba.lcut(text)

# 这里建一个列表用于记录列表中的所有唯一值出现的次数
dict = {}
for key in Is:
    if key in stopwords:
        pass
    else:
        dict[key] = dict.get(key, 0) + 1

# 创建词云对象
w = WordCloud(font_path=r"C:\Windows\Fonts\simkai.ttf",
              mask=None, width=1200,
              height=750,
              background_color="white",
              stopwords=stopwords)
# 大到小排序
sorted_dict = {k: v for k, v in sorted(dict.items(), key=lambda item: item[1], reverse=True)}
w.fit_words(sorted_dict)
w.to_file("img/word_cloud.jpg")
w.to_file("../static/assets/img/word_cloud.jpg")


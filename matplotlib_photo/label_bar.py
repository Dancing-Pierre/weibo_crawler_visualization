import matplotlib.pyplot as plt
import pymysql

plt.rcParams['font.sans-serif'] = ['SimHei']
plt.rcParams['axes.unicode_minus'] = False
plt.rcParams['figure.dpi'] = 100
plt.rcParams['figure.figsize'] = (5, 3)
conn = pymysql.connect(
    host='localhost',
    user='root',
    passwd='123456',
    db='weibo',
    charset='utf8'
)
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
plt.title("热搜数量与标签关系柱状图")
plt.bar(label_list, num_list)
plt.savefig('img/label_bar.jpg')

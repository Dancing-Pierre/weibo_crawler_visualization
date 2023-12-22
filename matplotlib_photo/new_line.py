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
plt.title("热搜标签分布图")
# 将 x 轴标签旋转 45 度
plt.xticks(rotation=5)
plt.plot(num_list, label_list)
plt.savefig('img/new_line.jpg')

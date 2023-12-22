import jieba
import pymysql
from matplotlib import pyplot as plt

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
stopwords = set([line.strip() for line in open(r"filter.txt", encoding='utf-8').readlines()])
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
plt.title("热搜词频折线图")
# 将 x 轴标签旋转 5 度
plt.xticks(rotation=5)
# 选择每第 N 个标签显示在 x 轴上，根据需要更改 N
N = 50
plt.xticks(range(0, len(word_list), N), word_list[::N])
plt.plot(word_list, num_list)
plt.savefig('img/word_count.jpg')

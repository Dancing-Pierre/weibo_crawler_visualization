# weibo_crawler_visualization
微博热搜采集，保存到MySQL，flask+echarts前端展示

```
│  app.py【flask启动文件】
│          
├─matplotlib_photo【可视化图片保存本地的代码】
│  │  filter.txt【词云隔断词】
│  │  label_bar.py
│  │  label_pie.py
│  │  new_line.py
│  │  word_cloud.py
│  │  word_count.py
│  │  
│  └─img【可视化图片保存本地的位置】
│          label_bar.jpg
│          label_pie.jpg
│          new_line.jpg
│          word_cloud.jpg
│          word_count.jpg
│          
├─spider【热搜爬虫】
│  │  hot_search.py
│  │  
│  └─data【爬虫数据保存本地位置】
│          2023_12_22_10_48_42.txt
│          2023_12_22_12_53_07.txt
│          
├─static【flask前端样式】
│  ├─assets
│  │  ├─css
│  │  │  │  basic.css
│  │  │  │  bootstrap-fileupload.min.css
│  │  │  │  bootstrap-social.css
│  │  │  │  bootstrap.css
│  │  │  │  custom.css
│  │  │  │  error.css
│  │  │  │  font-awesome.css
│  │  │  │  invoice.css
│  │  │  │  prettyPhoto.css
│  │  │  │  pricing.css
│  │  │  │  
│  │  │  └─wizard
│  │  │          jquery.steps.css
│  │  │          normalize.css
│  │  │          wizardMain.css
│  │  │          
│  │  ├─fonts
│  │  │      fontawesome-webfont.eot
│  │  │      fontawesome-webfont.svg
│  │  │      fontawesome-webfont.ttf
│  │  │      fontawesome-webfont.woff
│  │  │      FontAwesome.otf
│  │  │      glyphicons-halflings-regular.eot
│  │  │      glyphicons-halflings-regular.svg
│  │  │      glyphicons-halflings-regular.ttf
│  │  │      glyphicons-halflings-regular.woff
│  │  │      
│  │  ├─img
│  │  │      word_cloud.jpg
│  │  │      
│  │  └─js
│  │      │  bootstrap-fileupload.js
│  │      │  bootstrap.js
│  │      │  custom.js
│  │      │  echarts.min.js
│  │      │  galleryCustom.js
│  │      │  jquery-1.10.2.js
│  │      │  jquery.metisMenu.js
│  │      │  jquery.mixitup.min.js
│  │      │  jquery.prettyPhoto.js
│  │      │  
│  │      └─wizard
│  │              jquery.cookie-1.3.1.js
│  │              jquery.steps.js
│  │              modernizr-2.6.2.min.js
│  │              
│  ├─css
│  │      common.css
│  │      reset.css
│  │      
│  └─js
│          common.js
│          jquery.min.js
│          
└─templates【flask模板文件】
       base.html
       label_bar.html
       label_pie.html
       new_line.html
       table.html
       word_cloud.html
       word_num.html
```

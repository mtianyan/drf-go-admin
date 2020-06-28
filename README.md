# 使用DjangoRestfulFramework 24小时内极速复刻go-admin 项目。

- 已完成90%功能，从昨晚11点 初始化项目 到 当前时间 6-28/15:53 个人觉得称得上极速复刻。
- 急速复刻代码粗糙，还有10% 写死未完成的api，还请理解。

![](http://cdn.pic.mtianyan.cn/blog_img/20200628155234.png)

- 在线体验地址: 

## 运行指南:

### docker运行

```
git clone https://github.com/mtianyan/drf-go-admin.git
cd drf-go-admin
docker-compose up

# 导入数据
docker exec -it drf-go-admin_mtianyan_mysql_1 bash
mysql -u root -p -D goadmindb < goadmindb.sql
# 输入密码: mtianyanroot 
```

前端项目与go-admin 完全保持一致，细节可参考http://doc.zhangwj.com/go-admin-site/guide/ksks.html#npm-install

```
git clone https://github.com/wenjianzhang/go-admin-ui.git
cd go-admin-ui
npm install
npm run 
```

### 本地环境运行

后端项目运行:

```
git clone https://github.com/mtianyan/drf-go-admin.git
cd drf-go-admin
pipenv shell
pip install -r requirements.txt

# Navicat创建数据库，导入goadmindb.sql
# 修改settings.py 中数据库密码

python manage.py runserver
```

很高兴我的项目代码或许对你有帮助，请我吃包辣条或喝瓶可乐吧!

微信打赏:

![mark](http://myphoto.mtianyan.cn/blog/180302/i52eHgilfD.png?imageslim)

支付宝打赏:

![mark](http://myphoto.mtianyan.cn/blog/180302/gDlBGemI60.jpg?imageslim)





## 本项目实现的最终作用是基于JSP在线幼儿园管理包含官网系统平台
## 分为3个角色
### 第1个角色为管理员角色，实现了如下功能：
 - 修改密码
 - 家长管理
 - 教学内容管理
 - 教师管理
 - 活动管理
 - 班级管理
 - 留言管理
 - 管理员登录
 - 管理员账号管理
 - 系统公告管理
 - 系统简介管理
 - 通知公告管理
### 第2个角色为教师角色，实现了如下功能：
 - 在线留言
 - 家长注册
 - 教师注册
 - 查看上课内容详情
 - 查看教学内容
 - 查看活动信息
 - 查看活动信息详情
 - 查看通知公告
 - 查看首页
### 第3个角色为用户角色，实现了如下功能：
 - 在线留言
 - 家长注册
 - 教师注册
 - 查看教学内容
 - 查看教学内容详情
 - 查看活动信息
 - 查看系统简介
 - 查看通知公告
 - 查看首页
 - 活动信息详情
## 数据库设计如下：
# 数据库设计文档

**数据库名：** kinder_sitesys

**文档版本：** 


| 表名                  | 说明       |
| :---: | :---: |
| [allusers](#allusers) |  |
| [banji](#banji) |  |
| [dx](#dx) |  |
| [huanbanjilu](#huanbanjilu) |  |
| [huodongxinxi](#huodongxinxi) |  |
| [jiaoshi](#jiaoshi) |  |
| [jiaoxuexinxi](#jiaoxuexinxi) |  |
| [kecheng](#kecheng) |  |
| [kechengbiao](#kechengbiao) |  |
| [liuyanban](#liuyanban) |  |
| [peixunjihua](#peixunjihua) |  |
| [pinglun](#pinglun) |  |
| [shoucangjilu](#shoucangjilu) |  |
| [tuihuanban](#tuihuanban) |  |
| [xinwentongzhi](#xinwentongzhi) |  |
| [xuefei](#xuefei) |  |
| [xuesheng](#xuesheng) |  |

**表名：** <a id="allusers">allusers</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | username |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 用户名  |
|  3   | pwd |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 密码  |
|  4   | cx |   varchar   | 255 |   0    |    Y     |  N   |   '超级管理员'    |   |
|  5   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |

**表名：** <a id="banji">banji</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | banjihao |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | banzhuren |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |

**表名：** <a id="dx">dx</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | leibie |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 类别  |
|  3   | content |   longtext   | 2147483647 |   0    |    Y     |  N   |   NULL    | 内容  |

**表名：** <a id="huanbanjilu">huanbanjilu</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | xuehao |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 学号  |
|  3   | xingming |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 姓名  |
|  4   | banjihao |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  5   | ruxueshijian |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  6   | huandaobanji |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  7   | beizhu |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 备注  |
|  8   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |

**表名：** <a id="huodongxinxi">huodongxinxi</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | huodongbianhao |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | huodongmingcheng |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | shijian |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 时间  |
|  5   | didian |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  6   | huodongzhaopian |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  7   | huodongjianjie |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  8   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |

**表名：** <a id="jiaoshi">jiaoshi</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | zhigongbianhao |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | mima |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 密码  |
|  4   | xingming |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 姓名  |
|  5   | shizi |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  6   | gerenjianli |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  7   | issh |   varchar   | 2 |   0    |    Y     |  N   |   '否'    |   |
|  8   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |

**表名：** <a id="jiaoxuexinxi">jiaoxuexinxi</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | kechengmingcheng |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | shangkeneirong |   longtext   | 2147483647 |   0    |    Y     |  N   |   NULL    |   |
|  4   | shangkejianshijian |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  5   | fabujiaoshi |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  6   | beizhu |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 备注  |
|  7   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |

**表名：** <a id="kecheng">kecheng</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | kechengbianhao |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | kechengmingcheng |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | renkejiaoshi |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  5   | jiage |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  6   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |

**表名：** <a id="kechengbiao">kechengbiao</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | kechengbianhao |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | kechengmingcheng |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | renkejiaoshi |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  5   | banjihao |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  6   | kechengbiao |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  7   | beizhu |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 备注  |
|  8   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |

**表名：** <a id="liuyanban">liuyanban</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | cheng |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | xingbie |   varchar   | 2 |   0    |    Y     |  N   |   NULL    |   |
|  4   | QQ |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | QQ号码  |
|  5   | youxiang |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 邮箱  |
|  6   | dianhua |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 电话  |
|  7   | neirong |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 内容  |
|  8   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |
|  9   | huifuneirong |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |

**表名：** <a id="peixunjihua">peixunjihua</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | kechengbianhao |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | kechengmingcheng |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | banjihao |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  5   | jihuawenjian |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  6   | beizhu |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 备注  |
|  7   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |

**表名：** <a id="pinglun">pinglun</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | xinwenID |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | pinglunneirong |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | pinglunren |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  5   | pingfen |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  6   | biao |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  7   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |

**表名：** <a id="shoucangjilu">shoucangjilu</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | username |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 用户名  |
|  3   | xwid |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | ziduan |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  5   | biao |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  6   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |

**表名：** <a id="tuihuanban">tuihuanban</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | xuehao |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 学号  |
|  3   | xingming |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 姓名  |
|  4   | banjihao |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  5   | ruxueshijian |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  6   | leixing |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  7   | yuanyin |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  8   | issh |   varchar   | 2 |   0    |    Y     |  N   |   '否'    |   |
|  9   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |

**表名：** <a id="xinwentongzhi">xinwentongzhi</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | biaoti |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 标题  |
|  3   | leibie |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 类别  |
|  4   | neirong |   longtext   | 2147483647 |   0    |    Y     |  N   |   NULL    | 内容  |
|  5   | tianjiaren |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 添加人  |
|  6   | shouyetupian |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 首页图片  |
|  7   | dianjilv |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  8   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |

**表名：** <a id="xuefei">xuefei</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | kechengbianhao |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | kechengmingcheng |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | jiage |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  5   | xuehao |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 学号  |
|  6   | xingming |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 姓名  |
|  7   | banjihao |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  8   | issh |   varchar   | 2 |   0    |    Y     |  N   |   '否'    |   |
|  9   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |

**表名：** <a id="xuesheng">xuesheng</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | xuehao |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 学号  |
|  3   | mima |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 密码  |
|  4   | xingming |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 姓名  |
|  5   | xingbie |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 性别  |
|  6   | banjihao |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  7   | lianxidianhua |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 联系电话  |
|  8   | jiguan |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  9   | ruxueshijian |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  10   | beizhu |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 备注  |
|  11   | issh |   varchar   | 2 |   0    |    Y     |  N   |   '否'    |   |
|  12   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |

**运行不出来可以微信 javape 我的公众号：源码码头**

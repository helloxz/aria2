# LACY
Linux一键安装Aria2 + Caddy + YAAW实现离线下载，非要取个名字的话就叫LACY吧。

### 功能
* 支持多种Linux发行版
* 一键安装Aria2 + Caddy + YAAW
* 文件管理
* 离线下载 + 在线播放

### 环境要求
* CentOS 6/7 X64
* Debian 8+ X64 or Ubuntu 16+ X64
* 不支持32位系统，不支持32位系统，不支持32位系统。

### 开始安装

直接复制下面的命令，一行一个，根据提示完成操作。

```
#Centos用户
yum -y install wget unzip
#如果是Debian or Ubuntu用户
apt-get install -y wget unzip
#下面的命令通用，直接复制
wget https://github.com/helloxz/aria2/archive/master.zip
unzip master.zip && cd aria2-master && chmod u+x *.sh && ./install_aria2.sh
```

详细使用说明： [https://www.xiaoz.me/archives/9694](https://www.xiaoz.me/archives/9694)

### 相关命令
```
#启动
/data/aria2/aria2.sh start
#停止
/data/aria2/aria2.sh stop
#重启
/data/aria2/aria2.sh restart
#卸载
cd aria2-master && ./uninstall.sh
#Caddy server配置文件
/data/aria2/caddy.conf
#Aria2配置文件
/data/aria2/aria2.conf
#离线下载目录
/data/aria2/download
#日志目录
/data/aria2/aria2.log
/data/aria2/caddy.log
```

### 常见问题
#### YAAW提示Error: Internal server error 错误？
* YAAW提示Error: Internal server error 错误？
* 原因二：输入`netstat -apn|grep 'aria2c'`查看进程，如果没有任何信息，可以确定Aria2服务未启动，输入命令`nohup aria2c --conf-path=/data/aria2/aria2.conf > /data/aria2/aria2.log 2>&1 &`重新启动服务，如果依然不行，请查看错误日志`/data/aria2/aria2.log`
* 原因三：防火墙未放行6800端口，请自行放行下端口或关闭服务器防火墙。

#### 重启了服务器就打不开了？
脚本并未设置开机启动，重启服务器后请输入`/data/aria2/aria2.sh start`来运行服务。

#### 我是Debian/Ubuntu用户，提示安装成功，但是打不开？
Debian/Ubuntu并未自动放行端口，请放行6080/6800两个端口，或者直接关闭防火墙，如果您的服务商支持安全组还需要额外检查。

### 问题反馈
可以我Blog留言，或者Github Issues，为了方便排查，请提供以下信息。
* 使用的操作系统
* 报错信息或截图
* `/data/aria2/aria2.log`里面的日志内容

### 部分截图
![](https://www.xiaoz.me/wp-content/uploads/2017/12/snipaste_20171208_184105.png)
![](https://www.xiaoz.me/wp-content/uploads/2017/12/snipaste_20171209_150754.png)

### 联系我
* 详细使用说明:[Linux一键安装Aria2 + YAAW实现离线下载](https://www.xiaoz.me/archives/9694)
* Blog:[https://www.xiaoz.me/](https://www.xiaoz.me/) 
* Q Q:337003006
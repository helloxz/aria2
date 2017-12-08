#!/bin/bash
#####		一键安装aria2 + yaaw	#####
#####		Author:xiaoz.me			#####
#####		Update:2017-12-07		#####

#安装函数
function centos(){
	yum -y install epel-release
	yum -y install aria2
}
function debian(){
	apt-get install aria2
}

#创建目录与配置
function settint(){
	mkdir -p /data/aria2
	mkdir -p /data/aria2/download
	touch /data/aria2/aria2.session
	
}

echo '----------------------------------'
echo '请选择系统:'
echo "1) CentOS X64"
echo "2) Debian or Ubuntu X64"
read -p ":" num
echo '----------------------------------'

case $num in
	1)
		#安装
		centos7
		#设置
		setting $hostname $osip
		#放行端口
		chk_firewall
		#启动服务
		systemctl start zabbix-agent.service
	;;
	2) 
		centos6
		setting $hostname $osip
		#放行端口
		chk_firewall
		service zabbix-agent start
	;;
	q) 
	exit
	;;
esac
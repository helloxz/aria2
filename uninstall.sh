#!/bin/bash
#####		卸载LACY	#####
#####		Author:xiaoz.me			#####
#####		Update:2017-12-10		#####

function uninstall(){
	#关闭服务
	/data/aria2/aria2.sh stop
	#删除caddy
	rm -rf /usr/bin/caddy
	#删除端口
	firewall-cmd --zone=public --remove-port=6080/tcp --permanent
	firewall-cmd --zone=public --remove-port=6800/tcp --permanent
	sed -i '/^.*6080.*/'d /etc/sysconfig/iptables
	sed -i '/^.*6800.*/'d /etc/sysconfig/iptables
}

echo '------------------------------------'
echo "确认download数据已经备份好了？(Y/N)"
read -p ":" confirm


case $confirm in
	'y')
		uninstall
		rm -rf /data/aria2
		echo '------------------------------------'
		echo "卸载完成！"
		echo '------------------------------------'
		exit
	;;
	'Y')
		uninstall
		rm -rf /data/aria2
		echo '------------------------------------'
		echo "卸载完成！"
		echo '------------------------------------'
		exit
	;;
	'n')
		exit
	;;
	'N')
		exit
	;;
	*)
		echo '参数错误！'
		exit
	;;
esac
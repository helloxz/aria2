#!/bin/bash
#####		一键安装aria2 + yaaw	#####
#####		Author:xiaoz.me			#####
#####		Update:2017-12-08		#####

aria2pid=$(pgrep 'aria2c')
caddypid=$(pgrep 'caddy')

case $1 in
	'start')
		nohup aria2c --conf-path=/data/aria2/aria2.conf > /data/aria2/aria2.log 2>&1 &
		nohup caddy -conf="/data/aria2/caddy.conf" > /data/aria2/caddy.log 2>&1 &
		exit
	;;
	'stop')
		kill -9 ${aria2pid}
		kill -9 ${caddypid}
	;;
	'restart')
		kill -9 ${aria2pid}
		kill -9 ${caddypid}
		nohup aria2c --conf-path=/data/aria2/aria2.conf > /data/aria2/aria2.log 2>&1 &
		nohup caddy -conf="/data/aria2/caddy.conf" > /data/aria2/caddy.log 2>&1 &
		exit;
	;;
	'status')
		if [ "$aria2pid" == "" ]
			then
				echo "Not running!"
			else
				echo "Is running,pid is ${aria2pid}"
		fi
	;;
	*)
		echo '参数错误！'
		exit
	;;
esac
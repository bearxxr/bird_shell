#!/usr/bin/bash
# Program:
#       这个程序输出各个端口号的状态
# History:
# 2020/01/29   bear     
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:~/bin
export PATH
echo "现在，我将显示linux服务器的端口号"

testfile=/dev/shm/netstat_checking.txt
netstat -tuln > ${testfile} # 数据转到内存中

testing=$(grep ":80" ${testfile}) # 检测80端口是否存在
if [ "${testing}" == "" ];
then
	echo "WWW 未在你的系统中运行着"
fi

testing=$(grep ":22" ${testfile}) # 检测22端口是否存在
if [ "${testing}" == "" ];
then
	echo "SSH 未在你的系统中运行着"
fi

testing=$(grep ":21" ${testfile}) # 检测21端口是否存在
if [ "${testing}" == "" ];
then
	echo "FTP 未在你的系统中运行着"
fi

testing=$(grep ":25" ${testfile}) # 检测25端口是否存在
if [ "${testing}" == "" ];
then
	echo "MAIL 未在你的系统中运行着"
fi

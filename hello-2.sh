#!/bin/bash
# Program:
#       这个程序输出Hello World
# History:
# 2020/01/28   bear     
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:~/bin
export PATH
if [ "${1}" == "hello" ];
then 
	echo "Hello! How are you?"
elif [ "${1}" == "" ];
then 
	echo "你必须输入一个参数. ex> {${0} someword }"
else
	echo "参数只能是'hello', ex> {${0} hello}"
fi

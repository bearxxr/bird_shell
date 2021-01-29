#!/usr/bin/bash
# Program:
#       这个程序输出case...esac判断
# History:
# 2020/01/29   bear     
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:~/bin
export PATH
case ${1} in
	"hello")
	echo "hello,how are you?"
	;;
	"")
	echo "你必须给一个参数,ex> {${0} someword}"
	;;
	*)
	echo "脚本 ${0} 使用参数 {hello}"
	;;
esac

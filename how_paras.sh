#!/usr/bin/bash
# Program:
#       这个程序输出脚本的默认变量
# History:
# 2020/01/28   bear     
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:~/bin
export PATH
echo "脚本文件名:" "${0}"
echo "脚本文件参数量:" "${#}"
echo "参数分别是:" "${@}"
echo "第一个参数是:" "${1}"
echo "第二个参数是:" "${2}"

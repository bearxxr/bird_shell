#!/usr/bin/bash
# Program:
#       这个程序输出名字
# History:
# 2020/01/28   bear     
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:~/bin
export PATH
read -p "请输入你的姓:" firstname
read -p "请输入你的名字:" lastname
echo "你的全名是 $firstname $lastname"

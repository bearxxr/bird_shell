#!/usr/bin/bash
# Program:
#       这个程序输出两数之和
# History:
# 2020/01/28   bear     
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:~/bin
export PATH
echo -e "你可以输入两个整数，我将输出他们的乘积。"

read -p "请输入第一个数:" firstnum
read -p "请输入第二个数:" secnum

total=$((${firstnum}*${secnum}))
echo -e "\n 你输入的两数之和是:${total} \n"


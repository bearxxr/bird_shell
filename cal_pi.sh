#!/usr/bin/bash
# Program:
#       这个程序输出pi
# History:
# 2020/01/28   bear     
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:~/bin
export PATH
echo -e "根据你输入的值输出pi的小数"
read -p "多少位数?(10-10000)" checking
num=${checking:-"10"}
echo -e "正在输出pi值,请稍候."
time echo "scale=${num}; 4*a(1)" | bc -lq

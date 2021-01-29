#!/usr/bin/bash
# Program:
#       这个程序输出yes或者no
# History:
# 2020/01/28   bear     
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:~/bin
export PATH
read -p "请输入(Y/N):" yn
[ "${yn}" == "Y" -o "${yn}" == "y" ] && echo "OK,Continue" && exit 0
[ "${yn}" == "N" -o "${yn}" == "n" ] && echo "Oh,interrupt!" && exit 0
echo "what are you doing?"


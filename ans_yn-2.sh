#!/usr/bin/bash
# Program:
#       这个程序利用if判断输出yes或者no
# History:
# 2020/01/28   bear     
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:~/bin
export PATH
read -p "请输入(Y/N):" yn
if 
	[ "${yn}" == "Y" ] || [ "${yn}" == "y" ] ;then 
	echo "OK,Continue" 
elif
	[ "${yn}" == "N" ] || [ "${yn}" == "n" ] ;then
	echo "Oh,interrupt!" 
else
	echo "what are you doing?"
fi


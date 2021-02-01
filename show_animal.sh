#!/usr/bin/bash
# Program:
#       这个程序输出三只动物
# History:
# 2020/02/01   bear     
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:~/bin
export PATH
for animal in dog cat elephant
do 
    echo "There are ${animal}s..."
done

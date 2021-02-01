#!/usr/bin/bash
# Program:
#       这个程序输出userid
# History:
# 2020/02/01   bear     
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:~/bin
export PATH
users=$(cut -d ':' -f1 /etc/passwd)
for username in ${user}
do
	id ${username}
done

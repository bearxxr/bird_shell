#!/usr/bin/bash
# Program:
#       这个程序输出文件的权限
# History:
# 2020/01/28   bear     
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:~/bin
export PATH
echo -e "请输入文件名,我将输出它的属性和权限"

read -p "请输入文件名:" filename

test -z ${filename} && echo "你必须输入一个文件名。" && exit 0

test ! -e ${filename} && echo "文件 ${filename} 不存在" && exit 0

test -f ${filename} && filetype="文件"
test -d ${filename} && filetype="目录"

test -r ${filename} && perm="可读"
test -w ${filename} && perm="${perm} 可写"
test -x ${filename} && perm="${perm} 可执行"

echo "此文件的权限是:${perm}"
echo "此文件的类型是:${filename}"

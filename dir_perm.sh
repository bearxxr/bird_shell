#!/usr/bin/bash
# Program:
#      你输入一个目录名，我输出他的权限
# History:
# 2020/02/01   bear     
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:~/bin
export PATH
read -p "请输入您的目录名:" dir
if [ "${dir}" == "" -o ! -d "${dir}" ]; then
	echo "The ${dir} is NOT exist in your system."
	exit 1
fi

filelist=$(ls ${dir})
for filename in "${filelist}"
do 
	perm=""
	test -r "${dir}/${filename}" && perm="readable"
	test -w "${dir}/${filename}" && perm="${perm} writable"
	test -x "${dir}/${filename}" && perm="${perm} executable"
	echo "The file ${dir}/${filename}  permission is ${perm}"
done


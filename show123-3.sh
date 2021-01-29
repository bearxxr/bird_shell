#!/usr/bin/bash
# Program:
#       这个程序输出one two three
# History:
# 2020/01/29   bear     
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:~/bin
export PATH

function printit() 
    {
    echo  "你的选择是:" ${1}
}

case "${1}" in
    "one")
    printit 1
    ;;
    "two")
    printit 2
    ;;
    "three")
    printit 3
    ;;
    *)
    echo "这个脚本你只可以使用{one|two|three}这三个参数"
    ;;
esac

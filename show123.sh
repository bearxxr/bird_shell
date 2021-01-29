#!/usr/bin/bash
# Program:
#       这个程序输出one two three
# History:
# 2020/01/29   bear     
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:~/bin
export PATH


case "${1}" in
    "one")
    echo "你的输出是ONE"
    ;;
    "two")
    echo "你的输出是TWO"
    ;;
    "three")
    echo "你的输出是THREE"
    ;;
    *)
    echo "这个脚本你只可以使用{one|two|three}这三个参数"
    ;;
esac

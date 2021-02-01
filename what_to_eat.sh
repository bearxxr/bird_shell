#!/usr/bin/bash
# Program:
#       这个程序输出三个不同的午饭
# History:
# 2020/02/01   bear     
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:~/bin
export PATH
eat[1]="麦当当汉堡"
eat[2]="肯也也炸鸡"
eat[3]="彩虹日式便当"
eat[4]="月有月好吃"
eat[5]="想不出赤沙"
eat[6]="太师父便当"
eat[7]="池上便当"
eat[8]="怀联合火车便的"
eat[9]="泡面"

eatnum=9
eated=0
while [ "${eated}" -lt 3 ]; do
	check=$(( ${RANDOM} * ${eatnum} / 32767 + 1 ))
	mycheck=0
	if [ "${eated}" -ge 1 ]; then
		for i in $(seq 1 ${eated})
		do 
			if [ ${eatedcon[$i]} == $check ]; then
				mycheck=1
			fi
		done
	fi
	if [ ${mycheck} == 0  ]; then
		echo "your may eat ${eat[${check}]}"
		eated=$(( ${eated} + 1 ))
		eatedcon[${eated}]=${check}
	fi
done

#!/usr/bin/bash
# Program:
#       这个程序输出还有多长时间退伍
# History:
# 2021/01/29   bear     
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:~/bin
export PATH

echo "你可以输入一个日期,让我来计算出你距离退伍还有多长时间."

read -p "输入您的退伍日期(YYYYMMDD ex:20200101):" date1
date_d=$(echo ${date1} | grep '[0-9]\{8\}') 
if [ "${date_d}" == "" ];
then 
	echo "您必须填写一个时间."
	exit 1
fi

declare -i date_dem=$(date --date="${date_d}" +%s) # 距离退伍的秒数
declare -i date_now=$(date +%s) # 现在的秒数
declare -i date_total_s=$((${date_dem}-${date_now})) # 相差的时间
declare -i date_day=$(("${date_total_s}/60/60/24")) # 距离今天的天数

if [ "${date_total_s}" -lt "0" ];then
	echo "您已经退伍:""$((-1*${date_day}))""天"
else
	echo "您还有:" "${date_day}" "天退伍"
fi

#!/bin/sh
#date=$(date "+%Y%m%d-%H%M%S")
#cur_date=$(date "+%Y%m%d")
cur_date=$(date -d "30 days ago" +%Y%m%d)
#获取几天前的日期 日期格式2023-03-11
echo $cur_date

#date -d "2 days ago" +%Y-%m-%d
#获取几天前的日期 日期格式20230311
#date -d "30 days ago" +%Y%m%d

str="test.58.com_access.log.2023-03-14"
#截取
#${string##substring} 从变量$string的开头, 删除最长匹配$substring的子串
temp_date=${str##*.}
#echo ${temp_date}
#替换
#${string//substring/replacement}
##sed 's///g'用来替换所有匹配的字符串  s 代表使用sed命令完成替换的操作
#f_date=$(echo $temp_date | sed "s/-//g")
f_date=${temp_date//-/}
#echo ${f_date}
#日期判断
if [ "$cur_date" -ge "$f_date" ]; then
  echo $str
  rm -f $str
fi

#获取web/dsf 目录下所有的log路径
#crontab shell/shell

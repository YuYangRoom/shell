#!/bin/bash
num="1"
if [ "$num" = "0" ]; then
  echo "ok 0"
elif [ "$num" = "1" ]; then
  echo "ok 1"
else
  echo "no"
fi

n=4
if [ $n == 4 ]; then
  echo ok $n
fi
# 数值校验 注意括号的写法、空格
#-eq 等于,如:if [ "$a" -eq "$b" ]
#-ne 不等于,如:if [ "$a" -ne "$b" ]
#-gt 大于,如:if [ "$a" -gt "$b" ]
#-ge 大于等于,如:if [ "$a" -ge "$b" ]
#-lt 小于,如:if [ "$a" -lt "$b" ]
#-le 小于等于,如:if [ "$a" -le "$b" ]
#<   小于(需要双括号),如:(("$a" < "$b"))
#<=  小于等于(需要双括号),如:(("$a" <= "$b"))
#>   大于(需要双括号),如:(("$a" > "$b"))
#>=  大于等于(需要双括号),如:(("$a" >= "$b"))

#字符串校验
#判断字符串是否相等
#if [ "$A" = "$B" ];then
#echo "[ = ]"
#fi
#
##判断字符串是否相等，与上面的=等价
#if [ "$A" == "$B" ];then
#echo "[ == ]"
#fi

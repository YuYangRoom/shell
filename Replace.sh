#!/bin/sh
str='"tag/opqen-platpyform_dowyf-community-partner_8-0-83-0_dajtoy"'
str=${str/\"/}
str=${str/\"/}
echo $str

#如何将echo命令执行的参数赋值给变量 使用 `` 命令
#var=`command`
#var=$(command)
s2=$(echo $str | sed 's/"//g')
echo $s2

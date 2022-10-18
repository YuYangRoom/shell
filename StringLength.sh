#!/bin/bash
str="adkljfdklsjfonilskdjfflkjsdlfkjsldkfj"
#【方法一】:利用${#str}来获取字符串的长度
echo ${#str}
#【方法二】:利用awk的length方法
echo $str | awk '{print length($0)}'
echo $str | awk '{print length($1)}'
#备注:
#1) 最好用{}来放置变量
#2) 也可以用length($0)来统计文件中每行的长度

#【方法三】:利用awk的NF项来获取字符串长度
#备注: -F为分隔符，NF为域的个数，即单行字符串的长度
echo $str | awk -F "" '{print $0}'

#【方法四】:利用wc的-L参数来获取字符串的长度
echo ${str} | wc -l

#【方法五】:利用wc的-c参数，结合echo -n参数

#【方法六】:利用expr的length方法

#【方法七】:利用expr的$str : ".*"技巧

#!/bin/sh
giturl="http://gaidt.dagadojkliaingc.com/xndyf/dsdjgoydfpdsf.git"
#表达式 含义
#${#string} $string的长度
#
#${string:position} 在$string中, 从位置$position开始提取子串
#${string:position:length} 在$string中, 从位置$position开始提取长度为$length的子串
#
#${string#substring} 从变量$string的开头, 删除最短匹配$substring的子串
#${string##substring} 从变量$string的开头, 删除最长匹配$substring的子串
#${string%substring} 从变量$string的结尾, 删除最短匹配$substring的子串
#${string%%substring} 从变量$string的结尾, 删除最长匹配$substring的子串
#
#${string/substring/replacement} 使用$replacement, 来代替第一个匹配的$substring
#${string//substring/replacement} 使用$replacement, 代替所有匹配的$substring
#${string/#substring/replacement} 如果$string的前缀匹配$substring, 那么就用$replacement来代替匹配到的$substring
#${string/%substring/replacement} 如果$string的后缀匹配$substring, 那么就用$replacement来代替匹配到的$substring
#
#说明：”* $substring”可以是一个正则表达式.

#截取最后一个/ 及之前
str=${giturl##*/}
#截取. 及其之后
str=${str%.*}
echo $str
echo ${giturl%%.*}

#!/bin/sh
#文件的写入有 >  , >>  两种方式
# > 覆盖原有内容
echo "==============BEGIN====$(date "+%Y-%m-%d %H:%M:%S")================" >clear.txt
# >>  在原有内容后面追加一行
echo "==============BEGIN====$(date "+%Y-%m-%d %H:%M:%S")================" >>clear.txt

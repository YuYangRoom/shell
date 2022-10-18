#! /bin/bash
#let实际上和expr没有区别，都是bash中用于计算的工具！！
num=1
num2=1
for ((i = 0; i < 5; i++)); do
  #1此处+号两边必须有空格 (注意空格）
  num=$(expr $num + $i)
done
echo "第一个循环值：" $num
for ((i = 0; i < 10; i++)); do
  #此处+号两边不能有空格
  let num2=$num2+$i
done
echo "第二个循环值：" $num2

#第一个循环值： 11
#第二个循环值： 46

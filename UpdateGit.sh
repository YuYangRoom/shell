#! /bin/bash
# 保存当前目录
currentDir=$PWD
echo "update start ~ "
echo $currentDir
baseGit='xxx.com'
gitGroup=$1
gitProName=$2
gitAdd=$baseGit"/"$gitGroup"/"$gitProName".git"
#判断是否有当前git组
echo "$gitGroup"
if [ -e "$gitGroup" ]; then
  echo '目录存在，继续往下执行'
else
  echo '目录不存在，请先创建$gitGroup目录'
  exit
fi

cd $gitGroup
echo $PWD
#判断是否有当前git文件
if [ -e "$gitProName".git"" ]; then
  echo '文件存在，删除旧文件'
  #清除旧的文件
  rm -fr $gitProName".git"
fi

#更新文件
echo "开始更新"$gitAdd
git clone --mirror $gitAdd

#切回到原来的目录
cd $currentDir
echo $PWD
echo "update success !!!"

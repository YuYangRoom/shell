#!/bin/sh
num=0
baseUrl="url"
while read line; do
  clu=$line
  clu=$(echo $clu | sed 's/|//g')
  #  echo ${#s2}
  clu=$(echo $clu | sed 's/ //g')
  echo $clu
  #远程请求
  wget -q $baseUrl$clu -O git.json
  #处理结果
  clusterinfo=$(jq '.clusterinfo' git.json)
  code=$(jq '.code' git.json)
  msg=$(jq '.msg' git.json)

  if [ $code -eq 0 ]; then
    num=$(expr $num + 1)
  else
    echo "清理失败："$clusterinfo $code $msg
  fi

  #统计字符串串长度
  #  echo ${#s2}
done <db.txt
echo "成功清理:" $num

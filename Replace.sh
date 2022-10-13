#!/bin/sh
str='"tag/opqen-platpyform_dowyf-community-partner_8-0-83-0_dajtoy"'
str=${str/\"/}
str=${str/\"/}
s2=`echo $str | sed  's/"//g'`

echo $str
echo $s2
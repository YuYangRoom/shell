#!/bin/bash

function getVersion() {
  version="hello"
  echo $version
}
dd='hi nihao'
echo $(getVersion) '哈哈'
function foo() {
  dd='good idea'
}
foo
echo $dd

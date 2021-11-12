#!/bin/sh

input=$(echo input.txt)

task() {
  id=$(echo $1 | awk -F/ '{print $NF}')
  url=$(echo "https://drive.google.com/uc?export=download&id=${id}")
  mkdir "img/$input"
  wget --no-check-certificate $url -O "img/$input/$id" > /dev/null
  echo $url
}

while read p; do
  task $p &
done < input/$input

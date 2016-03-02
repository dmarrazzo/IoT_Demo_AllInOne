#!/bin/bash

images=(`docker ps -a | cut -c1-15`)
for ((i=${#images[@]}-1; i>=0; i--)); do

  if [ ${#images[$i]} -eq 12 ]; then
    docker rm ${images[$i]} > /dev/null 2>&1
  fi
done


images=(`docker images -a | grep "^<none>" | awk '{print $3}'`)
for ((i=${#images[@]}-1; i>=0; i--)); do
  if [ ${#images[$i]} -eq 12 ]; then
    docker rmi ${images[$i]} > /dev/null 2>&1
  fi
done

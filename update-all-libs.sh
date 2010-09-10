#!/bin/bash

if [ $# -ne 1 ]
then
  echo "Please specify your Project root."
  exit 1
fi

if [ ! -d $1 ]
then
  echo "Directory does not exist."
  exit 1
fi

cp -f $1/redis/src/adlist.[ch] .
cp -f $1/redis/src/ae.[ch] .
cp -f $1/redis/src/ae_*.c .
cp -f $1/redis/src/anet.[ch] .
cp -f $1/redis/src/config.h .
cp -f $1/redis/src/fmacros.h .
cp -f $1/redis/src/sds.[ch] .
cp -f $1/redis/src/zmalloc.[ch] .

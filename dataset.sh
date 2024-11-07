#!/bin/bash

# 设置分区数量
PARTITIONS=32

# 循环启动每个分区的任务
for i in $(seq 1 $PARTITIONS); do
    python font_ds_generate_script.py $i 32 &
done

# 等待所有后台任务完成
wait
#!/bin/bash

now_date=$(date '+%Y-%m-%d')
backup_dir_path='~/backups/'

mysqldump -uroot -p'password!' -x -A > $backup_dir_path$now_date.sql

# 7일전에 백업한 파일들 삭제
find $backup_dir_path -mtime +7 -name '*.sql' -execdir rm -- '{}' ';'


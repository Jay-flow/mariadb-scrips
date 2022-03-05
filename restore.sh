#!/bin/bash

echo "복구할 sql파일의 경로를 입력해주세요(예 2020-02-18)":

read -e -p "Backup file path: " -i "~/backups/" path

if mariadb -uroot -pPassword! < $path; then
	echo "정상적으로 복구되었습니다."	
else
	echo "복구에 실패했습니다. 입력한 날짜가 정확한지 확인해주세요."
	exit 1
fi


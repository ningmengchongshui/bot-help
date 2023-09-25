#!/bin/bash

DIRECTORY="/home/lighthouse"

if [ ! -d "$DIRECTORY" ]; 
then
    echo "$DIRECTORY 开始创建..."
    mkdir -p "$DIRECTORY"
    if [ $? -eq 0 ]; 
    then
        echo "$DIRECTORY 路径创建成功!"
    else
        echo "$DIRECTORY 路径创建失败."
        exit 1
    fi
fi

# 地址
AppName="/bot-help"
readonly AppName

# 版本
version=$(cat /etc/redhat-release)
readonly version

# 执行用户
myadress="/home/lighthouse"
readonly myadress

centos="/bot-help/centos"
readonly centos

centosIndex="${AppName}/centos/index.sh"
readonly centosIndex

debian="/bot-help/debian"
readonly debian

debianIndex="${AppName}/centos/index.sh"
readonly debianIndex

ubuntu="/bot-help/ubuntu"
readonly ubuntu

ubuntuIndex="${AppName}/centos/index.sh"
readonly ubuntuIndex


aaarch(){
	case $(arch) in
		x86_64) aarch="x64";;
		aarch64) aarch="arm64";;
		*)
			read -p "$(echo -e "暂不支持armv71,s390x等架构\n手动安装参考Ubuntu详细\n回车退出")" Enter
			exit;;
	esac
}
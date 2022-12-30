#!/bin/bash

yourv=$(cat /etc/redhat-release)
readonly yourv

Centos="../../Yunzai-Bot-Help/Centos"
readonly Centos

while true
do
OPTION=$(whiptail \
--title "《Yunzai-Bot-HelpV1.2.0》" \
--menu "$yourv" \
15 50 5 \
"1" "HELP更新" \
"2" "机器配置" \
"3" "后台运行" \
"4" "进程管理" \
"5" "桌面安装" \
"6" "环境管理" \
"7" "系统语言" \
"8" "SSH管理" \
"9" "防火墙" \
"10" "系统重启" \
3>&1 1>&2 2>&3)

x=$?
if [ $x = 0 ]
then

#HELP设置
    if [ $OPTION = 1 ]
    then
    cd "${Centos}"
    ./Update.sh
    fi

#机器管理
    if [ $OPTION = 2 ]
    then
    cd "${Centos}"
    ./V3demo.sh
    fi

#运行管理
    if [ $OPTION = 3 ]
    then
    cd "${Centos}"
    ./Robotdemo.sh
    fi
  
#插件管理
    if [ $OPTION = 4 ]
    then
    cd "${Centos}"
    ./Pm2demo.sh
    fi
    
    if [ $OPTION = 5 ]
    then
    #cd "${Centos}"
    #./Pluginsdeno.sh
    Choise=$(whiptail \
        --title "《Yunzai-Bot-Help》" \
        --menu "$yourv\n##上下选择##左右确定取消" \
        15 50 5 \
        "提示" "功能正在施工中" \
        3>&1 1>&2 2>&3)
    fi
    
    # if [ $OPTION = 6 ]
    # then
    # cd "${Centos}"
    # ./Extensiondemo.sh
    # fi
    
    if [ $OPTION = 6 ]
    then
    cd "${Centos}"
    ./Environmentdemo.sh
    fi
    
    if [ $OPTION = 7 ]
    then
    cd "${Centos}"
    ./Systemlanguagedemo.sh
    fi
    
    if [ $OPTION = 8 ]
    then
    cd "${Centos}"
    ./SSHdemo.sh
    fi
    
    if [ $OPTION = 9 ]
    then
    cd "${Centos}"
    ./Firewalldemo.sh
    fi
    
    if [ $OPTION = 10 ]
    then
Choise=$(whiptail \
--title "《Yunzai-Bot-Help》" \
--menu "$yourv\n#请确认是否确定重启..." \
15 50 3 \
"1" "重启" \
3>&1 1>&2 2>&3)
y=$?
if [ $y = 0 ]
then
shutdown -r now
fi
    fi
    
else
    clear
    echo "退出成功！"
    exit
fi
done

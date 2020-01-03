#fonts color
Green="\033[32m"
RedBG="\033[41;37m"
Font="\033[0m"

v2ray_conf="/etc/v2ray/config.json"
ip=$(curl -4 ip.sb)
port=$(cat ${v2ray_conf}|sed 's/,/\n/g'|grep "port"|sed 's/:/\n/g'|sed '1d'|sed 's/}//g'|sed 's/"//g'|sed 's/ //g')
uuid=$(grep -Po 'id[" :]+\K[^"]+' ${v2ray_conf})
alterId=$(grep -Po 'alterId[" :]+\K[^"]+' ${v2ray_conf})

echo -e "${Green}ip:${Font}  ${RedBG}${ip}${Font}"
echo -e "${Green}port:${Font}  ${RedBG}${port}${Font}"
echo -e "${Green}uuid:${Font}  ${RedBG}${uuid}${Font}"
echo -e "${Green}alterId:${Font}  ${RedBG}${alterId}${Font}"

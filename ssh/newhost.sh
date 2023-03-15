#!/bin/bash
# ==========================================
# Color
RED='\033[0;31m'
NC='\033[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHT='\033[0;37m'
# ==========================================
# Getting
MYIP=$(wget -qO- ipinfo.io/ip);
echo "Checking VPS"
IZIN=$( curl https://raw.githubusercontent.com/arlanstore/vpsssh_Free/main/ipvps.txt | grep $MYIP );
if [ $MYIP = $IZIN ]; then
echo -e "${NC}${GREEN}Permission Accepted...${NC}"
else
echo -e "${NC}${RED}Permission Denied!${NC}";
echo -e "${NC}${LIGHT}Please Contact Admin!!"
echo -e "${NC}${LIGHT}Telegram : https://t.me/arlanstore"
exit 0
fi
error1="${RED}[ERROR]${NC}"
success="${GREEN}[SUCCESS]${NC}"
clear
echo -e "========================="
read -rp "Masukan Domain/Host : " -e domain
echo -e "========================="
echo -e "${success} Please wait..."
echo -e "========================="
read -rp "Masukan nsDomain/ nsHost : " -e nsdomain
echo -e "========================="
echo -e "${success} Please wait..."
mkdir -p /usr/bin/xray
mkdir -p /etc/xray
echo $domain >> /etc/xray/domain
echo $domain >> /root/domain
echo $nsdomain >> /root/nsdomain
echo "IP=$domain" >> /var/lib/akbarstorevpn/ipvps.conf
echo "none" >> /var/lib/akbarstorevpn/cfndomain
sleep 5

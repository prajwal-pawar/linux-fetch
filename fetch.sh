#!/bin/bash

computer_name=$HOSTNAME
system="$(uname -s)"
release="$(uname -r)"
distro=$(uname -n)
cpu=$(grep 'model name' /proc/cpuinfo | head -n 1 | cut -d ':' -f 2 | tr -s ' ')
total_memory=$(free -h | awk '/Mem/{print $2}')
used_memory=$(free -h | awk '/Mem/{print $3}')
shell=$SHELL
uptime=$(uptime -p)

reset='\e[0m'
red='\e[31m'
green='\e[32m'
yellow='\e[33m'
blue='\e[34m'

echo " Hostname: $computer_name"
echo " OS: $system $release"
echo " Distro: $distro"
echo " CPU: $cpu"
echo " Memory: $used_memory / $total_memory"
echo " Shell: $shell"
echo " Uptime: $uptime"
echo -e "${reset} ${red} -_- ${reset}  ${green} -_- ${reset}  ${yellow} -_- ${reset}  ${blue} -_- ${reset}"
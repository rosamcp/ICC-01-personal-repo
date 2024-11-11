#!/bin/bash

echo "
Welcome to My Network Tool
1) Check Network Interface Information
2) Ping a Host
3) Port Scan with Nmap
4) Display Routing Table
5) Traceroute to Host
6) Exit"

read input

while [ $input != 6 ];
do 
    case $input in 
        "1")
            echo Network Interface Information
            ifconfig
        ;;
        "2")
            echo Which address do you want to ping?
            read input
            ping -c 2 $input
        ;;
        "3")
            echo Which host do you want to port scan?
            read input
            nmap -p0- $input
        ;;
        "4")
            route
        ;;
        "5")
            echo Which host do you want to traceroute?
            read input
            traceroute $input
        ;;
    esac
    read input
    if [ $input = 6 ]; then 
        break
    fi
done
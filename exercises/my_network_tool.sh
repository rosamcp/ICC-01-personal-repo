#!/bin/bash

echo "
Welcome to My Network Tool!
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
        # Network Interface Information     
        "1")
            echo Network Interface Information:
            ifconfig
        ;;
        # Ping a Host
        "2")
            echo Which host do you want to ping?
            read input
            ping -c 2 $input
        ;;
        # Port Scan with Nmap
        "3")
            echo Which host do you want to port scan?
            read input
            nmap -p0- $input
        ;;
        # Display Routing Table
        "4")
            route
        ;;
        # Traceroute to Host
        "5")
            echo Which host do you want to traceroute?
            read input
            traceroute $input
        ;;
    esac
    echo " 
    What do you want to do next?

1) Check Network Interface Information
2) Ping a Host
3) Port Scan with Nmap
4) Display Routing Table
5) Traceroute to Host
6) Exit"
    read input
    # Exit
    if [ $input = 6 ]; then 
        break
    fi
done
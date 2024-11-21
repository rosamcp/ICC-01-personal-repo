#!/bin/bash

user=$(whoami)
date=$(date +"%Y-%m-%d %H:%M:%S")

read input

echo "[$date] User: $user - Log entry: $input" >> user_activity.log
#!/bin/bash

current_layout=$(setxkbmap -query | grep layout | awk '{print $2}')

if [ $current_layout == "us" ]; then
    setxkbmap -layout ru
else
    setxkbmap -layout us
fi

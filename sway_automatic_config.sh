#!/bin/bash

read -p "Create deafult config[y/n]: " inp

if [ $inp == "y" ]; then
	mkdir ~/.config
	mkdir ~/.config/sway
	cp -r /etc/sway/ ~/.config/sway
fi 

read -p "Do you want to create autostart your programs[y/n]: " inp

if [ $inp == "y" ]; then
	read -p "Enter to add programs[stp - stop]: " inp_
	echo "exec $inp_" >> ~/.config/sway/config
	while [ $inp_ != "stp" ]
	do
	read -p "Enter to add programs[stp - stop]: " inp_
	if [ $inp_ == "stp" ]; then 
		break
	fi
	echo "exec $inp_" >> ~/.config/sway/config
	done
fi

read -p "Do you want to create bindsym[y/n]: " inp

if [ $inp == "y" ]; then
	read -p "Enter your bindsym(how: [bindsym] [command])[stp - stop]: " inp_ com
	echo "bindsym $inp_ exec $com" >> ~/.config/sway/config
	while [ $inp_ != "stp" ] 
	do 
	read -p "Enter yout bindsym(how: [bindsym] [command])[stp - stop]: " inp_ func com
	if [ $inp_ == "stp" ]; then
		break
	fi
	echo "bindsym $inp_ $func $com" >> ~/.config/sway/config
	done
fi

read -p "Do you want to create variable[y/n]: " inp

if [ $inp == "y" ]; then
	read -p "Enter your variable(how: [name] [meaning])[stp - stop]: " inp_ mean
	echo "set $inp_ $mean" >> ~/.config/sway/config
	while [ $inp_ == "stp" ]
	do 
	read -p "Enter your variable(how: [name] [meaning])[stp - stop]: " inp_ mean
	if [ $inp_ == "stp" ]; then
		break
	fi
	echo "set $inp_ $mean" >> ~/.config/sway/config
	done
fi



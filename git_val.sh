#!/bin/bash

read -p "Enter your ssh key: " ssh
read -p "Enter name repos: " repos
git clone $ssh
cd $repos
read -p "Enter your file fullname: " file
read -p "Enter your dir: " dir
cp $file $dir
git add .
read -p "Enter your comment for commit: " com
read -p "Enter your email: " email
read -p "Enter your username: " name
git config user.email $email
git config user.name $name
git commit -m $com
git push 


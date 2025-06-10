#!/bin/bash

git add .
read -p "Enter your comment for commit: " com
read -p "Enter your email: " email
read -p "Enter your username: " name
git config user.email $email
git config user.name "vasi"
git commit -m "rtrtr"
git push 


#!/bin/bash

cd ../e-commerce-app

version=$(npm version | grep e-commerce-app | grep -o "'[^']\+',$" | grep -o "[^',]*")
today=$(date +"%Y-%m-%d")

dirname="e-commerce-app@${version}_${today}"

mkdir ../backup/uploads/$dirname

tar -cvzf ../backup/uploads/$dirname/public.tar.gz public
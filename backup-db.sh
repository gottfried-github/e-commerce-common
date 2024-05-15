#!/bin/bash

cd /app/e-commerce-app

version=$(npm version | grep e-commerce-app | grep -o "'[^']\+',$" | grep -o "[^',]*")
today=$(date +"%Y-%m-%d")

cd /app

mongodump --gzip --archive="backup/db/e-commerce-app@${version}_${today}.gz" "mongodb://$APP_USER:$APP_PSSWD@$NET_NAME/$DB_NAME"
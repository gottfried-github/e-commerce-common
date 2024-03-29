#!/bin/bash

# apply migrations
/app/e-commerce-common/node_modules/.bin/migrate-mongo up -f /app/e-commerce-common/migrate-mongo-config.js

# create admin user for the application
node --trace-warnings /app/e-commerce-signup/src/cli.js $USER_NAME $USER_EMAIL $USER_PSSWD

cd /app/e-commerce-app/
npm run build

cd /
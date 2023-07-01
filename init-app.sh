#!/bin/bash

# apply migrations
/app/fi-common/node_modules/.bin/migrate-mongo up -f /app/fi-common/migrate-mongo-config.js

# create admin user for the application
node /app/fi-signup/src/cli.js $USER_NAME $USER_EMAIL $USER_PSSWD
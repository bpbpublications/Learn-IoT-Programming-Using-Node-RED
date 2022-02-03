#!/bin/bash

# Source ENV variables from .env file
set -o allexport; source .env; set +o allexport
echo 'The NodeRED admin user is' $USERNAME
echo 'The NodeRED admin password hash is' $PASSWORD
echo 'The NodeRED secret key (for flow encryption) is' $SECRETKEY

# Start app
npm run flow9
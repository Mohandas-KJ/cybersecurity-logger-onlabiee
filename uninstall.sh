#!/bin/bash

#Variables
APP_NAME="onlabiee"
INS_DIR="/usr/local/bin"

if [[ -f "$INS_DIR/$APP_NAME" ]]; then
    sudo rm -f "$INS_DIR/$APP_NAME"
    echo "Unistalled $APP_NAME successfully"
else
    echo "$APP_NAME is not Installed"
fi
#!/bin/bash

# ============================
# Onlabiee Installation Script
# ============================

set -e # Enable the script to exit immediately on error

APP_NAME="onlabiee"
SOURCE_FILE="onlabiee.sh"
INS_DIR="/usr/local/bin"

# Helper Fuctions

error() {
    echo "Error: $1"
    exit 1
}

info() {
    echo "Info: $1"
}

success() {
    echo "OK: $1"
}

# Check whether the script is executed by root and terminate if yes
if [[ "$EUID" -eq 0 ]]; then
    error "Avoid running this script as root unless prompted"
fi

if [[ ! -f "$SOURCE_FILE" ]]; then
    error "Source File '$SOURCE_FILE' not found"
fi

#Check the OS type and proceed
OS=$(uname -s)
case "$OS" in
    Linux | Darwin)
        info "Detected OS: $OS"
        ;;
    *)
        error "Unsupported OS: $OS"
        ;;
esac

#---------Installation Part------------
chmod +x "$SOURCE_FILE"
sudo cp "$SOURCE_FILE" "$INS_DIR/$APP_NAME"

success "$APP_NAME installed successfully"

echo ""
echo "You can run it using:"
echo "  $APP_NAME"
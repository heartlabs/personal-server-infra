#!/bin/bash
# Install plugins if Grav is present and plugins are not yet installed
# Note: admin plugin is already included in the getgrav/grav image (grav-admin package)

GRAV_DIR="/var/www/html"

if [ -f "$GRAV_DIR/bin/gpm" ]; then
  if [ ! -d "$GRAV_DIR/user/plugins/git-sync" ]; then
    echo "Installing git-sync plugin..."
    cd "$GRAV_DIR" && bin/gpm install -y git-sync
  fi
fi

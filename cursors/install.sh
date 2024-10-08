#!/bin/bash

ROOT_UID=0
DEST_DIR=

# Destination directory
if [ "$UID" -eq "$ROOT_UID" ]; then
  DEST_DIR="/usr/share/icons"
else
  DEST_DIR="$HOME/.icons"
fi

if [ -d "$DEST_DIR/Fluent-cursors" ]; then
  rm -r "$DEST_DIR/Fluent-cursors"
fi

if [ -d "$DEST_DIR/Fluent-dark-cursors" ]; then
  rm -r "$DEST_DIR/Fluent-dark-cursors"
fi

cp -r dist $DEST_DIR/Fluent-cursors
cp -r dist-dark $DEST_DIR/Fluent-dark-cursors

echo "Finished..."


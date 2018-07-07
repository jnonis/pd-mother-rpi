#!/bin/bash

echo Initializing Patch

PATCH_HOME=$1
echo Patch Home: $PATCH_HOME

mkdir -p /tmp/patch
rm /tmp/patch/knobs.txt 
cp "$PATCH_HOME/knobs.txt" /tmp/patch 


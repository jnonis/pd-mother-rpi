#!/bin/bash

echo Saving Patch State

PATCH_HOME=$1
echo Patch Home: $PATCH_HOME

mkdir -p /tmp/state
cp /tmp/state/* "$PATCH_HOME"
cp /tmp/state/knobs.txt /tmp/patch

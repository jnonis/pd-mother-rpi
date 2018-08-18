#!/bin/bash

# Pd app
PD_EXEC=pd
echo Pd app: $PD_EXEC

# Get mother patch home
cd "$(dirname "$0")"
MOTHER_HOME=$PWD
echo Mother Home: $MOTHER_HOME

# Get absolute path
cd "$(dirname "$1")"
BASE_PATH=$(printf %q "$PWD")
FILE_NAME=$(printf %q "$(basename "$1")")
PATCH="$BASE_PATH/$FILE_NAME"
echo Starting Patch: $PATCH

$PD_EXEC -alsamidi -mididev 1 -send ";patch $PATCH" $MOTHER_HOME/mother-rpi.pd &

sleep 3
aconnect 24:0 128:0
aconnect 28:0 128:0

#!/bin/bash

# Pd app
PD_EXEC=/Users/jnonis/dev/pure_data/Pd-0.48-1-i386.app/Contents/Resources/bin/pd
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

$PD_EXEC -send ";patch $PATCH" $MOTHER_HOME/mother-rpi.pd 

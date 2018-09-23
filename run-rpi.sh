#!/bin/bash

# Pd app
PD_EXEC=pd
echo Pd app: $PD_EXEC

# Get mother patch home
cd "$(dirname "$0")"
MOTHER_HOME=$PWD
echo Mother Home: $MOTHER_HOME

$PD_EXEC -alsamidi -mididev 1 $MOTHER_HOME/mother-rpi.pd &

sleep 3
aconnect 16:0 128:0
aconnect 24:0 128:0
aconnect 28:0 128:0

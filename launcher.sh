#!/bin/bash

# Ignore error
set -e

# Run bitcoind
./bitcoind -datadir=$DATADIR -txindex="1" -chain="main" -rpcuser="admin" -rpcpassword="admin" -rpcbind="0.0.0.0" -rpcport="3000" -rpcallowip="0.0.0.0/0" -server &
PID=$!

# Safe Exit
trap "kill -15 $PID; sleep 60;" SIGTERM SIGINT

# When Bitcoin ends, the container also ends.
wait $PID
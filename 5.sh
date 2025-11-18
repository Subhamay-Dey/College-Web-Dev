#!/bin/bash

# $1 is the first argument passed to the script
command="$1"

case $command in
    start)
        echo "Starting the service..."
        ;;
    stop)
        echo "Stopping the service..."
        ;;
    status)
        echo "Checking service status..."
        ;;
    *)
        echo "Usage: $0 {start|stop|status}"
        ;;
esac
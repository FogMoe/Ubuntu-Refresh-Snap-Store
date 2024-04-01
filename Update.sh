#!/bin/bash
echo "Use the 'chmod +x Update.sh' command in the terminal to give this script executable permissions."

if pgrep -x "snap-store" > /dev/null
then
    pid=$(pgrep -x "snap-store")
    kill $pid
    echo "Update.sh: snap-store process terminated."
else
    echo "Update.sh: snap-store process is not running."
fi

sudo snap refresh snap-store
echo "Update.sh: updated snap-store."

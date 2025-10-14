#!/bin/sh
# Script to run TFS with GDB for debugging

echo "Starting TFS with GDB debugger..."
echo "When it crashes, type: bt full"
echo "To exit GDB, type: quit"
echo ""

gdb -ex "run" -ex "bt full" --args /bin/tfs

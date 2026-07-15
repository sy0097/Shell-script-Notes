#!/bin/bash

##############################################

# Author: Anil
# Date:  04/07/2026
# This script will executes and output the node health.
# Version: V1
#
##############################################

set -x #### debug mode
set -e
set -o pipefail

echo "Hi"
asdhjsdhasjkhdsjkhdsdjkdadhkjh | echo

df -h

free -g

nproc

ps -ef | grep amazon | awk -F" " '{print $2}'




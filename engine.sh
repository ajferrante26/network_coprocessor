#!/bin/bash

echo "running: engine"
# instructions.c
bash /root/coprocessor/libfiles/header-main.sh
bash /root/coprocessor/libfiles/leftbrace.sh
bash /root/coprocessor/libfiles/openfile.sh
# bash /root/coprocessor/insert-usrfx.sh    <- add this to instructions.c when client is ready
# bash /root/coprocessor/return-proto.sh    <- this will be the script run to return information to controler
bash /root/coprocessor/libfiles/return0.sh
bash /root/coprocessor/libfiles/rightbrace.sh

# get database ready
bash /root/coprocessor/libfiles/getnextDB.sh

# establish connection
bash /root/coprocessor/libfiles/getnextIP.sh

# create ftp script
bash /root/coprocessor/libfiles/writeftp1.sh

# send files
bash /root/coprocessor/outbound/startftp.sh

# reset outbound
rm /root/coprocessor/outbound/instructions.c
rm /root/coprocessor/outbound/startftp.sh

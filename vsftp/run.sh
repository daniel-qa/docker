#!/bin/bash
docker run -d -v /home/ftp:/home/vsftpd \
-p 20:20 -p 21:21 -p  21100-21110:21100-21110 \
-e FTP_USER=test -e FTP_PASS=test \
-e PASV_ADDRESS=192.168.60.128 \
-e PASV_MIN_PORT=21100 -e PASV_MAX_PORT=21110 \
--name vsftpd --restart=always fauria/vsftpd

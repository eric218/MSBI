#!/bin/bash
ftp -n -i<<!
open 205.191.156.235
user dinesh P@ssw0rd
binary
lcd /tsmdata/daily/events
cd /Wang
mput daily.txt
lcd /tsmdata/daily/events
cd /Wang1
mput assoc.txt
lcd /tsmdata/daily/events
cd /Wang2
mput client_schedules.txt
close
bye
!

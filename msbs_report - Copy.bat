@echo off
taskkill /f /im javaw.exe
ping 127.0.0.1 -n 3
start javaw -jar C:\msi_dev\msbireport-0.0.1-SNAPSHOT.war
exit
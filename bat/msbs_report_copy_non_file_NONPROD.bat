@echo off
taskkill /f /im javaw.exe
ping 127.0.0.1 -n 3
start javaw -jar C:\msi_dev\copyFiles_non-1.0-SNAPSHOT.jar
exit
@echo off
taskkill /f /im java.exe
ping 127.0.0.1 -n 3
java -jar C:\msi_dev\msbireport-0.0.1-SNAPSHOT.war
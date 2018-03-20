@echo off
taskkill /f /im javaw.exe
ping 127.0.0.1 -n 10
start javaw -jar C:\MSBI\github\MSBI_JAVA_CODE\msbiReport\target\msbireport-0.0.1-SNAPSHOT.war
exit
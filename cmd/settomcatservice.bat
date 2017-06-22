REM Remove the service named 'Tomcat8'
REM C:\WCMLicServer\tomcat\8.0.9-x64\bin\tomcat8 //DS//WCMTomcat8
REM Install the service named 'Tomcat8'
REM echo Install tomcat service
REM cd C:\WCMLicServer\tomcat\8.0.9-x64\bin

REM C:\WCMLicServer\tomcat\8.0.9-x64\bin\setclasspath
call C:\WCMLicServer\tomcat\8.0.9-x64\bin\service.bat install

timeout 3
REM Update the service startup to auto

call C:\WCMLicServer\tomcat\8.0.9-x64\bin\tomcat8 //US//tomcat8 --Startup=auto


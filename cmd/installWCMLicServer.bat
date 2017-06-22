@echo off

echo Set tomcat, mysql, java path
setx path "%path%;C:\WCMLicServer\MySQL\mysql-5.5.32\bin\;C:\WCMLicServer\jdk\jdk-7u80\bin\;C:\WCMLicServer\tomcat\8.0.9-x64\bin"

echo Set java home
setx JAVA_HOME "C:\WCMLicServer\jdk\jdk-7u80\"

echo Set catalina home
setx CATALINA_HOME "C:\WCMLicServer\tomcat\8.0.9-x64\"

echo Install mysql service
C:\WCMLicServer\MySQL\mysql-5.5.32\bin\mysqld --install MySQL --defaults-file="C:\WCMLicServer\MySQL\mysql-5.5.32\my.ini"

call C:\WCMLicServer\tomcat\8.0.9-x64\bin\service.bat install

timeout 3
REM Update the service startup to auto
call C:\WCMLicServer\tomcat\8.0.9-x64\bin\tomcat8 //US//tomcat8 --Startup=auto

REM Replace 'add' to 'delete' to delete the rules. Ex. netsh advfirewall firewall delete rule name="Open Port 80" protocol=TCP localport=80
REM C:\WCMLicServer\setfirewall.bat

netsh advfirewall firewall add rule name="Open Port 80" dir=in action=allow protocol=TCP localport=80

netsh advfirewall firewall add rule name="Open Port 3306" dir=in action=allow protocol=TCP localport=3306

netsh advfirewall firewall add rule name="Open Port 21" dir=in action=allow protocol=TCP localport=21

netsh advfirewall firewall add rule name="Open Port 8080" dir=in action=allow protocol=TCP localport=8080


pause
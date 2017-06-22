setx path "%path%;C:\WCMLicServer\MySQL\mysql-5.5.32\bin\;C:\WCMLicServer\jdk\jdk-7u80\bin\;C:\WCMLicServer\tomcat\8.0.9-x64\bin"
REM Remove the MySQL service
REM mysqld --remove MySQL 
REM mysqld --install-manual MySQL --defaults-file="C:\WCMLicServer\MySQL\mysql-5.5.32\my.ini"
REM This is the auto starting service for the mysql
C:\WCMLicServer\MySQL\mysql-5.5.32\bin\mysqld --install MySQL --defaults-file="C:\WCMLicServer\MySQL\mysql-5.5.32\my.ini"

REM Remove the service named 'Tomcat8'
REM tomcat8 //DS//Tomcat8 
REM Install the service named 'Tomcat8'
C:\WCMLicServer\tomcat\8.0.9-x64\bin\service install

REM Update the service startup to auto
C:\WCMLicServer\tomcat\8.0.9-x64\bin\tomcat8 //US//Tomcat8 --Startup=auto

netsh advfirewall firewall add rule name="Open Port 80" dir=in action=allow protocol=TCP localport=80

netsh advfirewall firewall add rule name="Open Port 3306" dir=in action=allow protocol=TCP localport=3306

netsh advfirewall firewall add rule name="Open Port 21" dir=in action=allow protocol=TCP localport=21

netsh advfirewall firewall add rule name="Open Port 8080" dir=in action=allow protocol=TCP localport=8080


REM Remove the MySQL service
REM C:\WCMLicServer\MySQL\mysql-5.5.32\bin\mysqld --remove MySQL 
REM mysqld --install-manual MySQL --defaults-file="C:\WCMLicServer\MySQL\mysql-5.5.32\my.ini"
REM This is the auto starting service for the mysql
echo Install mysql service
C:\WCMLicServer\MySQL\mysql-5.5.32\bin\mysqld --install MySQL --defaults-file="C:\WCMLicServer\MySQL\mysql-5.5.32\my.ini"
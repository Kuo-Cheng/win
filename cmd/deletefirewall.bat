
REM netsh advfirewall firewall add rule name="Open Port 80" dir=in action=allow protocol=TCP localport=80
netsh advfirewall firewall delete rule name="Open Port 80" protocol=TCP localport=80

REM netsh advfirewall firewall add rule name="Open Port 3306" dir=in action=allow protocol=TCP localport=3306
netsh advfirewall firewall delete rule name="Open Port 3306" protocol=TCP localport=3306


REM netsh advfirewall firewall add rule name="Open Port 21" dir=in action=allow protocol=TCP localport=21
netsh advfirewall firewall delete rule name="Open Port 21" protocol=TCP localport=21

REM netsh advfirewall firewall add rule name="Open Port 8080" dir=in action=allow protocol=TCP localport=8080
netsh advfirewall firewall delete rule name="Open Port 8080" protocol=TCP localport=8080

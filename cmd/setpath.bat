echo Set tomcat, mysql, java path
setx path "%path%;C:\WCMLicServer\MySQL\mysql-5.5.32\bin\;C:\WCMLicServer\jdk\jdk-7u80\bin\;C:\WCMLicServer\tomcat\8.0.9-x64\bin"

echo Set java home
setx JAVA_HOME "C:\WCMLicServer\jdk\jdk-7u80\"

echo Set catalina home
setx CATALINA_HOME "C:\WCMLicServer\tomcat\8.0.9-x64\"

java --version

if [ $?=0 ]
then
	echo "java is installed in your machine"
fi

start Tomcat
if [ $? -ne 0 ]
then
	echo "tomcat is not running in your machine"	
apt install wget unzip -y
cd /opt
wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.64/bin/apache-tomcat-9.0.64.zip
unzip apache-tomcat-9.0.64.zip
cd /opt/apache-tomcat-9.0.64/bin
chmod u+x *.sh
ln -s /opt/apache-tomcat-9.0.64/bin/startup.sh /usr/bin/startTomcat
ln -s /opt/apache-tomcat-9.0.64/bin/shutdown.sh /usr/bin/stopTomcat
start Tomcat
fi

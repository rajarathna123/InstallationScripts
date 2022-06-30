sudo apt update -y
sudo apt upgrade 
mysql --version 
if [ $? -ne 0 ]
then
	sudo apt install mysql-server -y
echo "mysql is installed "
fi


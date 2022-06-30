java --version
if [ $?=0 ]
then
	echo "java is already installed"
fi
java --version
if [ $? -ne 0 ]
then
	sudo apt upgrade -y
	sudo apt install default-jre -y
	echo "java is installed"
fi


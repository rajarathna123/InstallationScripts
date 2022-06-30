mvn --version
if [ $?=0 ]
then
	echo "maven already installed"      
fi
mvn --version
if [ $? -ne 0 ]
then
	sudo apt install maven -y
	echo "maven installed successfully"
fi



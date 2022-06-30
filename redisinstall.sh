redis-server -v
if [ $?=0 ]
then
        echo "radis-server is installed"
fi
radis-server -v
if [ $? -ne 0 ]
then
sudo apt-get update -y
sudo apt-get install redis -y
echo "redis installed"
fi



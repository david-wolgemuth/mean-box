
echo "\n\n\nUpdating Package Information\n\n\n"
apt-get -y update

echo "\n\n\nInstalling Git\n\n\n"
apt-get -y install git

echo "\n\n\nInstalling Dependencies\n\n\n"
apt-get -y install -y build-essential openssl libssl-dev pkg-config

echo "\n\n\nInstalling Node\n\n\n"
apt-get -y install node
apt-get -y install npm

echo "\n\n\nInstalling Mongo\n\n\n"
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927
echo "deb http://repo.mongodb.org/apt/ubuntu trusty/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list
apt-get update
apt-get install -y mongodb-org

echo "\n\n\nUpdating Node\n\n\n"
npm cache clean -f
npm install -g n
n stable

cp /usr/bin/nodejs /usr/bin/node

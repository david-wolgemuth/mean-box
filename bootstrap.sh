
function print_description { printf "\n\n\n$1\n\n\n\n" }

print_description "Updating Package Information"
apt-get -y update

print_description "Installing Git"
apt-get -y install git

print_description "Installing Dependencies"
apt-get -y install -y build-essential openssl libssl-dev pkg-config

print_description "Installing Node"
apt-get -y install node
apt-get -y install npm

print_description "Installing Mongo"
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927
echo "deb http://repo.mongodb.org/apt/ubuntu trusty/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list
apt-get update
apt-get install -y mongodb-org

print_description "Updating Node"
npm cache clean -f
npm install -g n
n stable

cp /usr/bin/nodejs /usr/bin/node

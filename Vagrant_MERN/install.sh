# Update Ubuntu
apt-get update
apt-get upgrade

# Install essentials
apt-get install -y git build-essential

# Install NodeJS and NPM
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
apt install -y nodejs


# Get MongoDB v.4 package
wget -qO - https://www.mongodb.org/static/pgp/server-4.0.asc | sudo apt-key add -
echo "deb [ arch=amd64 ] https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/4.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.0.list
apt-get update

# Install MongoDB
apt-get install -y mongodb-org
service mongod start

# Set mongoDB to run on start
systemctl enable mongod && sudo systemctl start mongod
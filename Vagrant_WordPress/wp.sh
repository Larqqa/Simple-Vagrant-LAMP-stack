# Variables
DBPASSWD=admin_123

# Remove default files from html
rm -r /var/www/html/*

cd /var/www/html

# Get WP files
wp core download

# Install WP
wp core config --dbuser=root --dbpass=$DBPASSWD --dbname=WordPress
wp db create
wp core install --url=localhost:8080 --title=Blog --admin_user=admin --admin_password=$DBPASSWD --admin_email=joku@jotain.com

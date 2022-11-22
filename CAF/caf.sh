#!/bin/bash

# You can exec directly by typing this command
# (if curl is installed else install it with "apt install curl -y")
# curl -sL https://gist.githubusercontent.com/GreepTheSheep/25f373f78f10b818be97c628abb81246/raw/pma_install_deb10.sh | bash -

echo "INSTALLATION PHPMYADMIN"
echo "--------------------------------------------------"
echo "BY: CAF"

echo "# Updating packages list"
apt update

echo "# Installing apache2 + PHP + MariaDB services"
apt install apache2 php mariadb-server -y

echo "# Installing PHP modules"
apt install php-{mbstring,zip,gd,xml,pear,gettext,cgi,mysql} libapache2-mod-php -y

echo "# Installing wget"
apt install wget -y

echo "# Downloading PHPMyAdmin 5.0.4"
wget https://files.phpmyadmin.net/phpMyAdmin/5.0.4/phpMyAdmin-5.0.4-all-languages.tar.gz

echo "# Creating PHPMyAdmin directory and coping content on it"
mkdir /var/www/html/phpmyadmin
tar xzf phpMyAdmin-5.0.4-all-languages.tar.gz --strip-components=1 -C /var/www/html/phpmyadmin

echo "# Creating PHPMyAdmin config file..."
cp /var/www/html/phpmyadmin/config{.sample,}.inc.php

echo "# Giving permissions to the config file"
chmod 660 /var/www/html/phpmyadmin/config.inc.php
chown -R www-data:www-data /var/www/html/phpmyadmin

echo "# Restarting apache2"
systemctl restart apache2

echo "# Connecting to MariaDB server and authorizing root to PHPMyAdmin"
mysql -u root -D mysql -e "UPDATE user SET plugin='mysql_native_password' WHERE User='root';FLUSH PRIVILEGES;"

clear

echo "------------------------------------------"
echo "Done!"
echo "Sebelum lu jalanin phpmyadmin, buat dulu root user nya, command: mysql_secure_installation
echo "------------------------------------------"
echo "."
echo ".."
echo "..."
echo "."
echo ".."
echo "..."
echo "------------------------------------------"
echo "Silahkan buka di browser " https://(domain / ip luwh)/phpmyadmin
echo "------------------------------------------"
echo "BY: CAF"
echo "#beFriend_withLinux"

#!/bin/bash

# Install Git if not already installed
sudo apt-get update
sudo apt-get install -y git

# Clone the Git repository
git clone https://github.com/mdn/beginner-html-site-styled.git

# Install Apache2 if not already installed
sudo apt-get install -y apache2

# Move the Git repository to Apache2's default root directory
sudo mv beginner-html-site-styled /var/www/html/

# Copy the website files to html directory
cd /var/www/html/
sudo cp -r /var/www/html/beginner-html-site-styled/* /var/www/html

# Restart Apache2 to apply changes
sudo service apache2 restart
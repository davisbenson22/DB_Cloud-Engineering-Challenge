#!/bin/bash
sudo yum update -y
sudo yum -y install httpd
sudo systemctl enable httpd
sudo service httpd start
sudo echo "Hello Graylog!" | sudo tee /var/www/html/index.html

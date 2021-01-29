#!/bin/bash
yum -y update
yum -y install httpd
myip=`curl http://169.254.169.254/latest/meta-data/local-ipv4`
echo "<h1>Say 'No' to Microsoft sucks!</h1>" > /var/www/html/index.html
sudo service httpd start
chkconfig httpd on

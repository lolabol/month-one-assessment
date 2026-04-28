#!/bin/bash
yum update -y
yum install httpd -y
systemctl start httpd
systemctl enable httpd

echo "<h1>Web Server $(hostname)</h1>" > /var/www/html/index.html


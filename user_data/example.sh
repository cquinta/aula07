#!/bin/bash
# Atualiza o repositório
apt-get update
# Instala o nginx
apt-get install -y curl wget
curl -fsSL https://get.docker.com/ | bash
apt-get install -y nginx 
echo "<html>" > /var/www/html/index.html
echo "<body>" >> /var/www/html/index.html

echo "<br><center>" >> /var/www/html/index.html
echo `curl -s http://169.254.169.254/latest/meta-data/instance-id` >> /var/www/html/index.html
echo "</center><br>" >> /var/www/html/index.html

echo "<br><center>" >> /var/www/html/index.html
echo `curl -s http://169.254.169.254/latest/meta-data/local-ipv4` >> /var/www/html/index.html
echo "</center><br>" >> /var/www/html/index.html

echo "<br><center>" >> /var/www/html/index.html
echo `curl -s http://169.254.169.254/latest/meta-data/placement/availability-zone` >> /var/www/html/index.html
echo "</center><br>" >> /var/www/html/index.html

echo "</body>" >> /var/www/html/index.html
echo "</html>" >> /var/www/html/index.html

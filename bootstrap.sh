#!/bin/bash
#updating and installing basic software
sudo apt-get update
sudo apt-get install -y apache2

echo "hi"
echo "my public ip is $(curl -s http://169.254.169.254/latest/meta-data/public-ipv4)"
cat > index.html <<END
<!DOCTYPE html> 
<html>
	<body>
		<h1>Heres our mark on this instance for NSSA 712</h1>		
	</body>
</html>
END
sudo rm /var/www/html/index.html
sudo mv index.html /var/www/html/index.html
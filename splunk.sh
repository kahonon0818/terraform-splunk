 #!/bin/bash

sudo yum update -y
sudo rm -rf /opt/splunk*
sudo yum install wget -y 
sudo cd /opt
sudo wget -O splunk-9.0.4.1-419ad9369127-Linux-x86_64.tgz "https://download.splunk.com/products/splunk/releases/9.0.4.1/linux/splunk-9.0.4.1-419ad9369127-Linux-x86_64.tgz"
sudo tar -zxvf splunk-9.0.4.1-419ad9369127-Linux-x86_64.tgz -C /opt
sudo cd /opt/splunk/bin/
sudo ./splunk start --accept-license --answer-yes --no-prompt --seed-passwd "abcd1234"
sudo sudo ./splunk enable boot-start
sudo echo "please go on the browser, access splunk on port 8000 , username: admin password: abcd1234 "
 

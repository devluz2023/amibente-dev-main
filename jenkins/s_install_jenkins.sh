#!/bin/bash

# Check if Jenkins is installed
# if ! dpkg -l | grep -q jenkins; then
#     echo "Jenkins is not installed on this system."
#     exit 1
# fi

# Stop Jenkins service
yes | sudo systemctl stop jenkins

# Remove Jenkins user along with its home directory

yes | sudo apt-get remove --purge jenkins

yes | sudo rm -rf /var/lib/jenkins

yes | sudo rm -rf /var/log/jenkins


yes | sudo deluser --remove-home jenkins

yes | sudo apt-get purge jenkins

yes | sudo systemctl disable jenkins

yes | sudo rm -rf /root/.jenkins/



yes | sudo rm /etc/systemd/system/jenkins.service

yes | sudo rm /usr/share/keyrings/jenkins.gpg

yes | sudo rm /etc/apt/sources.list.d/pkg_jenkins_io_debian_stable.list

sudo | sudo rm /etc/apt/sources.list.d/jenkins.list 

echo "Jenkins has been successfully uninstalled."




# Download Jenkins repository key
sudo wget -q -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key

# Add Jenkins repository to APT sources
echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian-stable binary/" | sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/null

# Update package index
sudo apt-get update -y

# Install Jenkins
sudo apt-get install jenkins -y

# Additional installation
# sudo apt-get install <package-name> -y

# Start Jenkins service
sudo systemctl start jenkins

# Print Jenkins initial admin password
echo "Initial admin password:"
yes | sudo cat /var/lib/jenkins/secrets/initialAdminPassword

# Print Jenkins status
sudo systemctl status jenkins



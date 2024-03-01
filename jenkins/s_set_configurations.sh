#!/bin/bash

# Stop Jenkins
sudo systemctl stop jenkins

# Remove the current Jenkins configuration file
sudo rm /etc/default/jenkins

sudo rm /var/lib/jenkins/config.xml

# Copy the new Jenkins configuration file
sudo cp configurations/jenkins /etc/default/jenkins

sudo cp configurations/config.xml /var/lib/jenkins/config.xml

sudo systemctl start jenkins
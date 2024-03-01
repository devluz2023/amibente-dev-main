#!/bin/bash

# Define Jenkins CLI command to install plugins
install_plugins() {
    java -jar jenkins-cli.jar -s http://jenkins:8080/ -auth fabio:fabio \
    install-plugin config-file-provider:3.8 sonar:2.14 slack:2.49 ssh-agent:1.22
}

# Define Jenkins CLI command to perform a safe restart
safe_restart() {
    java -jar jenkins-cli.jar -s http://jenkins:8080/ -auth fabio:fabio safe-restart
}

# Call functions to execute commands
echo "Install plugins:"
install_plugins
echo "Safe restart"
safe_restart


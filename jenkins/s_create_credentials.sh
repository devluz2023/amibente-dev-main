#!/bin/bash

# Jenkins CLI jar file path
CLI_JAR="java -jar jenkins-cli.jar"

# Jenkins URL
JENKINS_URL="http://18.228.255.6:8080/"

# Jenkins authentication credentials
AUTH="fabio:evo123"

# Function to create credentials domain by XML
create_credentials() {
    local DOMAIN="$1"
    local XML_FILE="$2"

    echo "Creating credentials for domain: $DOMAIN"

    # Execute Jenkins CLI command to create credentials domain by XML
    $CLI_JAR -s $JENKINS_URL -auth $AUTH create-credentials-by-xml  system::system::jenkins _ < "credentials/$XML_FILE"
}



# Create SSH credentials
create_credentials "ssh-dev" "ssh-dev.xml"

# Create Git credentials
create_credentials "evostackbitbucket" "git-credentials.xml"

# Create SonarQube credentials
create_credentials "sonarqube-app" "sonarqube-credentials.xml"

echo "Credentials creation process completed."



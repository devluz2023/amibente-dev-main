#!/bin/bash
fabio
# Define the list of job names
job_names="dev_nodejs dev_python"

# Loop through the list of job names
for job_name in $job_names
do
    # Create the job using jenkins-cli
    java -jar jenkins-cli.jar -s http://jenkins:8080/ -auth fabio:fabio create-job "$job_name" < pipelines/$job_name.xml
done

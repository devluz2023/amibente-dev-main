## to get a valid job

1.  java -jar jenkins-cli.jar -s  http://jenkins:8080/ -auth fabio:fabio get-job teste

## to create an job
2.  java -jar jenkins-cli.jar -s http://jenkins:8080/ -auth fabio:fabio \
create-job samplehellworlddocker < pipelines/config.xml


# to get an valid credentails 
1.  java -jar jenkins-cli.jar -s http://jenkins:8080/ -auth fabio:fabio \
get-credentials-as-xml  git-credentials

## create credentials 
java -jar jenkins-cli.jar -s http://18.228.255.6:8080/ -auth fabio:fabio \
create-credentials-domain-by-xml < credentials/ssh-dev.xml

## to shutdown
java -jar jenkins-cli.jar -s http://18.228.255.6:8080/ -auth fabio:fabio safe-shutdown


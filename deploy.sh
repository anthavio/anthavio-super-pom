#!/bin/bash

#REPO_OPTS="-Durl=http://oss.sonatype.org/content/repositories/snapshots -DrepositoryId=sonatype-oss-snapshots"
#mvn deploy:deploy-file -Dfile=$1 -DpomFile=$1 $REPO_OPTS

REPO_OPTS="-Durl=https://oss.sonatype.org/service/local/staging/deploy/maven2 -DrepositoryId=sonatype-oss-staging"
mvn gpg:sign-and-deploy-file -Dfile=pom.xml -DpomFile=pom.xml $REPO_OPTS
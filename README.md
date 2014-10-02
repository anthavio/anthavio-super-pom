anthavio-super-pom
==================
[![Build Status](https://vanek.ci.cloudbees.com/buildStatus/icon?job=anthavio-ci-example-snapshot)](https://vanek.ci.cloudbees.com/job/anthavio-ci-example-snapshot/)

Classic parent/super pom. Sets many many many defaults
  - license: lgpl-3.0
  - ciManagement: Cloudbees Jenkins
  - issueManagement: GitHub Issues
  - scm: GitHub repository
  - site: GitHub gh-pages
  - distributionManagement:
    - Sonnatype OSS Repository Hosting
    - GPG signing in profile `-Prelease`
    - Github repository tagging 
  - Maven plugin versions
  - Java compiler locked to 1.6
  - Build plugins
    - buildmetadata-maven-plugin - `${buildMetaData.skip}`
    - maven-enforcer-plugin - `${enforcer.skip}`
      - Maven: [3.1.1, 3.9.9]
      - Java: 1.6.0 - `${enforce.java.version}`
    - maven-source-plugin - `${maven.source.skip}`
    - maven-javadoc-plugin - `${maven.javadoc.skip}`

Use in pom.xml

```xml
  <parent>
		<groupId>net.anthavio.maven</groupId>
		<artifactId>anthavio-super-pom</artifactId>
		<version>2</version>
	</parent>
```

It expects that your settings.xml contains
- username/password for server id: `sonatype-oss-snapshots`
- username/password for server id: `sonatype-oss-releases`
- optinal: properties>gpg.passphrase>xxxxxxx unless command-line arg -Dgpg.passphrase=xxxxxxx is set

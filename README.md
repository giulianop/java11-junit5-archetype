# Forked from [deangerber](https://github.com/deangerber/java11-junit5-archetype.git)

# Java 11 + JUnit 5 Quick Start Maven Archetype

Maven archetype to create a project configured for Java 11 and using JUnit 5.

## Install archetype in local repository

Once you have cloned the repository locally. Just run the maven command below to install the archetype.

``` shell
mvn install
```

## Example using the archetype

When the archetype has been installed locally you can create a project using the command below. Just replace the parameter values with the actual values you want to use.

``` shell
mvn archetype:generate -DarchetypeGroupId=com.gmail.giuliano.panzironi -DarchetypeArtifactId=java11-junit5-archetype -DarchetypeVersion=1.0.0-SNAPSHOT -DgroupId=${GROUP} -DartifactId=${ARTIFACT} -Dversion=1.0.0-SNAPSHOT -DinteractiveMode=false
```

Or use the script *mvn-arch-11.sh*.

## References

* [Maven](https://maven.apache.org)
* [Maven Archetype](https://maven.apache.org/guides/introduction/introduction-to-archetypes.html)
* [JUnit 5](https://junit.org/junit5/)
* [Hamcrest](http://hamcrest.org/JavaHamcrest/)

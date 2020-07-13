#!/bin/bash

usage="$(basename "$0") [-h] [-g -a] -- use custom Maven archetype to generate a project configured for Java 11 and using JUnit 5
where:
        -h show this help text
        -g choose a group id
        -a choose an artifact id"

while getopts :h:g:a: option
do
case "${option}"
in
h) echo "$usage"
       exit
       ;;
g) GROUP=${OPTARG};;
a) ARTIFACT=${OPTARG};;
*) echo "$usage" >&2
        exit 1
        ;;
esac
done

if [ -z "$GROUP" ] || [ -z "$ARTIFACT" ]
  then
    echo "Error: group or artifact not supplied"
    exit 1
fi

mvn archetype:generate -DarchetypeGroupId=com.gmail.giuliano.panzironi -DarchetypeArtifactId=java11-junit5-archetype -DarchetypeVersion=1.0.0-SNAPSHOT -DgroupId=${GROUP} -DartifactId=${ARTIFACT} -Dversion=1.0.0-SNAPSHOT -DinteractiveMode=false

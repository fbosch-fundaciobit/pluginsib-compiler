#!/bin/bash

cd enforcer
mvn clean install -DskipTests
if [ $? -eq 0 ]; then
cd ..
else
cd ..
cd builder
mvn install -DskipTests
cd ..
fi

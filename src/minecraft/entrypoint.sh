#!/bin/sh

echo "Server folder contents:\n"
ls /server/

echo "Starting the server:\n"
java -jar /server/${JAR:-server.jar} nogui

#!/bin/sh

DEFAULT_NAME="dockerized valheim server"
DEFAULT_PUBLIC=1
DEFAULT_WORLD="world"

if [ -z "${PASSWORD}" ]; then
    PASSWORD_ARG=''
else
    PASSWORD_ARG="-password ${PASSWORD}"
fi

if [ -z "${MODIFIERS}" ]; then
    MODIFIERS_ARG=''
else
    MODIFIERS_ARG="-modifiers ${MODIFIERS}"
fi

echo "Server folder contents:\n"
ls /server

echo "Server options:\n"
echo "- Name: ${NAME:-$DEFAULT_NAME}\n"
echo "- Public: ${PUBLIC:-$DEFAULT_PUBLIC}\n"
echo "- Password: ${PASSWORD:-None}\n"

echo "Game options:\n"
echo "- World: ${WORLD:-$DEFAULT_WORLD}\n"
echo "- Modifiers: ${MODIFIERS:-None}\n"

echo "Starting the server:\n"
export LD_LIBRARY_PATH=./linux64:$LD_LIBRARY_PATH
./valheim_server.x86_64 \
    -nographics -batchmode -savedir /data -port 2456 \
    -name ${NAME:-$DEFAULT_NAME} -public ${PUBLIC:-$DEFAULT_PUBLIC} -world ${WORLD:-$DEFAULT_WORLD} \
    $PASSWORD_ARG$MODIFIERS_ARG

#!/bin/bash

echo -n "Input path:"
read path
var=$(eval getent passwd {$(awk '/^UID_MIN/ {print $2}' /etc/login.defs)..$(awk '/^UID_MAX/ {print $2}' /etc/login.defs)} | cut -d: -f1)

exec 3>logs
for user in $var
do
sudo mkdir -p /${path}/${user}
echo "Create new directory to ${user} /${path}/${user}">&3 
echo "Create new directory to ${user} /${path}/${user}"
sudo chmod 755 /${path}/${user}
sudo chown ${user} /${path}/${user}
done

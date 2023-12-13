#!/bin/bash
apt install systemctl -y
echo Start
/setup-full-8.3.24.1342-x86_64.run  --mode unattended --enable-components server,ws
echo "link"
systemctl link /opt/1cv8/x86_64/8.3.24.1342/srv1cv8-8.3.24.1342@.service
systemctl enable srv1cv8-8.3.24.1342@
systemctl start srv1cv8-8.3.24.1342@default
echo "status"
systemctl status srv1cv8-8.3.24.1342@default
/pusk/ite-pusk-linux.sh start
/pusk/ite-pusk-linux.sh status
echo Finish

#!/bin/bash

#Update hostname
sed -i -E "s/HOST = [^)]+/HOST = $HOSTNAME/g" /opt/oracle/product/18c/dbhomeXE/network/admin/listener.ora
sed -i -E "s/HOST = [^)]+/HOST = $HOSTNAME/g" /opt/oracle/product/18c/dbhomeXE/network/admin/tnsnames.ora


/etc/init.d/oracle-xe-18c start
#maybe later -> /etc/init.d/ssh start
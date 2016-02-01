#!/bin/bash

groupadd www-data
useradd -g www-data www-data

mkdir -p '/.puphpet-stuff/shell'

wget --quiet --tries=5 --connect-timeout=10 --no-check-certificate -O '/.puphpet-stuff/shell/os-detect.sh' 'https://raw.githubusercontent.com/puphpet/puphpet/master/archive/puphpet/shell/os-detect.sh'
wget --quiet --tries=5 --connect-timeout=10 --no-check-certificate -O '/.puphpet-stuff/shell/initial-setup.sh' 'https://raw.githubusercontent.com/puphpet/puphpet/master/archive/puphpet/shell/initial-setup.sh'
wget --quiet --tries=5 --connect-timeout=10 --no-check-certificate -O '/.puphpet-stuff/shell/install-puppet.sh' 'https://raw.githubusercontent.com/puphpet/puphpet/master/archive/puphpet/shell/install-puppet.sh'

chmod +x '/.puphpet-stuff/shell/os-detect.sh'
chmod +x '/.puphpet-stuff/shell/initial-setup.sh'
chmod +x '/.puphpet-stuff/shell/install-puppet.sh'

source '/.puphpet-stuff/shell/initial-setup.sh' '/.puphpet-stuff'
source '/.puphpet-stuff/shell/install-puppet.sh'

yum -y install http://repo.puphpet.com/centos/bindfs-1.12.3-1.el6.x86_64.rpm
yum -y install http://repo.puphpet.com/centos/bindfs-debuginfo-1.12.3-1.el6.x86_64.rpm

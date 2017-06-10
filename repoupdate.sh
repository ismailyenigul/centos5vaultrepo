#!/bin/sh


export PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin:/root/bin
wget --no-check-certificate https://raw.githubusercontent.com/ismailyenigul/centos5vaultrepo/master/Centos5-Vault.repo && \
centosrev=`cut -d " " -f 3 /etc/redhat-release` && \
perl -pi -e "s:RELEASE:$centosrev:g" Centos5-Vault.repo && \
mkdir -p /etc/yum.repos.d/old && \
mv -f /etc/yum.repos.d/*.repo /etc/yum.repos.d/old && \
cp -f Centos5-Vault.repo /etc/yum.repos.d/Centos5-Vault.repo


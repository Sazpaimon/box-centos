#!/bin/bash

yum -y install wget perl ruby

yum -y groupinstall "Development tools"
yum -y install kernel-headers kernel-devel kernel-devel-2.6.32-573.el6.x86_64

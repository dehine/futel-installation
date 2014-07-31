#!/usr/bin/env bash
# local script to make baseinstall from test_32

set -x

do_ip=$1

scp -o StrictHostKeyChecking=no -r . root@$do_ip:/tmp/vagrant
ssh -o StrictHostKeyChecking=no root@$do_ip /tmp/vagrant/src/centos6_32_baseinstall.sh
ssh -o StrictHostKeyChecking=no root@$do_ip "rm -rf /tmp/vagrant"
ssh -o StrictHostKeyChecking=no root@$do_ip "halt now"
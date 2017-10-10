#!/bin/bash
apt-get update
# install curl to fix broken wget while retrieving content from secured sites
apt-get -y --no-install-recommends install curl cloud-init

echo "datasource_list: [ NoCloud, ConfigDrive, None ]" \
	> /etc/cloud/cloud.cfg.d/90_dpkg.cfg

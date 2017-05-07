#!/bin/bash
# Purpose: Run all playbooks at once
# Use with caution!
# Auhor: Mauricio Rojas / pinrojas.com

## Here we go!
echo "$(date) Here we go!"

# Uncomment just in case you need to build your host and group vars and YML files
# echo "$(date) Creating inventory, group and host vars and YML files"
# ansible-playbook build.yml

# Activating hacking in ansible
echo "$(date) Activating hacking in ansible"
source /home/dev/ansible/hacking/env-setup

cd /home/dev/packet-sdnlab 

# Creating Packet.net device
echo "$(date) Creating packet device for SDWAN"
ansible-playbook pk-reset.yml

echo "$(date) Ready to start installing Nuage"

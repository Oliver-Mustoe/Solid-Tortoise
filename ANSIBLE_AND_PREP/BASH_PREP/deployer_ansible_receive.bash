# Script to setup Linux (CentOS 7) hosts for Ansible SSH
# Version: 0.1
# Add deployer user
sudo useradd -mk /etc/skel -s /bin/bash -d /home/deployer -G wheel deployer

# Set a password for "deployer" (will require a prompt, MUST BE SAME ACROSS ALL SYSTEMS)
sudo passwd deployer
wait

# Change to deployer user
sudo su - deployer
wait

# Create "sys265" file
echo "deployer     ALL=(ALL)     NOPASSWD: ALL" >> sys265

# Copy sys265 to "/etc/sudoers.d/sys264"
cp sys265 /etc/sudoers.d/sys265
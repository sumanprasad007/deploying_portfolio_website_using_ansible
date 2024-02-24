#!/bin/bash

# Install required packages
sudo yum install -y python3 git sshpass ansible

# Create the 'ansible' user and set the password
sudo useradd -m -s /bin/bash ansible
echo "ansible:test@101" | sudo chpasswd

# Add the 'ansible' user to the 'wheel' group
sudo usermod -aG wheel ansible

# Uncomment the '%wheel NOPASSWD:ALL' line in the visudo file
sudo sed -i '/%wheel NOPASSWD:ALL/s/^#//g' visudo

# Uncomment the 'PasswordAuthentication yes' line in the sshd_config file
# sudo sed -i '/PasswordAuthentication yes/s/^#//g' /etc/ssh/sshd_config
sudo sed -i 's/^PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config

# Restart the sshd service
sudo systemctl restart sshd

# Check the status of sshd
sudo systemctl status sshd

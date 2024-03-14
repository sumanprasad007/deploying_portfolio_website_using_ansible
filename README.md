# Portfolio Website Deployment with Ansible Role 🌐

## Overview

This repository contains an Ansible role for deploying a portfolio website. The role ensures efficient package management, installs a web server, and copies the necessary files to the server. It's a streamlined process designed to make deploying your portfolio website a breeze.

## Table of Contents

- [Prerequisites](#prerequisites)
- [Components](#components)
- [Why Ansible?](#why-ansible)
- [Getting Started](#getting-started)
- [Usage](#usage)
- [Contributing](#contributing)


## Prerequisites

Before you start, ensure you have the following:

- Ansible installed on your local machine.
- SSH access to the target server.

## Components

### Ansible Role Structure

The Ansible role is organized into the following directories:

- **tasks:** Contains the main playbook tasks.
- **handlers:** Includes handlers for events triggered in tasks.
- **defaults:** Stores default variable values.
- **vars:** Contains variable definitions.
- **files:** Holds files needed for deployment.
- **meta:** Defines role dependencies.

## Why Ansible?

Ansible is an open-source automation tool that simplifies complex infrastructure tasks. Here's why it's a great choice for deploying your portfolio website:

- **Infrastructure as Code (IaC):** Ansible allows you to define your infrastructure as code, making it easy to version, share, and replicate.

- **Agentless:** Ansible doesn't require any agents on managed nodes, simplifying setup and management.

- **Declarative Syntax:** Uses YAML, providing a human-readable and easy-to-understand syntax.

- **Community and Extensibility:** A large community and extensive module library make it easy to find solutions and extend functionality.

## Getting Started

Follow these steps to get started with deploying your portfolio website:

1. Clone this repository: `git clone https://github.com/sumanprasad007/deploying_portfolio_website_using_ansible.git`
2. Navigate to the project directory: `cd deploying_portfolio_website_using_ansible`
3. Edit the Ansible variables in `vars/main.yml` & `inventory` to match your server configuration.
4. Run the Ansible playbook: `ansible-playbook -i inventory main.yml`

## Usage

### Configuring Variables

Adjust the variables in `vars/main.yml` to match your environment and website setup. Customize package names, web server configurations, and file paths as needed.

### Commands to Folllow along:

```bash
#!/bin/bash

# Update packages
sudo yum update

# Install epel-release
yes | sudo yum install epel-release

# Update packages again
sudo yum update

# Install Ansible
yes | sudo yum install ansible

# Clone the repository
git clone https://github.com/sumanprasad007/deploying_portfolio_website_using_ansible.git

# Navigate to the repository directory
cd deploying_portfolio_website_using_ansible

# Make setup_script.sh executable
chmod +x setup_script.sh

# Run setup_script.sh
./setup_script.sh

# Open sudoers file for editing
sudo visudo

# Uncomment the '%wheel ALL=(ALL) ALL' line
# Press Ctrl+x, then press y to save and exit

# Check the status of the SSH service
sudo systemctl status sshd
```

### Deploying the Website

Run the Ansible playbook to deploy your portfolio website:

```bash
ansible-playbook -i inventory main.yml

### Contributing

If you'd like to contribute, feel free to open an issue or submit a pull request. We welcome improvements and suggestions!
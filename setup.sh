#!/bin/bash

brew_path=$(which brew)


if [ $brew_path = 'brew not found']; then
    echo "Install Homebrew."
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
    echo "Homebrew already installed."
fi

ansible_path=$(which ansible)
if [ $ansible_path = 'ansible not found']; then
    echo "Install ansible & ansible-galaxy."
    brew update
    brew install ansible
    brew link ansible

    ansible-galaxy install hnakamur.homebrew-packages
    ansible-galaxy install hnakamur.homebrew-cask-packages
else
    echo "Ansible already installed."
fi

echo "Install applications."
ansible-playbook -i hosts playbook.yml


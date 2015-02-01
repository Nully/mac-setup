# Setup Mac OS X with Ansible

## Install homebrew

```
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

## Install ansible

```
brew install ansible
```

## Install ansible galaxy

```
ansible-galaxy install hnakamur.homebrew-packages
ansible-galaxy install hnakamur.homebrew-cask-packages
```

## Install machine

```
ansible-playbook -i hosts playbook.yml
```

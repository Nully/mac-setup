# Setup Mac OS X with Ansible

## Xcode installed

```
$ xcode-select --install
```

## Requirements

**install Homebrew**

https://brew.sh/ja/

```
$ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

## ssh connection config setup

```
$ CFG=`<< CFG
Host github.com
    User git
    HostName github.com
    IdentityFile ~/.ssh/id_rsa
CFG`
$ echo $CFG >> .ssh/config
```

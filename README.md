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

**install ansible**

```
$ brew install ansible
```

**ssh connection config setup**

```
$ CFG=`<< CFG
Host github.com
    User git
    HostName github.com
    IdentityFile ~/.ssh/id_rsa
CFG`
$ echo $CFG >> .ssh/config
```

**setup ansible inventory**

copy example file and change `ansible_become_user`.

```
$ cp inventory.ini.example inventory.ini
```


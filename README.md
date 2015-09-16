Vagrantfile for development
====

Vagrantfile and some settings for development.

### Description

You can use enviroment below.

- CentOS7

Vagrant up with provisioning by ansible.

And you can use packages below as soon as 'vagrant up' finishing.

- PHP5.6
- nginx
- Some packages
  - zsh
  - tmux
  - telnet
  - git
  - redis

Thas settinigs in `provisioning/vars/main.yml'.

### Requirement

- Vagrant 1.7.1
- Virtualbox 4.3
- Ansible 1.9.2

### Install

Before installing, you need to install Vagrant, VirtualBox and Ansible.

```shell
$ git clone git@github.com:sota1235/Vagrantfile.git

$ cd Vagrantfile

$ vagrant up
```

### Contribution

Bug reports and pull requests are welcome on GitHub at https://github.com/sota1235/Vagrantfile. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.

### Licence

This software is released under the MIT License, see LICENSE.txt.

## Author

[@sota1235](https://github.com/sota1235)

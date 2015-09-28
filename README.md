# Magento-box

This box consists of:

* Ansible
* Ubuntu 14.04 LTS
* Vagrant

Ansible automatically installs next software and tools:
* Nginx
* MariaDB
* phpMyAdmin
* Magento (latest version from https://github.com/OpenMage/magento-mirror)
* n98-magerun
* Mailcather
* Redis-server
* Vim, htop, git, unzip

# Magento-box installation

1. Clone the repository
2. Now run `vagrant up` and wait about 1h

## URLs

* **Domain:** http://magento-store.dev
* **Web Root:** http://192.168.33.99
* **phpMyAdmin:** http://192.168.33.99/phpMyAdmin
* **Mailcatcher:** http://192.168.33.99:82
 
## Features

### Mailcatcher

Stops e-mails going to their intended recipients and instead shows them in a web interface, which is at http://192.168.33.99:82, which allows you to see the e-mails that have been sent.



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

### Troubleshooting
1) in case of no downloading boxes or other on win7 with empty error install <a href="https://www.microsoft.com/en-us/download/confirmation.aspx?id=5555">MS Visual C++ 2010 x86 Redistributables</a>
2) in case of "vagrant up" timeout enable cpu virtualization in BIOS, check VM messages with "v.gui = true" for "magento_ansible"


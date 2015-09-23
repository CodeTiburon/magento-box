#!/bin/bash

chmod 550 mage
chmod -R 777 app/etc
chmod -R 777 var
chmod -R 777 media
 
./mage mage-setup .

php -f install.php -- \
        --license_agreement_accepted "yes" \
        --locale "en_US" \
        --timezone "America/Los_Angeles" \
        --default_currency "USD" \
        --db_host "127.0.0.1" \
        --db_name "{{ magento.database.name }}" \
        --db_user "{{ magento.database.user }}" \
        --db_pass "{{ magento.database.password }}" \
        --url "http://{{ magento.url }}/" \
        --use_rewrites "yes" \
        --use_secure "no" \
        --secure_base_url "" \
        --use_secure_admin "no" \
        --admin_firstname "Store" \
        --admin_lastname "Owner" \
        --admin_email "coder@magentogarden.com" \
        --admin_username "{{ magento.admin.user }}" \
        --admin_password "{{ magento.admin.password }}"
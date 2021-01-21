#### **(step 3)** Create SSH Keys for user running Redmine
***

As we need to send commands over SSH in **non-interactive mode**, the SSH key **must not** have passphrase (```-N ''``` argument).
Also, it's better to store SSH Keys **outside** of REDMINE_ROOT path so

    root$ su - redmine
    redmine$ mkdir ssh_keys
    redmine$ ssh-keygen -m PEM -N '' -f ssh_keys/redmine_gitolite_admin_id_rsa

On Bitnami stack :

    bitnami$ cd /opt/bitnami/apps/redmine/
    bitnami$ mkdir ssh_keys
    bitnami$ chgrp daemon ssh_keys
    bitnami$ ssh-keygen -m PEM -N '' -f ssh_keys/redmine_gitolite_admin_id_rsa
    bitnami$ chmod 640 ssh_keys/*

If you're using Apache to run Redmine :

    root# sudo -u www-data  mkdir -p            /var/www/redmine/ssh_keys
    root# sudo -u www-data  ssh-keygen -m PEM -N '' -f /var/www/redmine/ssh_keys/redmine_gitolite_admin_id_rsa

Make sure SSH public key is created with key format PEM (use [-m](https://man.openbsd.org/ssh-keygen.1#m) PEM parameter with ssh-keygen).

You will have to [configure the plugin](#step-9-finish-installation---configuration) to point to this path.

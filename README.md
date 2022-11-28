## FOR DEBIAN

```bash
# apt update && apt upgrade
# apt install git -y
# git clone https://github.com/CAF-ID/PHPMYADMIN/
# cd PHPMYADMIN/CAF
# bash caf.sh
Lakukan konfigurasi pada file berikut
# nano /var/www/html/phpmyadmin/config.inc.php
dan yang diubah adalah:
$cfg['Servers'][$i]['AllowNoPassword'] = false; menjadi => $cfg['Servers'][$i]['AllowNoPassword'] = true;

```

#BEFRIEND_WITHLINUX
NOTE: Debian harus nyambung ke internet



BY: CAF

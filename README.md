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
$cfg['Servers'][$i]['AllowNoPassword'] = true;
```


Untuk tutorial silahkan kunjungi:
```bash
https://(domain atau IP kalian)/CAF
```

#BEFRIEND_WITHLINUX

BY: CAF

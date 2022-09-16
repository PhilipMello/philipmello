# To install aaPanel on your server, run the following command:
---

## aaPanel installation script

### Requirements:

Memory:
512M or more, 768M or more is recommended (Pure panel for about 60M of system memory)

Hard disk:
More than 100M available hard disk space (Pure panel for about 20M disk space)

System:
CentOS 7.1+ (Ubuntu20, Debian10), to ensure that it is a clean operating system, there is no other environment with Apache/Nginx/php/MySQL installed (the existing environment can not be installed)

Linux Panel Installation Command
aaPanel is developed based on Centos, we recommend using Centos to install it

Centos
```
yum install -y wget && wget -O install.sh http://www.aapanel.com/script/install_6.0_en.sh && bash install.sh aapanel
```

Ubuntu/Deepin
```
wget -O install.sh http://www.aapanel.com/script/install-ubuntu_6.0_en.sh && sudo bash install.sh aapanel
```

Debian
```
wget -O install.sh http://www.aapanel.com/script/install-ubuntu_6.0_en.sh && bash install.sh aapanel
```

# aaPanel Management script

## Management

Stop
```
service bt stop
```
Start
```
service bt start
```
Restart
```
service bt restart
```
Uninstall
```
service bt stop && chkconfig --del bt && rm -f /etc/init.d/bt && rm -rf /www/server/panel
```
View current port of control panel
```
cat /www/server/panel/data/port.pl
```
Change port of control panel，e.g. 8881（centos 6 Operation System）
```
echo '8881' > /www/server/panel/data/port.pl && service bt restart iptables -I INPUT -p tcp -m state --state NEW -m tcp --dport 8881 -j ACCEPT service iptables save service iptables restart
```
Change port of control panel，e.g. 8881（centos 7 Operation System）
```
echo '8881' > /www/server/panel/data/port.pl && service bt restart firewall-cmd --permanent --zone=public --add-port=8881/tcp firewall-cmd --reload
```
Force to change MySQL manager (root) Password，e.g. 123456
```
cd /www/server/panel && python tools.py root 123456
```
Change control Panel login password，e.g. 123456
```
cd /www/server/panel && python tools.py panel 123456
```
Site Configuration location
```
/www/server/panel/vhost
```
Delete banding domain of control panel
```
rm -f /www/server/panel/data/domain.conf
```
Clean login restriction
```
rm -f /www/server/panel/data/*.login
```
View control panel authorization IP
```
cat /www/server/panel/data/limitip.conf
```
Stop access restriction
```
rm -f /www/server/panel/data/limitip.conf
```
View permission domain
```
cat /www/server/panel/data/domain.conf
```
Turn off control panel SSL
```
rm -f /www/server/panel/data/ssl.pl && /etc/init.d/bt restart
```
View control panel error logs
```
cat /tmp/panelBoot
```
View database error log
```
cat /www/server/data/*.err
```
Site Configuration directory(nginx)
```
/www/server/panel/vhost/nginx
```
Site Configuration directory(apache)
```
/www/server/panel/vhost/apache
```
Site default directory
```
/www/wwwroot
```
Database backup directory
```
/www/backup/database
```
Site backup directory
```
/www/backup/site
```
Site logs
```
/www/wwwlogs
```

<img src="https://forum.aapanel.com/assets/files/2019-05-17/1558098091-60956-home.png">

<img src="https://forum.aapanel.com/assets/files/2020-05-29/1590749768-246140-tmp.png">

<img src="https://forum.aapanel.com/assets/files/2020-05-29/1590750516-908036-tmp.png">

<img src="https://forum.aapanel.com/assets/files/2020-05-29/1590749878-802908-tmp.png">

<img src="https://forum.aapanel.com/assets/files/2020-05-29/1590750125-428227-tmp.png">

<img src="https://forum.aapanel.com/assets/files/2020-05-29/1590750281-633474-tmp.png">
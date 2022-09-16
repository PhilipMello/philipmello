# To install aaPanel on your server, run the following command:
---

## aaPanel installation script ##

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

<img src="https://forum.aapanel.com/assets/files/2019-05-17/1558098091-60956-home.png">
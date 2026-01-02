#!/bin/bash
#Dipl.-Ing. Johannes Strasser
#wistcon 
#sensingbox start up script at boot

#1. free up - EEPROM
/lib/cgi-bin/unbind_EEPROM_I2C2_0x54.sh &&

#2. run firmware
/lib/cgi-bin/firmware &&

#3. start PHP tasks
/usr/bin/php /var/www/startupSetting.php > /dev/null &

wait


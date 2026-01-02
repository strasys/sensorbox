#!/bin/sh
#
#wistcon
#Dipl.-Ing. Johannes Strasser
#Skript to write EEPROM
#Date: 30.12.2025

sudo ./rweeprom w 2 5 0 "Dipl.-Ing. Johannes Strasser|www.wistcon.at|Kopfingi.I.AT       "
wait
sudo ./rweeprom w 2 5 64 "EL-200-010-001 rev.2.0                                          "
wait
read -p 'Production Date: ' productiondate
sudo ./rweeprom w 2 5 128 "$productiondate                                                        "
wait
read -p 'ProductID: ' productid
sudo ./rweeprom w 2 5 192 "$productid    "
wait
sudo ./rweeprom w 2 5 256 "extension1:44:HUMIDITY:                                         "
wait
sudo ./rweeprom w 2 5 320 "extension2:xx:empty:                                            "
wait
sudo ./rweeprom w 2 5 384 "extension3:xx:empty:                                            "
wait
sudo ./rweeprom w 2 5 448 "extension4:xx:empty:                                            "
wait
sudo ./rweeprom w 2 5 512 "RTC:OFF:                                                        "



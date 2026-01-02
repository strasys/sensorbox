#!/bin/bash
# Pfad zum AT24 EEPROM Treiber auf I2C-Bus 2 (Adresse 0x54)
TARGET="2-0054"
DRIVER_PATH="/sys/bus/i2c/drivers/at24"

if [ -e "$DRIVER_PATH/$TARGET" ]; then
    echo "Loese Cape EEPROM 0x54 vom Treiber..."
    echo "$TARGET" | sudo tee "$DRIVER_PATH/unbind" > /dev/null
    echo "Adresse 0x54 ist nun frei (UU sollte verschwinden)."
else
    echo "Geraete $TARGET nicht gefunden oder bereits freigegeben."
fi


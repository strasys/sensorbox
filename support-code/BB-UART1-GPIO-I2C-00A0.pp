# 0 "BB-UART1-GPIO-I2C-00A0.dts"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "BB-UART1-GPIO-I2C-00A0.dts"
# 9 "BB-UART1-GPIO-I2C-00A0.dts"
/dts-v1/;
/plugin/;

# 1 "/opt/source/dtb-6.12.x/include/dt-bindings/gpio/gpio.h" 1
# 13 "BB-UART1-GPIO-I2C-00A0.dts" 2
# 1 "/opt/source/dtb-6.12.x/include/dt-bindings/pinctrl/am33xx.h" 1
# 9 "/opt/source/dtb-6.12.x/include/dt-bindings/pinctrl/am33xx.h"
# 1 "/opt/source/dtb-6.12.x/include/dt-bindings/pinctrl/omap.h" 1
# 10 "/opt/source/dtb-6.12.x/include/dt-bindings/pinctrl/am33xx.h" 2
# 14 "BB-UART1-GPIO-I2C-00A0.dts" 2


&{/chosen} {
    overlays {
        BB-UART1-GPIO-I2C-00A0.kernel = "Sat Oct 25 18:22:45 2025";
    };
};


&ocp {
    P9_14_pinmux { status = "disabled"; };
    P9_15_pinmux { status = "disabled"; };
    P9_17_pinmux { status = "disabled"; };
    P9_18_pinmux { status = "disabled"; };
    P9_19_pinmux { status = "disabled"; };
    P9_20_pinmux { status = "disabled"; };
    P9_24_pinmux { status = "disabled"; };
    P9_26_pinmux { status = "disabled"; };
};


&am33xx_pinmux {
    bb_uart1_gpio_i2c_pins: pinmux_bb_uart1_gpio_i2c_pins {
        pinctrl-single,pins = <

            ((((0x184)) & 0xffff) - (0x0800)) (0) (0)
            ((((0x180)) & 0xffff) - (0x0800)) (((1 << 5) | (1 << 4))) (0)


            ((((0x080)) & 0xffff) - (0x0800)) (0) (7)
            ((((0x078)) & 0xffff) - (0x0800)) (0) (7)


            ((((0x178)) & 0xffff) - (0x0800)) (((1 << 5) | (1 << 4))) (2)
            ((((0x174)) & 0xffff) - (0x0800)) (((1 << 5) | (1 << 4))) (2)


            ((((0x17C)) & 0xffff) - (0x0800)) (((1 << 5) | (1 << 4))) (3)
            ((((0x170)) & 0xffff) - (0x0800)) (((1 << 5) | (1 << 4))) (3)
        >;
    };
};


&uart1 {
    pinctrl-names = "default";
    pinctrl-0 = <&bb_uart1_gpio_i2c_pins>;
    status = "okay";
};


&i2c1 {
    pinctrl-names = "default";
    pinctrl-0 = <&bb_uart1_gpio_i2c_pins>;
    status = "okay";
    clock-frequency = <100000>;
};


&i2c2 {
    pinctrl-names = "default";
    pinctrl-0 = <&bb_uart1_gpio_i2c_pins>;
    status = "okay";
    clock-frequency = <100000>;
};


&{/} {
    leds {
        compatible = "gpio-leds";
        pinctrl-names = "default";
        pinctrl-0 = <&bb_uart1_gpio_i2c_pins>;

        p9_14_gpio {
            label = "gpio-p9_14";
            gpios = <&gpio1 18 0>;
            default-state = "off";
        };

        p9_15_gpio {
            label = "gpio-p9_15";
            gpios = <&gpio1 16 0>;
            default-state = "off";
        };
    };
};

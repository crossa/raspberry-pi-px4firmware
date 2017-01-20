# raspberry-pi-px4firmware
树莓派飞控模块（遥控输入，PWM输出，编译配置文件，启动配置文件）

# 使用方法
git clone https://github.com/crossa/raspberry-pi-px4firmware

git clone https://github.com/PX4/Firmware.git

cp -rf raspberry-pi-px4firmware/* Firmware/

make posix_rpi_native_single

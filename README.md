# raspberry-pi-px4firmware
树莓派飞控模块（遥控输入，PWM输出，编译配置文件，启动配置文件）

# 使用方法
git clone https://github.com/crossa/raspberry-pi-px4firmware

git clone https://github.com/PX4/Firmware.git
cd Firmware/
git checkout <分支版本号>  #此处必须要做，否则编译会出错，因为主程序里面会读取版本号，切换过分枝才会有版本号
cp -rf raspberry-pi-px4firmware/* Firmware/

# 追加环境变量
export AUTOPILOT_HOST=XXX.XXX.XXX  #此处填写ip地址
export RPI_TOOLCHAIN_DIR=<your dir> #工具链目录，bin目录上一层
export CROSS_COMPILE_PREFIX=<your prefix> # 工具链前缀
export PATH=$RPI_TOOLCHAIN_DIR/bin:$PATH

#编译飞控固件，遇到子模块版本相关提示，默认选Y

make posix_rpi_cross_single

# 上传固件
make posix_rpi_cross_signle upload

#  首次启动飞控

登录到飞控主机后
./px4 px4_rpi.config 


# 注意事项

此飞控模块需配合PPM解码模块使用

git clone https://github.com/crossa/raspberry-pi-ppm-rc-in

./configuration

make

make install

sudo nohup ppmdecode -P

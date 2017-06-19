# 使用这个文件可在上位机交叉编译px4firmware
include(configs/posix_rpi_common)

# 设定交叉工具链
set(CMAKE_TOOLCHAIN_FILE ${PX4_SOURCE_DIR}/cmake/toolchains/Toolchain-arm-bcm2835-linux-gnueabihf-raspbian.cmake)


KERNEL_DIR=$PWD
export ARCH=arm
export SUBARCH=arm

export KBUILD_BUILD_USER="Sattarvoybek"
export KBUILD_BUILD_HOST="ROOT"

export CROSS_COMPILE="/home/sattarvoybek/root/kernels/arm-eabi-4.9-UBERTC/bin/arm-eabi-"
#export STRIP=STRIP="/home/sattarvoybek/root/kernels/arm-eabi-4.9-UBERTC/bin/arm-eabi-strip"
#MODULES_DIR=$KERNEL_DIR/out_modules

make msm8926-NX404J_defconfig
make -j16
./dtbToolCM -2 -o $KERNEL_DIR/dt.img -s 2048 -p $KERNEL_DIR/scripts/dtc/ $KERNEL_DIR/arch/arm/boot/dts/

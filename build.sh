export USE_CCACHE=1
export ARCH=arm
rm -f ./arch/arm/boot/dt.img
make
./scripts/dtc/dtc -p 1024 -O dtb -o ./arch/arm/boot/msm8974-g2-dcm.dtb ./arch/arm/boot/dts/msm8974-g2-dcm/msm8974-g2-dcm.dts
./scripts/dtc/dtc -p 1024 -O dtb -o ./arch/arm/boot/msm8974-v2-g2-dcm.dtb ./arch/arm/boot/dts/msm8974-g2-dcm/msm8974-v2-g2-dcm.dts
./scripts/dtc/dtc -p 1024 -O dtb -o ./arch/arm/boot/msm8974-v2-2-g2-dcm.dtb ./arch/arm/boot/dts/msm8974-g2-dcm/msm8974-v2-2-g2-dcm.dts
./scripts/dtbTool -s 2048 -o ./arch/arm/boot/dt.img -p ./scripts/dtc/ ./arch/arm/boot/

arm-none-linux-gnueabi-gcc -Os -DSP -DROLL -lm linpackc.c -o linpack
arm-none-linux-gnueabi-gcc -Os -DSP -DROLL -lm linpackc.c -mcpu=cortex-a8 -mtune=cortex-a8 -march=armv7-a -o linpack1
arm-none-linux-gnueabi-gcc -Os -DSP -DUNROLL -lm linpackc.c -mcpu=cortex-a8 -mtune=cortex-a8 -march=armv7-a -mfpu=neon -mfloat-abi=softfp -o linpack2
arm-none-linux-gnueabi-gcc -Os -DDP -DUNROLL -lm linpackc.c -mcpu=cortex-a8 -mtune=cortex-a8 -march=armv7-a -mfpu=neon -mfloat-abi=softfp -o linpack3
arm-none-linux-gnueabi-gcc -Os -DSP -DUNROLL -lm linpackc.c -o linpack4
arm-none-linux-gnueabi-gcc -Os -DSP -DUNROLL -lm linpackc.c -mcpu=cortex-a8 -mtune=cortex-a8 -march=armv7-a -mfpu=vfpv3 -mfloat-abi=softfp -o linpack5
arm-none-linux-gnueabi-gcc -DSP -DUNROLL -lm linpackc.c -o linpack6
arm-none-linux-gnueabi-gcc -O2 -DSP -DUNROLL -lm linpackc.c -mcpu=cortex-a8 -mtune=cortex-a8 -march=armv7-a -mfpu=neon -mfloat-abi=softfp -o linpack7
arm-none-linux-gnueabi-gcc -O3 -DSP -DUNROLL -lm linpackc.c -mcpu=cortex-a8 -mtune=cortex-a8 -march=armv7-a -mfpu=neon -mfloat-abi=softfp -o linpack8
arm-none-linux-gnueabi-gcc -Os -DSP -DUNROLL -lm linpackc.c -mcpu=cortex-a8 -march=armv7-a -mfpu=neon -mfloat-abi=softfp -o linpack9
arm-none-linux-gnueabi-gcc -Os -DSP -DUNROLL -lm linpackc.c -march=armv6j -mtune=arm1136jf-s -mcpu=arm1136jf-s -mfpu=vfp -mfloat-abi=softfp -o linpack.pixi
arm-none-linux-gnueabi-gcc -Os -DSP -DUNROLL -lm linpackc.c -o linpack.pixi1

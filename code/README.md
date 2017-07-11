# Setup
## SDK
- Extract zip files in `sdk/`

## Depencencies
- Make
- arm-none-eabi-gcc
  [Install](https://developer.arm.com/open-source/gnu-toolchain/gnu-rm/downloads) and set values in `sdk/components/toolchain/gcc/Makefile.*`
- nrfjprog
  [NRF5x Command line tools](https://www.nordicsemi.com/eng/Products/Bluetooth-low-energy/nRF51822)
- SEGGER J-Link
  Seems to be included in nrfjprog

## Commands
```
make #Compile all
make clean #Remove all build files
make flash #Compile and flash device
make debug #Compile with debug serial prints
```
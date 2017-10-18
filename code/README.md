# TODO
- [x] Fix command loop bug after g-code complete, NOT TESTED
- [ ] Verify feedrate functionality
- [x] Increase maximum feedrate speed, NOT TESTED
- [ ] Setting for maximum feedrate
- [x] Differ between G1 and G0 to discard current feedrate and use maximum speed, NOT TESTED
- [ ] Implement save settings functionality and add g-code commands

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
make debug #Compile and flash with debug serial prints
```
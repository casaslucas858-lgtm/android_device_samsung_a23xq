# Device Tree for Samsung Galaxy A23 5G (a23xq)

## Specifications

| Feature                 | Specification                                    |
| :---------------------- | :----------------------------------------------- |
| SoC                     | Qualcomm SM6375 Snapdragon 695 5G (6nm)         |
| CPU                     | Octa-core (2x2.2 GHz Kryo 660 Gold & 6x1.7 GHz) |
| GPU                     | Adreno 619                                       |
| Memory                  | 4GB / 6GB / 8GB RAM                              |
| Shipped Android Version | 12 (OneUI 4.1)                                   |
| Storage                 | 64GB / 128GB                                     |
| Battery                 | Li-Po 5000 mAh, non-removable                   |
| Display                 | 6.6 inches, 1080 x 2408 pixels, 90Hz             |
| Camera (Rear - Main)    | 50 MP, f/1.8, PDAF, OIS                          |
| Camera (Front)          | 8 MP, f/2.2                                      |

## Device Picture

![Samsung Galaxy A23 5G](https://fdn2.gsmarena.com/vv/bigpic/samsung-galaxy-a23-5g.jpg)

## Kernel Source

Available at: [Samsung Opensource](https://opensource.samsung.com/)

## Build Instructions
```bash
# Initialize repo
repo init -u https://github.com/LineageOS/android.git -b lineage-23.0 --git-lfs

# Clone device tree
git clone https://github.com/YOUR_USERNAME/android_device_samsung_a23xq device/samsung/a23xq

# Sync
repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags

# Extract proprietary files (with device connected via ADB)
cd device/samsung/a23xq
./extract-files.sh

# Setup environment and build
source build/envsetup.sh
lunch lineage_a23xq-userdebug
make bacon -j$(nproc --all)
```

## Status

**Working:**
- [ ] Boot
- [ ] Display
- [ ] Touch
- [ ] WiFi
- [ ] Bluetooth
- [ ] RIL (Calls/SMS/Data)
- [ ] Camera
- [ ] Audio
- [ ] Sensors
- [ ] GPS
- [ ] NFC

**Not working / Untested:**
- Everything (first build pending)

## Contributors

- **Lucas** - Initial device tree and SummitOS project

## License

Apache 2.0
## -NOTE: THIS IS NOT MEANT FOR PUBLIC USE, I AM NOT RESPONSIBLE FOR ANY DAMAGE CAUSED BY THIS REPO OR OTHER ARCHIVES CREATED BY ME, YOU ARE DOING THIS UNDER YOUR OWN RISK.


# Readme for nvidia TX2:
### Everything summarized in 3 scripts:

# For Jetson TX1/TX2 only: (Enable armhf,arm64 [aarch64] or ppc64le as a foreign architecture)
```
sudo dpkg --add-architecture arm64
sudo apt-get update
```

1. Installing Cuda 7.0:
```sudo bash cuda.sh```
(Reference: https://developer.nvidia.com/embedded/downloads; search for `CUDA Toolkit for L4T`)



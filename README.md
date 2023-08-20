# VT-Mininet: Virtual Time Enabled Mininet for SDN Emulation

## Introduction

This repository is forked in order to add support for Linux kernel 5.15.0. The original content will be largely modified and some of them are ignored. This is because the original content is used for the Mininet. However, I only need the kernel part. If you need the original content (include the origin README), please refer to the original repository.

## Installation

### Install Virtual Time Enabled Kernel

* Download kernel 5.15.0 from [The Linux Kernel Archives](https://www.kernel.org/pub/linux/kernel/v5.x/linux-5.15.tar.gz). Unzip it.
```
tar -zxvf linux-5.15.tar.gz
```
* Under "kernel_changes" directory, run following script so that source files under kernel_changes will replace orignal kernel code
```
./transfer.sh /Path/To/UnzippedKernel
```
* Change directory to unzipped kernel
	* You may need to configure kernel first. A easy way is to use existing configure file in your system
	```
	cp -vi /boot/config-`uname -r` .config
	yes "" | make oldconfig
	```
	* To compile kernel, modules and install them, you can run my script
	```
	sudo ./build_all.sh
	```
    * You may need to configure GRUB so that you can select which kernel to boot
    ```
    sudo vim /etc/default/grub
    GRUB_HIDDEN_TIMEOUT=15
    GRUB_HIDDEN_TIMEOUT_QUIET=false
    update-grub
    ```
    * Reboot and select the right kernel image in grub menu.

### Compile test program



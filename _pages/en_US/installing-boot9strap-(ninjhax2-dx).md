---
title: "Installing boot9strap (ninjhax2-dx)"
---

??? info "Technical Details (optional)"

    [Ninjhax2](https://github.com/smealum/ninjhax2.x) is an exploit for the game "Cubic Ninja" made by [smealum](https://github.com/smealum). This page uses an updated version of ninjhax by [zoogie](https://github.com/zoogie) called [ninjhax2-dx](https://github.com/zoogie/ninjhax2-dx), which supports 11.17.0.

!!! note

    This method requires a working 3DS camera.

!!! warning

    This process will overwrite your Cubic Ninja save file, if you have one.

### What You Need

* The game "Cubic Ninja"
* The latest release of [ninjhax2-dx](https://github.com/zoogie/ninjhax2-dx/releases)
* The latest release of [SafeB9SInstaller](https://github.com/d0k3/SafeB9SInstaller/releases/download/v0.0.7/SafeB9SInstaller-20170605-122940.zip) (direct download)
* The latest release of [boot9strap](https://github.com/SciresM/boot9strap/releases/download/1.4/boot9strap-1.4.zip) (direct download)
* The latest release of [nimdsphax](https://github.com/luigoalma/nimdsphax/releases/download/v1.0/nimdsphax_v1.0.zip) (direct download)
* The latest release of [Luma3DS](https://github.com/LumaTeam/Luma3DS/releases/latest) (the Luma3DS `.zip` file)

### Instructions

#### Section I - Prep Work

1. Power off your console
1. Insert your SD card into your computer
1. Copy `Launcher.dat` from the folder appropriate for your console from the ninjhax2-dx `.zip` file to the root of your SD card
    + The root of the SD card refers to the initial directory on your SD card where you can see the Nintendo 3DS folder, but are not inside of it
1. Copy `boot.firm` and `boot.3dsx` from the Luma3DS `.zip` to the root of your SD card
1. Create a folder named `boot9strap` on the root of your SD card
1. Copy `boot9strap.firm` and `boot9strap.firm.sha` from the boot9strap `.zip` to the `/boot9strap/` folder on your SD card
1. Copy `SafeB9SInstaller.bin` from the SafeB9SInstaller `.zip` to the root of your SD card
1. Create a folder named `3ds` on the root of your SD card if it does not already exist
    + This folder stores homebrew applications and data; it is different from the `Nintendo 3DS` folder that the console automatically generates
1. Copy the `nimdsphax` folder from the nimdsphax `.zip` to the `/3ds/` folder on your SD card
1. Reinsert your SD card into your console
1. Power on your console

!!! tip

    ![](/images/screenshots/ninjhax-root-layout.png)

!!! tip

    ![](/images/screenshots/boot9strap-folder.png)

!!! tip

    ![](/images/screenshots/nimdsphax-location.png)

#### Section II - ninjhax2-dx

1. Launch "Cubic Ninja" once and select "Create"
    + If prompted, delete all data
1. Select "QR Code"
1. Select "Scan QR Code"
1. On your computer, open the browser and go to [ninjhax2-dx website](https://zoogie.github.io/web/nh2dx/)
1. Select your console's region and hardware
1. On your console, scan the QR code
    + If the game exits to the HOME Menu, then the exploit has installed correctly
1. Launch "Cubic Ninja" again
1. Your console will have booted into the Homebrew Launcher
1. Launch nimdsphax from the list of homebrew
1. If the exploit was successful, you will have booted into SafeB9SInstaller
    + If your console freezes on a red screen, hold the POWER button until it turns off, then retry this section

#### Section III - Installing boot9strap

In this section, you will install custom firmware onto your console.

{% include ".include/install-boot9strap-safeb9sinstaller.md" %}
1. Once it is complete, press (A) to reboot your console
{% include ".include/configure-luma3ds.md" %}

{% include ".include/luma3ds-installed-note.md" %}

___

!!! success ""

    ### Continue to [Finalizing Setup](finalizing-setup)

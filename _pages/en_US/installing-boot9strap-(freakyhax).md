---
title: "Installing boot9strap (freakyhax)"
---

??? info "Technical Details (optional)"

    [freakyhax](https://plutooo.github.io/freakyhax/) is an exploit for the game Freakyforms Deluxe discovered and released by [plutooo](https://github.com/plutooo). It works on versions 9.0.0 through 11.17.0 on EUR, USA and JPN region consoles.

!!! info

    This method requires a working 3DS camera.

### What You Need

* A EUR/USA/JPN copy of Freakyforms Deluxe (eShop or cartridge)
* The latest release of [freakyhax](https://github.com/plutooo/freakyhax/releases/latest)
* The latest release of [SafeB9SInstaller](https://github.com/d0k3/SafeB9SInstaller/releases/download/v0.0.7/SafeB9SInstaller-20170605-122940.zip) (direct download)
* The latest release of [boot9strap](https://github.com/SciresM/boot9strap/releases/download/1.4/boot9strap-1.4.zip) (direct download)
* The latest release of [nimdsphax](https://github.com/luigoalma/nimdsphax/releases/download/v1.0/nimdsphax_v1.0.zip) (direct download)
* The latest release of [Luma3DS](https://github.com/LumaTeam/Luma3DS/releases/latest) (the Luma3DS `.zip` file)
* The latest release of [HBL otherapps](https://github.com/zoogie/ninjhax2.x/releases/download/v11.17/otherapps_with_CfgS_11.17.zip) (direct download)

### Instructions

#### Section I - Prep Work

1. Power off your console
1. Insert your SD card into your computer
1. Copy all files and folders inside the `/build/<your console and region>/exploit/` folder from the freakyhax `.zip` to the root of your SD card
    + The root of the SD card refers to the initial directory on your SD card where you can see the Nintendo 3DS folder, but are not inside of it
1. Copy the otherapp payload for your model/region/version from `otherapps_with_CfgS_11.17.zip` to the root of your SD card, then rename the payload to `otherapp.bin`
    + Do not add the `.bin` extension if you do not already see it
1. Copy `boot.firm` and `boot.3dsx` from the Luma3DS `.zip` to the root of your SD card
    + The root of the SD card refers to the initial directory on your SD card where you can see the Nintendo 3DS folder, but are not inside of it
1. Create a folder named `boot9strap` on the root of your SD card
1. Copy `boot9strap.firm` and `boot9strap.firm.sha` from the boot9strap `.zip` to the `/boot9strap/` folder on your SD card
1. Copy `SafeB9SInstaller.bin` from the SafeB9SInstaller `.zip` to the root of your SD card
1. Create a folder named `3ds` on the root of your SD card if it does not already exist
    + This folder stores homebrew applications and data; it is different from the `Nintendo 3DS` folder that the console automatically generates
1. Copy the `nimdsphax` folder from the nimdsphax `.zip` to the `/3ds/` folder on your SD card
1. Reinsert your SD card into your console
1. Power on your console

!!! tip

    ![](/images/screenshots/freakyhax-root-layout.png)

!!! tip

    ![](/images/screenshots/boot9strap-folder.png)

!!! tip

    ![](/images/screenshots/nimdsphax-location.png)

#### Section II - freakyhax

1. Reinsert your SD card into your console
1. Power on your console
1. Launch Freakyforms Deluxe
1. In the game menu, select `Play -> Camera -> Load a QR code`
1. Select the QR code
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

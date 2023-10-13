---
title: "Installing boot9strap (Steelhax)"
---

??? info "Technical Details (optional)"

    This method of using Seedminer for further exploitation uses your `movable.sed` file to write a custom save file for Steel Diver: Sub Wars, which can then be used to launch the Homebrew Launcher.

!!! warning

    This process will overwrite your Steel Diver: Sub Wars save file, if you have one. If you wish to preserve your Steel Diver: Sub Wars game data, you should make a backup of your `00000001.sav` file before overwriting it.

### What You Need

* The game "Steel Diver: Sub Wars" installed on your console
    * If you have downloaded it before, you can [redownload it](https://en-americas-support.nintendo.com/app/answers/detail/a_id/607/~/how-to-download-or-redownload-content-in-nintendo-3ds-eshop)
    * Your SD card must be inserted in your console to install Steel Diver: Sub Wars
* Your `movable.sed` file from completing [Seedminer](seedminer-(alternate))
* The latest release of [Steelhax](/assets/steelhax-release.zip) (direct download)
* The latest release of [SafeB9SInstaller](https://github.com/d0k3/SafeB9SInstaller/releases/download/v0.0.7/SafeB9SInstaller-20170605-122940.zip) (direct download)
* The latest release of [boot9strap](https://github.com/SciresM/boot9strap/releases/download/1.4/boot9strap-1.4.zip) (direct download)
* The latest release of [nimdsphax](https://github.com/luigoalma/nimdsphax/releases/download/v1.0/nimdsphax_v1.0.zip) (direct download)
* The latest release of [Luma3DS](https://github.com/LumaTeam/Luma3DS/releases/latest) (the Luma3DS `.zip` file)
* The latest release of [HBL otherapps](https://github.com/zoogie/ninjhax2.x/releases/download/v11.17/otherapps_with_CfgS_11.17.zip) (direct download)

### Instructions

#### Section I - Prep Work

In this section, you will copy some of the files that will be used to launch the Homebrew Launcher.

1. Power off your console
1. Insert your SD card into your computer
1. Copy `boot.firm` and `boot.3dsx` from the Luma3DS `.zip` to the root of your SD card
    + The root of the SD card refers to the initial directory on your SD card where you can see the Nintendo 3DS folder, but are not inside of it
1. Create a folder named `boot9strap` on the root of your SD card
1. Copy `boot9strap.firm` and `boot9strap.firm.sha` from the boot9strap `.zip` to the `/boot9strap/` folder on your SD card
1. Copy `SafeB9SInstaller.bin` from the SafeB9SInstaller `.zip` to the root of your SD card
1. Copy the `steelhax` folder from the `Steelhax-release.zip` to the root of your SD card
1. Copy the otherapp payload for your model/region/version from `otherapps_with_CfgS_11.17.zip` to the root of your SD card and rename it to `otherapp.bin`
    + Do not add the `.bin` extension if you do not already see it
1. Create a folder named `3ds` on the root of your SD card if it does not already exist
    + This folder stores homebrew applications and data; it is different from the `Nintendo 3DS` folder that the console automatically generates
1. Copy the `nimdsphax` folder from the nimdsphax `.zip` to the `/3ds/` folder on your SD card
1. Reinsert your SD card into your console
1. Power on your console

!!! tip

    ![](/images/screenshots/steelhax-root-layout.png)

!!! tip

    ![](/images/screenshots/boot9strap-folder.png)

!!! tip

    ![](/images/screenshots/nimdsphax-location.png)

#### Section II - Steelminer

In this section, you will create a hacked Steel Diver: Sub Wars save file that, when used, will load the Homebrew Launcher on your console.

1. Launch "Steel Diver: Sub Wars" once and select a Mii to initialize your save file
    + Decline the game update when prompted
    + If you have already updated the game, use the Data Management menu of the System Settings to delete the update
1. Exit "Steel Diver: Sub Wars"
1. Power off your console
1. Insert your SD card into your computer
1. Open [the SteelHax Save Tool website](https://3dstools.nhnarwhal.com/#/steelhax) on your computer
1. Select your `movable.sed` file
1. Select your region based on your console
1. Select "Build and Download"
1. Wait for the process to complete
1. Navigate to `Nintendo 3DS` -> `<ID0>` -> `<ID1>` -> `title` -> `00040000` -> `<8-character-region>` -> `data` on your SD card
    + **EUR Region**: `000d7e00`
    + **JPN Region**: `000d7c00`
    + **USA Region**: `000d7d00`
1. Copy the newly downloaded `00000001.sav` file to the `data` folder on your SD card
    + Overwrite the old save file when prompted
1. Reinsert your SD card into your console
1. Power on your console
1. Launch "Steel Diver: Sub Wars"
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

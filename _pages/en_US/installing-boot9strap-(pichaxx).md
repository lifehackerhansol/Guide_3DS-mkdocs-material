---
title: "Installing boot9strap (PicHaxx)"
---

??? info "Technical Details (optional)"

    [PicHaxx](https://github.com/zoogie/pichaxx) is an exploit for the game Pokémon Picross released by [zoogie](https://github.com/zoogie), originally discovered and [demonstrated](https://twitter.com/mrnbayoh/status/744899681663258624) by [MrNbaYoh](https://github.com/MrNbaYoh).

    This method of using Seedminer for further exploitation uses your `movable.sed` file to write a custom save file for Pokémon Picross, which can then be used to launch the Homebrew Launcher.

!!! warning

    This process will overwrite your Pokémon Picross save file, if you have one. If you wish to preserve your Pokémon Picross game data, you should make a backup of your `00000001.sav` file before overwriting it.

### What You Need

* The game "Pokémon Picross" installed on your console
    * If you have downloaded it before, you can [redownload it](https://en-americas-support.nintendo.com/app/answers/detail/a_id/607/~/how-to-download-or-redownload-content-in-nintendo-3ds-eshop)
    * Your SD card must be inserted in your console to install Pokémon Picross
* Your `movable.sed` file from completing [Seedminer](seedminer-(alternate))
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
1. Copy the otherapp payload for your model/region/version from `otherapps_with_CfgS_11.17.zip` to the root of your SD card, then rename the payload to `otherapp.bin`
    + Do not add the `.bin` extension if you do not already see it
1. Create a folder named `3ds` on the root of your SD card if it does not already exist
    + This folder stores homebrew applications and data; it is different from the `Nintendo 3DS` folder that the console automatically generates
1. Copy the `nimdsphax` folder from the nimdsphax `.zip` to the `/3ds/` folder on your SD card

!!! tip

    ![](/images/screenshots/hax-common-root-layout.png)

!!! tip

    ![](/images/screenshots/boot9strap-folder.png)

!!! tip

    ![](/images/screenshots/nimdsphax-location.png)

#### Section II - PicHaxx

In this section, you will create a hacked Pokémon Picross save file that, when loaded, will run the Homebrew Launcher on your console.

1. Open [the PicHaxx Injector website](https://3dstools.nhnarwhal.com/#/pichaxx) on your computer
1. Select your `movable.sed` file
1. Select "Build and Download"
1. Wait for the process to complete
1. Navigate to `Nintendo 3DS` -> `<ID0>` -> `<ID1>` -> `title` -> `00040000` -> `0017c100` -> `data` on your SD card
    + The `<ID0>` will be the same one that you used in Seedminer
    + The `<ID1>` is a 32 character long folder inside of the `<ID0>`
1. Copy the newly downloaded `00000001.sav` file to the `data` folder on your SD card
    + Overwrite the old save file when prompted

    !!! tip

        ![](/images/screenshots/pichaxx-save-location.png)

1. Reinsert your SD card into your console
1. Power on your console
1. Launch "Pokémon Picross"
1. Your console will have booted into the Homebrew Launcher
    + If you get an error message, [follow this troubleshooting guide](troubleshooting#installing-boot9strap-pichaxx)
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

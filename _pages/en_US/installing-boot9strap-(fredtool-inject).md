---
title: "Installing boot9strap (Fredtool-Inject)"
---

??? info "Technical Details (optional)"

    This method of using Seedminer for further exploitation uses your `movable.sed` file to decrypt any DSiWare title for the purposes of injecting an exploitable DSiWare title into the DS Internet Settings application.

    This is a currently working implementation of the "FIRM partitions known-plaintext" exploit detailed [here](https://www.3dbrew.org/wiki/3DS_System_Flaws).

!!! warning

    You should only be able to get to this page if you are running version 11.17.0. If you are on any firmware other than 11.17.0 or 11.16.0, STOP as these instructions WILL LEAD TO A BRICK on other firmwares!!

### What You Need

* Your `movable.sed` file from completing [Seedminer](seedminer-(alternate))
* Your DSiWare backup from completing [Dumping eShop DSiWare](dumping-eshop-dsiware)
* The latest release of [Frogminer_save](https://github.com/zoogie/Frogminer/releases/latest) (`Frogminer_save.zip`)
* **11.16.0 or 11.17.0 users**: The v6.1.1 release of [b9sTool](https://github.com/zoogie/b9sTool/releases/download/v6.1.1/release_6.1.1.zip)
    * Make **absolutely sure** that you are one of these firmwares, as being on other firmwares may lead to a BRICK
* The latest release of [Luma3DS](https://github.com/LumaTeam/Luma3DS/releases/latest) (the Luma3DS `.zip` file)

#### Section I - CFW Check

{% include ".include/cfw-check-fredtool.md" %}

#### Section II - Prep Work

In this section, you will copy the files necessary to temporarily replace DS Connection Settings with Flipnote Studio, which is used to launch the boot9strap (custom firmware) installer.

1. Insert your SD card into your computer
1. Open the [DSIHaxInjector_new](https://jenkins.nelthorya.net/job/DSIHaxInjector_new/build?delay=0sec) website on your computer
1. Under the "Username" field, enter any alphanumeric name (no spaces or special characters)
1. Under the "DSiBin" field, upload your DSiWare backup file (e.g. 42383841.bin) from the root of your SD card using the first "Browse..." option
1. Under the "MovableSed" field, upload your `movable.sed` file using the second "Browse..." option
1. Under the "InjectionTarget" field, set the injection target to `DSinternet` (NOT memorypit)
1. Click "Build"
    + Wait a few seconds for the build process to complete
1. In the Build History section on the left, type the Username into the "Filter Builds" field
1. Click on the first search result
    + This result should have the latest timestamp
1. Click the "output_(name).zip" link
1. Navigate to `Nintendo 3DS` -> `<ID0>` -> `<ID1>` -> `Nintendo DSiWare` on your SD card
    + `<ID0>` is the 32-letter folder name that you copied in [Seedminer](seedminer)
    + `<ID1>` is a 32-letter folder inside of the `<ID0>`
1. Copy the `42383841.bin`  file from the `hax` folder of the downloaded DSiWare archive (output_(name).zip) to the `Nintendo DSiWare` folder

    !!! tip

        ![](/images/screenshots/bb3/dsiware-location-4.png)

1. Copy `boot.firm` and `boot.3dsx` from the Luma3DS `.zip` to the root of your SD card
    + The root of the SD card refers to the initial directory on your SD card where you can see the Nintendo 3DS folder, but are not inside of it
1. Copy `boot.nds` (B9STool) from the release `.zip` to the root of your SD card
1. Copy the `private` folder from the Frogminer_save `.zip` to the root of your SD card
1. Reinsert your SD card into your console
1. Power on your console

    !!! tip

        ![](/images/screenshots/fredtool/fredtool-root-layout.png)

#### Section III - Overwriting DS Connection Settings

In this section, you will copy the hacked DS Connection Settings DSiWare to internal memory, which will temporarily replace it with Flipnote Studio.

1. Launch System Settings on your console
1. Navigate to `Data Management` -> `DSiWare` -> `SD Card` ([image](/images/screenshots/bb3/dsiware-management.png))
1. Select the "Haxxxxxxxxx!" title
    + If you are unable to select the "Haxxxxxxxxx" title, [follow this troubleshooting guide](troubleshooting#installing-boot9strap-fredtool-inject)
1. Select "Copy", then select "OK"

#### Section IV - Flipnote Exploit

In this section, you will perform a series of very specific steps within Flipnote Studio that, when performed correctly, will launch b9sTool, the boot9strap (custom firmware) installer.

!!! note

    If you would prefer a visual guide to this section, one is available [here](https://zoogie.github.io/web/flipnote_directions/).

1. Return to main menu of the System Settings
1. Navigate to `Internet Settings` -> `Nintendo DS Connections`, then select "OK" ([image](/images/screenshots/fredtool/dsconnection.png))
1. If the exploit was successful, your console will have loaded the JPN version of Flipnote Studio
    + If your console does not load the JPN version of Flipnote Studio, [follow this troubleshooting guide](troubleshooting#installing-boot9strap-fredtool-inject)
{% include ".include/exploit-flipnote.md" %}

#### Section V - Installing boot9strap

{% include ".include/install-boot9strap-b9stool.md" %}

#### Section VI - Luma3DS Configuration

1. Press and hold (Select), and while holding (Select), power on your console
{% include ".include/configure-luma3ds.md" %}

{% include ".include/luma3ds-installed-note.md" %}

#### Section VII - Restoring DS Connection Settings

In this section, you will restore DS Connection Settings to the way it was before it was temporarily replaced with Flipnote Studio in an earlier section.

1. Navigate to `Nintendo 3DS` -> `<ID0>` -> `<ID1>` -> `Nintendo DSiWare` on your SD card
1. Copy the `42383841.bin`  file from the `clean` folder of the downloaded DSiWare archive (output_(name).zip) to the `Nintendo DSiWare` folder, replacing the existing one
1. Reinsert your SD card into your console
1. Power on your console
1. Launch System Settings on your console
1. Navigate to `Data Management` -> `DSiWare` -> `SD Card` ([image](/images/screenshots/bb3/dsiware-management.png))
1. Select the "Nintendo DSi™" title
1. Select "Copy", then select "OK"

___

!!! success ""

    ### Continue to [Finalizing Setup](finalizing-setup)


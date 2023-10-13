---
title: "BannerBomb3"
---

??? info "Technical Details (optional)"

    To launch custom code, we exploit a flaw in the DSiWare Data Management window of the Settings application.

    To accomplish this, we use your system's encryption key (movable.sed) to build a DSiWare backup that exploits the system.

    For a more technical explanation, see [here](https://github.com/zoogie/Bannerbomb3).

### Compatibility Notes

These instructions work on USA, Europe, Japan, and Korea region consoles as indicated by the letters U, E, J, or K after the system version.

!!! warning

    If you have a Taiwanese console (indicated by a T after the system version), follow [this page](bannerbomb3-fredtool-(twn)) instead.

### What You Need

* Your `movable.sed` file from completing Seedminer
* The latest release of [BannerBomb3](https://github.com/zoogie/Bannerbomb3/releases/download/v3.0/Release_v3.0.zip) (`Release_v3.0.zip`, direct download)

#### Section I - Prep Work

In this section, you will copy the files needed to trigger the BannerBomb3 exploit onto your console's SD card.

1. Power off your console
1. Insert your SD card into your computer
1. Open [Bannerbomb3 Injector](https://zoogie.github.io/web/bb3/) on your computer
1. Upload your movable.sed using the “Choose File” option
1. Click “Build and Download”
    + This will download an exploit DSiWare called `F00D43D5.bin`, which will be contained in a zip archive (`BannerBomb3.zip`)
1. Copy `bb3.bin` from `Release_v3.0.zip` to the root of your SD card
    + The root of the SD card refers to the initial directory on your SD card where you can see the Nintendo 3DS folder, but are not inside of it
    + This file does not need to be opened or extracted

    !!! tip

        ![](/images/screenshots/bb3/bb3-root-layout.png)

1. Copy `Launcher.dat` from the folder for your model and region inside the Release `.zip` to the root of your SD card
1. Navigate to `Nintendo 3DS` -> `<ID0>` -> `<ID1>` on your SD card
    + `<ID0>` is the 32-letter folder name that you copied in [Seedminer](seedminer)
    + `<ID1>` is a 32-letter folder inside of the `<ID0>`
    + If you have multiple `<ID1>` folders, follow the instructions [here](troubleshooting#bannerbomb3)

    !!! tip

        ![](/images/screenshots/bb3/dsiware-location-1.png)

1. Create a folder named `Nintendo DSiWare` inside of the `<ID1>`
    + If you already had the folder *and* there are any existing DSiWare backup files (`<8-character-id>.bin`) inside, copy them to your computer and remove them from your SD card
1. Copy the `F00D43D5.bin` file from `BannerBomb3.zip` to the `Nintendo DSiWare` folder

!!! tip

    ![](/images/screenshots/bb3/dsiware-location-2.png)

#### Section II - BannerBomb3

In this section, you will trigger the BannerBomb3 exploit using the DSiWare Management menu and use it to install the menuhax67 exploit.

1. Reinsert your SD card into your console 
1. Power on your console
1. Launch System Settings on your console
1. Navigate to `Data Management` -> `DSiWare` -> `SD Card` ([image](/images/screenshots/bb3/dsiware-management.png))
    + Your console should show the BB3 multihax menu
1. Use the D-Pad to navigate and press the (A) button to select "Install *hax"
    + Your console will automatically reboot
1. Power off your console

___

!!! success ""

    ### Continue to [Installing boot9strap (menuhax)](installing-boot9strap-(menuhax))

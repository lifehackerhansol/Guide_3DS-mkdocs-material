---
title: "BannerBomb3 + Fredtool (TWN)"
---

### Required Reading

To dump system DSiWare, we exploit a flaw in the DSiWare Data Management window of the Settings application.

To accomplish this, we use your system's encryption key (movable.sed) to build a DSiWare backup that exploits the system to dump the DSi Internet Settings application to the SD root.

Once you have a DSiWare backup, an exploitable DSiWare title can be injected into DS Download Play, which can be used to install custom firmware.

!!! warning

    These instructions are for Taiwanese consoles ONLY (as indicated by a T at the end of the system version, e.g. 11.16.0-39T)! If your console is from any other region, [choose the other method](bannerbomb3).

### What you need

* Your `movable.sed` file completing [Seedminer](seedminer-(twn))
* The latest release of [Luma3DS](https://github.com/LumaTeam/Luma3DS/releases/latest) (the Luma3DS `.zip` file)
* The latest release of [b9stool](https://github.com/zoogie/b9sTool/releases/download/v6.1.1/release_6.1.1.zip) (direct download)
* The latest release of [Frogminer_save](https://github.com/zoogie/Frogminer/releases/latest) (`Frogminer_save.zip`)

#### Section I - CFW Check

{% include ".include/cfw-check-fredtool.md" %}

#### Section II - Prep Work

1. Power off your console
1. Insert your SD card into your computer
1. Copy `boot.firm` and `boot.3dsx` from the Luma3DS `.zip` to the root of your SD card
    + The root of the SD card refers to the initial directory on your SD card where you can see the Nintendo 3DS folder, but are not inside of it
1. Copy `boot.nds` (B9STool) from the release `.zip` to the root of your SD card
1. Copy the `private` folder from the Frogminer_save `.zip` to the root of your SD card
1. Keep your SD card in your computer - there are more things to do in the next section

!!! info

    ![](/images/screenshots/fredtool/fredtool-twn-root-layout.png)

#### Section III - BannerBomb3

1. Open the [DSIHaxInjector V2](https://jenkins.nelthorya.net/job/DSIHaxInjector%20v2/build?delay=0sec) website on your computer
1. Under the "Username" field, enter any alphanumeric name (no spaces or special characters)
1. Under the "MovableSed" field, upload your `movable.sed`using the "Browse..." option
1. Click "Build"
    + Wait a few seconds for the build process to complete
1. In the Build History section on the left, type the Username into the "Filter Builds" field
1. Click on the first search result
    + This result should have the latest timestamp
1. Click the "output_(name).zip" link
1. Navigate to `Nintendo 3DS` -> `<ID0>` -> `<ID1>` on your SD card
    + `<ID0>` is the 32-letter folder name that you copied in [Seedminer](seedminer)
    + `<ID1>` is a 32-letter folder inside of the `<ID0>`
    + If you have multiple `<ID1>` folders, follow the instructions [here](troubleshooting#bannerbomb3)
1. Create a folder named `Nintendo DSiWare` inside of the `<ID1>`
    + If you already had the folder *and* there are any existing DSiWare backup files (`<8-character-id>.bin`) inside, copy them to your computer and remove them from your SD card
1. Open the output_(name) `.zip` file and navigate to `China_Taiwan` -> `output_setup`
1. Copy all six `.bin` files to the `Nintendo DSiWare` folder
1. Reinsert your SD card into your console
1. Power on your console
1. Launch System Settings on your console
1. Navigate to `Data Management` -> `DSiWare` -> `SD Card` -> (page 2)
1. Take note of what number is on the DSiWare title on the second page (it will be a number between 1 and 6)
1. Power off your console
1. Insert your SD card into your computer
1. Navigate to `Nintendo 3DS` -> `<ID0>` -> `<ID1>` -> `Nintendo DSiWare` on your SD card
1. Open the output_(name) `.zip` file and navigate to `China_Taiwan` -> `output_hax`
1. Copy the `.bin` file that is the same number as the one that was on the second page of the DSiWare Management menu to the `Nintendo DSiWare` folder, and overwrite when prompted
1. Power on your console
1. Launch System Settings on your console
1. Navigate to `Data Management` -> `DSiWare` -> `SD Card` ([image](/images/screenshots/bb3/dsiware-management.png))
1. Wait a while
    + The following should happen, in this order: A progress swirl, a short freeze, the bottom screen turning purple, the music stopping, then the console showing an error message and rebooting
    + If you did not see the purple screen, then something went wrong
1. You should now have the file `42383821.bin` on the root of your SD card
1. Navigate to `Nintendo 3DS` -> `<ID0>` -> `<ID1>` -> `Nintendo DSiWare` on your SD card
1. Delete all of the `.bin` files in the `Nintendo DSiWare` folder

#### Section IV - Fredtool

1. Open the [DSIHaxInjector_new](https://jenkins.nelthorya.net/job/DSIHaxInjector_new/build?delay=0sec) website on your computer
1. Under the "Username" field, enter any alphanumeric name (no spaces or special characters)
    + You might want to put in a different name to differentiate it from BannerBomb3's output
1. Under the "DSiBin" field, upload your `42383821.bin` file using the first "Browse..." option
1. Under the "MovableSed" field, upload your `movable.sed` file using the second "Browse..." option
1. Under the "InjectionTarget" field, set the injection target to `DSdownloadplay`(NOT memorypit)
1. Click "Build"
    + Wait a few seconds for the build process to complete
1. In the Build History section on the left, type the Username into the "Filter Builds" field
1. Click on the first search result
    + This result should have the latest timestamp
1. Click the "output_(name).zip" link
1. Navigate to `Nintendo 3DS` -> `<ID0>` -> `<ID1>` -> `Nintendo DSiWare` on your SD card
1. Copy the `484E4441.bin`  file from the `hax` folder of the downloaded DSiWare archive (output_(name).zip) to the `Nintendo DSiWare` folder
1. Reinsert your SD card into your console
1. Power on your console
1. Launch System Settings on your console
1. Navigate to `Data Management` -> `DSiWare`
1. Under the “SD Card” section, select the “Haxxxxxxxxx!” title
1. Select "Copy", then select "OK"

#### Section V - Flipnote Exploit

In this section, you will perform a series of very specific steps within Flipnote Studio that, when performed correctly, will launch b9sTool, the boot9strap (custom firmware) installer.

If you would prefer a visual guide to this section, one is available [here](https://zoogie.github.io/web/flipnote_directions/).
{: .notice--info}

1. Exit System Settings
1. Launch Download Play on your console (the orange icon with a 3DS on it)
1. Select "Nintendo DS"
1. If the exploit was successful, your 3DS will have loaded into the JPN version of Flipnote Studio
{% include ".include/exploit-flipnote.md" %}

#### Section VI - Installing boot9strap

{% include ".include/install-boot9strap-b9stool.md" %}

#### Section VII - Luma3DS Configuration

1. Press and hold (Select), and while holding (Select), power on your console
{% include ".include/configure-luma3ds.md" %}

{% include ".include/luma3ds-installed-note.md" %}

#### Section VIII - Restoring DS Download Play

1. Navigate to `Nintendo 3DS` -> `<ID0>` -> `<ID1>` -> `Nintendo DSiWare` on your SD card
1. Copy the `484E4441.bin`  file from the `clean` folder of the downloaded DSiWare archive (output_(name).zip) to the `Nintendo DSiWare` folder
1. Reinsert your SD card into your console
1. Power on your console
1. Launch System Settings on your console
1. Navigate to `Data Management` -> `DSiWare`
1. Under the “SD Card” section, select the “Haxxxxxxxxx!” title
1. Select "Copy", then select "OK"
1. Exit System Settings
1. Power off your console

{% include_relative include/luma3ds-installed-note.txt %}
___

!!! info

    ### Continue to [Finalizing Setup](finalizing-setup)

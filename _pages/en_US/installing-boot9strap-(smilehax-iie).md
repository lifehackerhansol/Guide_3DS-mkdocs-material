---
title: "Installing boot9strap (smilehax-IIe)"
---

!!! warning

    This set of instructions does not support the Japanese version of SmileBASIC. The guide for that version can be found [here](installing-boot9strap-(smilehax-iie-jpn)).

??? info "Technical Details (optional)"

    [smilehax-IIe](https://github.com/zoogie/smilehax-IIe) is an exploit for the game "SmileBASIC" made by zoogie, compatible with system versions 9.0.0 through 11.17.0 for USA/EUR/JPN region consoles.

### What You Need

* The game "SmileBASIC" installed on your console
    * If you have downloaded it before, you can [redownload it](https://en-americas-support.nintendo.com/app/answers/detail/a_id/607/~/how-to-download-or-redownload-content-in-nintendo-3ds-eshop)
    * Your SD card must be inserted in your console to install SmileBASIC
* The latest release of [smilehax-IIe](https://github.com/zoogie/smilehax-IIe/releases/download/v1.1/Release_sh2e_v1.1.zip) (direct download) 
* The latest release of [SafeB9SInstaller](https://github.com/d0k3/SafeB9SInstaller/releases/download/v0.0.7/SafeB9SInstaller-20170605-122940.zip) (direct download)
* The latest release of [boot9strap](https://github.com/SciresM/boot9strap/releases/download/1.4/boot9strap-1.4.zip) (direct download)
* The latest release of [nimdsphax](https://github.com/luigoalma/nimdsphax/releases/download/v1.0/nimdsphax_v1.0.zip) (direct download)
* The latest release of [Luma3DS](https://github.com/LumaTeam/Luma3DS/releases/latest) (the Luma3DS `.zip` file)
* The latest release of [HBL otherapps](https://github.com/zoogie/ninjhax2.x/releases/download/v11.17/otherapps_with_CfgS_11.17.zip) (direct download)

### Instructions

#### Section I - Prep Work

1. Power off your console
1. Insert your SD card into your computer
1. Copy `boot.firm` and `boot.3dsx` from the Luma3DS `.zip` to the root of your SD card
    + The root of the SD card refers to the initial directory on your SD card where you can see the Nintendo 3DS folder, but are not inside of it
1. Create a folder named `boot9strap` on the root of your SD card
1. Copy `boot9strap.firm` and `boot9strap.firm.sha` from the boot9strap `.zip` to the `/boot9strap/` folder on your SD card
1. Copy `SafeB9SInstaller.bin` from the SafeB9SInstaller `.zip` to the root of your SD card
1. Copy the otherapp payload for your model/region/version from `otherapps_with_CfgS_11.17.zip` to the root of your SD card, then rename the payload to `otherapp.bin`
    + Do not add the `.bin` extension if you do not already see it
1. Transfer the `.wav` for your region from the Release_sh2e `.zip` to a device that can play `.wav` files, for example a phone
1. Copy the petitcom `.icn` for your region to the root of your SD card
1. Create a folder named `3ds` on the root of your SD card if it does not already exist
    + This folder stores homebrew applications and data; it is different from the `Nintendo 3DS` folder that the console automatically generates
1. Copy the `nimdsphax` folder from the nimdsphax `.zip` to the `/3ds/` folder on your SD card
1. Reinsert your SD card into your console
1. Power on your console

!!! tip

    ![](/images/screenshots/smilehax-root-layout.png)

!!! tip

    ![](/images/screenshots/boot9strap-folder.png)

!!! tip

    ![](/images/screenshots/nimdsphax-location.png)

#### Section II - smilehax

1. Launch SmileBASIC
    + Update the game if prompted
1. Select the "Publish/Download Projects" option
1. Select the "Download (Receive) using Public Key" option
1. Press the "Yes" button
1. Enter the Public Key "NJEQK3A4" using the on-screen keyboard
1. Press the "Yes" button to confirm the download of PMODEM141
1. Press "OK", then "Back", then "Browse Projects"
1. Select PMODEM141, then press "Select File"
1. Select PMODEM141.PRG, then press "OK", then "Yes" to execute it
1. Select RECEIVE FILE SIMPLEX
1. Prepare the device you use to play the `.wav` file
1. Keep your console about a foot from the `.wav` file playing devices' speaker and use a reasonable (not loud) volume to play the `.wav`
1. Now select 300BPS, then play the `.wav` file
1. When it finishes, press "Yes", then press "OK"
1. Press the START button
1. Select the SH2E-xxx.TXT file, then press OK, then "Yes" to execute it
    + If you get kicked back into menu, make sure you're using the latest version of SmileBASIC
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

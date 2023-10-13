---
title: "Installing boot9strap (petit-compwner)"
---

??? info "Technical Details (optional)"

    We use petit-compwner to launch b9sTool, which installs boot9strap.  

    See [here](https://github.com/zoogie/petit-compwner) for more information about petit-compwner.

!!! warning

    You should only be able to get to this page if you are running version 11.17.0. If you are on any firmware other than 11.17.0 or 11.16.0, STOP as these instructions WILL LEAD TO A BRICK on other firmwares!!

### What You Need

* **11.16.0 or 11.17.0 users**: The v6.1.1 release of [b9sTool](https://github.com/zoogie/b9sTool/releases/download/v6.1.1/release_6.1.1.zip)
    * Make **absolutely sure** that you are one of these firmwares, as being on other firmwares may lead to a BRICK
* The latest release of [Luma3DS](https://github.com/LumaTeam/Luma3DS/releases/latest) (the Luma3DS `.zip` file)

#### Section I - CFW Check

{% include ".include/cfw-check-fredtool.md" %}

#### Section II - Prep Work

In this section, you will copy the files necessary to launch b9sTool, which is used to launch the boot9strap (custom firmware) installer.

1. Insert your SD card into your computer
1. Copy `boot.nds` (B9STool) from the release `.zip` to the root of your SD card
    + The root of the SD card refers to the initial directory on your SD card where you can see the Nintendo 3DS folder, but are not inside of it
1. Copy `boot.firm` and `boot.3dsx` from the Luma3DS `.zip` to the root of your SD card
1. Reinsert your SD card into your console
1. Power on your console

!!! tip

    ![](/images/screenshots/petit-compwner-root-layout.png)

#### Section III - petit-compwner

In this section, you will scan the QR codes needed to trigger the petit-compwner exploit.

1. Open the latest release of [petit-compwner](https://github.com/zoogie/petit-compwner/releases/tag/v1.0) on your computer
1. On your console, launch Petit Computer
1. Select File Management
1. Select Read QR Codes
1. Scan each QR code in order, from 1/5 to 5/5
1. Once you have scanned all the QR codes, exit File Management
1. Select View Gallery
1. Launch the PWN program
1. If the exploit was successful, your console will have loaded b9sTool

#### Section IV - Installing boot9strap

{% include ".include/install-boot9strap-b9stool.md" %}

#### Section V - Luma3DS Configuration

1. Press and hold (Select), and while holding (Select), power on your console
{% include ".include/configure-luma3ds.md" %}

{% include ".include/luma3ds-installed-note.md" %}

___

### Continue to [Finalizing Setup](finalizing-setup)
{: .notice--primary}

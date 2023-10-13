---
title: "Installing boot9strap (menuhax)"
---

??? info "Technical Details (optional)"

    We use BannerBomb3 to install menuhax67, which lets us access the Homebrew Launcher. From there, we launch nimdsphax which launches SafeB9SInstaller. 

    See [here](https://github.com/luigoalma/nimdsphax) for information about nimdsphax and [here](https://github.com/zoogie/menuhax67) for information about menuhax67.

### What You Need

* The latest release of [SafeB9SInstaller](https://github.com/d0k3/SafeB9SInstaller/releases/download/v0.0.7/SafeB9SInstaller-20170605-122940.zip) (direct download)
* The latest release of [boot9strap](https://github.com/SciresM/boot9strap/releases/download/1.4/boot9strap-1.4.zip) (direct download)
* The latest release of [nimdsphax](https://github.com/luigoalma/nimdsphax/releases/download/v1.0/nimdsphax_v1.0.zip) (direct download)
* The latest release of [Luma3DS](https://github.com/LumaTeam/Luma3DS/releases/latest) (the Luma3DS `.zip` file)

#### Section I - Prep Work

1. Power off your console
1. Insert your SD card into your computer
1. Copy `boot.firm` and `boot.3dsx` from the Luma3DS `.zip` to the root of your SD card
1. Create a folder named `boot9strap` on the root of your SD card
1. Copy `boot9strap.firm` and `boot9strap.firm.sha` from the boot9strap `.zip` to the `/boot9strap/` folder on your SD card
1. Copy `SafeB9SInstaller.bin` from the SafeB9SInstaller `.zip` to the root of your SD card
1. Create a folder named `3ds` on the root of your SD card if it does not already exist
    + This folder stores homebrew applications and data; it is different from the `Nintendo 3DS` folder that the console automatically generates
1. Copy the `nimdsphax` folder from the nimdsphax `.zip` to the `/3ds/` folder on your SD card
1. Reinsert your SD card into your console

!!! tip

    ![](/images/screenshots/menuhax-root-layout.png)

!!! tip

    ![](/images/screenshots/boot9strap-folder.png)

!!! tip

    ![](/images/screenshots/nimdsphax-location.png)

#### Section II - menuhax67

In this section you will use the menuhax67 exploit installed earlier to launch nimdsphax, which will load SafeB9SInstaller.

1. Power on your console
1. Tap on the small HOME Menu settings icon in the top left of the bottom screen (![](/images/homemenuicon.png){: height="32px" width="52px"})
    + If the console freezes for a while and then crashes, make sure you have Launcher.dat on the root of your SD card
1. If the exploit was successful, your console will have booted into the Homebrew Launcher
1. Launch nimdsphax from the list of homebrew
1. If the exploit was successful, you will have booted into SafeB9SInstaller
    + If your console freezes on a red screen, hold the POWER button until it turns off, then retry this section

#### Section III - Installing boot9strap

In this section, you will install custom firmware onto your console.

{% include ".include/install-boot9strap-safeb9sinstaller.md" %}
1. Once it is complete, press (A) to reboot your console
{% include ".include/configure-luma3ds.md" %}

#### Section IV - Removing menuhax67

In this section, you will trigger the BannerBomb3 exploit a second time so that you can uninstall the menuhax67 exploit you installed in Section II. This will allow you to use the HOME Menu settings normally again.

1. Launch System Settings on your console
1. Navigate to `Data Management` -> `DSiWare` -> `SD Card` ([image](/images/screenshots/bb3/dsiware-management.png))
1. Use the D-Pad to navigate and press the (A) button to select "Uninstall *hax"
    + Your console will automatically reboot
1. Power off your console
1. Insert your SD card into your computer
1. Navigate to `Nintendo 3DS` -> `<ID0>` -> `<ID1>` -> `Nintendo DSiWare` on your SD card
1. Delete `F00D43D5.bin` from your Nintendo DSiWare folder and from your computer. This file will not be needed anymore

{% include ".include/luma3ds-installed-note.md" %}

___

!!! success ""

    ### Continue to [Finalizing Setup](finalizing-setup)

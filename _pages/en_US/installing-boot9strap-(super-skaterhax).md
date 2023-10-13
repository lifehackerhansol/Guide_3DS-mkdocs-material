---
title: "Installing boot9strap (super-skaterhax)"
---

??? info "Technical Details (optional)"

    For technical details on the exploits that you will be using on this page, see [here](https://github.com/zoogie/super-skaterhax).

### Compatibility Notes

Super-skaterhax (when used to launch the Homebrew Launcher) is compatible with New models on version 11.16.0 in all regions, and 11.17.0 in the EUR, JPN and USA regions.

!!! warning

The instructions provided only apply to the New 3DS, New 3DS XL, and New 2DS XL. Please ensure that the console you are modding is a New 3DS, New 3DS XL, or New 2DS XL before continuing.

### What You Need

* The latest release of [super-skaterhax](https://github.com/zoogie/super-skaterhax/releases) (the release `.zip` file)
* The latest release of [SafeB9SInstaller](https://github.com/d0k3/SafeB9SInstaller/releases/download/v0.0.7/SafeB9SInstaller-20170605-122940.zip) (direct download)
* The latest release of [boot9strap](https://github.com/SciresM/boot9strap/releases/download/1.4/boot9strap-1.4.zip) (direct download)
* The latest release of [nimdsphax](https://github.com/luigoalma/nimdsphax/releases/download/v1.0/nimdsphax_v1.0.zip) (direct download)
* The latest release of [Luma3DS](https://github.com/LumaTeam/Luma3DS/releases/latest) (the Luma3DS `.zip` file)

#### Section I - Prep Work

In this section, you will copy the files needed to trigger both super-skaterhax and the Homebrew Launcher.

1. Power off your console
1. Insert your SD card into your computer
1. Copy `boot.firm` and `boot.3dsx` from the Luma3DS `.zip` to the root of your SD card
    + The root of the SD card refers to the initial directory on your SD card where you can see the Nintendo 3DS folder, but are not inside of it
1. Copy everything inside the folder for your console's region and version (`arm11code.bin` and `browserhax_hblauncher_ropbin_payload.bin`) in the super-skaterhax `.zip` to the root of your SD card
1. Create a folder named `boot9strap` on the root of your SD card
1. Copy `boot9strap.firm` and `boot9strap.firm.sha` from the boot9strap `.zip` to the `/boot9strap/` folder on your SD card
1. Copy `SafeB9SInstaller.bin` from the SafeB9SInstaller `.zip` to the root of your SD card
1. Create a folder named `3ds` on the root of your SD card if it does not already exist
    + This folder stores homebrew applications and data; it is different from the `Nintendo 3DS` folder that the console automatically generates
1. Copy the `nimdsphax` folder from the nimdsphax `.zip` to the `/3ds/` folder on your SD card
1. Reinsert your SD card into your console
1. Power on your console

!!! tip

    ![](/images/screenshots/skater-root-layout.png)

#### Section II - super-skaterhax

In this section, you will visit the browser exploit webpage, which will launch the Homebrew Launcher.

!!! info

    If you haven't already, make sure you have a working Internet connection set up on your console.

1. On the HOME Menu, press the Left and Right shoulder buttons at the same time to open the camera
    + If you are unable to open the camera, open the Internet Browser and manually type the URL instead (`https://zoogie.github.io/web/super/` for EUR/USA/JPN, `https://zoogie.github.io/web/korea` for KOR)
1. Tap the QR code button and scan one of the following QR codes for your console's region [here](https://user-images.githubusercontent.com/28328903/226086338-585bfdac-0aac-44c0-b413-89206d2815d8.png)
    + If you get a security certificate warning, press (A) to allow the connection
1. Press the (Select) button to open the bookmark tab
    + If your (Select) button does not respond, tap the star icon on the bottom-left corner of the screen
1. Tap "Bookmark this page"
1. Press (B) once to return to the browser
1. Press (Start) to open the context menu
    + If your (Start) button does not respond, tap the 3-line menu on the bottom-right corner of the screen
1. Tap on "Settings"
1. Tap on "Delete Cookies"
1. Press (A) to continue
1. Press (Home) to return to the HOME Menu, then immediately press (A) to launch the browser again
1. Select the "GO GO!" button on the top screen
    + If any prompts appear, approve all of them
    + If your console freezes on a yellow screen, hold the POWER button until it turns off, then retry this section
    + If your console freezes on a red screen, hold the POWER button until it turns off, redo step 3 of Section II, then retry this section
    + If you get another error, try again up to 5 times, and if it still doesn't work, [follow this troubleshooting guide](troubleshooting#installing-boot9strap-super-skaterhax)
1. Your console will have booted into the Homebrew Launcher
1. Launch nimdsphax from the list of homebrew
1. If the exploit was successful, you will have booted into SafeB9SInstaller
    + If your console freezes on a red or green screen, hold the POWER button until it turns off, then retry this section
    + This may take up to five attempts

#### Section III - Installing boot9strap

In this section, you will install custom firmware onto your console.

{% include ".include/install-boot9strap-safeb9sinstaller.md" %}
1. Once it is complete, press (A) to reboot your console
{% include ".include/configure-luma3ds.md" %}

{% include ".include/luma3ds-installed-note.md" %}

___

!!! success ""

    ### Continue to [Finalizing Setup](finalizing-setup)

---
title: "Installing boot9strap (kartdlphax)"
---

??? info "Technical Details (optional)"

    In order to install custom firmware on our console, we need to get Homebrew Launcher access.

    To accomplish this, we can use the Download Play functionality of the game Mario Kart 7, using a 3DS with custom firmware already installed along with a custom game plugin.

    This custom plugin will send a hacked payload to an unhacked console, which then exploits the system in order to inject the exploited WiFi profile into your connections list.

    This custom plugin will send a hacked payload to an unhacked console, which then exploits the system in order to inject menuhax67, which will allow us to get Homebrew Launcher access.

    Once we have Homebrew Launcher access, we can run nimdsphax to install boot9strap.

    See [here](https://github.com/PabloMK7/kartdlphax) for information about kartdlphax, [here](https://github.com/zoogie/menuhax67) for information about menuhax67, and [here](https://github.com/luigoalma/nimdsphax) for information about nimdsphax.


### Compatibility Notes

In order to follow these instructions, you will need the following:

+ A second 3DS with custom firmware (the **source 3DS**) that is the same region as the 3DS you are trying to modify (the **target 3DS**)
    + The consoles must be USA, JPN, or EUR region consoles
    + The source 3DS can be [region changed](region-changing) to match the target 3DS if necessary
+ A physical or digital copy of Mario Kart 7 that is the same region as both consoles
+ An SD card for both consoles

### What You Need

* The latest release of [kartdlphax](https://github.com/PabloMK7/kartdlphax/releases/latest) (`plugin.3gx`)
* The latest release of [boot9strap](https://github.com/SciresM/boot9strap/releases/download/1.4/boot9strap-1.4.zip) (direct download)
* The latest release of [SafeB9SInstaller](https://github.com/d0k3/SafeB9SInstaller/releases/download/v0.0.7/SafeB9SInstaller-20170605-122940.zip) (direct download)
* The latest release of [nimdsphax](https://github.com/luigoalma/nimdsphax/releases/download/v1.0/nimdsphax_v1.0.zip) (direct download)
* The latest release of [menuhax67](https://github.com/zoogie/menuhax67/releases/latest)
* The latest release of [Luma3DS](https://github.com/LumaTeam/Luma3DS/releases/latest) (the Luma3DS `.zip` file)

#### Section I - Prep Work (source 3DS)

In this section, you will set up your source 3DS (the 3DS with custom firmware) for delivery of the exploit data to the target 3DS.

1. Insert the SD card of your **source 3DS** in your computer
1. Copy `boot.firm` from the Luma3DS `.zip` to the root of the **source 3DS**'s SD card, replacing any existing file
    + The root of the SD card refers to the initial directory on your SD card where you can see the Nintendo 3DS folder, but are not inside of it
1. Copy kartdlphax's `plugin.3gx` to the following directory on the **source 3DS**'s SD card, depending on the **region of your copy of Mario Kart 7**:
    + USA: `luma/plugins/0004000000030800`
    + EUR: `luma/plugins/0004000000030700`
    + JPN: `luma/plugins/0004000000030600`
    + Create the `plugins` and `00040000...` folders if they do not already exist
1. Eject the SD card and put it in the **source 3DS**

#### Section II - Prep Work (target 3DS)

In this section, you will set up the files that the target 3DS will need to install custom firmware.

1. Insert the SD card of your **target 3DS** in your computer
1. Copy `boot.firm` and `boot.3dsx` from the Luma3DS `.zip` to the root of the **target 3DS's** SD card
1. Create a folder named `boot9strap` on the root of your SD card
1. Copy `boot9strap.firm` and `boot9strap.firm.sha` from the boot9strap `.zip` to the `/boot9strap/` folder on your SD card
1. Copy `SafeB9SInstaller.bin` from the SafeB9SInstaller `.zip` to the root of your SD card
1. Create a folder named `3ds` on the root of your SD card if it does not already exist
    + This folder stores homebrew applications and data; it is different from the `Nintendo 3DS` folder that the console automatically generates
1. Copy the `nimdsphax` folder from the nimdsphax `.zip` to the `/3ds/` folder on your SD card
1. Copy `menuhax67_installer.3dsx` from the menuhax `.zip` to the `/3ds/` folder on your SD card
1. Copy Launcher.dat from the folder for your model and region inside the menuhax `.zip` to the root of your SD card
1. Eject the SD card and put it in the **target 3DS**

!!! tip

    ![](/images/screenshots/kart-root-layout.png)

!!! tip

    ![](/images/screenshots/kart-3ds-layout.png)

#### Section III - kartdlphax

In this section, you will use Download Play to transfer the exploit data from the source 3DS to the target 3DS, which can be used to install menuhax67, a Homebrew Launcher entrypoint. Your HOME Menu settings will be temporarily inaccessible on the target 3DS while this exploit is active.

1. Power on the **source 3DS**
    + If you are prompted to set up Luma3DS, just press START to save the configuration
1. Once in the HOME Menu, press (Left Shoulder) + (Down D-Pad) + (Select) to bring up the Rosalina menu
1. Select "Enable plugin loader"
1. Press (B) to exit the Rosalina menu
1. Launch Mario Kart 7
    + Ensure that wireless connectivity is enabled
1. Navigate to `Local Multiplayer`. A menu should pop up
    + If the screen freezes, hold the power button for fifteen seconds to force power off your console, then try again
    + If you have launched kartdlphax previously, the last selected settings will be loaded. If they are correct, select `Use settings` and skip the next 3 steps. If they are incorrect, select `Change settings` and proceed.
1. Select your **target 3DS** console type (Old 3DS family or New 3DS family)
1. Select the following exploit type depending on your system version:
    + 11.16.0: select `xPloitInjector (11.16)`
    + 11.17.0: select `xPloitInjector (11.17)`
1. A confirmation menu will show up. If the settings shown on the top screen are correct, select `Use settings`
    + If the settings are not correct, press `Change settings` and modify them accordingly
1. Select `Create Group`
    + If the source 3DS freezes at this point and you are using a cartridge, try [installing the cartridge to the system](dumping-titles-and-game-cartridges#installing-a-game-cartridge-directly-to-the-system)
1. Power on the **target 3DS**
    + Ensure that wireless connectivity is enabled
1. On the **target 3DS**, open the Download Play application (![](/images/download-play-icon.png){: height="24px" width="24px"}), then select "Nintendo 3DS"
1. Join the group created by the **source 3DS**
1. Select "Start" on the **source 3DS** once it has detected the **target 3DS**
1. Once multiplayer has loaded, navigate to `Grand Prix` -> `50cc` -> (any driver) -> `Mushroom Cup` -> `OK`
1. Wait a while (a percentage should be displayed on the **source 3DS**)
1. If the exploit was successful, the **target 3DS** will have booted into the 3DS ROP xPloit Injector
    + If the exploit was not successful, power off the **source 3DS** and **target 3DS** and start again from the beginning of `Section III - kartdlphax`

#### Section IV - Installing menuhax67

{% include ".include/menuhax67-install.md" %}

#### Section VI - Installing boot9strap

In this section, you will install custom firmware onto your console.

{% include ".include/install-boot9strap-safeb9sinstaller.md" %}
1. Once it is complete, press (A) to reboot your console
{% include ".include/configure-luma3ds.md" %}

#### Section VI - Removing menuhax67

In this section, you will use the Homebrew Launcher to remove menuhax67, which will let you access the HOME Menu Settings option normally.

{% include ".include/launch-hbl-dlp.md" %}
1. Launch menuhax67_installer from the list of homebrew
1. Select REMOVE menuhax67
1. When you see "done.", press (A), then press (A) on "EXIT to menu"

{% include ".include/luma3ds-installed-note.md" %}

___

!!! success ""

    ### Continue to [Finalizing Setup](finalizing-setup)

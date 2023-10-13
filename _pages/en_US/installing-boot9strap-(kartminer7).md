---
title: "Installing boot9strap (Kartminer7)"
---

??? info "Technical Details (optional)"

    To install boot9strap on your console, we derive your console's unique encryption key. To accomplish this, we use a tool called Seedminer to calculate the data encryption key (movable.sed) for your console.

    Once we have `movable.sed`, we can edit the SD card data of the game Mario Kart 7 to install menuhax67, which will allow us to get Homebrew Launcher access.

    Once we have Homebrew Launcher access, we can run nimdsphax to install boot9strap.

    See [here](https://github.com/zoogie/kartminer7) for information about Kartminer7, [here](https://github.com/zoogie/menuhax67) for information about menuhax67, and [here](https://github.com/luigoalma/nimdsphax) for information about nimdsphax.

### What You Need

* A physical or digital copy of Mario Kart 7 updated to the latest version (v1.2)
    * You can update Mario Kart 7 from eShop or by following the update prompt when you launch the game
* A Windows computer
* Your `movable.sed` file from completing Seedminer
* The latest release of [Kartminer7](https://github.com/zoogie/Kartminer7/releases/latest)
* The latest release of [boot9strap](https://github.com/SciresM/boot9strap/releases/download/1.4/boot9strap-1.4.zip) (direct download)
* The latest release of [SafeB9SInstaller](https://github.com/d0k3/SafeB9SInstaller/releases/download/v0.0.7/SafeB9SInstaller-20170605-122940.zip) (direct download)
* The latest release of [nimdsphax](https://github.com/luigoalma/nimdsphax/releases/download/v1.0/nimdsphax_v1.0.zip) (direct download)
* The latest release of [menuhax67](https://github.com/zoogie/menuhax67/releases/latest)
* The latest release of [Luma3DS](https://github.com/LumaTeam/Luma3DS/releases/latest) (the Luma3DS `.zip` file)

#### Section I - Preparing Mario Kart 7 data

In this section, you will have the 3DS generate some data in Mario Kart 7 that will be used to install the exploit in a later section.

1. Reinsert your SD card into your console
1. Open Mario Kart 7
1. Tap the "Mario Kart Channel" button on the bottom
1. If you are prompted to, hit "Next" and "OK" to all of the prompts that you see
1. Tap the "StreetPass List" button on the bottom of the screen, in the middle
1. Press the (Home) button to suspend Mario Kart 7
1. Disable wireless connections by flicking the wireless switch on the side of the console or by navigating to HOME Menu Settings (top left) -> Wireless Communication -> OFF
1. Power off your console

#### Section II - SD Card Prep Work

1. Insert your SD card into your computer
1. Copy `boot.firm` and `boot.3dsx` from the Luma3DS `.zip` to the root of your SD card
    + The root of the SD card refers to the initial directory on your SD card where you can see the Nintendo 3DS folder, but are not inside of it
1. Create a folder named `boot9strap` on the root of your SD card
1. Copy `boot9strap.firm` and `boot9strap.firm.sha` from the boot9strap `.zip` to the `/boot9strap/` folder on your SD card
1. Copy `SafeB9SInstaller.bin` from the SafeB9SInstaller `.zip` to the root of your SD card
1. Create a folder named `3ds` on the root of your SD card if it does not already exist
    + This folder stores homebrew applications and data; it is different from the `Nintendo 3DS` folder that the console automatically generates
1. Copy the `nimdsphax` folder from the nimdsphax `.zip` to the `/3ds/` folder on your SD card
1. Copy `menuhax67_installer.3dsx` from the menuhax `.zip` to the `/3ds/` folder on your SD card
1. Copy Launcher.dat from the folder for your model and region inside the menuhax `.zip` to the root of your SD card
1. Keep your SD card inserted in your computer, as it is still required in the next section

!!! tip

    ![](/images/screenshots/kart-root-layout.png)

!!! tip

    ![](/images/screenshots/kart-3ds-layout.png)

#### Section III - Installing Kartminer7

1. Extract the Release_BETA_mk7 `.zip` to **somewhere on your computer** (i.e. your desktop)
1. Copy your `movable.sed` file to the `resources` folder of the Release_BETA_mk7 folder
    + Ensure that the file is named exactly `movable.sed`
1. Open the `backup` folder inside of the Release_BETA_mk7 folder
1. Double-click on the BACKUP `.bat` file corresponding to your console's region (e.g. backup_USA.bat if you have a USA copy of Mario Kart 7)
    + If you are unsure of your console region, you can check System Settings. U = USA; E = EUR, J = JPN
    + If you get a message from Windows Defender, click "More info", "Run anyway", then press any key to continue
    + If the backup was successful, you should see a new folder appear
    + If you wish to restore this data at a later date (after finishing this guide), insert your SD card and double-click on the RESTORE `.bat` file corresponding to your console's region
1. Go back to the Release_BETA_mk7 folder, then double-click on the `.bat` file corresponding to your console's region (e.g. USA.bat if you have a USA copy of Mario Kart 7)
1. Reinsert your SD card into your console

#### Section IV - Kartminer7

1. Power on your console
1. Open Mario Kart 7
1. Tap the "Mario Kart Channel" button on the bottom
1. Tap the "StreetPass List" button on the bottom of the screen, in the middle
1. Press (A) over and over again
    + You should eventually see the "Start Race?" prompt, then the colours on the bottom screen should change from red, to blue, to white
    + If you see the red/blue/white screens but the 3DS crashes, just reboot and try again
    + If you don't see ANY colours, change your system language (if possible), then try the exploit again
1. If the exploit was successful, the 3DS will have booted into the 3DS ROP xPloit Injector

#### Section V - Installing menuhax67

{% include ".include/menuhax67-install.md" %}

#### Section VI - Installing boot9strap

{% include ".include/install-boot9strap-safeb9sinstaller.md" %}
1. Once it is complete, press (A) to reboot your console
{% include ".include/configure-luma3ds.md" %}

#### Section VII - Removing menuhax67

In this section, you will use the Homebrew Launcher to remove menuhax67, which will let you access the HOME Menu Settings option normally.

{% include ".include/launch-hbl-dlp.md" %}
1. Launch menuhax67_installer from the list of homebrew
1. Select REMOVE menuhax67
1. When you see "done.", press (A), then press (A) on "EXIT to menu"

At this point, you can re-enable wireless communications.
{: .notice-info}

{% include ".include/luma3ds-installed-note.md" %}

___

!!! success ""

    Continue to [Finalizing Setup](finalizing-setup)

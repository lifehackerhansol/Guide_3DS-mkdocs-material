---
title: "Installing boot9strap (MSET9)"
---

??? info "Technical Details (optional)"

    [MSET9](https://github.com/zoogie/MSET9) is an exploit for the System Settings application developed by [zoogie](https://github.com/zoogie). It exploits a flaw where the ID1 (the second 32-character folder name inside of the Nintendo 3DS folder, inside of the ID0) can be *any* name as long as it is 32 characters. Performing a specific sequence of actions results in the console executing the instructions that are encoded into the ID1 folder name, which can be used to grant full control over the 3DS.

### Compatibility Notes

!!! warning

    This method requires a computer running Windows or Linux. macOS is NOT supported, nor are phones or tablets. If you do not have access to Windows or Linux, you will need to use an [alternate exploit](alternate-exploits).

### What You Need

* The latest release of [MSET9](https://github.com/zoogie/MSET9/releases/latest) (the Release `.zip` file)
* Any 3.x version of [Python](https://www.python.org/downloads/) **installed on your computer**
    + If you are on Linux, you likely already have Python 3. Check by opening a terminal and entering `python3 -V`. If this returns a version number, it will work for this guide.

### Instructions

#### Section I - Prep Work

In this section, you will prepare the SD card data necessary for the MSET9 exploit to trigger.

1. Power on your console **with your SD card inserted**
1. Open Mii Maker
1. Wait for your console to reach the "Welcome to Mii Maker" screen, then exit Mii Maker
    + You may see [this screen](/images/screenshots/mset9/mii-extdata.png), which indicates the necessary data has been created
    + If you just reach the normal Mii Maker screen, exit Mii Maker and continue to the next step
1. Power off your console
1. Insert your SD card into your computer
1. Copy everything from the Release `.zip` to the root of your SD card, overwriting any existing files
    
    !!! tip
        ![](/images/screenshots/mset9/mset9-root-layout.png)

1. Execute the `mset9.py` script on the root of your SD card
    + **Windows**: Double-click `mset9.bat`
        + If this doesn't work: hold SHIFT and right-click anywhere in the SD card window, then click the option that opens Terminal, PowerShell, or Command Prompt, then type `py -3 mset9.py` and press Enter
    + **Linux**: open a Terminal window, `cd` to the root of your SD card, then type `python3 mset9.py` and press Enter
    + You should see a window that says "MSET9 ... SETUP by zoogie"
    + You should keep this window open until the end of this page, but if you close it by accident, you can open it again by redoing this step

    !!! tip

        ![](/images/screenshots/mset9/mset9-select.png)

1. Type the number corresponding to your console model and version, then press Enter
    + The window should change to this:

    !!! tip

        ![Image: MSET9 setup](/images/screenshots/mset9/mset9-setup.png)

    + Ensure that the correct console model and version is displayed

1. Type `1`, then press Enter to setup MSET9
    + If you see "(title.db/import.db) does not exist on SD card!":
        + Type "yes", then press Enter
        + Close the MSET9 window
        + Safely eject your SD from your computer
        + Insert your SD card into your console
        + Power on your console
        + Navigate to System Settings -> Data Management -> Nintendo 3DS -> Software -> Reset ([visual instructions](/images/screenshots/database-reset.jpg))
        + Power off your console
        + Insert your SD card into your computer
        + Go back to Step 7 ("Execute the `mset9.py` script")
1. Once the window says "Setting up... done", safely eject your SD card from your computer
    + Keep the MSET9 window open
1. Reinsert your SD card into your console
1. Power on your console

#### Section II - MSET9

In this section, you will trigger MSET9 to launch SafeB9SInstaller (the custom firmware installer).

!!! danger

    These instructions must be followed **EXACTLY**, so double-check EVERYTHING you are doing to avoid errors!

1. **[Hover over](/images/screenshots/mset9/hover-settings.png)** the System Settings icon using the D-Pad (do not select it yet)
1. Power off, then power on your console
1. Press (A) to launch System Settings
1. Navigate to `Data Management` -> `Nintendo 3DS` -> `Extra Data` ([image](/images/screenshots/mset9/settings-extdata.png))
1. **Do not press any buttons or touch the screen** - ensure that you see the Mii Maker icon
1. **With the console STILL ON, and without pressing any buttons or touching the screen**, remove your SD card from your console
    + The menu will refresh and say that no SD card is inserted, which is expected
1. Insert your SD card into your computer, then wait a few seconds
1. In the MSET9 window, type `2`, then press Enter to trigger MSET9
    + You should see "Injecting... done."
1. Safely eject your SD card from your computer
    + Keep the MSET9 window open
1. Reinsert your SD card into your console **without pressing any buttons or touching the screen**
1. If the exploit was successful, you will have booted into SafeB9SInstaller 
    + If you get a red screen, follow the [troubleshooting guide](troubleshooting#installing-boot9strap-mset9)

#### Section III - Installing boot9strap

{% include ".include/install-boot9strap-safeb9sinstaller.md" %}
1. Once it is complete, press (A) to reboot your console
{% include ".include/configure-luma3ds.md" %}


#### Section IV - Removing MSET9

In this section, you will remove MSET9 to prevent further issues. (This will not remove the custom firmware that you just installed.)

!!! danger

    Do NOT skip this section! If you do, applications may crash unexpectedly and you may encounter errors on the next page!

1. Power off your console
1. Insert your SD card into your computer, then wait a few seconds
1. In the MSET9 window, type `4`, then press Enter to remove MSET9
    + You should see "Removing... done"
1. Close the MSET9 window; you will not need it for any of the upcoming steps

{% include ".include/luma3ds-installed-note.md" %}
___

!!! danger

    Did you follow Section IV (Removing MSET9)? That section is MANDATORY!

!!! success

    ### Continue to [Finalizing Setup](finalizing-setup)

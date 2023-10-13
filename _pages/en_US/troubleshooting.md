---
title: "Troubleshooting"
---

This page offers troubleshooting advice for commonly encountered issues. If you are unable to solve your issue with the advice on this page, please join [Nintendo Homebrew on Discord](https://discord.gg/MWxPgEp) and describe your issue, including what you have already tried.

??? info "Table of Contents"

    Used on multiple pages:

    * [SafeB9SInstaller](#issues-with-safeb9sinstaller)

    Guide pages:

    * [Seedminer](#seedminer)
        * [BannerBomb3](#bannerbomb3)
        * [Installing boot9strap (Fredtool-Inject)](#installing-boot9strap-fredtool-inject)
        * [Installing boot9strap (PicHaxx)](#installing-boot9strap-pichaxx)
    * [Installing boot9strap (Soundhax)](#installing-boot9strap-soundhax)
    * [Installing boot9strap (SSLoth-Browser)](#installing-boot9strap-ssloth-browser)
    * [Installing boot9strap (super-skaterhax)](#installing-boot9strap-super-skaterhax)
    * [Installing boot9strap (MSET9)](#installing-boot9strap-mset9)

    * [Finalizing Setup](#finalizing-setup)

    Issues after installation:

    * [Boot issues](#boot-issues-on-consoles-with-custom-firmware)
    * [Software issues](#software-issues-on-consoles-with-custom-firmware)


## Issues with SafeB9SInstaller

### Before opening SafeB9SInstaller

??? note "Failed to open SafeB9SInstaller.bin"

    The file `SafeB9SInstaller.bin` is missing or misplaced. Download the latest release of [SafeB9SInstaller](https://github.com/d0k3/SafeB9SInstaller/releases/download/v0.0.7/SafeB9SInstaller-20170605-122940.zip), extract it, and place `SafeB9SInstaller.bin` on the root of your SD card. Do not add the `.bin` extension if you do not already see it.

### SigHaxed FIRM was not installed! Check lower screen for more info.

??? note "MicroSD Card - init failed"

    Your SD card is most likely acting weird. Try reformatting your SD card ([Windows](formatting-sd-(windows)), [macOS](formatting-sd-(mac)), [Linux](formatting-sd-(linux))). If this doesn't work, try another SD card.

??? note "SigHaxed FIRM - File not found"

    You are missing `boot9strap.firm` and `boot9strap.firm.sha` from the `boot9strap` folder, or the `boot9strap` folder is misnamed. Download the latest release of [boot9strap](https://github.com/SciresM/boot9strap/releases/download/1.4/boot9strap-1.4.zip), and place `boot9strap.firm` and `boot9strap.firm.sha` in the `boot9strap` folder.

??? note "SigHaxed FIRM - invalid FIRM"

    There is an issue with your `boot9strap.firm` and `boot9strap.firm.sha` files. Re-download the latest release of [boot9strap](https://github.com/SciresM/boot9strap/releases/download/1.4/boot9strap-1.4.zip), and place `boot9strap.firm` and `boot9strap.firm.sha` in the `boot9strap` folder.

??? note "Secret Sector - File not found"

    You are missing `secret_sector.bin` from the `boot9strap` folder, or the `boot9strap` folder is misnamed. Download [secret_sector.bin](magnet:?xt=urn:btih:15a3c97acf17d67af98ae8657cc66820cc58f655&dn=secret_sector.bin&tr=udp%3a%2f%2ftracker.torrent.eu.org%3a451%2fannounce&tr=udp%3a%2f%2ftracker.lelux.fi%3a6969%2fannounce&tr=udp%3a%2f%2ftracker.loadbt.com%3a6969%2fannounce&tr=udp%3a%2f%2ftracker.moeking.me%3a6969%2fannounce&tr=udp%3a%2f%2ftracker.monitorit4.me%3a6969%2fannounce&tr=udp%3a%2f%2ftracker.ololosh.space%3a6969%2fannounce&tr=udp%3a%2f%2ftracker.pomf.se%3a80%2fannounce&tr=udp%3a%2f%2ftracker.srv00.com%3a6969%2fannounce&tr=udp%3a%2f%2ftracker.theoks.net%3a6969%2fannounce&tr=udp%3a%2f%2ftracker.tiny-vps.com%3a6969%2fannounce&tr=udp%3a%2f%2fopen.tracker.cl%3a1337%2fannounce&tr=udp%3a%2f%2ftracker.zerobytes.xyz%3a1337%2fannounce&tr=udp%3a%2f%2ftracker1.bt.moack.co.kr%3a80%2fannounce&tr=udp%3a%2f%2fvibe.sleepyinternetfun.xyz%3a1738%2fannounce&tr=udp%3a%2f%2fwww.torrent.eu.org%3a451%2fannounce&tr=udp%3a%2f%2ftracker.openbittorrent.com%3a6969%2fannounce&tr=udp%3a%2f%2f9.rarbg.com%3a2810%2fannounce&tr=udp%3a%2f%2ftracker.opentrackr.org%3a1337%2fannounce&tr=udp%3a%2f%2fexodus.desync.com%3a6969%2fannounce&tr=http%3a%2f%2fopenbittorrent.com%3a80%2fannounce) using a torrent client, and place it in the `boot9strap` folder.

??? note "Something else"

    Join [Nintendo Homebrew on Discord](https://discord.gg/MWxPgEp) for assistance, and describe the message that you see.


## Seedminer

??? note "Multiple long folder names in Nintendo 3DS folder"

    !!! info

        ![](/images/screenshots/multiple-id0.png)

    This occurs when you use your SD card in multiple 3DS consoles and is intended to prevent inadvertently merging data that would not be valid on other consoles. To figure out which long folder name is correct for your 3DS, follow these instructions:

    1. Rename the `Nintendo 3DS` folder to `BACKUP_Nintendo 3DS`
    1. Reinsert your SD card into your console
    1. Power on your console
    1. Wait for the console to generate the SD card data
        + Your applications will have disappeared. This is normal and will be resolved shortly
    1. Power off your console
    1. Insert your SD card into your computer
    1. Navigate to the `Nintendo 3DS` folder on your SD card
    1. Copy the 32 character long name of the folder you see
        + This is your true ID0 that you will use in [Section II of Seedminer](seedminer#section-ii---seedminer)
    1. Delete the `Nintendo 3DS` folder
    1. Rename the `BACKUP_Nintendo 3DS` folder to `Nintendo 3DS`

??? note "Bruteforce Movable skips to step 4"

    The website has already mined your `movable.sed` using your friend code and ID0 combination. You can use the `movable.sed` that it provides you.

??? note "Important! You have been locked out of the automated part1 dumper system..."

    Your friend code was blocked from using the friend code bot because your 3DS did not successfully friend the bot. Ensure your 3DS is properly connected to the Internet, then join [Nintendo Homebrew on Discord](https://discord.gg/MWxPgEp) and ask to be unlocked.

??? note "We were unable to successfully complete your bruteforce request. :`("

    The website has determined that your `movable.sed` cannot be brute-forced. Ensure that you gave the correct ID0 to the website. If your ID0 is correct, then you will be unable to use Seedminer and you will have to use an alternate method.

    New 3DS users can follow [Installing boot9strap (super-skaterhax)](installing-boot9strap-(super-skaterhax)), while Old 3DS users can follow [Installing boot9strap (MSET9)](installing-boot9strap-(mset9)). If you cannot do MSET9 for any reason, you will need to follow a method that requires additional games or hardware.


## BannerBomb3

??? note "Multiple ID1 folders inside of ID0"

    !!! info
    
        ![](/images/screenshots/multiple-id1.png)

    This can occur if you've used multiple SD cards on a 3DS and then merged the contents of the SD cards together. This is done to prevent conflicting, valid data from being merged together.

    To fix this, you will need to determine which folder contains your data. Usually, this will be the larger (or largest) of the folders. Backup and delete the smaller one(s), then create a `Nintendo DSiWare` folder in the one that remains and move `F00D43D5.bin` to that location.

??? note "DSiWare Management menu crashes without showing BB3 multihax menu"

    Ensure that `F00D43D5.bin` is the only file in `Nintendo 3DS` -> `<ID0>` -> `<ID1>` -> `Nintendo DSiWare`. If it is, then re-create it with the [Bannerbomb3 Injector](https://zoogie.github.io/web/bb3).

    Also, ensure that `bb3.bin` is on the root of the SD card. If it is missing, then download the latest release of [Bannerbomb3](https://github.com/zoogie/Bannerbomb3/releases/download/v3.0/Release_v3.0.zip) (direct download), and copy the `bb3.bin` file from the Release `.zip` to the root of your SD card.

    If neither of these solutions fixes this problem, then custom firmware may have been uninstalled on this console in a way that makes this method impossible to perform. If this is the case, join [Nintendo Homebrew on Discord](https://discord.gg/MWxPgEp) and ask, in English, for help.

??? note "DSiWare Management menu displays "No accessible software data.""

    `F00D43D5.bin` is missing from `Nintendo 3DS` -> `<ID0>` -> `<ID1>` -> `Nintendo DSiWare`. Make sure that `Nintendo DSiWare` is correctly spelled and spaced. Uppercase/lowercase does not matter.

??? note "DSiWare Management shows a question mark"

    There may be an issue with your `F00D43D5.bin` file (it may be corrupted or intended for the wrong 3DS). Re-create your `F00D43D5.bin` file with the [Bannerbomb3 Injector](https://zoogie.github.io/web/bb3), ensuring that you use the `movable.sed` file for your console.


## Installing boot9strap (Fredtool-Inject)

??? note "Error on DSiHaxInjector page"

    Ensure that your `movable.sed` and DSiWare backup come from the same console. A mismatch will result in an error.

??? note ""Haxxxxxxxxx!" does not appear"

    There is an issue with your `42383821.bin` file (it is incorrect, missing, misplaced, or corrupted). Re-create your files with the [DSIHaxInjector_new](https://jenkins.nelthorya.net/job/DSIHaxInjector_new/build?delay=0sec) website and ensure that you place the `42383821.bin` file from `output.zip` -> `hax` in `Nintendo 3DS` -> `<ID0>` -> `<ID1>` -> `Nintendo DSiWare`.


??? note "DSiWare launches normally"

    `Haxxxxxxxxx!` was not copied from your SD card to your system memory.

??? note "SD card is grayed out in Flipnote"

    Flipnote may take a long time to index your card if you have a large SD card. Let it sit for a few minutes.

??? note "Lenny face does not appear in SD card section"

    You did not copy the `private` folder from the Frogminer_save `.zip` to the root of your SD card.

??? note "Flipnote freezes"

    You may have accidentally touched the touch screen while in the modified Flipnote. Re-enter DS Connection Settings and try again, ensuring that you don't accidentally use the touchscreen.

??? note "Green screen after pasting"

    The file `boot.nds` is missing or misplaced. Download the latest release of [b9stool](https://github.com/zoogie/b9sTool/releases/latest) and place `boot.nds` on the root of your SD card, replacing the existing one.

??? note "White screen after pasting"

    There is an issue with your `boot.nds` file. Re-download the latest release of [b9stool](https://github.com/zoogie/b9sTool/releases/latest) and place `boot.nds` on the root of your SD card, replacing the existing one.

??? note "Unable to open Luma3DS configuration menu after running B9STool"

    Join [Nintendo Homebrew on Discord](https://discord.gg/MWxPgEp) and explain what has happened.


## Installing boot9strap (PicHaxx)

??? note ""An error has occurred. Hold down the POWER button to turn off the power..." (black screen with text)"

    Your `00000001.sav` and/or `otherapp.bin` files may be misplaced. Ensure that `00000001.sav` is in `Nintendo 3DS` -> `<ID0>` -> `<ID1>` -> `title` -> `00040000` -> `0017c100` -> `data` and that `otherapp.bin` is on the root of your SD card.

    If your files are in the correct locations, re-create the save using the [PicHaxx Save Tool](https://3dstools.nhnarwhal.com/#/pichaxx), then place it in `Nintendo 3DS` -> `<ID0>` -> `<ID1>` -> `title` -> `00040000` -> `0017c100` -> `data`. Ensure that the file is named exactly `00000001.sav` and that you used your console's `movable.sed` to create it. Re-download [HBL otherapps](https://github.com/zoogie/ninjhax2.x/releases/download/v11.17/otherapps_with_CfgS_11.17.zip), place the `.bin` file relevant to your console to the root of your SD card, and rename it to `otherapp.bin`. Do not add the `.bin` extension if you do not already see it.

??? note ""An exception occurred" or Errdisp when opening Picross"

    Your console already has custom firmware. You should [check for CFW](checking-for-cfw).

??? note ""An error has occurred, forcing the software to close..." (white message box)"

    There is an issue with your `otherapp.bin` file. Download [HBL otherapps](https://github.com/zoogie/ninjhax2.x/releases/download/v11.17/otherapps_with_CfgS_11.17.zip), place the `.bin` file relevant to your console to the root of your SD card, and rename it to `otherapp.bin`. Do not add the `.bin` extension if you do not already see it.


??? note "Game starts normally"

    Your modified `00000001.sav` file may be misplaced, or you may have used the wrong `movable.sed` when creating it. Re-generate your `movable.sed` from [Bruteforce Movable](https://seedminer.hacks.guide), then re-create the save using the [PicHaxx Save Tool](https://3dstools.nhnarwhal.com/#/pichaxx) and place the resulting file (`00000001.sav`) in `Nintendo 3DS` -> `<ID0>` -> `<ID1>` -> `title` -> `00040000` -> `0017c100` -> `data`.


## Installing boot9strap (Soundhax)

??? note "Red/purple/pink and white screen after running Soundhax"

    If your console is on system version 9.4.0, 9.5.0, or 9.6.0, you may be encountering a bug with an old version of universal-otherapp. Download the latest version from [here](https://github.com/TuxSH/universal-otherapp/releases/latest).

    If your console is not on those firmwares, it likely indicates that you already have custom firmware. You should [check for CFW](checking-for-cfw).

??? note ""An error has occurred, forcing the software to close..." (white message box)"

    There is an issue with your `otherapp.bin` file (it is missing, misplaced, or corrupted). Download the latest release of [universal-otherapp](https://github.com/TuxSH/universal-otherapp/releases/latest) and place it on the root of your SD card.

??? note ""Could not play""

    You have the wrong Soundhax file for your console and region, or your console is incompatible with Soundhax. In the latter case, your course of action will determine on what version your 3DS is currently on. Join [Nintendo Homebrew on Discord](https://discord.gg/MWxPgEp) for assistance.

??? note "Failed to mount the SD card!"

    Back up your data and reformat your SD card as FAT32 with the recommended tool depending on your operating system ([Windows](formatting-sd-(windows)), [macOS](formatting-sd-(mac)), [Linux](formatting-sd-(linux))). MiniTool Partition Wizard and the HP formatting tool (HPUSBDisk) are known to cause issues with 3DS SD cards.

    If this is unsuccessful, try using another SD card.


## Installing boot9strap (SSLoth-Browser)

??? note "Red/purple/pink and white screen after running Browserhax"

    This likely indicates that you already have custom firmware. You should [check for CFW](checking-for-cfw).

??? note ""An error has occurred. Hold down the POWER button to turn off the power..." (black screen with text)"

    The file `arm11code.bin` is missing or misplaced. Download the latest release of [universal-otherapp](https://github.com/TuxSH/universal-otherapp/releases/latest), place `otherapp.bin` on the root of your SD card and rename it to `arm11code.bin`. Do not add the `.bin` extension if you do not already see it.

??? note ""An error has occurred, forcing the software to close..." (white message box)"

    There may be an issue with your `arm11code.bin` file. Download the latest release of [universal-otherapp](https://github.com/TuxSH/universal-otherapp/releases/latest), place `otherapp.bin` on the root of your SD card and rename it to `arm11code.bin`. Do not add the `.bin` extension if you do not already see it.

    You can also try resetting your browser save data:

    1. Launch the browser, then launch the browser settings
    1. Scroll to the bottom and select "Reset Save Data" (it may also be called "Initialize Save Data" or "Clear All Save Data")
    1. Try the exploit again

??? note "Opening the browserhax QR code or URL crashes"

    Browser based exploits (such as this one) are often unstable and crash frequently, but they can sometimes be fixed by doing the following steps.

    1. Launch the browser, then launch the browser settings
    1. Scroll to the bottom and select "Reset Save Data" (it may also be called "Initialize Save Data" or "Clear All Save Data")
    1. Try the exploit again

??? note "System Update prompt when opening browser"

    The SSLoth proxy was incorrectly configured. Re-do the SSLoth section on the page.

??? note "Error 032-0420 when opening browser"

    Follow these steps in order:

    1. Launch System Settings on your console
    1. Navigate to `Internet Settings` -> `Connection Settings`
    1. Click on your network connection slot and navigate to `Change Settings` -> `Next Page (right arrow)` -> `Proxy Settings`
    1. Set "Proxy Settings" to "No"
    1. Click OK, then click Save
    1. When prompted, click "Test" to perform the connection test
        + The test should succeed
    1. Click "OK" to continue
    1. Press "Back" twice, then "Close" to go back to the HOME Menu
    1. Open the Internet Browser once
    1. If prompted about a system update, press OK
        + This won't actually update the system
    1. Start again from [Section II](installing-boot9strap-(ssloth-browser).html#section-ii---ssloth)

??? note "Frozen on "Doing agbhax...""

    There may be an issue with your `arm11code.bin` file. Re-download the latest release of [universal-otherapp](https://github.com/TuxSH/universal-otherapp/releases/latest), place it on the root of your SD card, and rename it to `arm11code.bin`. Do not add the `.bin` extension if you do not already see it.

??? note ""PrepareArm9ForTwl returned error c8804631!""

    Join [Nintendo Homebrew on Discord](https://discord.gg/MWxPgEp) for assistance.

??? note "Failed to mount the SD card!"

    Back up your data and reformat your SD card as FAT32 with the recommended tool depending on your operating system ([Windows](formatting-sd-(windows)), [macOS](formatting-sd-(mac)), [Linux](formatting-sd-(linux))). MiniTool Partition Wizard and the HP formatting tool (HPUSBDisk) are known to cause issues with 3DS SD cards.

    If this is unsuccessful, try using another SD card.


## Installing boot9strap (super-skaterhax)

??? note ""An error has occurred. Please save your data in any software currently in use, then restart the system.""

    The date is set incorrectly. To set it correctly, follow these steps:

    1. Select the System Settings icon on the HOME Menu, and tap Open.
    1. Tap Other Settings.
    1. Tap Date & Time.
    1. Tap Today's date.
    1. Tap Up/Down Arrows to set the correct Day, Month and Year.
    1. Select OK to confirm.

    If the problem persists:

    + Ensure that `arm11code.bin`, `browserhax_hblauncher_ropbin_payload.bin`, and `boot.3dsx` are on the root of the SD card (not inside of any folder)
    + Ensure that you selected the correct payload for your region AND system version
    + Ensure that your region settings look [like this](/images/screenshots/skater_lang.png)
    + Try resetting your browser data:
        1. Launch the browser, then launch the browser settings
        1. Scroll to the bottom and select "Reset Save Data" (it may also be called "Initilize Save Data" or "Clear All Save Data")
        1. Try the exploit again
    + Try changing the system language to something other than the current language

??? note ""An error has occurred. Hold down the POWER button to turn off the power..." (black screen with text)"

    The file `arm11code.bin` is missing or misplaced. Make sure to copy the files of the [latest version of super-skaterhax](https://github.com/zoogie/super-skaterhax/releases/latest) for your region and version to the root of your SD card (not inside of a folder).

    !!! tip
        
        ![](/images/screenshots/skater-root-layout.png)

??? note "An exception occured or "DLL_HEAP_INFORMATION" when pressing GO! GO!"

    This likely indicates that you already have custom firmware. You should [check for CFW](checking-for-cfw).

## Installing boot9strap (MSET9)

??? note "assert(id0_count == 1) AssertionError"

    You have multiple ID0 folders. To determine the correct folder, follow these instructions:

    1. Rename the `Nintendo 3DS` folder to `BACKUP_Nintendo 3DS`
    1. Reinsert your SD card into your console
    1. Power on your console
    1. Wait for the console to generate the SD card data
        + Your applications will have disappeared. This is normal and will be resolved shortly
    1. Power off your console
    1. Insert your SD card into your computer
    1. Navigate to the `Nintendo 3DS` folder on your SD card
    1. Write down the first few characters of the folder you see
        + This is your true ID0, which we will keep in the real Nintendo 3DS folder
    1. Delete the ID0 from the current `Nintendo 3DS` folder
    1. Move the true ID0 folder from the `BACKUP_Nintendo 3DS` folder to the `Nintendo 3DS` folder
    1. If it exists, move the `Private` folder from the `BACKUP_Nintendo 3DS` folder to the `Nintendo 3DS` folder

    Once you've done this, continue from [Section I Step 7](installing-boot9strap-(mset9)#section-i---prep-work).

??? note "(title/import).db does not exist, create them now?" / invalid database"

    Full error messages:
    * "Nintendo 3DS/\<ID0>/\<ID1>/dbs/\<import.db and/or title.db> does not exist on SD card! Create them now? (type yes/no)"
    * "Invalid database"

    This happens when no valid title database is present, usually because you never installed any titles from eShop on this SD card.

    1. Type "yes", then press Enter
    1. Insert the SD card into your console
    1. Power on your console
    1. Navigate to System Settings -> Data Management -> Nintendo 3DS -> Software -> Reset ([visual instructions](/images/screenshots/database-reset.jpg))
    1. Power off your console
    1. Insert the SD card into your computer
    1. Return to [Section I Step 7](installing-boot9strap-(mset9)#section-i---prep-work)

??? note "[WinError 5] Access is denied"

    The SD card may be write-locked. If you are using a full-size SD card, ensure that the lock is flipped in the [upright position](/images/sdlock.png). Otherwise, try ejecting and reinserting your SD card.

??? note "UnboundLocalError: cannot access local variable 'haxid1_path'"

    This can happen when Option 1 stopped because of an error and there is an incomplete installation.

    1. Close the script window
    1. Execute the `mset9.py` script on the root of the SD card
        + **Windows**: Double-click `mset9.bat`
            + If this doesn't work: hold SHIFT and right-click anywhere in the SD card window, then click the option that opens Terminal, PowerShell, or Command Prompt, then type `py -3 mset9.py` and press Enter
        + **Linux**: open a Terminal window, `cd` to the root of your SD card, then type `python3 mset9.py` and press Enter
        + You should see a window that says "MSET9 ... SETUP by zoogie"
    1. Type the number corresponding to your console model and version, then press Enter
    1. Type `4`, then press Enter to remove MSET9
    1. Return to the [beginning of Section I](installing-boot9strap-(mset9)#section-i---prep-work)

??? note "Red screen after reinserting SD card (Section II Step 11)"

    You may be missing `SafeB9S.bin` from the root of your SD card, or the file may be corrupted. Copy it from the `SDMC` folder in the MSET9 `.zip`, replacing any existing files.

    Alternatively, your SD card may be improperly formatted or partitioned. Try reformatting your SD card: [Windows](formatting-sd-(windows)), [Linux](formatting-sd-(linux)) *(this will wipe your SD card data)*

??? note "assert(mii_ok==1) AssertionError"

    Your SD card does not have Mii Maker Data, which is necessary for this exploit to run.

    1. Close the script window
    1. Execute the `mset9.py` script on the root of the SD card
        + **Windows**: Double-click `mset9.bat`
            + If this doesn't work: hold SHIFT and right-click anywhere in the SD card window, then click the option that opens Terminal, PowerShell, or Command Prompt, then type `py -3 mset9.py` and press Enter
        + **Linux**: open a Terminal window, `cd` to the root of your SD card, then type `python3 mset9.py` and press Enter
        + You should see a window that says "MSET9 ... SETUP by zoogie"
    1. Type the number corresponding to your console model and version, then press Enter
    1. Type `4`, then press Enter to remove MSET9
    1. Insert the SD card into your console
    1. Power on your console
    1. Launch Mii Maker
    1. Wait for your console to reach the "Welcome to Mii Maker" screen, then exit Mii Maker
    1. Power off your console
    1. Insert the SD card into your computer
    1. Return to [Section I Step 7](installing-boot9strap-(mset9)#section-i---prep-work)

??? note "System Settings loading infinitely after reinserting the SD card"

    You most likely did something different from the MSET9 instructions, or selected the wrong model or version.

    1. Close the script window
    1. Execute the `mset9.py` script on the root of the SD card
        + **Windows**: Double-click `mset9.bat`
            + If this doesn't work: hold SHIFT and right-click anywhere in the SD card window, then click the option that opens Terminal, PowerShell, or Command Prompt, then type `py -3 mset9.py` and press Enter
        + **Linux**: open a Terminal window, `cd` to the root of your SD card, then type `python3 mset9.py` and press Enter
        + You should see a window that says "MSET9 ... SETUP by zoogie"
    1. Type the number corresponding to your console model and version, then press Enter
    1. Type `3`, then press Enter
    1. Once the window says "Deleting... done.", insert the SD card into your console
    1. Power on your console
    1. Return to [Section II Step 1](installing-boot9strap-(mset9)#section-ii---mset9)

    If you continue to have this issue and are sure that you did everything correctly, it's possible that there's something wrong with your Mii Maker extdata. Follow these instructions to reset it:

    1. Close the script window
    1. Execute the `mset9.py` script on the root of the SD card
        + **Windows**: Double-click `mset9.bat`
            + If this doesn't work: hold SHIFT and right-click anywhere in the SD card window, then click the option that opens Terminal, PowerShell, or Command Prompt, then type `py -3 mset9.py` and press Enter
        + **Linux**: open a Terminal window, `cd` to the root of your SD card, then type `python3 mset9.py` and press Enter
        + You should see a window that says "MSET9 ... SETUP by zoogie"
    1. Type the number corresponding to your console model and version, then press Enter
    1. Type `4`, then press Enter to remove MSET9
    1. Insert the SD card into your console
    1. Power on your console
    1. Launch Mii Maker
    1. Wait for your console to reach the "Welcome to Mii Maker" screen, then exit Mii Maker
    1. Power off your console
    1. Insert the SD card into your computer
    1. Return to [Section I Step 7](installing-boot9strap-(mset9)#section-i---prep-work)

## Finalizing Setup

??? note "Unable to update console"

    The steps below can be attempted in any order, but are listed from easiest to hardest to perform.

    1. Set your DNS settings to "Auto"
    1. Move closer to your WiFi router
    1. Update from Safe Mode by turning off the console, holding (Left Shoulder) + (Right Shoulder) + (D-Pad Up) + (A) on boot, and following the on-screen prompts
    1. Delete your WiFi connection, then reconnect to your WiFi again
    1. Reboot your WiFi router
    1. Connect to a different WiFi connection, like a mobile hotspot
    1. Nintendo servers may be down; Try again later
    1. If you still get an error, [follow CTRTransfer](ctrtransfer), then try again
    1. For further support (in English), join [Nintendo Homebrew on Discord](https://discord.gg/MWxPgEp)

??? note "Error #02: Missing essential.exefs"

    You said 'No' to the "Make essential files backup?" prompt in GodMode9. Power off your console, power it on while holding (Start) to re-enter GodMode9, say 'Yes' to the prompt, then try again.

??? note "Unable to open GodMode9 or Error #03: Missing files"

    You did not copy everything from `finalize.zip` to the root of your SD card. Remember, your SD card should have at least these files:

    !!! tip

        ![](/images/screenshots/finalizing-root-layout.png)

??? note "Error #04: No space"

    You need at least 1.3GB of free space to perform the NAND backup, which is a part of the script. If you don't have enough space, follow these steps:

    1. Power off your console
    1. Insert your SD card into your computer
    1. Copy the `Nintendo 3DS` folder from the root of your SD card to your computer
    1. Delete the Nintendo 3DS folder from the SD card
    1. Reinsert your SD card into your console
    1. Press and hold (Start), and while holding (Start), power on your console. This will launch GodMode9
    1. Press the (Home) button
    1. Select "Scripts..."
    1. Select "finalize"
    1. Press (A) to create a NAND backup
        + This may take around fifteen minutes
    1. Press (A) again
        + The console should automatically power off
    1. Insert your SD card into your computer
    1. Copy the files in `/gm9/backups/` on your SD to a safe location on your computer
    1. Delete the `<date>_<serialnumber>_sysnand_##.bin` and `<date>_<serialnumber>_sysnand_##.bin.sha` files from the SD card
    1. Copy the `Nintendo 3DS` folder from your computer to the root of your SD card
    1. Delete the `Nintendo 3DS` folder from your computer

    Now that you have your NAND backup in a safe place:

    1. Reinsert your SD card into your console
    1. Press and hold (Start), and while holding (Start), power on your console. This will launch GodMode9
    1. Press the (Home) button
    1. Select "Scripts..."
    1. Select "finalize"
    1. Continue the script as normal
        + The NAND backup will be automatically skipped

??? note "Information #05: No title database"

    Press (A) to import a title database, unlock SysNAND writing by entering the buttons on-screen, then continue the script as normal.

??? note "Error #06 or "Error: Could not open directory" when attempting a NAND backup"

    Make sure you have at least 1.3GB available in your SD card. If you don't have enough space, follow these steps:

    1. Power off your console
    1. Insert your SD card into your computer
    1. Copy the `Nintendo 3DS` folder from the root of your SD card to your computer
    1. Delete the Nintendo 3DS folder from the SD card
    1. Reinsert your SD card into your console
    1. Press and hold (Start), and while holding (Start), power on your console. This will launch GodMode9
    1. Perform a [NAND Backup](godmode9-usage#creating-a-nand-backup)
    1. Copy the files in `gm9/out` on your SD to a safe location on your computer
    1. Delete the `<date>_<serialnumber>_sysnand_##.bin` and `<date>_<serialnumber>_sysnand_##.bin.sha` files from the SD card, keeping essential.exefs in `/gm9/out/`
    1. Copy the `Nintendo 3DS` folder from your computer to the root of your SD card
    1. Delete the `Nintendo 3DS` folder from your computer

    If you have enough space on your SD card, your SD might be corrupted or faulty. Check your SD card for any errors by following the guide according to your computer's operating system: [Windows](h2testw-(windows)), [Linux](f3-(linux)), [macOS](f3xswift-(mac)).

??? note "Error #09: Unsupported GodMode9 version"

    You are somehow running a version of GodMode9 not packaged with the script. Make sure you copied the contents of `finalize.zip` to the root of your SD card and that you are holding START while powering on your console.

??? note "Error #11: Missing donor database"

    You did not copy everything from `finalize.zip` to the root of your SD card. Remember, your SD card should have at least these files:

    ![](/images/screenshots/finalizing-root-layout.png)

??? note "Error #12: Copy (file).db fail"

    Ensure that your SD card is not [locked](/images/sdlock.png). If the SD card is not locked and you continue to get this error, join [Nintendo Homebrew on Discord](https://discord.gg/MWxPgEp) for assistance.

??? note "Information #17: Duplicate NAND backup"

    The script has detected that the Nintendo 3DS folder is missing AND that you have already made a NAND backup before. If you intend to install homebrew applications, you should do the following:

    1. Press (B) to cancel making another NAND backup
    1. Hold (R) and press (Start) at the same time to power off your console
    1. Copy the contents of `/gm9/backups/` to a safe location on your computer
    1. Delete `/gm9/backups/` from your SD card
    1. If you moved your Nintendo 3DS folder off of your SD card to get to this point, copy it back to your SD card
        + If you do not have a Nintendo 3DS folder, boot into the HOME Menu at least once with the SD card inserted to automatically generate it
    1. Press and hold (Start), and while holding (Start), power on your console. This will launch GodMode9
    1. Press (Home) to bring up the action menu
    1. Select "Scripts..."
    1. Select "finalize"
    1. Follow the prompts in the script, answering any questions that you are asked

??? note "Error #18: MSET9 detected"

    You didn't remove MSET9 when prompted to. Follow [Section IV - Removing MSET9](installing-boot9strap-(mset9)#section-iv---removing-mset9), then re-run the script.

---

## Boot issues on consoles with custom firmware

!!! note

    The steps detailed here generally assume that your console has a modern custom firmware setup (boot9strap + Luma3DS 8.0 or greater). If your console is running an older homebrew setup (for example, something based on arm9loaderhax or menuhax), you should update your setup before trying these instructions.

### Power/notification light indicators

??? note "My console powers off when I try to turn it on, and/or the notification LED shows a color on boot"

    There is an issue with your `boot.firm` file. If you're running [boot9strap 1.4](https://github.com/SciresM/boot9strap/releases/tag/1.4), your 3DS notification LED may flash a certain color. This color is used to diagnose issues involving your `boot.firm` file on SD card or internal memory. On older versions of boot9strap, the blue light will power off almost immediately when trying to turn on the console.

    If the notification LED flashes:

    + **White**: Your 3DS was not able to find `boot.firm` on your SD card or on internal memory.
    + **Magenta**: Your 3DS was not able to find `boot.firm` on your SD card. It was able to find `boot.firm` on internal memory, but the file is corrupted.
    + **Red**: Your 3DS was able to find `boot.firm` on both your SD card and on internal memory, but both files are corrupted.

    You can get a new `boot.firm` file by downloading the [latest release of Luma3DS](https://github.com/LumaTeam/Luma3DS/releases/latest), extracting it, and placing `boot.firm` on the root of your SD card. If your `boot.firm` file is consistently being detected as corrupted, you may want to check your SD card for errors ([Windows](h2testw-(windows)), [Linux](f3-(linux)), or [macOS](f3xswift-(mac))). Also, note that the 3DS tends to have issues with files extracted using WinRAR.

    If you hear a "popping sound", potentially accompanied with the backlight turning on for a split second, there is a hardware issue with your console (such as a disconnected backlight cable). You may be able to get your console to boot by holding it at certain angles.

??? note "My console gets stuck on a black screen with blue power light staying on"

    The steps below can be attempted in any order, but are listed from least to most time-consuming.

    1. Power off your console, remove the SD card, re-insert it, then power on your console.
    1. Power off your console, eject the game cartridge if inserted, power on your console, then wait up to ten minutes. If your console boots within ten minutes, the issue has been fixed and is unlikely to reoccur
    1. Rename the `Nintendo 3DS` folder on your SD card to `Nintendo 3DS_BACKUP`, then attempt to boot. If your console successfully boots, there is some issue within your `Nintendo 3DS` folder. Try clearing HOME Menu extdata:
        + Navigate to `/Nintendo 3DS/<ID0>/<ID1>/extdata/00000000/`
        + Delete the corresponding folder for your 3DS region:
            + **EUR Region**: `00000098`
            + **JPN Region**: `00000082`
            + **USA Region**: `0000008f`
            + **CHN Region**: `000000A1`
            + **KOR Region**: `000000A9`
            + **TWN Region**: `000000B1`
    1. Try booting into recovery mode and updating your system:
        + Power off your console
        + Hold (Left Shoulder) + (Right Shoulder) + (D-Pad Up) + (A)
        + Power on your console
        + If you were successful, the console will boot to an "update your system" screen
    1. Follow the [CTRTransfer](ctrtransfer) guide
    1. For further support, ask for help at [Nintendo Homebrew on Discord](https://discord.gg/MWxPgEp)

### Error message on boot

??? note ""An error has occurred: Failed to apply 1 FIRM patch(es)" or "An exception has occurred -- Current process: pm""

    Your Luma3DS version is outdated. Download the latest release of [Luma3DS](https://github.com/LumaTeam/Luma3DS/releases/latest) and place `boot.firm` on the root of your SD card, replacing any existing file. Make sure you are extracting the ZIP file with any tool other than WinRAR, as it is known to cause issues with 3DS-related files.

??? note ""Unable to mount CTRNAND or load the CTRNAND FIRM. Please use an external one.""

    There are a number of reasons as to why this could be happening. In any case, this error can usually be fixed by following the [CTRTransfer](ctrtransfer) guide.

??? note ""An error has occurred. Hold down the POWER button to turn off the power...""

    ARM11 exception handlers are disabled, or custom firmware is not installed. Try enabling ARM11 exception handlers:
        + Power off your console
        + Hold (Select)
        + Power on your console, while still holding (Select)
        + If the "Disable ARM11 exception handlers" box is checked, uncheck it

??? note "HOME Menu is missing installed applications"

    This could be caused by various reasons, but most likely because your SD card is not being read by the system.
    You can check if your SD is being read by holding SELECT on boot and checking the yellow text on the bottom screen; if it says "Booted from CTRNAND via B9S", then your console is booting from the internal memory and not from the SD card.

    If this is the case, attempt the steps below, which are listed from easiest to hardest:

    1. Power off your console, remove the SD card, re-insert it, then power on your console
    1. Power off your console, remove the SD card, insert it on your computer, download the latest release of [Luma3DS](https://github.com/LumaTeam/Luma3DS/releases/latest), extract `boot.firm` from the `Luma3DS.zip` and place it on the root of your SD card (replacing any existing file)
    1. Power off your console, remove the SD card, insert it on your computer and reformat your SD card according to your computer's operating system: [Windows](formatting-sd-(windows)), [macOS](formatting-sd-(mac)), [Linux](formatting-sd-(linux)) *(this will wipe your SD card data)*
    1. Test your SD card for errors by following the guide according to your computer's operating system: [Windows](h2testw-(windows)), [Linux](f3-(linux)), [macOS](f3xswift-(mac)). If your SD card is marked as faulty, then you will have to replace your SD card
    1. Your SD card slot may be broken. Join [Nintendo Homebrew on Discord](https://discord.gg/MWxPgEp) for further assistance

??? note "Blue "BOOTROM ERROR" screen"

    Your console is likely hard-bricked. You will need to buy an ntrboot flashcart to reinstall boot9strap in order to attempt to fix your console. This may also indicate a hardware issue that cannot be fixed. In any case, join [Nintendo Homebrew on Discord](https://discord.gg/MWxPgEp) for assistance.
        + It is also possible that someone has set a boot-time splash screen that just looks like a brick. Try leaving your console powered on, waiting on the blue screen, for five minutes.

??? note "Some other error"

    Please take a photo of the error and join [Nintendo Homebrew on Discord](https://discord.gg/MWxPgEp) for assistance.


## Software issues on consoles with custom firmware

??? note "DSi / DS functionality is broken or has been replaced with Flipnote Studio"

    1. Download the latest release of [TWLFix-CFW](https://github.com/MechanicalDragon0687/TWLFix-CFW/releases/latest) (the `.3dsx` file)
    1. Power off your console
    1. Create a folder named `3ds` on the root of your SD card if it does not already exist
    1. Copy `TWLFix-CFW.3dsx` to the `/3ds/` folder on your SD card
    1. Reinsert your SD card into your console
    1. Open the Homebrew Launcher
    1. Launch TWLFix-CFW from the list of homebrew
    1. Press (A) to uninstall the broken TWL titles
    1. Press (Start) to reboot the console
    1. Update your console by going to System Settings, then "Other Settings", then going all the way to the right and using "System Update"
        + The update will see that the essential TWL titles have been uninstalled, and will redownload and reinstall them
    1. Once the update is complete, tap "OK" to reboot the console

??? note "GBA Virtual Console and/or Safe Mode functionality is broken"

    Your console is running Luma3DS 6.6 or older, likely via arm9loaderhax. You should follow [A9LH to B9S](a9lh-to-b9s) to update your console to a modern custom firmware environment.

??? note "Extended memory mode games (Pokemon Sun/Moon, Smash, etc.) don't work"

    This can occur after a CTRTransfer or region change on Old 3DS / 2DS. You will need to system format your console to fix this issue.

??? note "Exception screen when booting/loading an application"

    Look for your exception screen in [this page](https://wiki.hacks.guide/wiki/3DS:Error_screens/Luma3DS_exception_screen).

    If you weren't able to find your error or the instructions didn't work, join [Nintendo Homebrew on Discord](https://discord.gg/MWxPgEp) for further assistance.

??? note "Opening the HOME Menu settings crashes the console or loads the Homebrew Launcher"

    Your console likely still has menuhax67 installed. To uninstall menuhax67, download the latest release of [menuhax67](https://github.com/zoogie/menuhax67/releases/latest) (the menuhax `.zip`), then follow the ["Uninstall menuhax67" section](https://wiki.hacks.guide/wiki/3DS:Alternate_Exploits/menuhax67#Uninstall_menuhax67) here.

---

## Other troubleshooting

??? note "Clear HOME Menu extdata"

    1. Power off your console
    1. Insert your SD card into your computer
    1. Navigate to the `/Nintendo 3DS/<ID0>/<ID1>/extdata/00000000/` folder on your SD card
    1. Delete the corresponding folder for your 3DS region:
        + **EUR Region**: `00000098`
        + **JPN Region**: `00000082`
        + **USA Region**: `0000008f`
        + **CHN Region**: `000000A1`
        + **KOR Region**: `000000A9`
        + **TWN Region**: `000000B1`
    1. Reinsert your SD card into your console

??? note "Clear HOME Menu theme data"

    1. Power off your console
    1. Insert your SD card into your computer
    1. Navigate to the `/Nintendo 3DS/<ID0>/<ID1>/extdata/00000000/` folder on your SD card
    1. Delete the corresponding folder for your 3DS region:
        + **EUR Region**: `000002ce`
        + **JPN Region**: `000002cc`
        + **USA Region**: `000002cd`
    1. Reinsert your SD card into your console

??? note "Manually entering Homebrew Launcher"

    If you are missing the Homebrew Launcher application from your HOME Menu, you can follow these instructions to manually enter the Homebrew Launcher. (You will need [boot.3dsx and boot.firm](https://github.com/LumaTeam/Luma3DS/releases/latest) on the root of your SD card.)

    {% include ".include/launch-hbl-dlp.md" %}

??? note "Turning off Parental Controls"

    You can disable the Parental Controls feature by going to System Settings -> Parental Controls and inserting the PIN, then pressing "Clear Settings", then "Delete" to remove it.
    However, if you do not know the PIN and therefore cannot access the console's settings, you will need to disable it. In order to do this, you need to obtain your console's master key (mkey):
    1. Go to [this website](https://mkey.eiphax.tech/)
    1. Fill the following boxes with the information:
        + Device Type: Select "3DS" (the same applies if you are using a 2DS, New 3DS (XL/LL) or New 2DS (XL/LL))
        + System Date: The day and month your console's clock is set to
        + Inquiry Number: Can be obtained by pressing "Forgot PIN" then "I Forgot" in the Parental Controls screen
    1. After you have obtained your mkey, press OK on the screen you have obtained your Inquiry Number, then input the master key
    1. Press "Clear Settings", then "Delete" to remove all Parental Controls data

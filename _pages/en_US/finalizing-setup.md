---
title: "Finalizing Setup"
---

### Required Reading

The file `boot.firm` is what is launched by boot9strap itself after it finishes loading off of NAND. In this case, we are using Luma3DS by [LumaTeam](https://github.com/LumaTeam/) to patch the console, allowing it to run homebrew software.

On this page, we will make critical system file backups and install some homebrew programs. Most of these steps will be automated using a script that you will run on your console.

!!! info

    The script will install the following applications:

    +  **[FBI](https://github.com/Steveice10/FBI)** *(installs CIA formatted applications)*
    +  **[Homebrew Launcher Loader](https://github.com/PabloMK7/homebrew_launcher_dummy)** *(launches the Homebrew Launcher)*
    +  **[Anemone3DS](https://github.com/astronautlevel2/Anemone3DS)** *(installs custom themes)*
    +  **[Checkpoint](https://github.com/FlagBrew/Checkpoint)** *(backs up and restores save files for 3DS and DS games)*
    +  **[ftpd](https://github.com/mtheall/ftpd)** *(access your 3DS SD card wirelessly)*
    +  **[Universal-Updater](https://github.com/Universal-Team/Universal-Updater/)** *(a homebrew app store for downloading homebrew from the 3DS over Wi-Fi)*
    +  **[GodMode9](https://github.com/d0k3/GodMode9)** *(multipurpose tool which can do NAND and cartridge functions)*

    If you don't want one of these applications, you can remove them after you have finished this page by navigating to System Settings -> Data Management -> Nintendo 3DS -> Software. (GodMode9 cannot be removed in this way and is generally required for other functions.)

### Compatibility Notes

!!! warning

    If your **New 3DS** was on version 2.1.0 before following this guide, you should [restore your NAND backup](godmode9-usage#restoring-a-nand-backup) before continuing. This likely doesn't apply to you unless you were following this guide in 2017.

!!! info

    If your previous CFW setup was EmuNAND-based and you wish to move the contents of your EmuNAND/RedNAND to SysNAND, follow [Move EmuNAND](move-emunand) before following this page. If you don't know what an EmuNAND is, this doesn't apply to you.

### What You Need

* [finalizing.zip](/assets/finalizing.zip) (direct download)

### Instructions

#### Section I - Prep Work

In this section, you will copy the files necessary to follow the rest of the instructions on this page.

1. Power off your console
1. Insert your SD card into your computer
1. Copy the contents of `finalizing.zip` (`finalize`, `gm9`, and `luma`) to the root of your SD card, merging/replacing any existing folders if prompted
    + If you are using a Mac, hold the Option key while dragging the folders to the root of your SD card, then click "Merge"
1. Reinsert your SD card into your console

The screenshot below indicates the minimum SD card layout that is required to follow this page. You may have extra files or folders on your SD card, depending on your previous setup or the method that you followed.

![]({{ "/images/screenshots/finalizing-root-layout.png" | absolute_url }})
{: .notice--info}

#### Section II - CFW Check

As an additional safety measure, we will perform an additional check for custom firmware. If custom firmware is not installed by this point for any reason, the next section may render your console unable to be hacked without external hardware.

1. Power off your console
1. Hold the (Select) button
1. Power on your console while still holding the (Select) button
1. If the check was successful, your console should have booted into the Luma3DS configuration menu
1. Press (Start) to save and reboot
1. Power off your console

!!! danger

    If you do NOT boot into the Luma3DS configuration menu, custom firmware was not installed on your console. Join [Nintendo Homebrew on Discord](https://discord.gg/MWxPgEp) and ask, in English, for help.

#### Section III - Updating the System

In this section, you will update your system to the latest version, which is safe to do with custom firmware.

{% include ".include/sysupdate.md" %}
    + Updates while using B9S + Luma (what you have) are safe
    + If this still gives you an error, [follow this troubleshooting guide](troubleshooting#finalizing-setup)

#### Section IV - RTC and DSP setup

In this section, you will sync your 3DS internal clock with the actual time and dump the sound firmware (which is necesssary for some homebrew software to use sound properly).

1. Press (Left Shoulder) + (D-Pad Down) + (Select) at the same time to open the Rosalina menu
    + If one of these buttons is broken, download [config.ini](/assets/config.ini) and put it in your `luma` folder, replacing the existing one. This will change the Rosalina menu key combination to (X) + (Y)
1. Select "Miscellaneous options"
1. Select "Dump DSP firmware"
1. Press (B) to continue
1. Select "Nullify user time offset"
1. Press (B) to continue
1. Press (B) to return to the Rosalina main menu
1. Press (B) to exit the Rosalina menu

#### Section V - Setup Script

In this section, you will use a script to automate homebrew installation, SD card cleanup, and system file backup.

1. Power off your console
1. Press and hold (Start), and while holding (Start), power on your console. This will launch GodMode9
    + If you do not boot into GodMode9, ensure that you copied the three folders from `finalizing.zip` to the root of your SD card and that the folders are not misnamed (e.g. `luma (1)`)
1. If you are prompted to create an essential files backup, press (A) to do so, then press (A) to continue once it has completed
1. If you are prompted to fix the RTC date&time, press (A) to do so, then set the date and time, then press (A) to continue
1. Press (Home) to bring up the action menu
1. Select "Scripts..."
1. Select "finalize"
1. Follow the prompts in the script, answering any questions that you are asked
    + If you encounter an error, follow the instructions in the error message or consult the [troubleshooting](troubleshooting#finalizing-setup) page
1. Once the script says "Setup complete!", press (A) to power off the device
    + If you do NOT see the message "Setup complete!", the script was not successful and you will need to redo this section
1. Insert your SD card into your computer
1. Copy the `/gm9/backups/` folder to a safe location on your computer
    + This folder contains critical file backups and should be backed up to multiple locations (i.e. cloud storage) if possible
    + The two SysNAND files are your NAND backup and can be used to revert your console to a working state if it is bricked by a software issue
    + The `essential.exefs` file contains your console's system-unique files and can be used to recover your data in the event of a hardware failure
1. If you still have them, delete the two `SysNAND` files from the `/gm9/backups/` folder from your SD card
    + The `essential.exefs` file is small and may be kept on your SD card for ease of access

___

!!! success

    You're done! Custom firmware is now fully configured on your console.

### Information and Notes

!!! info

    Trying to figure out what to do with your newly modded device? Visit [our wiki](https://wiki.hacks.guide/wiki/3DS:Things_to_do)!

!!! info

    Here are some key combos that you should know:

    + Holding (Select) on boot will launch the Luma3DS configuration menu.
    + Holding (Start) on boot will launch GodMode9, or if you have multiple payloads in `/luma/payloads/`, the Luma3DS chainloader.
    + By default, pressing (Left Shoulder) + (Down D-Pad) + (Select) while in 3DS mode will open the Rosalina menu, where you can check system information, take screenshots, enable cheats, and more. This can be changed from the Rosalina menu.
    + Holding (Start) + (Select) + (X) on boot will make the notification LED show a color for debug purposes. See the [changelog](https://github.com/SciresM/boot9strap/releases/tag/1.4) for a list.

!!! info

    For information on using GodMode9's various features, check out the [GodMode9 Usage](godmode9-usage) and [Dumping Titles and Game Cartridges](dumping-titles-and-game-cartridges) pages.

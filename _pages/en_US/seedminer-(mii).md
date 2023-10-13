---
title: "Seedminer (Mii)"
---

!!! warning

    This method requires a reasonably powerful GPU (any dedicated graphics card made in the last few years) and the ability to use a command line. If you don't know what those are or do not have the hardware necessary, join [Nintendo Homebrew on Discord](https://discord.gg/MWxPgEp), open the "#mii-mining-assistance" channel and provide the following:

    + Your Mii QR code, uploaded directly to Discord (do not take a screenshot or a photo of the image, just send the HNI_XXXX.JPG image itself)
    + Your console's ID0 (the name of the 32-character folder directly inside of Nintendo 3DS - see [this troubleshooting section](https://3ds.hacks.guide/troubleshooting#seedminer) if you have multiple)
    + Your console model (e.g. 3DS, 3DS XL, 2DS, New3DS, New3DS XL, New2DS XL)
    + Your console's year of manufacturing; if you don't know, don't say it - it's not super important

??? info "Technical Details (optional)"

    To install boot9strap on your console, we derive your console's unique encryption key. To accomplish this, we use a tool called Seedminer to calculate the data encryption key (movable.sed) for your console.

    Because we do not have access to the Friends List, we are deriving the first part of `movable.sed` using a Mii QR code instead of by performing a two-way friend exchange.

    For information on how Seedminer works, see [this presentation](https://zoogie.github.io/web/34⅕c3).

## Instructions

!!! info

    If you are on Linux or macOS, replace `py -3` with `python3` in all commands.

### What you need

* The latest release of [Seedminer](https://github.com/zoogie/seedminer/releases/latest) (the Seedminer .zip)
* Any 3.x version of [Python](https://www.python.org/downloads/) installed
    * If you are on Linux, you likely already have Python 3. Check by opening a terminal and entering `python3 -V`. If this returns a version number, it will work for this guide.

### Section I - Prep Work

In this section, you will set up Seedminer and obtain your console's files that are needed for mining.

1. Extract the contents of the Seedminer `.zip` and move the folder with your operating system's name to anywhere on your computer
    + Keep this location handy, as this Seedminer folder will be where multiple other files are placed
1. In the Seedminer folder, hold SHIFT and right-click anywhere in the folder's empty space, then click the option that opens Terminal, PowerShell, or Command Prompt
1. In the command line window, type `py -3 -m pip install pycryptodomex`, hit ENTER, and allow it to install
    + If this command fails with the error `No module named pip`, you must manually install pip. The methods to do this can be found on [this page](https://pip.pypa.io/en/stable/installation/).
1. Power on your console while the SD card is inserted
1. Open the Mii Maker app
1. Tap the "QR Code/Image Options" button
1. Tap "Save Mii as QR Code"
1. Select a Mii Character **that was created on this console, NOT imported from another console** (make a new one first if you don't have any), and press "OK"
1. Power off your console
1. Insert your SD card into your computer
1. Navigate to the `Nintendo 3DS` folder on your SD card
1. Copy the name of the 32-letter folder you see directly inside Nintendo 3DS
    + This 32-letter name is system-specific and will be different for each console
    + If you see multiple 32-letter folders, follow [these instructions](troubleshooting#seedminer)
    + You can ignore the `private` folder if you have it

    !!! tip

	    ![](/images/screenshots/seedminer/id0-example.png)
	
1. Paste your 32-letter folder name into [a document](/images/screenshots/seedminer/text-document.png) you can reference later
    + This folder is known as your "ID0". Take note of this as this guide will refer to it as such later
1. Navigate to the `DCIM` folder on the SD card
1. Look for the QR Code, which will be a `.JPG` file starting with `HNI`
    + You may have many other files in here already if you use the Nintendo 3DS Camera app
1. Copy this file to the Seedminer folder on your computer

### Section II - Processing Mii QR and Mining

In this section, you will turn the Mii QR code into a usable file and mine `movable.sed` with it.

1. Open the [editMii](https://zoogie.github.io/web/miiqr/) website on your computer
1. Click on "Import from...", then select "QR Code" and upload the Mii QR code from earlier
1. Click on "Export to...", then select "encrypted (.bin)"
    + This will download a file named `input.bin`
1. Copy this `input.bin` to the Seedminer folder
1. Open the terminal/PowerShell/Command Prompt window from earlier
1. Inside this window, enter the command `py -3 seedminer_launcher3.py id0 <id0>`
    + Replace `<id0>` with the ID0 you copied into a document
    + Do not include the angle brackets
    + Do not attempt to enter the ID0 manually, as it is easy to make a mistake. Ensure the ID0 is entered correctly by copying and pasting it from where you saved it in the previous section
1. Once it completes, enter the command `py -3 seedminer_launcher3.py mii <model> <year>`
    + Replace `<model>` with the model of your console (`new` or `old`) - if you aren't sure, only models with the ZL/ZR buttons and C-Stick are "new"
    + Replace `<year>` with the year the 3DS was made (On Old 3DS consoles, the years on the backplate, (M)2010/(C)2011, are always the same and NOT an indicator) - if you aren't sure, see below
    + Estimate manufacturing years are: Old 3DS 2011, Old 3DS XL 2013, Old 2DS 2015, New 3DS 2016, New 3DS XL 2016, New 2DS XL 2017
    + You can also leave the year empty, which will make it start in the middle
    + The mining process will usually take up to 90 minutes, depending on luck and your GPU's strength
    + The first stage will likely max out at roughly offset 1500, depending on console model
    + If the second stage (after seeing `movable_part2.sed generation success`) gets past offset 100, verify that you input the correct ID0. If your ID0 is correct, you cannot use this method and will have to update to the latest version and see if a non-Seedminer method is available for you [here](alternate-exploits)
    + If you see the message `input.bin is invalid size`, remake the `input.bin` using your QR Code. If it *still* fails, open a different browser and remake the `input.bin` there
    + If you see the message `LFCS has been left blank`, use the opposite console model (e.g. `mii old` instead of `mii new`)
1. When it finishes, a file called `movable.sed` will appear in the Seedminer folder

!!! success ""

    Continue to [BannerBomb3](bannerbomb3)

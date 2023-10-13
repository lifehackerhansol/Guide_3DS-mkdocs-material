---
title: "Dumping eShop DSiWare"
---

On this page, you will dump an installed DSiWare title from the eShop to your SD card.

## Instructions

1. Power on your console
1. If you haven't already, re-download your DSiWare title from the Nintendo eShop (instructions [here](https://en-americas-support.nintendo.com/app/answers/detail/a_id/607/~/how-to-download-or-redownload-content-in-nintendo-3ds-eshop))
    + A DSiWare title's banner will be a white box with an icon inside of it that is likely animated
1. Launch System Settings on your console
1. Navigate to `Data Management` -> `DSiWare`
1. Select your DSiWare title
1. Select "Copy", then select "OK"
1. Power off your console
1. Insert your SD card into your computer
1. Navigate to `Nintendo 3DS` -> `<ID0>` -> `<ID1>` -> `Nintendo DSiWare` on your SD card
    + `<ID0>` is the 32-letter folder name that you copied in Seedminer
    + `<ID1>` is a 32-letter folder inside of the `<ID0>`
    + If you have multiple `<ID1>` folders, follow the instructions [here](troubleshooting#bannerbomb3)
1. Copy the `.bin` file inside of the `Nintendo DSiWare` folder to the root of your SD card
    + You will need this file later

!!! success ""

    ### Continue to [Installing boot9strap (Fredtool-Inject)](installing-boot9strap-(fredtool-inject))

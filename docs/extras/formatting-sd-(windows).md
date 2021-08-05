---
title: Formatting SD (Windows)
---

# Formatting SD (Windows)
___

## Required Reading

This is an add-on section for formatting an SD card to work with the 3DS.

If the 3DS already recognizes the SD card, this guide is not required.

This page is for Windows users only. If you are not on Windows, check out the [Formatting SD (Linux)](formatting-sd-(linux).md) or [Formatting SD (Mac)](formatting-sd-(mac).md) pages.

## What You Need

* The latest version of [guiformat](http://ridgecrop.co.uk/index.htm?guiformat.htm)

## Instructions

1. Insert your SD card into your computer
1. If the SD card has any files and folders on it, copy everything to a folder on your computer
1. Run `guiformat.exe`
1. Select your SD card's drive letter for "Drive"

!!! danger "Important"
	Make sure you choose the correct drive letter, otherwise you might accidentally erase the wrong drive!

1. Select a size for "Allocation unit size"
	+ If the SD card is 64GB or below, choose 32768
	* If the SD card is above 64GB, choose 65536
1. Enter anything for "Volume label"
1. Ensure that "Quick Format" is selected
1. Click "Start"
1. Click "OK"
1. Wait for the format to finish
1. Click "Close"
1. If the SD card had any files and folders on it before the format, copy everything back from your computer

## Common Errors

* Failed to open device: GetLastError()=32
	+ Close everything that may be using the SD card, such as any File Explorer windows.
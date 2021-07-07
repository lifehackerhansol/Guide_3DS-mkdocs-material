# New Super Ultimate Injector
___

## Required Reading
The New Super Ultimate Injector can be used to create installable games from certain older consoles on a 3DS Family system.

The 3DS natively contains hardware to run such games, which is why VC Injects (which is what these are) are more desirable than emulators, as they automatically get better performance and compatibility.

!!! danger "Running DS Games"
	If you wish to run Nintendo DS (ie "old DS") games, you should use [TWiLightMenu++](https://wiki.ds-homebrew.com/twilightmenu/installing-3ds.html) instead.

This page will use Pokemon Emerald as an example to create a Virtual Console for the Game Boy Advance. Broadly speaking, the steps will not differ too much for other supported VC injectable consoles.

## Instructions

To begin, open New Super Ultimate Injector for 3DS.exe, and create a new project.

!!! tip ""
	![NSUI Main Page](https://3ds.eiphax.tech/pic/nsui1.png)

Once the project loads, import your legally dumped GBA rom by navigating to it in the window that appears when you click this button.

!!! tip ""
	![NSUI Load ROM](https://3ds.eiphax.tech/pic/nsui2.png)

Most of the information about your rom will be automatically prefilled. You may customise it as you wish. The options are reasonably self-explanatory, however if you are unsure, hover your mouse over a box or button for a short explanation of what it does.

!!! tip ""
	![NSUI Function Description](https://3ds.eiphax.tech/pic/nsui3.png)

Most of the customisation is up to you. You can pick a long and short name, change the game icon, choose a title ID, modify the CIA banner, etc, etc. If you are lazy, most of these options can be left unchanged, but you should click "Download title screen from database" under icon settings and banner settings in order to get a half decent icon and banner image that you don't have to go hunting for.

Importantly, at this time, there is no way to change button mapping for a VC inject.

Under "Edit content options" at the bottom, you can apply a hard reset and or a sleep patch, if you want to do that.

Once you have finished customising your rom, export it.

!!! tip ""
	![NSUI Export CIA](https://3ds.eiphax.tech/pic/nsui4.png)

It can then be installed to your console via FBI, which by this point you should already have.

Here is an example of what the database title screen import looks like on a console. It's pretty good, for something that takes no effort on the user's behalf.

!!! danger "Important"
	VC injects count as Home Menu titles. You may have 300 Home Menu titles at one time, system apps do count, and folders don't change the limit.

<!-- Do NOT remove this notice! 

	Copyright (C) eip618

	Permission is explicitly given to members of the crc and staff @ Nintendo Homebrew Discord Server to allow derivatives of this page.

	CC-BY-NC-ND
	Creative Commons: attribution, no commercial use, no derivatives
	https://creativecommons.org/licenses/by-nc-nd/4.0/legalcode

-->

!!! tip ""
	This page, and its assets, are used with explicit permission from [eip618](https://github.com/eip618/eiphax).
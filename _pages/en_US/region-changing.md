---
title: "Region Changing"
---

### Required Reading

This is an add-on section for region changing your console. This is done by installing the 11.15.0 CTRTransfer image for the region you want to switch to. After installing the image, you can update your console normally to the latest firmware (11.17.0).

Note that region changing is almost completely unnecessary since Luma3DS supports out-of-region games and individual title [Locale Emulation](https://github.com/LumaTeam/Luma3DS/wiki/Optional-features). Additionally, running NDS games with alternative out-of-region languages is supported by [TWiLight Menu++](https://github.com/DS-Homebrew/TWiLightMenu/releases). You should only perform a region change if you wish to have your system UI is in a language that is not available on your console's current region.

!!! info

	This page assumes that you have already installed Luma3DS and boot9strap. If you followed this website to the end (Finalizing Setup), you have Luma3DS and boot9strap.

!!! warning

	As a part of this process, your system settings will be reset to its defaults. This includes things such as your username, country, and language. **Installed games and their save data will not be affected.**

!!! danger

	If you change the region of your console:

	+ You will not be able to use your NNID (if you have one). NNIDs are locked to the region that they were created in.
	+ You may not be able to access the eShop, even if you [delete your eShop account](https://en-americas-support.nintendo.com/app/answers/detail/a_id/74/~/how-to-delete-a-nintendo-eshop-account) beforehand. This is because certain titles tend to remain linked to the 3DS, even after account deletion (especially on New 3DS).
		+ This is still relevant because, while purchases can no longer be made on eShop, game updates are still being provided. Updates are usually required for online play.
		+ This logic extends to system transfers, meaning you would not be able to perform a system transfer from a USA 3DS to a region-changed JPN-to-USA 3DS.
		+ That being said, system transfer and game updates are region locked anyway (e.g. Japanese eShop only has Japanese game updates).
	+ **You will not be able to uninstall custom firmware without bricking the console!** If you intend to uninstall custom firmware in the future, you **MUST** restore your NAND backup that was created before the region change.


### What You Need

!!! warning

	To download the CTRTransfer images on this page, you will need a torrent client like [qBittorrent](https://www.qbittorrent.org/download.php) or [Deluge](http://dev.deluge-torrent.org/wiki/Download).

* The latest release of [GodMode9](https://github.com/d0k3/GodMode9/releases/latest) (the GodMode9 `.zip` file)
* The latest release of [FBI](https://github.com/Steveice10/FBI/releases/latest) *(the `.3dsx` file)*
* The latest release of [faketik](https://github.com/ihaveamac/faketik/releases/latest) *(the `.3dsx` file)*
* The 11.15.0 CTRTransfer image for your console type of the region that you want to change to (e.g. Download "New 3DS or 2DS - USA" if you have a New 3DS and want to change your region to USA)
{% include ".include/ctrtransfer-images.md" %}

### Instructions

#### Section I - Prep Work

{% include ".include/ctrtransfer-prep.md" %}

#### Section II - NAND Backup

1. Press and hold (Start), and while holding (Start), power on your console. This will launch GodMode9
{% include ".include/nand-backup.md" %}

#### Section III - CTRTransfer

{% include ".include/ctrtransfer-main.md" %}

#### Section IV - Launching FBI

{% include ".include/launch-hbl-dlp.md" %}

#### Section V - Reinstalling Tickets

{% include ".include/ctrtransfer-ticket-copy.md" %}

#### Section VI - Fixing locale-related issues

{% include ".include/ctrnand-datayeet.md" %}

___

!!! success

	Your 3DS has successfully been region changed!

---
title: "Get Started"
---

Before starting this guide, we will see if custom firmware is already installed and check the current system version of your console.

#### Section I - CFW Check

1. Power off your console
1. Hold the (Select) button
1. Power on your console while still holding the (Select) button
1. If you do not see a custom menu (your console just boots to the HOME Menu), you may proceed to the next section

!!! warning

    If you see the Luma3DS configuration screen or any other custom menu (e.g. GodMode9, Decrypt9WIP), STOP - you already have custom firmware! Continue from [here](checking-for-cfw#what-to-do-next).

#### Section II - System Version Check

1. Launch System Settings on your console
1. Your system version will be displayed on the bottom right of the top screen (e.g. "Ver. 11.17.0-50U")

#### Section III - Select a Method

To find the correct method for your console, please select the model of your console and the system version you found in Section II.

{% include ".include-internal/consoleVersionSelect.html" %}

<p id="result_noneSelected" style="display:none">System model is required.</p>
<p id="result_invalidVersion" style="display:none">This doesn't seem to be a valid system version.</p>
<p id="result_methodUnavailable" style="display:none">You currently cannot hack your 3DS on this version using the main methods. If you want to hack your console, you may have to use ntrboot.</p>

---

#### Alternate Methods

If possible, you should follow the method given by the prompt above.

Otherwise, methods that work on all versions are available, but require additional hardware:

1. [kartdlphax](installing-boot9strap-(kartdlphax)) - requires a second hacked 3DS and a copy of Mario Kart 7
1. [ntrboot](ntrboot) - requires compatible DS flashcart
1. [Installing boot9strap (Hardmod)](installing-boot9strap-(hardmod)) - requires soldering

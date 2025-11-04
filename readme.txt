======================================
  melcom's GhostKey Sentinel v1.0
======================================

A simple AutoHotkey script to fix keyboard chattering (unwanted double key presses) on mechanical keyboards.


*** IMPORTANT REQUIREMENT ***
-----------------------------
This script requires AutoHotkey v2.0 or newer to be installed on your system.
If you do not have it, please download and install it for free from the official website before proceeding:
https://www.autohotkey.com/


======================================
  Installation (Run on Windows Startup)
======================================

These steps will make the script run automatically every time you start your computer. This is the recommended "set it and forget it" method.

1.  Press the `Win + R` keys on your keyboard to open the Windows "Run" dialog box.

2.  In the box, type the following command and press Enter or click OK:
    `shell:startup`

3.  A folder will open. This is your personal Windows Startup folder.

4.  Copy the `GhostKeySentinel.ahk` file and paste it into this folder.

That's it! The script is now installed. The next time you restart your computer, GhostKey Sentinel will be running silently in the background, fixing any keyboard chatter.

To run the script immediately without restarting, you can simply double-click the `GhostKeySentinel.ahk` file after you have placed it in the Startup folder.


======================================
  Customization (Optional)
======================================

You can customize the script's sensitivity by editing the `GhostKeySentinel.ahk` file with any text editor (like Notepad/++).

- To change the debounce time, modify the number in this line:
  `global DebounceTime := 30`
  A higher number (e.g., 35 or 40) makes the filter stronger but might interfere with very fast, intentional double-taps.

- To add more keys to the filter, simply add them to the `KeyArray` list in the script.


======================================
  Uninstallation
======================================

1.  Open the Startup folder again by running `shell:startup` in the Run dialog (`Win + R`).
2.  Delete the `GhostKeySentinel.ahk` file from the folder.

The script will no longer load on startup. If the script is currently running, you can exit it completely by finding the green "H" icon in your system tray (next to the clock), right-clicking it, and selecting "Exit".


======================================
  Credits & License
======================================

Script by: melcom
License: MIT License (see LICENSE.txt for details)

Enjoy your chatter-free keyboard! <3
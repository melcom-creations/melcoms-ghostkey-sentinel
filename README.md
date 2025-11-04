# melcom's GhostKey Sentinel

A simple AutoHotkey v2 script to fix keyboard chattering (unwanted double key presses) on mechanical keyboards.

## The Story Behind This Script

Please keep in mind that this script is a workaround, not a miracle cure. It won't turn a faulty keyboard into a brand-new one, but it can make it usable again.

I created this script for my own Logitech G910 keyboard. It's only three years old, was very expensive, and despite being meticulously cared for, it started developing this frustrating issue. For a long, long time, I've had the problem where a single key press would often trigger multiple characters. I cleaned every key and have always kept my hardware in pristine condition, so to see it fail like this was incredibly disappointing.

Frankly, I don't have the budget for a replacement right now, so I developed this script out of necessity. I'm sharing it in the hopes that it can help anyone else who's dealing with the same annoying problem.

For me, it has made a world of difference. It's not 100% perfect—a double character might still slip through on rare occasions—but it has made my keyboard feel right again.

***
### **IMPORTANT REQUIREMENT**

This script requires **AutoHotkey v2.0 or newer** to be installed on your system.  
If you do not have it, please download and install it for free from the official website before proceeding:  
[https://www.autohotkey.com/](https://www.autohotkey.com/)
***

## Installation (Run on Windows Startup)

These steps will make the script run automatically every time you start your computer. This is the recommended "set it and forget it" method.

1.  Press `Win + R` on your keyboard to open the Windows "Run" dialog box.
2.  In the box, type the following and press Enter or click OK:  
    `shell:startup`
3.  A folder will open. This is your personal Windows Startup folder.
4.  Copy the `GhostKeySentinel.ahk` file and paste it into this folder.

That's it! The script is now installed. The next time you restart your computer, GhostKey Sentinel will be running silently in the background.

To run the script immediately without restarting, simply double-click the `GhostKeySentinel.ahk` file after placing it in the Startup folder.

## Customization (Optional)

You can customize the script's sensitivity by editing the `GhostKeySentinel.ahk` file.

-   **To change the debounce time**, modify the number in this line:  
    `global DebounceTime := 40`  
    A higher number (e.g., 45 or 50) makes the filter stronger.

-   **To add more keys to the filter**, simply add them to the `KeyArray` list in the script.

## Uninstallation

1.  Open the Startup folder again by running `shell:startup` in the Run dialog (`Win + R`).
2.  Delete the `GhostKeySentinel.ahk` file from the folder.

To exit a currently running script, find the green "H" icon in your system tray, right-click it, and select "Exit".

## Changelog

For a detailed history of all changes, please see the [`CHANGELOG.md`](CHANGELOG.md) file included with this release.

## Credits & License

-   **Script by:** melcom
-   **License:** MIT License (see `LICENSE.txt` for details)

Enjoy your chatter-free keyboard! ❤️
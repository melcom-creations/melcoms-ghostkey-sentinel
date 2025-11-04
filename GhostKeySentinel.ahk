#Requires AutoHotkey v2.0
#SingleInstance force

; ==============================================================================
;
;                        melcom's GhostKey Sentinel v1.0
;
;       A Universal AutoHotkey Script to eliminate Keyboard Chattering
;                 (unwanted double key presses).
;
; ------------------------------------------------------------------------------
;
;   Script Author: Copyright (c) 2025 melcom (Andreas Thomas Urban)
;   This script is free to use, modify, and distribute.
;
; ==============================================================================


; ==============================================================================
;   CONFIGURATION
; ==============================================================================

; Set the time window in milliseconds to ignore rapid duplicate key presses.
; A good starting value is 30.
; If you still experience double presses, increase this value in steps of 5
; (e.g., 35, 40). Do not set it too high, or it might interfere with
; intentional fast typing.
global DebounceTime := 30


; ==============================================================================
;   CORE LOGIC - Do not change anything below this line
; ==============================================================================

; The main function that gets called by every monitored hotkey.
Debounce(KeyName, *) {
    ; Static variables retain their values across function calls.
    ; This allows the function to remember the last key that was pressed.
    static LastKey := ""
    static LastKeyTime := 0

    ; Check if the current key is the same as the last one AND
    ; if the time since the last press is shorter than our DebounceTime.
    if (KeyName == LastKey && A_TickCount - LastKeyTime < DebounceTime) {
        ; If true, this is "chatter". The function stops here,
        ; and the duplicate key press is effectively blocked.
        return
    }

    ; If it's not chatter:
    ; 1. Remember this key and the current time for the next check.
    LastKey := KeyName
    LastKeyTime := A_TickCount

    ; 2. Send the original key press.
    ; {Blind} ensures that modifier states (like Shift, Ctrl, Alt)
    ; are not interfered with. It sends the raw key event.
    Send("{Blind}{" KeyName "}")
}


; ==============================================================================
;   HOTKEY ASSIGNMENT
; ==============================================================================

; Create an array of all keys you want to protect from chattering.
; To add a new key, simply add its name to the list inside the brackets.
; For a full list of key names, see the AutoHotkey v2 documentation.
KeyArray := [
    ; Alphanumeric keys
    "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m",
    "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z",
    "1", "2", "3", "4", "5", "6", "7", "8", "9", "0", "ö", "ä", "ü",

    ; Common functional keys
    "Space", "Enter", "Backspace", "Delete", "Tab"

    ; Example for other keys (uncomment to add):
    ; "LControl", "RControl", "LShift", "RShift", "Up", "Down", "Left", "Right"
]

; This loop iterates through the KeyArray and creates a hotkey for each entry.
for key in KeyArray
{
    ; The "*" is a wildcard prefix that makes the hotkey fire regardless of
    ; whether modifier keys (Shift, Ctrl, Alt) are held down.
    ; The hotkey is then bound to our Debounce function.
    Hotkey "*" . key, Debounce.Bind(key)
}
# Keyboard Selector Button
An AutoHotkey script, switches the current keyboard layout to the specified one when one of `F13`-`F24` keys pushed.

This script works on Windows, tested on Windows 10.

## How to use

### Setup
1. Prepare a keypad with some of `F13`-`F24` keys.
  - For _meishi2_ keyboard, A QMK firmware keymap included in the `qmk_keymap/` directory.
2. Install AutoHotkey v1.1.
3. Execute `change_settings.ahk`
4. Change to the Windows’ keyboard layout you want to set for one of `F13`-`F24` keys.
5. Push one of `F13`-`F24` keys. 
  - `settings.ini` overwritten.
6. If you have other keyboard layouts to set for the `F13`-`F24` keys, go to 4.
7. Close `change_settings.ahk` by right-clicking the AutoHotkey icon on Windows’ notification area and selecting the `Exit`.

### Keyboard swithcing
1. Run `keyboard_changer.ahk`.
2. Push one of `F13`-`F24` keys.
3. Enjoy!

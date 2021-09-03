# Small yet mighty AutoHotkey v2 scripts

- [The scripts](#the-scripts)
- [Installation instructions](#installation-instructions)
- [Remarks](#remarks)
- [Recommended apps](#recommended-apps)
- [License](#license)

## The scripts

- [`caps_to_esc.ahk`](./scripts/caps_to_esc/) &ndash;
  Maps <kbd>CapsLock</kbd> to <kbd>Esc</kbd>.
- [`discord_minimizer.ahk`](./scripts/discord_minimizer/) &ndash;
  Minimizes Discord to the system tray
  instead of quitting it
  when pressing <kbd>Alt</kbd> + <kbd>F4</kbd>.
- [`pop-up_calendar.ahk`](./scripts/pop-up_calendar/) &ndash;
  Shows a pop-up calendar when pressing <kbd>Win</kbd> + <kbd>C</kbd>.
- [`special_characters.ahk`](./scripts/special_characters/) &ndash;
  Provides hotstrings to easily type special characters.
  E.g. `;copy` &rarr; ©.
- [`wide_left_shift.ahk`](./scripts/wide_left_shift/) &ndash;
  Maps the extra key
  between the <kbd>Left Shift</kbd> and <kbd>Z</kbd> keys
  to <kbd>Left Shift</kbd>
  on ISO keyboards.

## Installation instructions

1. Download and install [AutoHotkey v2](https://www.autohotkey.com/v2/).
   - The scripts are developed for v2.0-beta.1.
     Newer versions might also work
     since the scripts are very simple.
   - Currently there's no installer for v2, only a zip file.
     Extract the zip file e.g. to `%programfiles%/AutoHotkey_2.0-beta.1/`.
2. Download the scripts that fancy you
   or clone the whole repo:
   ```sh
   git clone https://github.com/mtsknn/AutoHotkey.git
   ```
3. Run the scripts that fancy you by opening them.
   - When opening an `.ahk` file for the first time,
     Windows should ask you
     what program to use to open the file.
     Select "Always use this app to open .ahk files"
     and choose `AutoHotkey64.exe`
     from AutoHotkey's installation folder.
   - If Windows doesn't ask you,
     or if you later want to change the default program to open `.ahk` files:
     1. Right click on an `.ahk` file and select "Properties."
     2. Change the program in the "Opens with" section.

Bonus points if you modify the scripts to your liking!

### Running scripts automatically when logging in to Windows

Create shortcuts for the scripts
and place the shortcuts to `%appdata%/Microsoft/Windows/Start Menu/Programs/Startup`.

- To open the `Startup` folder:
  1. Open the Run dialog by pressing <kbd>Win</kbd> + <kbd>R</kbd>.
  2. Paste the above path to the Run window.
  3. Press <kbd>Enter</kbd>.
- To create a shortcut:
  - Drag and drop an `.ahk` file to the `Startup` folder
    while holding <kbd>Alt</kbd>.
  - Or right click on an `.ahk` file and select "Create shortcut,"
    and then move the shortcut to the `Startup` folder.

## Remarks

### `#SingleInstance` directive

The [`#SingleInstance` directive](https://lexikos.github.io/v2/docs/commands/_SingleInstance.htm)
is used in every script.
It allows only a single instance of a script to be running,
so that running a script that is already running
makes the new instance replace the old instance automatically.

### Why AutoHotkey v2 instead of v1

Because it's so much better.
More details coming some day.

## Recommended apps

These apps provide functionality
that I would want to create with AutoHotkey (or something else)
if these apps didn't exist.

In order of importance:

- [TouchCursor](https://martin-stone.github.io/touchcursor/)
  provides Vim-like keyboard shortcuts anywhere in Windows.
  - Examples:
    - <kbd>Space</kbd> + <kbd>H</kbd> / <kbd>J</kbd> / <kbd>K</kbd> / <kbd>L</kbd>
      = arrow keys.
    - <kbd>Space</kbd> + <kbd>I</kbd>
      = <kbd>Backspace</kbd>.
    - <kbd>Space</kbd> + <kbd>W</kbd>
      = <kbd>Ctrl</kbd> + <kbd>Backspace</kbd>
      = delete previous word.
- [Vimium (a Firefox extension)](https://addons.mozilla.org/en-US/firefox/addon/vimium-ff/)
  and
  [Vimium (a Chrome extension)](https://chrome.google.com/webstore/detail/vimium/dbepggeogbaibhgnhhndojpepiihcmeb)
  provide Vim-like keyboard shortcuts in the browser.
- [KeyMouse](https://github.com/iscooool/KeyMouse)
  provides Vimium-like keyboard shortcuts in any app (e.g. Windows Explorer).
  - Alternatives (not as good in my opinion):
    - [hunt-n-peck](https://github.com/zsims/hunt-and-peck)
    - [LabelControl](https://www.dcmembers.com/skrommel/download/labelcontrol/)
      (AutoHotkey v1 script!)

## License

MIT &copy; [Matias Kinnunen](https://mtsknn.fi/)

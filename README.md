# Tiny yet mighty convenient AutoHotkey v2 scripts

For AutoHotkey v2.0-beta.1.
See [installation instructions](#installation-instructions).

- [The scripts](#the-scripts)
  - [`caps_to_esc.ahk`](#caps_to_escahk)
  - [`discord_minimizer.ahk`](#discord_minimizerahk)
  - [`pop-up_calendar.ahk`](#pop-up_calendarahk)
  - [`special_characters.ahk`](#special_charactersahk)
    - [Finnish alphabet (ä, Ä, ö, Ö)](#finnish-alphabet-ä-ä-ö-ö)
    - [Other special characters](#other-special-characters)
  - [`wide_left_shift.ahk`](#wide_left_shiftahk)
- [Installation instructions](#installation-instructions)
- [Remarks](#remarks)
  - [`#SingleInstance` directive](#singleinstance-directive)
  - [Why AutoHotkey v2 instead of v1](#why-autohotkey-v2-instead-of-v1)
- [License](#license)

## The scripts

### [`caps_to_esc.ahk`](scripts/caps_to_esc.ahk)

**Maps <kbd>CapsLock</kbd> to <kbd>Esc</kbd>.**

Especially useful in Vim and Vim-like editors.
Also useful with
[Vimium (a Firefox extension)](https://addons.mozilla.org/en-US/firefox/addon/vimium-ff/)
and
[Vimium (a Chrome extension)](https://chrome.google.com/webstore/detail/vimium/dbepggeogbaibhgnhhndojpepiihcmeb).

If you need to toggle <kbd>CapsLock</kbd>,
hold <kbd>Right Ctrl</kbd> and press <kbd>CapsLock</kbd>.
I don't recall ever needing this.

### [`discord_minimizer.ahk`](scripts/discord_minimizer.ahk)

**Minimizes Discord to the system tray
and focuses the topmost window
when pressing <kbd>Alt</kbd> + <kbd>F4</kbd>.**

In Discord's _Settings &rarr; Windows Settings_,
the "Minimize to Tray" setting specifies that
"Hitting X will make Discord sit back
and relax in your system tray
when you close the app."

However,
there are two bugs related to the setting:

1. Pressing <kbd>Alt</kbd> + <kbd>F4</kbd> ignores the setting:
   Discord is quitted instead of minimized to the system tray.
   When opening Discord the next time,
   it opens slowly
   because it has to do initializations and whatnot.
   This is annoying
   and an accessibility issue (no way to minimize Discord with the keyboard).
2. After minimizing Discord to the system tray,
   the focus goes to the taskbar
   instead of the topmost window.
   You have to manually focus the topmost window
   e.g. with <kbd>Alt</kbd> + <kbd>Tab</kbd>.
   This is also annoying.

This script makes <kbd>Alt</kbd> + <kbd>F4</kbd>:

1. minimize Discord to the system tray instead of quitting it.
2. focus the topmost window after minimizing Discord.

It's not necessary to enable the "Minimize to Tray" setting
for this script to work.
However, you might want to enable it anyhow
so that clicking the top-right X will also minimize Discord to the system tray.
(The focus will be incorrectly set to the taskbar,
but this probably isn't a big issue when using the mouse.)

### [`pop-up_calendar.ahk`](scripts/pop-up_calendar.ahk)

**Shows a pop-up calendar when pressing <kbd>Win</kbd> + <kbd>C</kbd>.**

Who enjoys moving their cursor
to the bottom right corner of the screen
and clicking on the taskbar clock
to see a calendar that doesn't even have week numbers?
Me neither.

This pop-up calendar is just a keypress (or two) away.
And it has week numbers!
The current time is shown in the title bar.

![Screenshot of the pop-up calendar](images/pop-up_calendar.png)

Uses the locale specified in
_Windows Settings &rarr; Time & Language &rarr; Region &rarr; Regional format_.

When the calendar window is focused,
you can:

- use the arrow keys to move between days.
- press <kbd>Esc</kbd> to close the calendar.
- press <kbd>Home</kbd> / <kbd>End</kbd>
  to move to the first/last day
  of the currently selected month.
- press <kbd>Ctrl</kbd> + arrow keys / <kbd>Home</kbd> / <kbd>End</kbd>
  to move around in bigger leaps.

Note:
<kbd>Win</kbd> + <kbd>C</kbd> opens Cortana by default,
so you might want to modify the pop-up calendar's keyboard shortcut
if you want to also use Cortana.
Personally,
I don't often open Cortana,
but when I do,
I do it accidentally.

### [`special_characters.ahk`](scripts/special_characters.ahk)

**Provides [hotstrings] to easily type special characters.**

[hotstrings]: https://lexikos.github.io/v2/docs/Hotstrings.htm

My favorite script!
Makes life so much easier.

Pairs very well with [TouchCursor](https://martin-stone.github.io/touchcursor/) &ndash;
highly recommended.

#### Finnish alphabet (ä, Ä, ö, Ö)

These four hotstrings are the most important for me:

- When I type `h'`, the characters get replaced with ä.
- When I type `H'`, the characters get replaced with Ä.
- When I type `h;`, the characters get replaced with ö.
- When I type `H;`, the characters get replaced with Ö.

Before I created this script,
I was constantly toggling the input language
between US English and Finnish
with <kbd>Win</kbd> + <kbd>Space</kbd>.
I switched to Finnish when I was writing Finnish (my native language)
and otherwise kept US English active.

But man, it was _so annoying_
to forget many times a day which one is the currently active input language.
It was also unergonomic to constantly toggle between the two.

No more!
Now I can keep US English active all the time
while still being able to write Finnish comfortably.

I have tried many different hotstrings for typing ä's and ö's,
but the above hostrings seem to be the most ergonomic and comfortable for me.
There are a few apps and situations
where the hotstrings don't work reliably,
but they work like 95% of the time,
and that's enough for me.

#### Other special characters

Below are the next five hotstrings
that I use the most.
The "HTML entity" column
is just for reference.

| Type this | Get this | HTML entity | Comments                       |
| --------- | -------- | ----------- | ------------------------------ |
| `;b`      | •        | `&bull;`    | Bullet; great for bullet lists |
| `;nb`     |          | `&nbsp;`    | Non-breaking space             |
| `;nd`     | –        | `&ndash;`   | En dash                        |
| `;ra`     | →        | `&rarr;`    | Right arrow                    |
| `;times`  | ×        | `&times;`   | Multiplication sign            |

And here are the rest of the hotstrings
provided by the script.
I use these only rarely,
but they are nice to have around.

| Type this | Get this  | HTML entity | Comments                              |
| --------- | --------- | ----------- | ------------------------------------- |
| `;aring`  | å         | `&aring;`   | Used in Finnish, but extremely rarely |
| `;Aring`  | Å         | `&Aring;`   | ↑                                     |
|           |           |             |                                       |
| `;da`     | ↓         | `&darr;`    | Down arrow                            |
| `;la`     | ←         | `&larr;`    | Left arrow                            |
| `;ua`     | ↑         | `&uarr;`    | Up arrow                              |
|           |           |             |                                       |
| `;ae`     | ≈         | `&approx;`  | Almost equal to / Approximately       |
| `;ne`     | ≠         | `&ne;`      | Not equal to                          |
| `;plusmn` | ±         | `&plusmn;`  | Plus-minus sign                       |
|           |           |             |                                       |
| `;copy`   | ©         | `&copy;`    | Copyright                             |
| `;reg`    | ®         | `&reg;`     | Registered trademark                  |
| `;tm`     | ™         | `&trade;`   | Trademark                             |
|           |           |             |                                       |
| `;deg`    | °         | `&deg;`     | Degree                                |
| `;eur`    | €         | `&euro;`    | Euro                                  |
| `;hellip` | …         | `&hellip;`  | Horizontal ellipsis                   |
| `;md`     | —         | `&mdash;`   | Em dash                               |
| `;middot` | ·         | `&middot;`  | Middle dot                            |
|           |           |             |                                       |
| `;sup0`   | ⁰         |             | Superscript 0                         |
| `;sup1`   | ¹         | `&sup1;`    | Superscript 1                         |
| `;sup2`   | ²         | `&sup2;`    | Superscript 2                         |
| `;sup3`   | ³         | `&sup3;`    | Superscript 3                         |
| `;sup4`   | ⁴         |             | Superscript 4                         |
| `;sup5`   | ⁵         |             | Superscript 5                         |
| `;sup6`   | ⁶         |             | Superscript 6                         |
| `;sup7`   | ⁷         |             | Superscript 7                         |
| `;sup8`   | ⁸         |             | Superscript 8                         |
| `;sup9`   | ⁹         |             | Superscript 9                         |
|           |           |             |                                       |
| `;dis`    | ಠ_ಠ       |             | Look of dis-approval                  |
| `;lenny`  | ( ͡° ͜ʖ ͡°)  |             | Look ma, it's Lenny!                  |
| `;shrug`  | ¯\\(ツ)/¯ |             | Shrug                                 |

### [`wide_left_shift.ahk`](scripts/wide_left_shift.ahk)

**Maps the extra key
between the <kbd>Left Shift</kbd> and <kbd>Z</kbd> keys
to <kbd>Left Shift</kbd>.**

What extra key?
My work laptop's keyboard has an ISO layout,
so the <kbd>Left Shift</kbd> key is narrower than in ANSI layouts,
and there's an extra key
between the <kbd>Left Shift</kbd> and <kbd>Z</kbd> keys.

I use US English as the input language in Windows,
so the extra key is unnecessary for me.
With this script
I can pretend that
the <kbd>Left Shift</kbd> key is as wide as it should be.

ANSI keyboard layout:

![ANSI keyboard layout](images/ANSI_keyboard_layout.svg)

ISO keyboard layout:

![ISO keyboard layout](images/ISO_keyboard_layout.svg)

<sup>Keyboard layout illustrations by Daniel Beardsmore,
from [_ANSI vs ISO_ page on Deskthority wiki](https://deskthority.net/wiki/ANSI_vs_ISO).
Illustrations minified with
[SVGOMG](https://jakearchibald.github.io/svgomg/).</sup>

## Installation instructions

1. Download [AutoHotkey v2](https://www.autohotkey.com/v2/) (a zip file).
   - The scripts are developed for v2.0-beta.1.
     Newer versions might also work
     since the scripts are very simple.
2. Extract the zip file e.g. to `%programfiles%/AutoHotkey_2.0-beta.1/`.
   - To open the `Program Files` folder,
     press <kbd>Ctrl</kbd> + <kbd>R</kbd>,
     type `%programfiles%` to the Run window,
     and press <kbd>Enter</kbd>.
3. Download the scripts that fancy you
   or clone the whole repo:
   ```sh
   git clone https://github.com/mtsknn/AutoHotkey.git
   ```
4. Run the scripts that fancy you by opening them.
   - When opening an `.ahk` file for the first time,
     Windows should ask you
     what program to use to open the file.
     Choose `AutoHotkey64.exe`
     from the folder where you extracted the zip file.
5. To run the scripts automatically
   when logging in to Windows,
   create shortcuts for the scripts
   and place the shortcuts
   to `%appdata%/Microsoft/Windows/Start Menu/Programs/Startup`.
   - To create a shortcut,
     right click on a file
     and select "Create shortcut."
   - To open the folder,
     press <kbd>Ctrl</kbd> + <kbd>R</kbd>,
     paste the above path to the Run window,
     and press <kbd>Enter</kbd>.
   - You could also probably put the scripts straight to the `Startup` folder.
     Then you wouldn't need to create shortcuts for them.

Bonus points if you modify the scripts to your liking!

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

## License

MIT &copy; [Matias Kinnunen](https://mtsknn.fi/)

[&larr; Installation instructions and more scripts](../../README.md)

# [`discord_minimizer.ahk`](./discord_minimizer.ahk)

**Minimizes Discord to the system tray (instead of quitting it)
and focuses the topmost window
when pressing <kbd>Alt</kbd> + <kbd>F4</kbd>.**

## The problem

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

## The fix

This script makes <kbd>Alt</kbd> + <kbd>F4</kbd>:

1. minimize Discord to the system tray instead of quitting it.
2. focus the topmost window after minimizing Discord.

It's not necessary to enable the "Minimize to Tray" setting
for this script to work.
However, you might want to enable it anyhow
so that clicking the top-right X will also minimize Discord to the system tray.
(The focus will be incorrectly set to the taskbar,
but this probably isn't a big issue when using the mouse.)

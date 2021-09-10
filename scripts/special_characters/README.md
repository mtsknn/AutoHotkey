[&larr; Installation instructions and more scripts](../../README.md)

# [`special_characters.ahk`](./special_characters.ahk)

**Provides [hotstrings][] to easily type special characters.**

[hotstrings]: https://lexikos.github.io/v2/docs/Hotstrings.htm

My favorite script!
Makes life so much easier.

## Finnish alphabet (ä, Ä, ö, Ö)

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

## Other special characters

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
| `;x`      | ×        | `&times;`   | Multiplication sign            |

And here are the rest of the hotstrings
provided by the script.
I use these only rarely,
but they are nice to have around.

| Type this      | Get this  | HTML entity | Comments                                           |
| -------------- | --------- | ----------- | -------------------------------------------------- |
| `;ao`          | å         | `&aring;`   | Lowercase "Swedish O"; used very rarely in Finnish |
| `;Ao` or `;AO` | Å         | `&Aring;`   | Uppercase "Swedish O"                              |
|                |           |             |                                                    |
| `;da`          | ↓         | `&darr;`    | Down arrow                                         |
| `;la`          | ←         | `&larr;`    | Left arrow                                         |
| `;ua`          | ↑         | `&uarr;`    | Up arrow                                           |
|                |           |             |                                                    |
| `;es`          | ☆         | `&star;`    | White/empty star                                   |
| `;fs`          | ★         | `&starf;`   | Black/full/filled star                             |
|                |           |             |                                                    |
| `;ae`          | ≈         | `&approx;`  | Almost equal to / Approximately                    |
| `;ne`          | ≠         | `&ne;`      | Not equal to                                       |
|                |           |             |                                                    |
| `;half`        | ½         | `&half;`    | Half                                               |
| `;pm`          | ±         | `&pm;`      | Plus-minus                                         |
|                |           |             |                                                    |
| `;copy`        | ©         | `&copy;`    | Copyright                                          |
| `;reg`         | ®         | `&reg;`     | Registered trademark                               |
| `;tm`          | ™         | `&trade;`   | Trademark                                          |
|                |           |             |                                                    |
| `;...`         | …         | `&hellip;`  | Horizontal ellipsis                                |
| `;deg`         | °         | `&deg;`     | Degree                                             |
| `;eur`         | €         | `&euro;`    | Euro                                               |
| `;md`          | —         | `&mdash;`   | Em dash                                            |
| `;mid`         | ·         | `&middot;`  | Middle dot                                         |
|                |           |             |                                                    |
| `;sup0`        | ⁰         |             | Superscript 0                                      |
| `;sup1`        | ¹         | `&sup1;`    | Superscript 1                                      |
| `;sup2`        | ²         | `&sup2;`    | Superscript 2                                      |
| `;sup3`        | ³         | `&sup3;`    | Superscript 3                                      |
| `;sup4`        | ⁴         |             | Superscript 4                                      |
| `;sup5`        | ⁵         |             | Superscript 5                                      |
| `;sup6`        | ⁶         |             | Superscript 6                                      |
| `;sup7`        | ⁷         |             | Superscript 7                                      |
| `;sup8`        | ⁸         |             | Superscript 8                                      |
| `;sup9`        | ⁹         |             | Superscript 9                                      |
|                |           |             |                                                    |
| `;dis`         | ಠ_ಠ       |             | Look of disapproval                                |
| `;lenny`       | ( ͡° ͜ʖ ͡°)  |             | Look ma, it's Lenny!                               |
| `;shrug`       | ¯\\(ツ)/¯ |             | Shrug                                              |

## What about emojis?

Creating hotstrings for emojis would be very possible,
but I haven't because
I find the default emoji picker in Windows 10 good enough:
press <kbd>Win</kbd> + <kbd>.</kbd> (period)
or <kbd>Win</kbd> + <kbd>;</kbd>
and start typing an emoji's name.

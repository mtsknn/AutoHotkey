#SingleInstance

;; Hotstrings documentation:
;; https://lexikos.github.io/v2/docs/Hotstrings.htm

;; Hotstring syntax:
;;   :<options>:<trigger_string>::<replacement>

;; Hotstring options used in this file:
;;   *   An ending character (e.g. `Space`) is *not* required to trigger the hotstring.
;;   ?   The hotstring will be triggered even when it is inside another word.
;;   b0  Automatic backspacing is *not* done to erase the trigger string.

:*?b0:dash;::
{
    ;; Do nothing so that typing the HTML entities
    ;; `&ndash;` and `&mdash;`
    ;; won't produce
    ;; `&ndasö` and `&mdasö`
}
:*?b0:length;::
{
    ;; Again, do nothing so that typing
    ;; `foo.length;`
    ;; won't produce
    ;; `foo.lengtö`
}

;; No need to define separate hotstrings for uppercase letters
;; because hotstrings are "case-conforming" by default
:*?:h;::ö
:*?:h'::ä
:*?:;aring::å

:*?:;ae::≈
:*?:;b ::•{SPACE}
:*?:;da::↓
:*?:;deg::°
:*?:;eur::€
:*?:;hellip::…
:*?:;la::←
:*?:;md::—
:*?:;middot::·
:*?:;nbsp:: 
:*?:;nd::–
:*?:;ne::≠
:*?:;ra::→
:*?:;times::×
:*?:;ua::↑

;; These hotstrings need to be defined with the `Hotstring()` function
;; because the trigger strings end in a colon
Hotstring(':*?::lenny:', '( ͡° ͜ʖ ͡°)')
Hotstring(':*?::dis:', 'ಠ_ಠ')

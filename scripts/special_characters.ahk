#SingleInstance

;; Hotstrings documentation:
;; https://lexikos.github.io/v2/docs/Hotstrings.htm

;; Hotstring syntax:
;;   :<options>:<trigger_string>::<replacement>

;; Hotstring options used in this file:
;;   *  = An ending character (e.g. `Space`) is *not* required to trigger the hotstring.
;;   ?  = The hotstring will be triggered even when it's inside another word.
;;   b0 = Automatic backspacing is *not* done to erase the trigger string.

;; These two need to be defined
;; before the `h;` → `ö` hotstring
;; or it will take precedence
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
;; because hotstrings are "case-conforming" by default.
;; Applies to the `;aring` → `å` hotstring as well.
:*?:h'::ä
:*?:h;::ö

:*?:;ae::≈
:*?:;aring::å
:*?:;b::•
:*?:;copy::©
:*?:;da::↓
:*?:;deg::°
:*?:;dis::ಠ_ಠ
:*?:;eur::€
:*?:;hellip::…
:*?:;la::←
:*?:;lenny::( ͡° ͜ʖ ͡°)
:*?:;md::—
:*?:;middot::·
:*?:;nb:: 
:*?:;nd::–
:*?:;ne::≠
:*?:;plusmn::±
:*?:;ra::→
:*?:;reg::®
:*?:;sup0::⁰
:*?:;sup1::¹
:*?:;sup2::²
:*?:;sup3::³
:*?:;sup4::⁴
:*?:;sup5::⁵
:*?:;sup6::⁶
:*?:;sup7::⁷
:*?:;sup8::⁸
:*?:;sup9::⁹
:*?:;times::×
:*?:;tm::™
:*?:;ua::↑

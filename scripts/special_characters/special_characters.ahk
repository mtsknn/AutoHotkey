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
    ;; Again, do nothing so that typing e.g.
    ;; `foo.length;`
    ;; won't produce
    ;; `foo.lengtö`
}

;; No need to define separate hotstrings for uppercase letters
;; because hotstrings are "case-conforming" by default.
;; Applies to the `;ao` → `å` hotstring as well.
:*?:h'::ä
:*?:h;::ö

:*?:;...::…
:*?:;ae::≈
:*?:;ao::å
:*?:;b::•
:*?:;copy::©
:*?:;da::↓
:*?:;deg::°
:*?:;dis::ಠ_ಠ
:*?:;es::☆
:*?:;eur::€
:*?:;gbp::£
:*?:;fs::★
:*?:;half::½
:*?:;la::←
:*?:;lenny::( ͡° ͜ʖ ͡°)
:*?:;md::—
:*?:;mid::·
:*?:;nb::  ;; non-breaking space
:*?:;nd::–
:*?:;ne::≠
:*?:;pm::±
:*?:;ra::→
:*?:;reg::®
:*?:;shrug::¯\(ツ)/¯
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
:*?:;tm::™
:*?:;ua::↑
:*?:;x::×

#SingleInstance

;; Alt + F4
!F4::
{
  WinActive('ahk_exe Discord.exe')
    ? WinHide()
    : Send('!{F4}')
}

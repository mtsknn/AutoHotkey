#SingleInstance

#HotIf WinActive('ahk_exe Discord.exe')

;; Alt + F4
!F4::
{
  ;; Minimize Discord to the system tray
  WinHide()

  ;; After minimizing Discord,
  ;; the focus seems to go to the taskbar.
  ;; This can be confirmed by uncommenting the following line of code.
  ;; If the message equals `Shell_TrayWnd`,
  ;; it means that the topmost "window" is the taskbar.
  ; MsgBox(WinGetClass(WinGetList()[1]))

  ;; Thus we want to focus the 2nd topmost window
  WinActivate(WinGetList()[2])
}

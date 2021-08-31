#SingleInstance

;; AutoHotkey doesn't have nulls,
;; so empty strings are often used to denote "nothing."
;; https://lexikos.github.io/v2/docs/Concepts.htm#nothing
global Calendar := ''

;; Win + c
#c::
{
    ;; Destroy the old calendar first
    ;; to limit the amount of open calendars to one
    ;; and to reset the date selection and window position
    DestroyCalendar()

    CreateCalendar()
    Calendar.Show()
}

;; The asterisk makes the function variadic,
;; i.e. it accepts any number of parameters.
;; We call it with 0 parameters,
;; and GUI events call it with 1 parameter (the GUI object),
;; so the function must be variadic or the script won't run.
;; https://lexikos.github.io/v2/docs/Functions.htm#Variadic
DestroyCalendar(*)
{
    SetTimer(UpdateTitle, 0)

    global Calendar
    if Calendar
    {
        Calendar.Destroy()
        Calendar := ''
    }
}

CreateCalendar()
{
    global Calendar := Gui('-MinimizeBox', GetTitle())
    Calendar.MarginX := -18
    Calendar.MarginY := -15

    ;; 4   = Show week numbers
    ;; R3  = Show 3 rows
    ;; W-4 = Show 4 columns
    Calendar.Add('MonthCal', '4 R3 W-4')

    Calendar.OnEvent('Close', DestroyCalendar)
    Calendar.OnEvent('Escape', DestroyCalendar)

    SetTimer(UpdateTitle, 100)
}

GetTitle()
{
    ;; En dash, not a hyphen
    Prefix := 'Calendar – '

    ;; T0 = Show seconds
    Time := FormatTime('T0', 'Time')

    return Prefix . Time
}

UpdateTitle()
{
    Calendar.Title := GetTitle()
}

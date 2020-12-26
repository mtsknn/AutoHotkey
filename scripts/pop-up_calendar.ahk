#SingleInstance

global Calendar := ''

;; Win + c
#c::
{
    ;; Destroy the old calendar first
    ;; to limit the amount of open calendars to one
    ;; and to reset the date selection and window position
    DestroyCalendar()

    Calendar := CreateCalendar()
    Calendar.Show()
}

DestroyCalendar()
{
    SetTimer('UpdateTitle', 0)
    (Calendar) && Calendar.Destroy()
}

CreateCalendar()
{
    local Calendar := Gui.New('-MinimizeBox', GetTitle())
    Calendar.MarginX := -18
    Calendar.MarginY := -15

    ;; 4   = Show week numbers
    ;; R3  = Show 3 rows
    ;; W-4 = Show 4 columns
    Calendar.Add('MonthCal', '4 R3 W-4')

    Calendar.OnEvent('Close', (*) => (
        SetTimer('UpdateTitle', 0)
    ))

    Calendar.OnEvent('Escape', (this) => (
        this.Hide(),
        SetTimer('UpdateTitle', 0)
    ))

    SetTimer('UpdateTitle', 100)

    return Calendar
}

GetTitle()
{
    ;; T0 = Show seconds
    return 'Calendar – ' . FormatTime('T0', 'Time')
}

UpdateTitle()
{
    Calendar.Title := GetTitle()
}

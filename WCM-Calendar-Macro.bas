Option Explicit

' WCM Construction Template - calendar exceptions
' Adds Ontario statutory holidays 2026-2030 to the Standard calendar,
' and the same holidays plus seasonal shutdowns to Weather-sensitive.

Sub WCM_AddHolidays()
    Dim cal As Calendar
    Set cal = ActiveProject.Calendars("Standard")
    AddEx cal, "New Year's Day 2026", "1/1/2026"
    AddEx cal, "Family Day 2026", "2/16/2026"
    AddEx cal, "Good Friday 2026", "4/3/2026"
    AddEx cal, "Victoria Day 2026", "5/18/2026"
    AddEx cal, "Canada Day 2026", "7/1/2026"
    AddEx cal, "Civic Holiday 2026", "8/3/2026"
    AddEx cal, "Labour Day 2026", "9/7/2026"
    AddEx cal, "Thanksgiving 2026", "10/12/2026"
    AddEx cal, "Christmas Day 2026", "12/25/2026"
    AddEx cal, "Boxing Day 2026", "12/28/2026"
    AddEx cal, "New Year's Day 2027", "1/1/2027"
    AddEx cal, "Family Day 2027", "2/15/2027"
    AddEx cal, "Good Friday 2027", "3/26/2027"
    AddEx cal, "Victoria Day 2027", "5/24/2027"
    AddEx cal, "Canada Day 2027", "7/1/2027"
    AddEx cal, "Civic Holiday 2027", "8/2/2027"
    AddEx cal, "Labour Day 2027", "9/6/2027"
    AddEx cal, "Thanksgiving 2027", "10/11/2027"
    AddEx cal, "Christmas Day 2027", "12/27/2027"
    AddEx cal, "Boxing Day 2027", "12/28/2027"
    AddEx cal, "New Year's Day 2028", "1/3/2028"
    AddEx cal, "Family Day 2028", "2/21/2028"
    AddEx cal, "Good Friday 2028", "4/14/2028"
    AddEx cal, "Victoria Day 2028", "5/22/2028"
    AddEx cal, "Canada Day 2028", "7/3/2028"
    AddEx cal, "Civic Holiday 2028", "8/7/2028"
    AddEx cal, "Labour Day 2028", "9/4/2028"
    AddEx cal, "Thanksgiving 2028", "10/9/2028"
    AddEx cal, "Christmas Day 2028", "12/25/2028"
    AddEx cal, "Boxing Day 2028", "12/26/2028"
    AddEx cal, "New Year's Day 2029", "1/1/2029"
    AddEx cal, "Family Day 2029", "2/19/2029"
    AddEx cal, "Good Friday 2029", "3/30/2029"
    AddEx cal, "Victoria Day 2029", "5/21/2029"
    AddEx cal, "Canada Day 2029", "7/2/2029"
    AddEx cal, "Civic Holiday 2029", "8/6/2029"
    AddEx cal, "Labour Day 2029", "9/3/2029"
    AddEx cal, "Thanksgiving 2029", "10/8/2029"
    AddEx cal, "Christmas Day 2029", "12/25/2029"
    AddEx cal, "Boxing Day 2029", "12/26/2029"
    AddEx cal, "New Year's Day 2030", "1/1/2030"
    AddEx cal, "Family Day 2030", "2/18/2030"
    AddEx cal, "Good Friday 2030", "4/19/2030"
    AddEx cal, "Victoria Day 2030", "5/20/2030"
    AddEx cal, "Canada Day 2030", "7/1/2030"
    AddEx cal, "Civic Holiday 2030", "8/5/2030"
    AddEx cal, "Labour Day 2030", "9/2/2030"
    AddEx cal, "Thanksgiving 2030", "10/14/2030"
    AddEx cal, "Christmas Day 2030", "12/25/2030"
    AddEx cal, "Boxing Day 2030", "12/26/2030"
    MsgBox "Standard calendar: holidays 2026-2030 added.", vbInformation
End Sub

Sub WCM_AddWeatherCalendar()
    Dim cal As Calendar
    On Error Resume Next
    Set cal = ActiveProject.Calendars("Weather-sensitive")
    On Error GoTo 0
    If cal Is Nothing Then
        MsgBox "No 'Weather-sensitive' calendar found in this project.", vbExclamation
        Exit Sub
    End If

    AddEx cal, "New Year's Day 2026", "1/1/2026"
    AddEx cal, "Family Day 2026", "2/16/2026"
    AddEx cal, "Good Friday 2026", "4/3/2026"
    AddEx cal, "Victoria Day 2026", "5/18/2026"
    AddEx cal, "Canada Day 2026", "7/1/2026"
    AddEx cal, "Civic Holiday 2026", "8/3/2026"
    AddEx cal, "Labour Day 2026", "9/7/2026"
    AddEx cal, "Thanksgiving 2026", "10/12/2026"
    AddEx cal, "Christmas Day 2026", "12/25/2026"
    AddEx cal, "Boxing Day 2026", "12/28/2026"
    AddEx cal, "New Year's Day 2027", "1/1/2027"
    AddEx cal, "Family Day 2027", "2/15/2027"
    AddEx cal, "Good Friday 2027", "3/26/2027"
    AddEx cal, "Victoria Day 2027", "5/24/2027"
    AddEx cal, "Canada Day 2027", "7/1/2027"
    AddEx cal, "Civic Holiday 2027", "8/2/2027"
    AddEx cal, "Labour Day 2027", "9/6/2027"
    AddEx cal, "Thanksgiving 2027", "10/11/2027"
    AddEx cal, "Christmas Day 2027", "12/27/2027"
    AddEx cal, "Boxing Day 2027", "12/28/2027"
    AddEx cal, "New Year's Day 2028", "1/3/2028"
    AddEx cal, "Family Day 2028", "2/21/2028"
    AddEx cal, "Good Friday 2028", "4/14/2028"
    AddEx cal, "Victoria Day 2028", "5/22/2028"
    AddEx cal, "Canada Day 2028", "7/3/2028"
    AddEx cal, "Civic Holiday 2028", "8/7/2028"
    AddEx cal, "Labour Day 2028", "9/4/2028"
    AddEx cal, "Thanksgiving 2028", "10/9/2028"
    AddEx cal, "Christmas Day 2028", "12/25/2028"
    AddEx cal, "Boxing Day 2028", "12/26/2028"
    AddEx cal, "New Year's Day 2029", "1/1/2029"
    AddEx cal, "Family Day 2029", "2/19/2029"
    AddEx cal, "Good Friday 2029", "3/30/2029"
    AddEx cal, "Victoria Day 2029", "5/21/2029"
    AddEx cal, "Canada Day 2029", "7/2/2029"
    AddEx cal, "Civic Holiday 2029", "8/6/2029"
    AddEx cal, "Labour Day 2029", "9/3/2029"
    AddEx cal, "Thanksgiving 2029", "10/8/2029"
    AddEx cal, "Christmas Day 2029", "12/25/2029"
    AddEx cal, "Boxing Day 2029", "12/26/2029"
    AddEx cal, "New Year's Day 2030", "1/1/2030"
    AddEx cal, "Family Day 2030", "2/18/2030"
    AddEx cal, "Good Friday 2030", "4/19/2030"
    AddEx cal, "Victoria Day 2030", "5/20/2030"
    AddEx cal, "Canada Day 2030", "7/1/2030"
    AddEx cal, "Civic Holiday 2030", "8/5/2030"
    AddEx cal, "Labour Day 2030", "9/2/2030"
    AddEx cal, "Thanksgiving 2030", "10/14/2030"
    AddEx cal, "Christmas Day 2030", "12/25/2030"
    AddEx cal, "Boxing Day 2030", "12/26/2030"

    ' Seasonal shutdowns - edit or delete these to suit
    AddRange cal, "Winter shutdown - paving 26/27", "11/15/2026", "4/15/2027"
    AddRange cal, "Winter shutdown - paving 27/28", "11/15/2027", "4/15/2028"
    AddRange cal, "Winter shutdown - paving 28/29", "11/15/2028", "4/15/2029"
    AddRange cal, "Winter shutdown - paving 29/30", "11/15/2029", "4/15/2030"
    AddRange cal, "Landscaping shutdown 26/27", "11/30/2026", "4/30/2027"
    AddRange cal, "Landscaping shutdown 27/28", "11/30/2027", "4/30/2028"
    AddRange cal, "Landscaping shutdown 28/29", "11/30/2028", "4/30/2029"
    AddRange cal, "Landscaping shutdown 29/30", "11/30/2029", "4/30/2030"

    MsgBox "Weather-sensitive calendar: holidays and seasonal shutdowns added.", vbInformation
End Sub

Private Sub AddEx(cal As Calendar, nm As String, d As String)
    AddRange cal, nm, d, d
End Sub

Private Sub AddRange(cal As Calendar, nm As String, d1 As String, d2 As String)
    Dim ex As Exception
    On Error Resume Next
    Set ex = cal.Exceptions.Add(pjExceptionDaily, CDate(d1), CDate(d2), 1)
    If Not ex Is Nothing Then ex.Name = nm
    Set ex = Nothing
    On Error GoTo 0
End Sub

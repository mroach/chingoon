Option Explicit

Dim iChins

If WScript.Arguments.Count = 0 Then
    iChins = 0
Else
    iChins = WScript.Arguments.Item(0)
    If Not IsNumeric(iChins) Then iChins = 0
End If

WScript.Echo(" __________")
WScript.Echo("(--[ .]-[ .]")

If iChins = 0 Then
    WScript.Echo("(_______O__)")
    WScript.Quit
Else
    WScript.Echo("(       O  )")

    Do Until iChins = 1
        WScript.Echo("(          )")
        iChins = iChins - 1
    Loop

    WScript.Echo("(__________)")
End If

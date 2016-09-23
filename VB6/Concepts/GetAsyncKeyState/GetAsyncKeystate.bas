Attribute VB_Name = "Keystate"
'GetAsynckeystate is a function which allows you to press multiple buttons at the same time
'Just use this code below to delcare it

Public Declare Function GetAsyncKeyState Lib "user32" (ByVal vKey As Long) As Integer

'You don't need to now what it means
'Just copy and paste it into a module

'Return to the form

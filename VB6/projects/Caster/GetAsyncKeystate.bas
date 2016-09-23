Attribute VB_Name = "mdlSyncKey"
Public Declare Function GetAsyncKeyState Lib "user32" (ByVal vKey As Long) As Integer

Public Function DtoR(ByVal Deg As Single)
Const Pi As Double = 3.141592654
DtoR = Deg / 180 / Pi
End Function
Public Function RtoD(Rad As Single)
Const Pi As Double = 3.141592654
DtoR = Rad * 180 / Pi
End Function

Attribute VB_Name = "Module1"
Option Explicit
Dim Col(0 To 5) As Long
Public Const Pi = 3.141592654

Public Function RtoD(ByVal Rad As Double) As Double
    RtoD = Rad * (180 / Pi)
End Function

Public Function DtoR(ByVal Deg As Double) As Double
    DtoR = Deg * (Pi / 180)
End Function




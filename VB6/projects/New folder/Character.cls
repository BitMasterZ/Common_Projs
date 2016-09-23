VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "Character"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Public sngX As Single, sngY As Single, Angle As Double
Public MSpeed As Integer, RSpeed As Double

Public Sub setStuff(X As Single, Y As Single, A As Double)
sngX = X
sngY = Y
RSpeed = DtoR(A)
End Sub


Public Sub Move(Direct As Integer)
sngX = sngX + Cos(Angle) * Direct
sngY = sngY + Sin(Angle) * Direct
End Sub




Public Sub Rotate(Direct As Integer)
Angle = Angle + RSpeed * Direct
End Sub

Public Sub Display(frm As Form)
frm.Circle (sngX, sngY), 5, vbBlue
End Sub




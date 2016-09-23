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
Option Explicit
Public X As Single, Y As Single
Public Angle As Double
Const RSpeed As Double = 0.01
Public Coll As Boolean
Public Sub Initiate(X1 As Single, Y1 As Single)
X = X1
Y = Y1

End Sub


Public Sub Rotate(Dir As Integer)
    Angle = Angle + RSpeed * Dir
End Sub

Public Sub Move(Dir As Integer)
X = X + Cos(Angle) * Dir
Y = Y + Sin(Angle) * Dir
End Sub

Public Sub Draw(M As Form)
    M.FillStyle = 0
    M.FillColor = vbBlack
    
    M.Circle (X, Y), 5, vbBlack
    M.Line (X, Y)-(X + Cos(Angle) * 15, Y + Sin(Angle) * 15)
    
       
    
End Sub


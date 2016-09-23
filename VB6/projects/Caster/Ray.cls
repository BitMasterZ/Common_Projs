VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "Ray"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Public X As Single, Y As Single, Length As Single
Public Angle As Double

Public Sub Initiate(X1 As Single, Y1 As Single, A As Double)
X = X1
Y = Y1
Angle = A
End Sub

Public Sub Extend(Player As Character)
X = X + Cos(Angle) * 10
Y = Y + Sin(Angle) * 10
Length = getDist(Player.X, Player.Y)
End Sub

Public Function getDist(sX As Single, sY As Single)
getDist = Sqr((X - sX) ^ 2 + (Y - sY) ^ 2)
End Function

Public Function Collision(Map As GridMap)
Collision = IIf(Map.isFilled(X, Y) = True, True, False)

End Function

Public Sub Draw(M As Form, ch As Character)
M.Line (ch.X, ch.Y)-(X, Y), vbGreen

End Sub

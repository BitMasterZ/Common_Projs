VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "Gate"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
'Display variables
    Public X As Single, Y As Single
    Public W As Single, H As Single

Public Sub Create(X1 As Single, Y1 As Single, W1 As Single, H1 As Single) 'Initiate gate
    X = X1
    Y = Y1
    W = W1
    H = H1
End Sub
Public Sub Draw(M As Form, Dx As Integer, Dy As Integer, Sprite As PictureBox, Mask As PictureBox) 'Display gate on form
    bitblt M.hDC, X + Dx, Y + Dy, W, H, Mask.hDC, 0, 0, SRCAND
    bitblt M.hDC, X + Dx, Y + Dy, W, H, Sprite.hDC, 0, 0, SRCINVERT
End Sub

Public Function Collide(X1 As Single, Y1 As Single, D As Integer) As Boolean 'Check for point to character collision
Dim Coll As Boolean, Dist As Double

'Find Displacement
    Dist = Sqr((X + W / 2 - X1) ^ 2 + (Y + H / 2 - Y1) ^ 2)
'Check
    Collide = IIf(Dist < D, True, False)
    
End Function

VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "Uryu"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Public X As Single, Y As Single
Private W(0 To 20) As Single, H(0 To 20) As Single
Private FX(0 To 20) As Integer, FY(0 To 20) As Integer
Private ArrowX(0 To 100) As Single, ArrowY(0 To 100) As Single
Public ArrowIndex As Integer

Public Sub Display(Sprite As PictureBox, Mask As PictureBox, Number As Integer)
bitblt frmGame.hDC, X, Y, W(Number), H(Number), Mask.hDC, FX(Number) * W(Number), FY(Number) * H(Number), SRCAND
bitblt frmGame.hDC, X, Y, W(Number), H(Number), Sprite.hDC, FX(Number) * W(Number), FY(Number) * H(Number), SRCINVERT
For C = 0 To 100
ArrowX(C) = ArrowX(C) + 20
Next C
End Sub

Public Sub ArrowDisplay(Sprite As PictureBox, Mask As PictureBox)
For C2 = 0 To 100
bitblt frmGame.hDC, ArrowX(C2), ArrowY(C2), 58, 11, Mask.hDC, 0, 0, SRCAND
bitblt frmGame.hDC, ArrowX(C2), ArrowY(C2), 58, 11, Sprite.hDC, 0, 0, SRCINVERT
Next C2
End Sub

Public Sub SetDimensions(Width As Single, Height As Single, Number As Integer)
W(Number) = Width
H(Number) = Height
End Sub

Public Sub FrameChange(Dir As Integer, Number As Integer, Max As Integer, StopAtMax As Boolean)
If FX(Number) = Max And StopAtMax = True Then Exit Sub
FX(Number) = FX(Number) + Dir

If FX(Number) > Max Then FX(Number) = 0
If FX(Number) < 0 Then FX(Number) = Max

End Sub

Public Sub Run(Dir As Integer)
Call FrameChange(Dir, 1, 5, False)
X = X + 10 * Dir
End Sub

Public Function getW(Number As Integer) As Single
getW = W(Number)
End Function

Public Function getH(Number As Integer) As Single
getH = H(Number)
End Function

Public Sub setFx(Number As Integer, Num As Integer)
FX(Number) = Num
End Sub

Public Function getFx(Number As Integer)
getFx = FX(Number)
End Function

Public Sub FastAttack()
Dim C As Integer
Do Until C = 10
C = C + 1
Call FrameChange(1, 3, 2, False)
Shoot (3)
Sleep (15)
DoEvents
Loop
End Sub

Public Sub setFy(Number As Integer, Num As Integer)
FY(Number) = Num
End Sub


Public Sub Crouch(FF As Boolean, H As Integer)
If FF = True Then Exit Sub

Dim C As Integer
Do Until C = 20
C = C + 1
Sleep (20)
Call FrameChange(1, 4, 2, False)
Shoot (4)
DoEvents
Loop
End Sub

Public Sub InstMove1(Dir As Integer)
Do Until FX(5) = 3
Call FrameChange(1, 5, 10, False)
Sleep (20)
DoEvents
Loop

X = X + 500 * Dir

Do Until FX(5) = 0
Call FrameChange(-1, 5, 10, False)
Sleep (20)
DoEvents
Loop

End Sub

Private Sub Shoot(Number As Integer)
ArrowX(ArrowIndex) = X + W(Number) / 3
Randomize
ArrowY(ArrowIndex) = Int(Rnd * H(Number)) + Y

ArrowIndex = ArrowIndex + 1
If ArrowIndex > 100 Then ArrowIndex = 0
End Sub

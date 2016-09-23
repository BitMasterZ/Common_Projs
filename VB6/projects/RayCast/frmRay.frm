VERSION 5.00
Begin VB.Form Form1 
   AutoRedraw      =   -1  'True
   Caption         =   "Form1"
   ClientHeight    =   7935
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   17430
   FillColor       =   &H00FF0000&
   FillStyle       =   0  'Solid
   LinkTopic       =   "Form1"
   ScaleHeight     =   529
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   1162
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer tmrRefresh 
      Interval        =   1
      Left            =   1560
      Top             =   2760
   End
   Begin VB.PictureBox picMap 
      BackColor       =   &H00000000&
      Height          =   4935
      Left            =   9000
      ScaleHeight     =   424.837
      ScaleMode       =   0  'User
      ScaleWidth      =   561.453
      TabIndex        =   0
      Top             =   1440
      Width           =   7095
   End
   Begin VB.Timer tmrAnimate 
      Interval        =   1
      Left            =   360
      Top             =   240
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Enum ABC
Side = 15
End Enum


Private Type Block
X As Single
Y As Single
Fill As Integer
End Type

Private Type Character
X As Single
Y As Single
Angle As Single
MDir As Single
RDir As Single
BlNum As Single
Bound As Boolean
End Type
Dim Incr As Integer, Spare As Integer
Dim blnMove As Boolean
Dim C As Integer, C2 As Integer, C3 As Integer
Dim Walls(0 To 32 ^ 2) As Block, Player As Character, Ray As Character
Dim Length As Double
Dim intwallx As Single
Dim blnFull As Boolean
Private Sub Form_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
Dim Num As Integer
Num = Position(X, Y)
If Walls(Num).Fill = 0 Then Walls(Num).Fill = 1 Else: Walls(Num).Fill = 0

End Sub

Private Sub picMap_DblClick()
If blnFull = False Then
picMap.Left = 0
picMap.Top = 0
picMap.Width = Me.Width
picMap.Height = Me.Height
picMap.ScaleMode = vbpixel
blnFull = True
Else
picMap.ScaleHeight = 2000
picMap.ScaleWidth = 2000
End If
End Sub

Private Sub picMap_KeyDown(KeyCode As Integer, Shift As Integer)
Select Case KeyCode
Case vbKeyUp
Player.MDir = 1
Case vbKeyDown
Player.MDir = -1
Case vbKeyLeft
Player.RDir = -1
Case vbKeyRight
Player.RDir = 1
End Select
blnMove = True
intwallx = 0
Incr = -90
picMap.Refresh
End Sub

Private Sub picMap_KeyUp(KeyCode As Integer, Shift As Integer)
Player.MDir = 0
Player.RDir = 0
blnMove = False
End Sub

Private Sub Form_Load()
Spare = 1

picMap.ScaleHeight = 2000
picMap.ScaleWidth = 3000


For C = LBound(Walls) To UBound(Walls)
    C2 = C2 + 1
    Walls(C).X = C2 * Side
    Walls(C).Y = C3 * Side
    
    If C2 > 32 Then
        C3 = C3 + 1
        C2 = 1
    End If

Next C

For C2 = 1 To 32
    Walls(C2).Fill = 1
    Walls(C2 * 32).Fill = 1
Next C2
For C2 = 1 To 32 ^ 2 Step 32
    Walls(C2).Fill = 1
Next C2

Player.X = 100
Player.Y = 100
End Sub

Private Function DtoR(ByVal Deg As Single)
Const Pi As Double = 3.141592654
DtoR = Deg / 180 / Pi
End Function
Private Function RtoD(Rad As Single)
Const Pi As Double = 3.141592654
DtoR = Rad * 180 / Pi
End Function
Private Sub tmrAnimate_Timer()
Dim X As Single, Y As Single
Cls

Player.BlNum = Position(Player.X, Player.Y)

Print Player.BlNum
For C = LBound(Walls) To UBound(Walls)
    If Walls(C).Fill = 1 Then
        'Line (Walls(C).X, Walls(C).Y)-(Walls(C).X + Side, Walls(C).Y + Side), vbBlack, BF
    End If
Next C


'Circle (Player.X, Player.Y), 5, vbBlue
Player.Angle = Player.Angle + DtoR(30) * Player.RDir
Player.Bound = Coll(Player.X + Cos(Player.Angle) * 10 * Player.MDir, Player.Y + Sin(Player.Angle) * 10 * Player.MDir)
If Player.Bound = False Then
Player.X = Player.X + Cos(Player.Angle) * Player.MDir
Player.Y = Player.Y + Sin(Player.Angle) * Player.MDir
End If
X = Player.X + Cos(Player.Angle) * 50
Y = Player.Y + Sin(Player.Angle) * 50

'Line (Player.X, Player.Y)-(X, Y), vbBlue
'Line (Player.X, Player.Y)-(Ray.X, Ray.Y), vbGreen

End Sub


Private Function Position(X As Single, Y As Single)
For C = LBound(Walls) To UBound(Walls)
If X > Walls(C).X And X < Walls(C).X + Side And Y > Walls(C).Y And Y < Walls(C).Y + Side Then
Position = C
End If

Next C

End Function

Private Function Coll(X As Single, Y As Single)
Dim blockNum As Integer
blockNum = Position(X, Y)
If Walls(blockNum).Fill = 1 Then
Coll = True
Else
Coll = False
End If
End Function

Private Sub Cast(Alter As Integer, Num As Integer)
Dim blnStore As Boolean
Ray.X = Player.X
Ray.Y = Player.Y

Length = 0
Do Until blnStore = True

Ray.X = Ray.X + Cos(DtoR(Num * 10) + Player.Angle) * Length
Ray.Y = Ray.Y + Sin(DtoR(Num * 10) + Player.Angle) * Length
Length = Length + 3
If Position(Ray.X, Ray.Y) = 0 Then Length = Length - 6
blnStore = Coll(Ray.X, Ray.Y)


Loop
Ray.BlNum = Length
End Sub

Private Sub Time()

Ray.X = Ray.X + Cos(DtoR(Incr) + Player.Angle) * Length
Ray.Y = Ray.Y + Sin(DtoR(Incr) + Player.Angle) * Length
Length = Length + 0.5
If Position(Ray.X, Ray.Y) = 0 Then Length = Length - 1

If Coll(Ray.X, Ray.Y) = True Or Position(Ray.X, Ray.Y) = 0 Then
Ray.BlNum = Length
intDH = Int(20000 / Ray.BlNum)
intWallY = Int(Me.ScaleHeight - (intDH / 2))
picMap.Line (intwallx, intWallY)-(intwallx + 5, intWallY + intDH), vbRed, BF
intwallx = intwallx + 5
Ray.X = Player.X
Ray.Y = Player.Y
Length = 0
Incr = Incr + 1
If Incr > 90 Then Incr = -90
End If



End Sub


Private Sub Projector()
Dim intDH As Integer
intwallx = 0
For Incr = -180 To 180
'picMap.Refresh
If blnMove = True Then Exit For
Call Cast(Spare, Incr)
intDH = Int(20000 / Ray.BlNum)
intWallY = Int(Me.ScaleHeight - (intDH / 2))
picMap.Line (intwallx, intWallY)-(intwallx + 1, intWallY + intDH), vbRed, BF
intwallx = intwallx + 1
Next

End Sub

Private Sub tmrRefresh_Timer()
Call Time
End Sub

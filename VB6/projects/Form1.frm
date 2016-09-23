VERSION 5.00
Begin VB.Form Form1 
   AutoRedraw      =   -1  'True
   Caption         =   "Form1"
   ClientHeight    =   8895
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   14010
   FillColor       =   &H000000FF&
   FillStyle       =   0  'Solid
   ForeColor       =   &H000080FF&
   LinkTopic       =   "Form1"
   ScaleHeight     =   593
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   934
   StartUpPosition =   3  'Windows Default
   Begin VB.PictureBox p 
      BackColor       =   &H00000000&
      Height          =   6255
      Left            =   7200
      ScaleHeight     =   6195
      ScaleWidth      =   6075
      TabIndex        =   2
      Top             =   840
      Width           =   6135
   End
   Begin VB.Timer Timer2 
      Interval        =   1
      Left            =   6360
      Top             =   4200
   End
   Begin VB.Timer Timer1 
      Left            =   6360
      Top             =   4200
   End
   Begin VB.Frame Frame1 
      Caption         =   "Frame1"
      Height          =   6615
      Left            =   8640
      TabIndex        =   0
      Top             =   240
      Width           =   4815
      Begin VB.Label lblLen 
         AutoSize        =   -1  'True
         BeginProperty Font 
            Name            =   "Agency FB"
            Size            =   18
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   420
         Left            =   120
         TabIndex        =   1
         Top             =   240
         Width           =   75
      End
   End
   Begin VB.Timer tmr 
      Interval        =   1
      Left            =   5160
      Top             =   2280
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
  
  'var moveStep = player.speed * player.moveSpeed;   // player will move this far along the current direction vector

  'player.rot += player.dir * player.rotSpeed; // add rotation if player is rotating (player.dir != 0)

  'var newX = player.x + Math.cos(player.rot) * moveStep;    // calculate new player position with simple trigonometry
  'var newY = player.y + Math.sin(player.rot) * moveStep;

 ' player.x = newX; // set new position
 ' player.y = newY;
Private Type Block
X As Single
Y As Single
Hei As Single
End Type

Private Type Unit
X As Single
Y As Single
Dir As Single
Angle As Single
MSpeed As Single
RSpeed As Single
Speed As Integer
End Type

Dim Counter As Integer, C2 As Integer, C As Integer
Dim Walls(1 To 100) As Block, Player As Unit
Dim Rays(1 To 12) As Unit, Alter As Integer

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
Select Case KeyCode
Case vbKeyUp
Player.Speed = 10

Case vbKeyDown
Player.Speed = -10

Case vbKeyLeft
Player.Dir = -0.5

Case vbKeyRight
Player.Dir = 0.5




End Select
For C = 1 To UBound(Rays)
Rays(C).X = Player.X + 5
Rays(C).Y = Player.Y + 5
Next

Dim Mstep As Single, Pos(1 To 2) As Single

Mstep = Player.Speed * Player.MSpeed

Player.Angle = Player.Angle + Player.Dir * Player.RSpeed

Pos(1) = Player.X + Cos(Player.Angle) * Mstep
Pos(2) = Player.Y + Sin(Player.Angle) * Mstep

Player.X = Pos(1)
Player.Y = Pos(2)



  'var moveStep = player.speed * player.moveSpeed;   // player will move this far along the current direction vector

  'player.rot += player.dir * player.rotSpeed; // add rotation if player is rotating (player.dir != 0)

  'var newX = player.x + Math.cos(player.rot) * moveStep;    // calculate new player position with simple trigonometry
  'var newY = player.y + Math.sin(player.rot) * moveStep;

 ' player.x = newX; // set new position
 ' player.y = newY;
  
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer)
Player.Dir = 0
Player.Speed = 0
End Sub

Private Sub Form_Load()
Player.X = 100
Player.Y = 100
Player.MSpeed = 0.2
Player.RSpeed = 6 * 3.141592654 / 180
For Counter = LBound(Walls) To 25
Walls(Counter).Hei = 20
For C2 = 1 To Counter
Walls(Counter).X = C2 * 20
Walls(Counter).Y = 20
Next C2
Next Counter

For Counter = 26 To 50
Walls(Counter).Hei = 20
For C2 = 1 To Counter
Walls(Counter).X = C2 * 20 - 25 * 20
Walls(Counter).Y = 25 * 20
Next C2
Next Counter

For Counter = 51 To 75
Walls(Counter).Hei = 20
For C2 = 1 To Counter
Walls(Counter).X = 20
Walls(Counter).Y = C2 * 20 - 50 * 20
Next C2
Next Counter

For Counter = 76 To 100
Walls(Counter).Hei = 20
For C2 = 1 To Counter
Walls(Counter).X = 25 * 20
Walls(Counter).Y = C2 * 20 - 75 * 20
Next C2
Next Counter
End Sub





Private Sub Timer2_Timer()
Call Cast

End Sub

Private Sub tmr_Timer()
Cls

For Counter = LBound(Rays) To UBound(Rays)


Line (Player.X + 5, Player.Y + 5)-(Rays(Counter).X, Rays(Counter).Y), vbGreen
Next



Line (Player.X, Player.Y)-(Player.X + 10, Player.Y + 10), vbRed, BF
For Counter = LBound(Walls) To UBound(Walls)
Line (Walls(Counter).X, Walls(Counter).Y)-(Walls(Counter).X + 20, Walls(Counter).Y + 20), vbBlack, BF
Next
Line (Player.X, Player.Y)-(Player.X + 10, Player.Y + 10), vbRed, BF
Call Pointer

End Sub

Private Sub Pointer()
Dim Coor(1 To 2) As Single, Ang As Integer

Ang = Player.Angle * 180 / 3.141592654

Do Until Ang <= 360
Ang = Ang - 360
Loop
Do Until Ang >= 0
Ang = Ang + 360
Loop


Print Ang
Coor(1) = Player.X + Cos(Player.Angle) * 60
Coor(2) = Player.Y + Sin(Player.Angle) * 60
Line (Player.X + 5, Player.Y + 5)-(Coor(1), Coor(2)), vbRed
Circle (Coor(1), Coor(2)), 2, vbRed


End Sub

Private Sub Cast()
lblLen.Caption = ""


For Index = 1 To UBound(Rays)
If Alter = 1 Then
Alter = -1
Else
Alter = 1
End If

Rays(Index).Angle = Player.Angle + Alter * ((30 * Index) / 180 / 3.141592654)

Rays(Index).MSpeed = 1
Rays(Index).X = Player.X + 5
Rays(Index).Y = Player.Y + 5

Do Until Point(Rays(Index).X, Rays(Index).Y) = vbBlack
Rays(Index).X = Rays(Index).X + Cos(Rays(Index).Angle) * Rays(Index).MSpeed
Rays(Index).Y = Rays(Index).Y + Sin(Rays(Index).Angle) * Rays(Index).MSpeed

Rays(Index).MSpeed = Rays(Index).MSpeed + 0.1
DoEvents
Loop

Rays(Index).Dir = Rays(Index).MSpeed
lblLen.Caption = lblLen.Caption + Str(Rays(Index).MSpeed) + vbCrLf

Next





End Sub

Private Sub Projection()

End Sub

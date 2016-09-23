VERSION 5.00
Begin VB.Form frmGame 
   BorderStyle     =   0  'None
   Caption         =   "Form1"
   ClientHeight    =   10605
   ClientLeft      =   105
   ClientTop       =   105
   ClientWidth     =   19725
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   10605
   ScaleWidth      =   19725
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.PictureBox SArrow 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   225
      Left            =   12000
      Picture         =   "frmGame.frx":0000
      ScaleHeight     =   11
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   57
      TabIndex        =   13
      Top             =   4800
      Visible         =   0   'False
      Width           =   915
   End
   Begin VB.PictureBox MArrow 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   225
      Left            =   12480
      Picture         =   "frmGame.frx":0613
      ScaleHeight     =   11
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   57
      TabIndex        =   12
      Top             =   4560
      Visible         =   0   'False
      Width           =   915
   End
   Begin VB.PictureBox MUryu 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1380
      Index           =   5
      Left            =   3840
      Picture         =   "frmGame.frx":0C03
      ScaleHeight     =   88
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   361
      TabIndex        =   11
      Top             =   7080
      Visible         =   0   'False
      Width           =   5475
   End
   Begin VB.PictureBox SUryu 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1380
      Index           =   5
      Left            =   3840
      Picture         =   "frmGame.frx":3A3B
      ScaleHeight     =   88
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   361
      TabIndex        =   10
      Top             =   7080
      Visible         =   0   'False
      Width           =   5475
   End
   Begin VB.PictureBox SUryu 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1455
      Index           =   4
      Left            =   600
      Picture         =   "frmGame.frx":70EA
      ScaleHeight     =   93
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   214
      TabIndex        =   9
      Top             =   2520
      Visible         =   0   'False
      Width           =   3270
   End
   Begin VB.PictureBox MUryu 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1470
      Index           =   4
      Left            =   600
      Picture         =   "frmGame.frx":9BEF
      ScaleHeight     =   94
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   213
      TabIndex        =   8
      Top             =   2520
      Visible         =   0   'False
      Width           =   3255
   End
   Begin VB.PictureBox SUryu 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   2340
      Index           =   3
      Left            =   720
      Picture         =   "frmGame.frx":C0B8
      ScaleHeight     =   152
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   242
      TabIndex        =   7
      Top             =   120
      Visible         =   0   'False
      Width           =   3690
   End
   Begin VB.PictureBox MUryu 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   2340
      Index           =   3
      Left            =   720
      Picture         =   "frmGame.frx":104B4
      ScaleHeight     =   152
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   242
      TabIndex        =   6
      Top             =   120
      Visible         =   0   'False
      Width           =   3690
   End
   Begin VB.PictureBox MUryu 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   2205
      Index           =   2
      Left            =   4440
      Picture         =   "frmGame.frx":140DD
      ScaleHeight     =   143
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   166
      TabIndex        =   5
      Top             =   1680
      Visible         =   0   'False
      Width           =   2550
   End
   Begin VB.PictureBox SUryu 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   2205
      Index           =   2
      Left            =   4440
      Picture         =   "frmGame.frx":1647E
      ScaleHeight     =   143
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   166
      TabIndex        =   4
      Top             =   1680
      Visible         =   0   'False
      Width           =   2550
   End
   Begin VB.Timer tmrPlayer1 
      Interval        =   1
      Left            =   7920
      Top             =   3240
   End
   Begin VB.PictureBox SUryu 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1425
      Index           =   1
      Left            =   3240
      Picture         =   "frmGame.frx":18CFF
      ScaleHeight     =   91
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   694
      TabIndex        =   3
      Top             =   5520
      Visible         =   0   'False
      Width           =   10470
   End
   Begin VB.PictureBox MUryu 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1425
      Index           =   1
      Left            =   3240
      Picture         =   "frmGame.frx":1F653
      ScaleHeight     =   91
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   694
      TabIndex        =   2
      Top             =   5640
      Visible         =   0   'False
      Width           =   10470
   End
   Begin VB.Timer tmrEffects 
      Interval        =   500
      Left            =   7560
      Top             =   4440
   End
   Begin VB.Timer tmrAnimate 
      Interval        =   1
      Left            =   2880
      Top             =   4200
   End
   Begin VB.PictureBox MUryu 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1860
      Index           =   0
      Left            =   8760
      Picture         =   "frmGame.frx":24919
      ScaleHeight     =   120
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   418
      TabIndex        =   1
      Top             =   2040
      Visible         =   0   'False
      Width           =   6330
   End
   Begin VB.PictureBox SUryu 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1860
      Index           =   0
      Left            =   8760
      Picture         =   "frmGame.frx":2A760
      ScaleHeight     =   120
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   418
      TabIndex        =   0
      Top             =   2040
      Visible         =   0   'False
      Width           =   6330
   End
End
Attribute VB_Name = "frmGame"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim Player1 As New Uryu
Dim Index As Integer
Dim FVelocity As Single
Const Grav As Single = 0.5
Dim FreeFall As Boolean

Private Sub Form_Load()
AutoRedraw = True
ScaleMode = 3
Call Player1.SetDimensions(67, 117, 0)
Call Player1.SetDimensions(112, 87, 1)
Call Player1.SetDimensions(75, 135, 2)
Call Player1.SetDimensions(77, 147, 3)
Call Player1.SetDimensions(71, 93, 4)
Call Player1.SetDimensions(116, 87, 5)

Call Player1.setFx(5, 0)
End Sub



Private Sub tmrAnimate_Timer()
Cls
Call Player1.Display(SUryu(Index), MUryu(Index), Index)
Call Player1.ArrowDisplay(SArrow, MArrow)
Call Gravity

If Player1.X > Me.ScaleWidth Then Player1.X = Player1.X - Me.ScaleWidth
If Player1.X < 0 Then Player1.X = Player1.X + Me.ScaleWidth



End Sub

Private Sub tmrPlayer1_Timer()

If GetAsyncKeyState(vbKeyD) Then
Call Player1.Run(1)
If GetAsyncKeyState(vbKeyZ) Then
Index = 5
Call Player1.InstMove1(1)
End If
If FreeFall = True Then Exit Sub
Index = 1

ElseIf GetAsyncKeyState(vbKeyA) Then
Call Player1.Run(-1)
If GetAsyncKeyState(vbKeyZ) Then
Index = 5
Call Player1.InstMove1(-1)
End If
If FreeFall = True Then Exit Sub
Index = 1

ElseIf GetAsyncKeyState(vbKeyW) Then
If FreeFall = True Then Exit Sub
Index = 2
FVelocity = -20
Player1.Y = Player1.Y - 5

ElseIf GetAsyncKeyState(vbKeyS) Then
Index = 4
Call Player1.Crouch(FreeFall, ScaleHeight)

ElseIf GetAsyncKeyState(27) Then
End

ElseIf GetAsyncKeyState(vbKeyQ) Then
Index = 3
Call Player1.FastAttack


Else
If FreeFall = True Then Exit Sub
Index = 0
End If

End Sub

Private Sub Gravity()

FreeFall = (Player1.Y + Player1.getH(Index) < Me.ScaleHeight)

If FreeFall = True Then

FVelocity = FVelocity + Grav
If FVelocity < 0 Then
Call Player1.setFx(2, 0)
Else
Call Player1.setFx(2, 1)
End If


Else
FVelocity = 0
Player1.Y = Me.ScaleHeight - Player1.getH(Index)

End If

Player1.Y = Player1.Y + FVelocity


End Sub

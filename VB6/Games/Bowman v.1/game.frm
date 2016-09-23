VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   6795
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   10605
   LinkTopic       =   "Form1"
   ScaleHeight     =   6795
   ScaleWidth      =   10605
   Begin VB.Timer timer3 
      Enabled         =   0   'False
      Interval        =   200
      Left            =   7320
      Top             =   3600
   End
   Begin VB.Timer jump2 
      Left            =   9960
      Top             =   5160
   End
   Begin VB.Timer jump 
      Left            =   3480
      Top             =   4800
   End
   Begin VB.Timer motion 
      Interval        =   10
      Left            =   4440
      Top             =   1680
   End
   Begin VB.Timer Timer2 
      Enabled         =   0   'False
      Interval        =   10
      Left            =   1680
      Top             =   1800
   End
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   200
      Left            =   3480
      Top             =   1200
   End
   Begin VB.Image pose4 
      Height          =   2070
      Left            =   8040
      Picture         =   "game.frx":0000
      Top             =   2640
      Visible         =   0   'False
      Width           =   2190
   End
   Begin VB.Image position4 
      Height          =   2070
      Left            =   240
      Picture         =   "game.frx":ED72
      Top             =   4320
      Visible         =   0   'False
      Width           =   2085
   End
   Begin VB.Image win2 
      Height          =   1185
      Left            =   4200
      Picture         =   "game.frx":1D01C
      Top             =   240
      Visible         =   0   'False
      Width           =   3915
   End
   Begin VB.Image blood 
      Height          =   390
      Left            =   6960
      Picture         =   "game.frx":2C24E
      Top             =   4080
      Width           =   540
   End
   Begin VB.Image win 
      Height          =   1230
      Left            =   4200
      Picture         =   "game.frx":2CD88
      Top             =   240
      Visible         =   0   'False
      Width           =   3840
   End
   Begin VB.Shape green2 
      BorderStyle     =   0  'Transparent
      FillColor       =   &H0000FF00&
      FillStyle       =   0  'Solid
      Height          =   135
      Left            =   7680
      Top             =   6600
      Width           =   3255
   End
   Begin VB.Shape green 
      BorderStyle     =   0  'Transparent
      FillColor       =   &H0000FF00&
      FillStyle       =   0  'Solid
      Height          =   135
      Left            =   120
      Top             =   6600
      Width           =   3255
   End
   Begin VB.Shape red2 
      BorderStyle     =   0  'Transparent
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   135
      Left            =   7680
      Top             =   6600
      Width           =   3255
   End
   Begin VB.Shape red 
      BorderStyle     =   0  'Transparent
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   135
      Left            =   120
      Top             =   6600
      Width           =   3255
   End
   Begin VB.Image arrow2 
      Height          =   570
      Left            =   6480
      Picture         =   "game.frx":3C3CA
      Top             =   5280
      Width           =   1590
   End
   Begin VB.Image pose3 
      Height          =   1725
      Left            =   7800
      Picture         =   "game.frx":3F38C
      Top             =   4680
      Width           =   1080
   End
   Begin VB.Image pose2 
      Height          =   1380
      Left            =   6360
      Picture         =   "game.frx":454D6
      Top             =   5040
      Width           =   1740
   End
   Begin VB.Image pose 
      Height          =   1335
      Left            =   8160
      Picture         =   "game.frx":4D228
      Top             =   5040
      Width           =   1710
   End
   Begin VB.Image arrow 
      Height          =   570
      Left            =   3480
      Picture         =   "game.frx":54A02
      Top             =   3960
      Width           =   1590
   End
   Begin VB.Image position3 
      Height          =   1725
      Left            =   2400
      Picture         =   "game.frx":579C4
      Top             =   4680
      Width           =   1095
   End
   Begin VB.Image position2 
      Height          =   1380
      Left            =   720
      Picture         =   "game.frx":5DCDA
      Top             =   5040
      Width           =   1860
   End
   Begin VB.Image position 
      Height          =   1335
      Left            =   0
      Picture         =   "game.frx":662CC
      Top             =   5040
      Width           =   1800
   End
   Begin VB.Shape Shape2 
      FillColor       =   &H00FFFFFF&
      FillStyle       =   0  'Solid
      Height          =   6375
      Left            =   0
      Top             =   0
      Width           =   14415
   End
   Begin VB.Shape Shape1 
      FillColor       =   &H00E0E0E0&
      FillStyle       =   0  'Solid
      Height          =   2175
      Left            =   0
      Top             =   6360
      Width           =   14415
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim s As Integer
Dim j As Integer
Dim jj As Integer
Dim ss As Integer
Private Sub Form_Load()
s = 0
j = 100
jj = 100
ss = 0
arrow.Visible = False
position2.Left = position.Left
position3.Left = position.Left
position2.Top = position.Top
position3.Top = position.Top
position2.Visible = False
position3.Visible = False
pose2.Visible = False
pose3.Visible = False
arrow2.Visible = False
End Sub

Private Sub jump_Timer()
position.Top = position.Top - j
If position.Top <= Shape2.Top Then
j = -j
ElseIf position.Top + position.Height >= Shape1.Top + 50 Then
jump.Interval = 0
j = 0
End If
End Sub

Private Sub jump2_Timer()
pose.Top = pose.Top - jj
If pose.Top <= Shape2.Top Then
jj = -jj
ElseIf pose.Top + pose.Height >= Shape1.Top + 50 Then
jump2.Interval = 0
jj = 0
End If
End Sub

Private Sub motion_Timer()
pose4.Left = pose.Left
pose4.Top = pose.Top
position4.Left = position.Left
position4.Top = position.Top
If win2.Visible = False Then
If GetAsyncKeyState(vbKeyS) Then
blood.Visible = False
Timer1.Enabled = True
arrow.Left = position3.Left + 0.75 * position3.Width
s = 0
position3.Visible = False
arrow.Visible = False
position.Visible = True
End If
End If
If win.Visible = False Then
    If GetAsyncKeyState(vbKeyDown) Then
    blood.Visible = False
    timer3.Enabled = True
    arrow2.Left = pose.Left + 0.75 * pose.Width
    ss = 0
    pose3.Visible = False
    arrow2.Visible = False
    pose.Visible = True
    End If
    End If
If position3.Visible = False Then
If position.Visible = False Then
arrow.Top = position.Top + 0.5 * position.Height
End If
End If
If pose3.Visible = False Then
If pose.Visible = False Then
arrow2.Top = pose.Top + 0.5 * pose.Height
End If
End If
If win2.Visible = False Then
If GetAsyncKeyState(vbKeyW) Then
j = 100
jump.Interval = 10
ElseIf GetAsyncKeyState(vbKeyD) Then
If position2.Left + position2.Width <= Shape2.Width Then
position.Left = position.Left + 100
End If
ElseIf GetAsyncKeyState(vbKeyA) Then
If position.Left >= 0 Then
position.Left = position.Left - 100
End If
End If
End If
If win.Visible = False Then
If GetAsyncKeyState(vbKeyUp) Then
jj = 100
jump2.Interval = 10
ElseIf GetAsyncKeyState(vbKeyRight) Then
If pose2.Left + pose2.Width <= Shape2.Width Then
pose.Left = pose.Left + 100
End If
ElseIf GetAsyncKeyState(vbKeyLeft) Then
If pose.Left >= 0 Then
pose.Left = pose.Left - 100
End If
End If
End If
position2.Left = position.Left
position3.Left = position.Left
position2.Top = position.Top
position3.Top = position.Top
    pose2.Left = pose.Left
    pose3.Left = pose.Left
    pose2.Top = pose.Top
    pose3.Top = pose.Top
    If arrow.Top >= pose.Top And arrow.Top + arrow.Height <= pose.Top + pose.Height Then
If arrow.Left + arrow.Width >= pose.Left + 0.9 * pose.Width And pose.Left + pose.Width >= arrow.Left Then
arrow.Visible = False
If green2.Width >= 70 Then
green2.Width = green2.Width - 100
ElseIf green2.Width <= 70 And red2.Width >= 70 Then
green2.Visible = False
red2.Width = red2.Width - 100
ElseIf green2.Width <= 70 And red2.Width <= 70 Then
red2.Visible = False
pose.Visible = False
pose4.Visible = True
win.Visible = True
End If
End If
End If
If arrow2.Top >= position.Top And arrow2.Top + arrow2.Height <= position.Top + position.Height Then
If arrow2.Left + arrow2.Width <= position.Left + 0.5 * position.Width And arrow2.Left + arrow2.Width >= position.Left Then
arrow2.Visible = False
If green.Width >= 70 Then
green.Width = green.Width - 100
ElseIf green.Width <= 70 And red.Width >= 70 Then
green.Visible = False
red.Width = red.Width - 100
ElseIf green.Width <= 70 And red.Width <= 70 Then
red.Visible = False
position.Visible = False
position4.Visible = True
win2.Visible = True
End If
End If
End If

End Sub

Private Sub Timer1_Timer()
If s = 1 Then
position.Visible = False
position2.Visible = True
ElseIf s = 2 Then
position2.Visible = False
position3.Visible = True
Timer2.Enabled = True
ElseIf s = 3 Then
position3.Visible = False
position.Visible = True
End If
s = s + 1
End Sub

Private Sub Timer2_Timer()
If s > 2 Then
arrow.Visible = True
arrow.Left = arrow.Left + 100
End If
If ss > 2 Then
arrow2.Visible = True
arrow2.Left = arrow2.Left - 100
End If
End Sub

Private Sub timer3_Timer()
If ss = 1 Then
pose.Visible = False
pose2.Visible = True
ElseIf ss = 2 Then
pose2.Visible = False
pose3.Visible = True
Timer2.Enabled = True
ElseIf ss = 3 Then
pose3.Visible = False
pose.Visible = True
End If
ss = ss + 1
End Sub

Private Sub win_Click()
End
End Sub

Private Sub win2_Click()
End
End Sub

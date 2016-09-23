VERSION 5.00
Begin VB.Form Form4 
   Caption         =   "Form4"
   ClientHeight    =   9225
   ClientLeft      =   120
   ClientTop       =   420
   ClientWidth     =   14265
   Enabled         =   0   'False
   LinkTopic       =   "Form4"
   Picture         =   "cheats.frx":0000
   ScaleHeight     =   9225
   ScaleWidth      =   14265
   StartUpPosition =   3  'Windows Default
   Visible         =   0   'False
   Begin VB.CommandButton game 
      Caption         =   "start"
      BeginProperty Font 
         Name            =   "OCR A Extended"
         Size            =   27.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1335
      Left            =   -120
      TabIndex        =   12
      Top             =   0
      Width           =   3135
   End
   Begin VB.TextBox search 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Papyrus"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   4680
      TabIndex        =   11
      Text            =   "SEARCH CHEAT.(lower case letters only)"
      Top             =   2040
      Width           =   6615
   End
   Begin VB.Frame Frame2 
      Caption         =   "Frame2"
      Height          =   135
      Left            =   720
      TabIndex        =   10
      Top             =   1560
      Visible         =   0   'False
      Width           =   135
   End
   Begin VB.PictureBox boozoka 
      Height          =   855
      Left            =   2040
      Picture         =   "cheats.frx":1DF2
      ScaleHeight     =   795
      ScaleWidth      =   5235
      TabIndex        =   9
      Top             =   6240
      Visible         =   0   'False
      Width           =   5295
   End
   Begin VB.PictureBox missile 
      Height          =   615
      Left            =   2040
      Picture         =   "cheats.frx":183A4
      ScaleHeight     =   555
      ScaleWidth      =   1995
      TabIndex        =   8
      Top             =   6240
      Visible         =   0   'False
      Width           =   2055
   End
   Begin VB.PictureBox missile2 
      Height          =   615
      Left            =   5160
      Picture         =   "cheats.frx":1C916
      ScaleHeight     =   555
      ScaleWidth      =   2115
      TabIndex        =   7
      Top             =   6240
      Visible         =   0   'False
      Width           =   2175
   End
   Begin VB.Timer kill 
      Enabled         =   0   'False
      Interval        =   1
      Left            =   5280
      Top             =   3000
   End
   Begin VB.Frame Frame1 
      Caption         =   "Frame1"
      Height          =   255
      Left            =   240
      TabIndex        =   6
      Top             =   1200
      Visible         =   0   'False
      Width           =   135
   End
   Begin VB.Timer ufotime 
      Enabled         =   0   'False
      Interval        =   3
      Left            =   5280
      Top             =   2520
   End
   Begin VB.PictureBox ufo 
      Height          =   1095
      Left            =   0
      Picture         =   "cheats.frx":20E88
      ScaleHeight     =   1035
      ScaleWidth      =   1995
      TabIndex        =   5
      Top             =   3360
      Visible         =   0   'False
      Width           =   2055
   End
   Begin VB.Timer size3 
      Enabled         =   0   'False
      Interval        =   1
      Left            =   4680
      Top             =   2880
   End
   Begin VB.CommandButton next 
      Caption         =   ">"
      BeginProperty Font 
         Name            =   "MS Serif"
         Size            =   24
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   10920
      TabIndex        =   4
      Top             =   3720
      Width           =   1335
   End
   Begin VB.Timer size2 
      Enabled         =   0   'False
      Interval        =   6
      Left            =   4680
      Top             =   2520
   End
   Begin VB.CommandButton size 
      Caption         =   "Play"
      BeginProperty Font 
         Name            =   "Niagara Solid"
         Size            =   21.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   3240
      TabIndex        =   2
      Top             =   2520
      Width           =   1455
   End
   Begin VB.Timer Timer1 
      Interval        =   1
      Left            =   1320
      Top             =   360
   End
   Begin VB.Image Image1 
      Height          =   750
      Left            =   11280
      Picture         =   "cheats.frx":289D6
      Top             =   2040
      Width           =   750
   End
   Begin VB.Shape rod 
      Height          =   255
      Left            =   1080
      Top             =   4440
      Visible         =   0   'False
      Width           =   15
   End
   Begin VB.Label Label2 
      Caption         =   $"cheats.frx":2A7C8
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   20.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   4455
      Left            =   5880
      TabIndex        =   3
      Top             =   3600
      Width           =   4575
   End
   Begin VB.Shape Shape1 
      FillColor       =   &H00FF0000&
      FillStyle       =   0  'Solid
      Height          =   2655
      Left            =   3480
      Top             =   3720
      Width           =   135
   End
   Begin VB.Shape wall 
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   2655
      Left            =   720
      Top             =   3720
      Width           =   135
   End
   Begin VB.Label subtitle1 
      Alignment       =   2  'Center
      Caption         =   "Size cheat"
      BeginProperty Font 
         Name            =   "Niagara Engraved"
         Size            =   27.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   120
      TabIndex        =   1
      Top             =   2640
      Width           =   3015
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      Caption         =   "Cheats"
      BeginProperty Font 
         Name            =   "Old English Text MT"
         Size            =   72
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1575
      Left            =   4320
      TabIndex        =   0
      Top             =   120
      Width           =   5055
   End
End
Attribute VB_Name = "Form4"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim p As Integer
Dim l As Integer
Dim k As Integer
Private Sub boozoka_Click()
kill.Enabled = True
Frame2.Visible = True
End Sub

Private Sub Form_Load()
p = 0
l = 100
k = 100
End Sub

Private Sub game_Click()
Form4.Visible = False
Form2.Visible = True
Form2.Enabled = True
Form4.Enabled = False
End Sub

Private Sub Image1_Click()
If search.Text = "height" Then
p = 0
ElseIf search.Text = "width" Then
p = 1
ElseIf search.Text = "boozoka" Then
p = 3
ElseIf search.Text = "ufo" Then
p = 2
ElseIf search.Text = "size" Then
search.Text = "Height or Width???"
ElseIf search.Text = "blue cheats" Then
search.Text = "Height, Width or Boozoka??"
ElseIf search.Text = "red cheats" Then
search.Text = "Height, Width or UFO??"
End If
End Sub

Private Sub kill_Timer()
If size.Caption = "Play" Then
wall.Left = 0
kill.Enabled = False
boozoka.Left = Label2.Left
boozoka.Top = Label2.Top + 0.75 * Label2.Height
boozoka.Visible = False
missile.Visible = False
missile2.Visible = False
ElseIf size.Caption = "Stop" Then
If GetAsyncKeyState(vbKeyE) Then
If GetAsyncKeyState(vbKeyF) Then
If GetAsyncKeyState(vbKeyC) Then
boozoka.Visible = True
End If
End If
End If
End If
If Frame2.Visible = True Then
missile.Top = wall.Top + 0.5 * wall.Height
boozoka.Top = wall.Top + 0.5 * wall.Height
missile2.Top = wall.Top + 0.5 * wall.Height
If wall.Left < boozoka.Left Then
boozoka.Left = Label2.Left
missile.Visible = True
missile.Left = missile.Left - k
ElseIf wall.Left > boozoka.Left + boozoka.Width Then
boozoka.Left = 0
missile2.Visible = True
missile2.Left = missile2.Left + k
End If
If missile.Top <= wall.Top + wall.Height Then     'from bottom
    If missile.Left <= wall.Left + wall.Width Then  'from right
        If missile.Top + missile.Height >= wall.Top Then  'from top
            If missile.Left + missile.Width >= wall.Left Then 'from left
missile.Visible = False
wall.Visible = False
wall.Left = -20640
boozoka.Visible = False
End If
End If
End If
End If
If missile2.Top <= wall.Top + wall.Height Then     'from bottom
    If missile2.Left <= wall.Left + wall.Width Then  'from right
        If missile2.Top + missile2.Height >= wall.Top Then  'from top
            If missile2.Left + missile2.Width >= wall.Left Then 'from left
missile2.Visible = False
wall.Visible = False
wall.Left = 20640
boozoka.Visible = False
End If
End If
End If
End If
End If
End Sub

Private Sub next_Click()
If size.Caption = "Play" Then
p = p + 1
End If
If p >= 4 Then
MsgBox "How many cheats do you want???!!!"
p = 0
End If
Shape1.Height = 2655
Shape1.Width = 135
wall.Height = 2655
wall.Width = 135
wall.Visible = True
Shape1.Visible = True
wall.Left = 100
Shape1.Left = Label2.Left - 50 - Shape1.Width
End Sub

Private Sub size_Click()
If p = 0 Then
If size2.Enabled = False Then
size2.Enabled = True
size.Caption = "Stop"
ElseIf size2.Enabled = True Then
size2.Enabled = False
size.Caption = "Play"
End If
End If
If p = 1 Then
If size3.Enabled = False Then
size3.Enabled = True
size.Caption = "Stop"
ElseIf size3.Enabled = True Then
size3.Enabled = False
size.Caption = "Play"
End If
End If
If p = 2 Then
If size.Caption = "Play" Then
size.Caption = "Stop"
ufotime.Enabled = True
ElseIf size.Caption = "Stop" Then
size.Caption = "Play"
ufotime.Enabled = False
End If
End If
If p = 3 Then
If size.Caption = "Play" Then
size.Caption = "Stop"
kill.Enabled = True
ElseIf size.Caption = "Stop" Then
size.Caption = "Play"
kill.Enabled = False
End If
End If
End Sub

Private Sub size2_Timer()
If GetAsyncKeyState(vbKeyH) Then
If Shape1.Height <= 5175 Then
Shape1.Height = Shape1.Height + 100
End If
ElseIf GetAsyncKeyState(vbKeyJ) Then
If Shape1.Height >= 150 Then
Shape1.Height = Shape1.Height - 100
End If
End If
If GetAsyncKeyState(vbKeyV) Then
If wall.Height <= 5175 Then
wall.Height = wall.Height + 100
End If
ElseIf GetAsyncKeyState(vbKeyB) Then
If wall.Height >= 150 Then
wall.Height = wall.Height - 100
End If
End If
End Sub

Private Sub size3_Timer()
If GetAsyncKeyState(vbKeyK) Then
If Shape1.Width <= Label2.Left Then
Shape1.Width = Shape1.Width + 100
End If
ElseIf GetAsyncKeyState(vbKeyL) Then
If Shape1.Width >= 55 Then
Shape1.Width = Shape1.Width - 100
End If
End If
If GetAsyncKeyState(vbKeyN) Then
If wall.Width <= Shape1.Left Then
wall.Width = wall.Width + 100
End If
ElseIf GetAsyncKeyState(vbKeyM) Then
If wall.Width >= 55 Then
wall.Width = wall.Width - 100
End If
End If
End Sub

Private Sub Timer1_Timer()
If p = 0 Then
subtitle1.Caption = "Height Cheat"
Label2.Caption = "RED:                  Press V to increase the height            Press B to decrease the height                             BLUE:                 Press H to increase the height            Press J  to decrease the height"
ElseIf p = 1 Then
subtitle1.Caption = "Width Cheat"
Label2.Caption = "RED:                  Press N to increase the width            Press M to decrease the width                            BLUE:                 Press K to increase the width            Press L  to decrease the width"
ElseIf p = 2 Then
wall.Visible = False
Shape1.Top = 5400
subtitle1.Caption = "Ufo Cheat"
Label2.Caption = "RED:                 Press Q,Z and X  to spawn the ufo            Click on the UFO to activate the cheat"
ElseIf p = 3 Then
Shape1.Visible = False
wall.Top = 5400
wall.Left = 0
subtitle1.Caption = "Boozoka Cheat"
Label2.Caption = "Blue:                 Press E,F and C  to spawn the boozoka            Click on the boozoka to activate the cheat"
End If
Label1.Left = Label1.Left - 50
If Label1.Left <= -5160 Then
Label1.Left = 12840
End If
End Sub

Private Sub ufo_Click()
ufotime.Enabled = True
Frame1.Visible = True
End Sub

Private Sub ufotime_Timer()
If size.Caption = "Play" Then
Shape1.Left = 3480
ufotime.Enabled = False
ufo.Left = 0
ufo.Visible = False
ElseIf size.Caption = "Stop" Then
If GetAsyncKeyState(vbKeyQ) Then
If GetAsyncKeyState(vbKeyZ) Then
If GetAsyncKeyState(vbKeyX) Then
ufo.Visible = True
End If
End If
End If
End If
If Frame1.Visible = True Then
rod.Visible = True
rod.Top = ufo.Top + ufo.Height
rod.Left = Shape1.Left + 0.5 * Shape1.Width
If ufo.Left + 0.5 * ufo.Width < Shape1.Left + Shape1.Width Then
ufo.Left = ufo.Left + 200
ElseIf ufo.Left + 0.5 * ufo.Width >= Shape1.Left + Shape1.Width Then
rod.Height = rod.Height + l
End If
If rod.Top <= Shape1.Top + Shape1.Height Then     'from bottom
    If rod.Left <= Shape1.Left + Shape1.Width Then  'from right
        If rod.Top + rod.Height >= Shape1.Top Then  'from top
            If rod.Left + rod.Width >= Shape1.Left Then 'from left
            l = 0
ufo.Left = ufo.Left + 200
rod.Left = rod.Left + 200
Shape1.Left = Shape1.Left + 200
End If
End If
End If
End If
End If
End Sub

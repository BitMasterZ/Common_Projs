VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   8430
   ClientLeft      =   225
   ClientTop       =   555
   ClientWidth     =   15120
   FillColor       =   &H00FFFFFF&
   FillStyle       =   0  'Solid
   ForeColor       =   &H8000000A&
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   8430
   ScaleWidth      =   15120
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Shape1 
      BackColor       =   &H00FF0000&
      Height          =   2655
      Left            =   12960
      TabIndex        =   14
      Top             =   3240
      Width           =   255
   End
   Begin VB.Frame wall 
      BackColor       =   &H000000FF&
      Height          =   2655
      Left            =   480
      TabIndex        =   13
      Top             =   2880
      Width           =   255
   End
   Begin VB.Timer redcom 
      Enabled         =   0   'False
      Interval        =   10
      Left            =   720
      Top             =   6120
   End
   Begin VB.Timer bluecom 
      Enabled         =   0   'False
      Interval        =   10
      Left            =   720
      Top             =   5640
   End
   Begin VB.CommandButton pause 
      Caption         =   "PAUSE"
      BeginProperty Font 
         Name            =   "Old English Text MT"
         Size            =   27.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   720
      Left            =   5040
      TabIndex        =   12
      Top             =   8640
      Width           =   2415
   End
   Begin VB.PictureBox boozoka 
      Height          =   855
      Left            =   3720
      Picture         =   "objects.frx":0000
      ScaleHeight     =   795
      ScaleWidth      =   5235
      TabIndex        =   11
      Top             =   4080
      Visible         =   0   'False
      Width           =   5295
   End
   Begin VB.PictureBox missile2 
      Height          =   615
      Left            =   6840
      Picture         =   "objects.frx":165B2
      ScaleHeight     =   555
      ScaleWidth      =   2115
      TabIndex        =   10
      Top             =   4200
      Visible         =   0   'False
      Width           =   2175
   End
   Begin VB.PictureBox missile 
      Height          =   615
      Left            =   3720
      Picture         =   "objects.frx":1AB24
      ScaleHeight     =   555
      ScaleWidth      =   1995
      TabIndex        =   9
      Top             =   4200
      Visible         =   0   'False
      Width           =   2055
   End
   Begin VB.Timer kill 
      Enabled         =   0   'False
      Interval        =   10
      Left            =   6120
      Top             =   5640
   End
   Begin VB.Timer ufotime 
      Enabled         =   0   'False
      Interval        =   10
      Left            =   5520
      Top             =   5640
   End
   Begin VB.PictureBox ufo 
      Height          =   1095
      Left            =   360
      Picture         =   "objects.frx":1F096
      ScaleHeight     =   1035
      ScaleWidth      =   1995
      TabIndex        =   8
      Top             =   1440
      Visible         =   0   'False
      Width           =   2055
   End
   Begin VB.Timer Timer5 
      Enabled         =   0   'False
      Interval        =   1000
      Left            =   15360
      Top             =   4200
   End
   Begin VB.Timer Timer4 
      Enabled         =   0   'False
      Interval        =   10
      Left            =   15720
      Top             =   3120
   End
   Begin VB.Timer Timer3 
      Enabled         =   0   'False
      Interval        =   10
      Left            =   15360
      Top             =   1920
   End
   Begin VB.Timer Timer2 
      Enabled         =   0   'False
      Interval        =   10
      Left            =   14040
      Top             =   7080
   End
   Begin VB.CommandButton restart 
      Caption         =   "START"
      BeginProperty Font 
         Name            =   "Bodoni MT Poster Compressed"
         Size            =   27.75
         Charset         =   0
         Weight          =   300
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   975
      Left            =   4200
      TabIndex        =   5
      Top             =   7800
      Width           =   3975
   End
   Begin VB.CommandButton redwin 
      Caption         =   "Red Wins"
      BeginProperty Font 
         Name            =   "Papyrus"
         Size            =   24
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   975
      Left            =   720
      TabIndex        =   4
      Top             =   480
      Visible         =   0   'False
      Width           =   10215
   End
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   1
      Left            =   720
      Top             =   240
   End
   Begin VB.Shape rod 
      Height          =   255
      Left            =   1440
      Top             =   2520
      Visible         =   0   'False
      Width           =   15
   End
   Begin VB.Label ticktock 
      Alignment       =   2  'Center
      Caption         =   "30"
      BeginProperty Font 
         Name            =   "Old English Text MT"
         Size            =   36
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   11280
      TabIndex        =   7
      Top             =   600
      Visible         =   0   'False
      Width           =   1335
   End
   Begin VB.Shape projectile2 
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   10935
      Left            =   120
      Top             =   0
      Visible         =   0   'False
      Width           =   135
   End
   Begin VB.Shape projectile1 
      FillColor       =   &H00FF0000&
      FillStyle       =   0  'Solid
      Height          =   10815
      Left            =   13200
      Top             =   0
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label balltimer 
      Alignment       =   2  'Center
      Caption         =   "Ball2"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   27.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   -2400
      TabIndex        =   6
      Top             =   9600
      Width           =   2655
   End
   Begin VB.Shape ball2 
      FillStyle       =   0  'Solid
      Height          =   495
      Left            =   5760
      Shape           =   3  'Circle
      Top             =   4080
      Visible         =   0   'False
      Width           =   375
   End
   Begin VB.Label Label4 
      Alignment       =   2  'Center
      BackColor       =   &H80000014&
      Caption         =   "BLUE SCORE"
      BeginProperty Font 
         Name            =   "Californian FB"
         Size            =   26.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   9360
      TabIndex        =   3
      Top             =   7920
      Width           =   3735
   End
   Begin VB.Label Label3 
      Alignment       =   2  'Center
      BackColor       =   &H80000014&
      Caption         =   "RED SCORE"
      BeginProperty Font 
         Name            =   "Trebuchet MS"
         Size            =   26.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   120
      TabIndex        =   2
      Top             =   7920
      Width           =   3135
   End
   Begin VB.Shape ball 
      FillStyle       =   0  'Solid
      Height          =   495
      Left            =   5760
      Shape           =   3  'Circle
      Top             =   4320
      Width           =   375
   End
   Begin VB.Shape Shape2 
      Height          =   7815
      Left            =   0
      Top             =   0
      Width           =   13335
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BackColor       =   &H000000FF&
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "Arial Black"
         Size            =   20.25
         Charset         =   0
         Weight          =   900
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   735
      Left            =   3240
      TabIndex        =   1
      Top             =   7800
      Width           =   735
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BackColor       =   &H8000000D&
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "Arial Black"
         Size            =   20.25
         Charset         =   0
         Weight          =   900
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   735
      Left            =   8640
      TabIndex        =   0
      Top             =   7800
      Width           =   735
   End
   Begin VB.Shape extra 
      BorderStyle     =   0  'Transparent
      Height          =   9015
      Left            =   0
      Top             =   0
      Width           =   16455
   End
   Begin VB.Shape Shape4 
      BorderStyle     =   0  'Transparent
      FillColor       =   &H00FFFFFF&
      FillStyle       =   0  'Solid
      Height          =   12135
      Left            =   0
      Top             =   -120
      Width           =   20655
   End
   Begin VB.Shape Shape3 
      Height          =   10455
      Left            =   0
      Top             =   0
      Width           =   15
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim vx As Integer
Dim dx As Integer
Dim ax As Integer
Dim vb As Integer
Dim db As Integer
Dim p As Integer
Dim l As Integer
Dim k As Integer
Dim n As Integer
Dim u As Integer
Private Sub balltimer_Click()
ball2.Top = 4440
        ball2.Left = 5760
        ball2.Height = 495
        ball2.Width = 375
Timer2.Enabled = True
End Sub

Private Sub bluecom_Timer()
pause.Visible = False
Dim b As Integer, bh As Integer
b = Int(Rnd * 1000 + 150)
bh = Int(Rnd * 1000) Mod 2
If bh = 1 Then
If Shape1.Top + Shape1.Height <= Shape2.Top + Shape2.Height Then
Shape1.Top = Shape1.Top + b
End If
ElseIf bh = 0 Then
If Shape1.Top >= 0 Then
Shape1.Top = Shape1.Top - b
End If
End If
Dim rb As Integer, rg As Integer
rb = Int(Rnd * 100 + 50)
rg = Int(Rnd * 10000) Mod 2
If rg = 1 Then
If Shape1.Left + Shape1.Width <= Shape2.Left + Shape2.Width Then
Shape1.Left = Shape1.Left + rb
End If
ElseIf rg = 0 Then
If Shape1.Left >= 0 Then
Shape1.Left = Shape1.Left - rb
End If
End If
If GetAsyncKeyState(vbKeyW) Then
If wall.Top > 0 Then
wall.Top = wall.Top - 250
End If
ElseIf GetAsyncKeyState(vbKeyS) Then
If wall.Top + wall.Height < Shape2.Top + Shape2.Height Then
wall.Top = wall.Top + 250
End If
ElseIf GetAsyncKeyState(vbKeyA) Then
If wall.Left > 0 Then
wall.Left = wall.Left - 100
End If
ElseIf GetAsyncKeyState(vbKeyD) Then
If wall.Left + wall.Width < Shape2.Left + Shape2.Width Then
wall.Left = wall.Left + 100
End If
End If

ball.Left = ball.Left + vx
ball.Top = ball.Top - dx
    If ball.Top <= wall.Top + wall.Height Then     'from bottom
    If ball.Left <= wall.Left + wall.Width Then  'from right
        If ball.Top + ball.Height >= wall.Top Then  'from top
            If ball.Left + ball.Width >= wall.Left Then 'from left
vx = -vx
End If
End If
End If
End If
 If ball.Top <= Shape1.Top + Shape1.Height Then     'from bottom
    If ball.Left <= Shape1.Left + Shape1.Width Then  'from right
        If ball.Top + ball.Height >= Shape1.Top Then  'from top
            If ball.Left + ball.Width >= Shape1.Left Then 'from left
vx = -vx
End If
End If
End If
End If
    If ball.Left = Shape2.Left Then
    vx = -vx
    MsgBox "Red lost"
    Label2.Caption = Label2.Caption + 1
    End If
If ball.Top = 0 Then
dx = -dx
End If
If ball.Top + ball.Height = Shape2.Top + Shape2.Height Then
dx = -dx
End If
If ball.Left + ball.Width = Shape2.Width Then
vx = -vx
Label1.Caption = Label1.Caption + 1
End If
If ball.Top + ball.Height = extra.Top + extra.Height Then
dx = -dx
End If
                If ball.Left = extra.Left Then
                vx = -vx
                End If
                If ball.Left + ball.Width = extra.Left + extra.Width Then
                vx = -vx
                End If
If ball.Top <= Shape3.Top + Shape3.Height Then     'from bottom
    If ball.Left <= Shape3.Left + Shape3.Width Then  'from right
        If ball.Top + ball.Height >= Shape3.Top Then  'from top
            If ball.Left + ball.Width >= Shape3.Left Then 'from left
vx = -vx
Label2.Caption = Label2.Caption + 1
End If
End If
End If
End If
If Label1.Caption = 20 Then
If Label2.Caption < 20 Then
redwin.Visible = True
redwin.Caption = Form2.redname.Text + " Wins"
End If
ElseIf Label2.Caption = 20 Then
If Label1.Caption < 20 Then
redwin.Caption = "Comp Wins"
redwin.Visible = True
End If
ElseIf Label1.Caption = Label2.Caption + 30 Then
redwin.Caption = Form2.redname.Text + " just killed Comp"
redwin.Visible = True
If GetAsyncKeyState(vbKeyO) Then
projectile2.Visible = True
Timer4.Enabled = True
End If
ElseIf Label2.Caption = Label1.Caption + 30 Then
redwin.Caption = "Comp just killed " + Form2.redname.Text
 redwin.Visible = True
projectile1.Visible = True
Timer3.Enabled = True
ElseIf Label1.Caption = Label2.Caption + 70 Then
redwin.Caption = Form2.redname.Text + " is on a KILLLING SPREE!!"
redwin.Visible = True
ElseIf Label2.Caption = Label1.Caption + 70 Then
redwin.Caption = "Comp is on a KILLLING SPREE!!"
redwin.Visible = True
End If
If Shape1.Top <= wall.Top + wall.Height Then     'from bottom
If Shape1.Left <= wall.Left + wall.Width Then  'from right
        If Shape1.Top + Shape1.Height >= wall.Top Then  'from top
            If Shape1.Left + Shape1.Width >= wall.Left Then 'from left
Shape1.Top = 3240
    Shape1.Left = 12840
    Shape1.Height = 2655
    Shape1.Width = 135
End If
End If
End If
End If
If ball.Top >= Shape2.Top + Shape2.Height Then     'from bottom
      If ball.Top + ball.Height <= Shape2.Top Then  'from top
            dx = -dx
            End If
            End If
            If ball.Left <= Shape2.Left Then 'from left
                If ball.Left >= Shape2.Left + Shape2.Width Then  'from right
                vx = -vx
                End If
                End If
                If wall.Top <= Shape1.Top + Shape1.Height Then     'from bottom
    If wall.Left <= Shape1.Left + Shape1.Width Then  'from right
        If wall.Top + wall.Height >= Shape1.Top Then  'from top
            If wall.Left + wall.Width >= Shape1.Left Then 'from left
wall.Top = 2640
wall.Left = 120
wall.Height = 2655
wall.Width = 135
End If
End If
End If
End If
redwin.Left = redwin.Left + ax
If redwin.Left + redwin.Width = Shape2.Left + Shape2.Width Then
ax = -ax
ElseIf redwin.Left = 0 Then
ax = -ax
End If
balltimer.Left = balltimer.Left + 100
If balltimer.Left + balltimer.Width = Shape4.Left + Shape4.Width Then
balltimer.Left = -2400
End If
If Label1.Caption = Label2.Caption Then
Timer5.Enabled = True
End If
If GetAsyncKeyState(vbKeyQ) Then
If GetAsyncKeyState(vbKeyZ) Then
If GetAsyncKeyState(vbKeyX) Then
ufo.Visible = True
End If
End If
End If
If GetAsyncKeyState(vbKeyE) Then
If GetAsyncKeyState(vbKeyF) Then
If GetAsyncKeyState(vbKeyC) Then
boozoka.Visible = True
End If
End If
End If
End Sub

Private Sub boozoka_Click()
kill.Enabled = True
End Sub
Private Sub Form_Load()
boozoka.Visible = False
vx = -400
dx = 30
vb = -200
db = 30
ax = 30
p = 400
l = 200
k = 100
n = 400
u = 200
missile.Left = boozoka.Left
rod.Top = ufo.Top
Form2.Visible = False
Form2.Enabled = False
If form3.Blue.Value = Checked Then
vx = -350
pause.Visible = False
redcom.Enabled = True
bluecom.Enabled = False
Timer1.Enabled = False
ElseIf form3.red.Value = Checked Then
vx = -350
pause.Visible = False
redcom.Enabled = False
bluecom.Enabled = True
Timer1.Enabled = False
ElseIf form3.red.Value = Unchecked Then
If form3.Blue.Value = Unchecked Then
redcom.Enabled = False
bluecom.Enabled = False
Timer1.Enabled = True
End If
End If
End Sub

Private Sub pause_Click()
If Timer1.Enabled = True Then
Timer1.Enabled = False
redcom.Enabled = False
bluecom.Enabled = False
pause.Caption = "PLAY"
ElseIf Timer1.Enabled = False Then
Timer1.Enabled = True
redcom.Enabled = False
bluecom.Enabled = False
pause.Caption = "PAUSE"
End If
End Sub

Private Sub redcom_Timer()
pause.Visible = False
If GetAsyncKeyState(vbKeyUp) Then
If Shape1.Top > 0 Then
Shape1.Top = Shape1.Top - 250
End If
ElseIf GetAsyncKeyState(vbKeyDown) Then
If Shape1.Top + Shape1.Height < Shape2.Top + Shape2.Height Then
Shape1.Top = Shape1.Top + 250
End If
ElseIf GetAsyncKeyState(vbKeyLeft) Then
If Shape1.Left >= 0 Then
Shape1.Left = Shape1.Left - 100
End If
ElseIf GetAsyncKeyState(vbKeyRight) Then
If Shape1.Left + Shape1.Width < Shape2.Left + Shape2.Width Then
Shape1.Left = Shape1.Left + 100
End If
End If
Dim b As Integer, bh As Integer
b = Int(Rnd * 1000 + 150)
bh = Int(Rnd * 1000) Mod 2
If bh = 1 Then
If wall.Top + wall.Height <= Shape2.Top + Shape2.Height Then
wall.Top = wall.Top + b
End If
ElseIf bh = 0 Then
If wall.Top >= 0 Then
wall.Top = wall.Top - b
End If
End If
Dim rb As Integer, rg As Integer
rb = Int(Rnd * 100 + 50)
rg = Int(Rnd * 10000) Mod 2
If rg = 1 Then
If wall.Left + wall.Width <= Shape2.Left + Shape2.Width Then
wall.Left = wall.Left + rb
End If
ElseIf rg = 0 Then
If wall.Left >= 0 Then
wall.Left = wall.Left - rb
End If
End If


ball.Left = ball.Left + vx
ball.Top = ball.Top - dx
    If ball.Top <= wall.Top + wall.Height Then     'from bottom
    If ball.Left <= wall.Left + wall.Width Then  'from right
        If ball.Top + ball.Height >= wall.Top Then  'from top
            If ball.Left + ball.Width >= wall.Left Then 'from left
vx = -vx
End If
End If
End If
End If
 If ball.Top <= Shape1.Top + Shape1.Height Then     'from bottom
    If ball.Left <= Shape1.Left + Shape1.Width Then  'from right
        If ball.Top + ball.Height >= Shape1.Top Then  'from top
            If ball.Left + ball.Width >= Shape1.Left Then 'from left
vx = -vx
End If
End If
End If
End If
    If ball.Left = Shape2.Left Then
    vx = -vx
    MsgBox "Red lost"
    Label2.Caption = Label2.Caption + 1
    End If
If ball.Top = 0 Then
dx = -dx
End If
If ball.Top + ball.Height = Shape2.Top + Shape2.Height Then
dx = -dx
End If
If ball.Left + ball.Width = Shape2.Width Then
vx = -vx
Label1.Caption = Label1.Caption + 1
End If
If ball.Top + ball.Height = extra.Top + extra.Height Then
dx = -dx
End If
                If ball.Left = extra.Left Then
                vx = -vx
                End If
                If ball.Left + ball.Width = extra.Left + extra.Width Then
                vx = -vx
                End If
If ball.Top <= Shape3.Top + Shape3.Height Then     'from bottom
    If ball.Left <= Shape3.Left + Shape3.Width Then  'from right
        If ball.Top + ball.Height >= Shape3.Top Then  'from top
            If ball.Left + ball.Width >= Shape3.Left Then 'from left
vx = -vx
Label2.Caption = Label2.Caption + 1
End If
End If
End If
End If
If Label1.Caption = 20 Then
If Label2.Caption < 20 Then
redwin.Visible = True
redwin.Caption = "Comp Wins"
End If
ElseIf Label2.Caption = 20 Then
If Label1.Caption < 20 Then
redwin.Caption = Form2.bluename.Text + " Wins"
redwin.Visible = True
End If
ElseIf Label1.Caption = Label2.Caption + 30 Then
redwin.Caption = "Comp just killed " + Form2.bluename.Text
redwin.Visible = True
projectile2.Visible = True
Timer4.Enabled = True
ElseIf Label2.Caption = Label1.Caption + 30 Then
redwin.Caption = Form2.bluename.Text + " just killed Comp"
 redwin.Visible = True
If GetAsyncKeyState(vbKeyP) Then
projectile1.Visible = True
Timer3.Enabled = True
End If
ElseIf Label1.Caption = Label2.Caption + 70 Then
redwin.Caption = "Comp is on a KILLLING SPREE!!"
redwin.Visible = True
ElseIf Label2.Caption = Label1.Caption + 70 Then
redwin.Caption = Form2.bluename.Text + " is on a KILLLING SPREE!!"
redwin.Visible = True
End If
If Shape1.Top <= wall.Top + wall.Height Then     'from bottom
If Shape1.Left <= wall.Left + wall.Width Then  'from right
        If Shape1.Top + Shape1.Height >= wall.Top Then  'from top
            If Shape1.Left + Shape1.Width >= wall.Left Then 'from left
Shape1.Top = 3240
    Shape1.Left = 12840
    Shape1.Height = 2655
    Shape1.Width = 135
End If
End If
End If
End If
If ball.Top >= Shape2.Top + Shape2.Height Then     'from bottom
      If ball.Top + ball.Height <= Shape2.Top Then  'from top
            dx = -dx
            End If
            End If
            If ball.Left <= Shape2.Left Then 'from left
                If ball.Left >= Shape2.Left + Shape2.Width Then  'from right
                vx = -vx
                End If
                End If
                If wall.Top <= Shape1.Top + Shape1.Height Then     'from bottom
    If wall.Left <= Shape1.Left + Shape1.Width Then  'from right
        If wall.Top + wall.Height >= Shape1.Top Then  'from top
            If wall.Left + wall.Width >= Shape1.Left Then 'from left
wall.Top = 2640
wall.Left = 120
wall.Height = 2655
wall.Width = 135
End If
End If
End If
End If
redwin.Left = redwin.Left + ax
If redwin.Left + redwin.Width = Shape2.Left + Shape2.Width Then
ax = -ax
ElseIf redwin.Left = 0 Then
ax = -ax
End If
balltimer.Left = balltimer.Left + 100
If balltimer.Left + balltimer.Width = Shape4.Left + Shape4.Width Then
balltimer.Left = -2400
End If
If Label1.Caption = Label2.Caption Then
Timer5.Enabled = True
End If
If GetAsyncKeyState(vbKeyQ) Then
If GetAsyncKeyState(vbKeyZ) Then
If GetAsyncKeyState(vbKeyX) Then
ufo.Visible = True
End If
End If
End If
If GetAsyncKeyState(vbKeyE) Then
If GetAsyncKeyState(vbKeyF) Then
If GetAsyncKeyState(vbKeyC) Then
boozoka.Visible = True
End If
End If
End If
End Sub

Private Sub redwin_Click()
End
End Sub

Private Sub restart_Click()
restart.Caption = "RESTART"
If Form2.redleft.Value = Checked Then
wall.Top = 2640
wall.Left = 120
wall.Height = 2655
wall.Width = 135
    Shape1.Top = 3240
    Shape1.Left = 12840
    Shape1.Height = 2655
    Shape1.Width = 135
        ball.Top = 4440
        ball.Left = 5760
        ball.Height = 495
        ball.Width = 375
        ball2.Top = 4440
        ball2.Left = 5760
        ball2.Height = 495
        ball2.Width = 375
        ball2.Visible = False
            Label1.Caption = 0
            Label2.Caption = 0
            redwin.Visible = False
            Timer2.Enabled = False
                projectile2.Left = 120
                projectile2.Width = 135
                projectile2.Visible = False
                    projectile1.Left = 13200
                    projectile1.Width = 135
                    projectile1.Visible = False
                    wall.Visible = True
                    Shape1.Visible = True
                    Timer3.Enabled = False
                    Timer4.Enabled = False
                    redwin.Caption = "..."
                    ufotime.Enabled = False
                        ufo.Left = 0
                        ufo.Visible = False
                        rod.Visible = False
                        ufotime.Enabled = False
                        rod.Top = ufo.Top
                            kill.Enabled = False
                            boozoka.Visible = False
                            missile.Left = boozoka.Left
                            missile.Top = boozoka.Top
                            missile.Visible = False
                            missile2.Left = boozoka.Left + boozoka.Width
                            missile2.Top = boozoka.Top
                            missile2.Visible = False
                            ticktock.Caption = 30
ElseIf Form2.blueleft.Value = Checked Then
wall.Top = 2640
wall.Left = 13080
wall.Height = 2655
wall.Width = 135
    Shape1.Top = 3240
    Shape1.Left = 120
    Shape1.Height = 2655
    Shape1.Width = 135
        ball.Top = 4440
        ball.Left = 5760
        ball.Height = 495
        ball.Width = 375
        ball2.Top = 4440
        ball2.Left = 5760
        ball2.Height = 495
        ball2.Width = 375
        ball2.Visible = False
            Label1.Caption = 0
            Label2.Caption = 0
            redwin.Visible = False
            Timer2.Enabled = False
                projectile2.Left = 13200
                projectile2.Width = 135
                projectile2.Visible = False
                   projectile1.Left = 110
                    projectile1.Width = 135
                    projectile1.Visible = False
                    wall.Visible = True
                    Shape1.Visible = True
                    Timer3.Enabled = False
                    Timer4.Enabled = False
                    redwin.Caption = "..."
                    ufotime.Enabled = False
                        ufo.Left = Shape2.Width - ufo.Width
                        ufo.Visible = False
                        rod.Visible = False
                        ufotime.Enabled = False
                        rod.Top = ufo.Top
                            kill.Enabled = False
                            boozoka.Visible = False
                            missile.Left = boozoka.Left
                            missile.Top = boozoka.Top
                            missile.Visible = False
                            missile2.Left = boozoka.Left + boozoka.Width
                            missile2.Top = boozoka.Top
                            missile2.Visible = False
End If
End Sub

Private Sub Timer1_Timer()
If GetAsyncKeyState(vbKeyUp) Then
If Shape1.Top > 0 Then
Shape1.Top = Shape1.Top - 250
End If
ElseIf GetAsyncKeyState(vbKeyDown) Then
If Shape1.Top + Shape1.Height < Shape2.Top + Shape2.Height Then
Shape1.Top = Shape1.Top + 250
End If
ElseIf GetAsyncKeyState(vbKeyLeft) Then
If Shape1.Left >= 0 Then
Shape1.Left = Shape1.Left - 100
End If
ElseIf GetAsyncKeyState(vbKeyRight) Then
If Shape1.Left + Shape1.Width < Shape2.Left + Shape2.Width Then
Shape1.Left = Shape1.Left + 100
End If
ElseIf GetAsyncKeyState(vbKeyH) Then
If Shape1.Height <= 5175 Then
Shape1.Height = Shape1.Height + 100
End If
ElseIf GetAsyncKeyState(vbKeyJ) Then
If Shape1.Height >= 150 Then
Shape1.Height = Shape1.Height - 100
End If
ElseIf GetAsyncKeyState(vbKeyK) Then
If Shape1.Width <= 9975 Then
Shape1.Width = Shape1.Width + 100
End If
ElseIf GetAsyncKeyState(vbKeyL) Then
If Shape1.Width >= 25 Then
Shape1.Width = Shape1.Width - 20
End If
End If
If GetAsyncKeyState(vbKeyW) Then
If wall.Top > 0 Then
wall.Top = wall.Top - 250
End If
ElseIf GetAsyncKeyState(vbKeyS) Then
If wall.Top + wall.Height < Shape2.Top + Shape2.Height Then
wall.Top = wall.Top + 250
End If
ElseIf GetAsyncKeyState(vbKeyA) Then
If wall.Left > 0 Then
wall.Left = wall.Left - 100
End If
ElseIf GetAsyncKeyState(vbKeyD) Then
If wall.Left + wall.Width < Shape2.Left + Shape2.Width Then
wall.Left = wall.Left + 100
End If
ElseIf GetAsyncKeyState(vbKeyV) Then
If wall.Height <= 5175 Then
wall.Height = wall.Height + 100
End If
ElseIf GetAsyncKeyState(vbKeyB) Then
If wall.Height >= 150 Then
wall.Height = wall.Height - 100
End If
ElseIf GetAsyncKeyState(vbKeyN) Then
If wall.Width <= 9975 Then
wall.Width = wall.Width + 100
End If
ElseIf GetAsyncKeyState(vbKeyM) Then
If wall.Width >= 25 Then
wall.Width = wall.Width - 20
End If
End If

ball.Left = ball.Left + vx
ball.Top = ball.Top - dx
    If ball.Top <= wall.Top + wall.Height Then     'from bottom
    If ball.Left <= wall.Left + wall.Width Then  'from right
        If ball.Top + ball.Height >= wall.Top Then  'from top
            If ball.Left + ball.Width >= wall.Left Then 'from left
vx = -vx
End If
End If
End If
End If
 If ball.Top <= Shape1.Top + Shape1.Height Then     'from bottom
    If ball.Left <= Shape1.Left + Shape1.Width Then  'from right
        If ball.Top + ball.Height >= Shape1.Top Then  'from top
            If ball.Left + ball.Width >= Shape1.Left Then 'from left
vx = -vx
End If
End If
End If
End If
    If ball.Left = Shape2.Left Then
    vx = -vx
    MsgBox "Red lost"
    Label2.Caption = Label2.Caption + 1
    End If
If ball.Top = 0 Then
dx = -dx
End If
If ball.Top + ball.Height = Shape2.Top + Shape2.Height Then
dx = -dx
End If
If ball.Left + ball.Width = Shape2.Width Then
vx = -vx
Label1.Caption = Label1.Caption + 1
End If
If ball.Top + ball.Height = extra.Top + extra.Height Then
dx = -dx
End If
                If ball.Left = extra.Left Then
                vx = -vx
                End If
                If ball.Left + ball.Width = extra.Left + extra.Width Then
                vx = -vx
                End If
If ball.Top <= Shape3.Top + Shape3.Height Then     'from bottom
    If ball.Left <= Shape3.Left + Shape3.Width Then  'from right
        If ball.Top + ball.Height >= Shape3.Top Then  'from top
            If ball.Left + ball.Width >= Shape3.Left Then 'from left
vx = -vx
Label2.Caption = Label2.Caption + 1
End If
End If
End If
End If
If form3.red.Value = Unchecked Then
If form3.Blue.Value = Unchecked Then
If Label1.Caption = 20 Then
If Label2.Caption < 20 Then
redwin.Visible = True
redwin.Caption = Form2.redname.Text + " Wins"
End If
ElseIf Label2.Caption = 20 Then
If Label1.Caption < 20 Then
redwin.Caption = Form2.bluename.Text + " Wins"
redwin.Visible = True
End If
ElseIf Label1.Caption = Label2.Caption + 30 Then
redwin.Caption = Form2.redname.Text + " just killed " + Form2.bluename.Text
redwin.Visible = True
If GetAsyncKeyState(vbKeyO) Then
projectile2.Visible = True
Timer4.Enabled = True
End If
ElseIf Label2.Caption = Label1.Caption + 30 Then
redwin.Caption = Form2.bluename.Text + " just killed " + Form2.redname.Text
 redwin.Visible = True
If GetAsyncKeyState(vbKeyP) Then
projectile1.Visible = True
Timer3.Enabled = True
End If
ElseIf Label1.Caption = Label2.Caption + 70 Then
redwin.Caption = Form2.redname.Text + " is on a KILLLING SPREE!!"
redwin.Visible = True
ElseIf Label2.Caption = Label1.Caption + 70 Then
redwin.Caption = Form2.bluename.Text + " is on a KILLLING SPREE!!"
redwin.Visible = True
End If
If Shape1.Top <= wall.Top + wall.Height Then     'from bottom
If Shape1.Left <= wall.Left + wall.Width Then  'from right
        If Shape1.Top + Shape1.Height >= wall.Top Then  'from top
            If Shape1.Left + Shape1.Width >= wall.Left Then 'from left
Shape1.Top = 3240
    Shape1.Left = 12840
    Shape1.Height = 2655
    Shape1.Width = 135
End If
End If
End If
End If
End If
End If
If ball.Top >= Shape2.Top + Shape2.Height Then     'from bottom
      If ball.Top + ball.Height <= Shape2.Top Then  'from top
            dx = -dx
            End If
            End If
            If ball.Left <= Shape2.Left Then 'from left
                If ball.Left >= Shape2.Left + Shape2.Width Then  'from right
                vx = -vx
                End If
                End If
                If wall.Top <= Shape1.Top + Shape1.Height Then     'from bottom
    If wall.Left <= Shape1.Left + Shape1.Width Then  'from right
        If wall.Top + wall.Height >= Shape1.Top Then  'from top
            If wall.Left + wall.Width >= Shape1.Left Then 'from left
wall.Top = 2640
wall.Left = 120
wall.Height = 2655
wall.Width = 135
End If
End If
End If
End If
redwin.Left = redwin.Left + ax
If redwin.Left + redwin.Width = Shape2.Left + Shape2.Width Then
ax = -ax
ElseIf redwin.Left = 0 Then
ax = -ax
End If
balltimer.Left = balltimer.Left + 100
If balltimer.Left + balltimer.Width = Shape4.Left + Shape4.Width Then
balltimer.Left = -2400
End If
If Label1.Caption = Label2.Caption Then
Timer5.Enabled = True
End If
If GetAsyncKeyState(vbKeyQ) Then
If GetAsyncKeyState(vbKeyZ) Then
If GetAsyncKeyState(vbKeyX) Then
ufo.Visible = True
End If
End If
End If
If GetAsyncKeyState(vbKeyE) Then
If GetAsyncKeyState(vbKeyF) Then
If GetAsyncKeyState(vbKeyC) Then
boozoka.Visible = True
End If
End If
End If
End Sub
  

Private Sub Timer2_Timer()

ball2.Visible = True
ball2.Left = ball2.Left + vb
ball2.Top = ball2.Top - db
If ball2.Top <= wall.Top + wall.Height Then     'from bottom
    If ball2.Left <= wall.Left + wall.Width Then  'from right
        If ball2.Top + ball2.Height >= wall.Top Then  'from top
            If ball2.Left + ball2.Width >= wall.Left Then 'from left
vb = -vb
End If
End If
End If
End If
 If ball2.Top <= Shape1.Top + Shape1.Height Then     'from bottom
    If ball2.Left <= Shape1.Left + Shape1.Width Then  'from right
        If ball2.Top + ball2.Height >= Shape1.Top Then  'from top
            If ball2.Left + ball2.Width >= Shape1.Left Then 'from left
vb = -vb
End If
End If
End If
End If
If ball2.Left <= Shape2.Left Then
vb = -vb
Label2.Caption = Label2.Caption + 1
ElseIf ball2.Left + ball2.Width >= Shape2.Left + Shape2.Width Then
vb = -vb
Label1.Caption = Label1.Caption + 1
ElseIf ball2.Top <= 0 Then
db = -db
ElseIf ball2.Top + ball2.Height >= Shape2.Top + Shape2.Height Then
db = -db
End If
End Sub

Private Sub Timer3_Timer()
If projectile1.Top <= wall.Top + wall.Height Then     'from bottom
    If projectile1.Left <= wall.Left + wall.Width Then  'from right
        If projectile1.Top + projectile1.Height >= wall.Top Then  'from top
            If projectile1.Left + projectile1.Width >= wall.Left Then 'from left
wall.Visible = False
wall.Left = 20640
End If
End If
End If
End If
projectile1.Left = projectile1.Left - n
End Sub

Private Sub Timer4_Timer()
If projectile2.Top <= Shape1.Top + Shape1.Height Then     'from bottom
    If projectile2.Left <= Shape1.Left + Shape1.Width Then  'from right
        If projectile2.Top + projectile2.Height >= Shape1.Top Then  'from top
            If projectile2.Left + projectile2.Width >= Shape1.Left Then 'from left

Shape1.Visible = False
Shape1.Left = 20640
End If
End If
End If
End If
 projectile2.Width = projectile2.Width + p
If projectile2.Left + projectile2.Width >= Shape1.Left + Shape1.Width Then
p = -p
ElseIf projectile2.Width <= 150 Then
p = 0
projectile2.Visible = False
 End If
End Sub
Private Sub Timer5_Timer()
If Label1.Caption = Label2.Caption Then
ticktock.Visible = True
ticktock.Caption = ticktock.Caption - 1
End If
If ticktock.Caption <= 0 Then
redwin.Visible = True
redwin.Caption = "Draw"
ticktock.Visible = False
ElseIf Label1.Caption <> Label2.Caption Then
ticktock.Visible = False
ticktock.Caption = 30
End If
End Sub

Private Sub ufo_Click()
ufotime.Enabled = True
End Sub

Private Sub ufotime_Timer()
rod.Visible = True
rod.Top = ufo.Top + ufo.Height
rod.Left = Shape1.Left + 0.5 * Shape1.Width
If ufo.Left + 0.5 * ufo.Width < Shape1.Left + Shape1.Width Then
ufo.Left = ufo.Left + u
ElseIf ufo.Left + 0.5 * ufo.Width >= Shape1.Left + Shape1.Width Then
rod.Height = rod.Height + l
End If
If rod.Top <= Shape1.Top + Shape1.Height Then     'from bottom
    If rod.Left <= Shape1.Left + Shape1.Width Then  'from right
        If rod.Top + rod.Height >= Shape1.Top Then  'from top
            If rod.Left + rod.Width >= Shape1.Left Then 'from left
            l = 0
ufo.Left = ufo.Left + u
rod.Left = rod.Left + 200
Shape1.Left = Shape1.Left + u
End If
End If
End If
End If
End Sub
Private Sub kill_Timer()
missile.Top = wall.Top + 0.5 * wall.Height
boozoka.Top = wall.Top + 0.5 * wall.Height
missile2.Top = wall.Top + 0.5 * wall.Height
If wall.Left < boozoka.Left Then
boozoka.Left = Shape2.Width - boozoka.Width
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
End Sub

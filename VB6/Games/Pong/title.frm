VERSION 5.00
Begin VB.Form Form3 
   Caption         =   "Form3"
   ClientHeight    =   9345
   ClientLeft      =   120
   ClientTop       =   420
   ClientWidth     =   14100
   LinkTopic       =   "Form3"
   ScaleHeight     =   9345
   ScaleWidth      =   14100
   StartUpPosition =   3  'Windows Default
   Begin VB.CheckBox Blue 
      Caption         =   "Blue"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   21.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   9960
      TabIndex        =   9
      Top             =   8160
      Visible         =   0   'False
      Width           =   1335
   End
   Begin VB.CheckBox red 
      Caption         =   "Red "
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   21.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   9960
      TabIndex        =   8
      Top             =   7320
      Visible         =   0   'False
      Width           =   1335
   End
   Begin VB.CommandButton submit 
      Caption         =   "Submit"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   2040
      TabIndex        =   7
      Top             =   2640
      Width           =   1455
   End
   Begin VB.TextBox pass 
      BeginProperty Font 
         Name            =   "Parchment"
         Size            =   30
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   585
      Left            =   0
      MaxLength       =   25
      TabIndex        =   5
      Top             =   2760
      Width           =   2055
   End
   Begin VB.CommandButton cheat 
      Caption         =   "Cheats"
      BeginProperty Font 
         Name            =   "Old English Text MT"
         Size            =   36
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2535
      Left            =   240
      TabIndex        =   4
      Top             =   3600
      Visible         =   0   'False
      Width           =   3135
   End
   Begin VB.CommandButton multi 
      Caption         =   "1P VS 2P"
      BeginProperty Font 
         Name            =   "OCR-B 10 BT"
         Size            =   27.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1335
      Left            =   3120
      TabIndex        =   3
      Top             =   7440
      Width           =   3135
   End
   Begin VB.CommandButton single 
      Caption         =   "1P VS Com"
      BeginProperty Font 
         Name            =   "OCR-B 10 BT"
         Size            =   27.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1335
      Left            =   6720
      TabIndex        =   2
      Top             =   7440
      Width           =   3135
   End
   Begin VB.CommandButton Command1 
      Caption         =   "1P VS 2P"
      BeginProperty Font 
         Name            =   "MV Boli"
         Size            =   27.75
         Charset         =   1
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1335
      Left            =   -3120
      TabIndex        =   1
      Top             =   7440
      Width           =   2895
   End
   Begin VB.Timer Timer1 
      Interval        =   6
      Left            =   7800
      Top             =   4680
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      Caption         =   "Password"
      BeginProperty Font 
         Name            =   "Papyrus"
         Size            =   21.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   120
      TabIndex        =   6
      Top             =   2040
      Width           =   2055
   End
   Begin VB.Shape balls 
      FillColor       =   &H00FFFFFF&
      FillStyle       =   0  'Solid
      Height          =   255
      Left            =   6360
      Shape           =   3  'Circle
      Top             =   5040
      Width           =   255
   End
   Begin VB.Shape paddle2 
      FillColor       =   &H00FFFFFF&
      FillStyle       =   0  'Solid
      Height          =   2055
      Left            =   10680
      Top             =   3480
      Width           =   135
   End
   Begin VB.Shape paddle 
      FillColor       =   &H00FFFFFF&
      FillStyle       =   0  'Solid
      Height          =   2055
      Left            =   3600
      Top             =   3000
      Width           =   135
   End
   Begin VB.Shape limit 
      FillStyle       =   0  'Solid
      Height          =   4935
      Left            =   3480
      Top             =   2160
      Width           =   7455
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      Caption         =   "Pong"
      BeginProperty Font 
         Name            =   "Old English Text MT"
         Size            =   72
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1815
      Left            =   4680
      TabIndex        =   0
      Top             =   120
      Width           =   5655
   End
End
Attribute VB_Name = "form3"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim u As Integer
Dim d As Integer
Dim h As Integer
Dim v As Integer

Private Sub cheat_Click()
form3.Visible = False
Form4.Visible = True
Form4.Enabled = True
form3.Enabled = False
End Sub

Private Sub Form_Load()
Form2.Visible = False
Form2.Enabled = False
u = 45
d = 50
v = 75
h = 20
cheat.Visible = False
End Sub

Private Sub multi_Click()
form3.Visible = False
Form2.Visible = True
Form2.Enabled = True
form3.Enabled = False
End Sub

Private Sub single_Click()
red.Visible = True
Blue.Visible = True
End Sub

Private Sub submit_Click()
If pass.Text = "this game rocks" Then
submit.Visible = False
pass.Visible = False
Label2.Visible = False
cheat.Visible = True
ElseIf pass.Text = "this game is cool" Then
submit.Visible = False
pass.Visible = False
Label2.Visible = False
cheat.Visible = True
ElseIf pass.Text = "hamza is a pathan" Then
submit.Visible = False
pass.Visible = False
Label2.Visible = False
cheat.Visible = True
End If
End Sub

Private Sub Timer1_Timer()
paddle.Top = paddle.Top - u
paddle2.Top = paddle2.Top + d
balls.Top = balls.Top + h
balls.Left = balls.Left - v
If paddle.Top <= limit.Top Then
u = -u
ElseIf paddle.Top + paddle.Height >= limit.Top + limit.Height Then
u = -u
End If
If paddle2.Top <= limit.Top Then
d = -d
ElseIf paddle2.Top + paddle2.Height >= limit.Top + limit.Height Then
d = -d
End If
If balls.Top <= limit.Top Then
h = -h
ElseIf balls.Top + balls.Height >= limit.Top + limit.Height Then
h = -h
End If
If balls.Left <= limit.Left Then
v = -v
ElseIf balls.Left + balls.Width >= limit.Left + limit.Width Then
v = -v
End If
If balls.Top <= paddle.Top + paddle.Height Then     'from bottom
    If balls.Left <= paddle.Left + paddle.Width Then  'from right
        If balls.Top + balls.Height >= paddle.Top Then  'from top
            If balls.Left + balls.Width >= paddle.Left Then 'from left
v = -v
End If
End If
End If
End If
If balls.Top <= paddle2.Top + paddle2.Height Then     'from bottom
    If balls.Left <= paddle2.Left + paddle2.Width Then  'from right
        If balls.Top + balls.Height >= paddle2.Top Then  'from top
            If balls.Left + balls.Width >= paddle2.Left Then 'from left
v = -v
End If
End If
End If
End If
Label1.Left = Label1.Left - 50
If Label1.Left <= -5160 Then
Label1.Left = 12840
End If
If red.Value = Checked Then
Blue.Visible = False
Form1.bluecom.Enabled = True
Form2.Label2.Visible = False
Form2.Label3.Visible = True
Form2.difficulty.Visible = True
form3.Visible = False
Form2.Visible = True
Form2.Enabled = True
form3.Enabled = False
Form2.bluename.Visible = False
Form2.Shape1.Visible = False
Form2.blueleft.Visible = False
Form2.blueright.Visible = False
ElseIf Blue.Value = Checked Then
red.Visible = False
Form1.redcom.Enabled = True
Form2.Label1.Visible = False
Form2.Label3.Visible = True
Form2.difficulty.Visible = True
form3.Visible = False
Form2.Visible = True
Form2.Enabled = True
form3.Enabled = False
Form2.redname.Visible = False
Form2.wall.Visible = False
Form2.redleft.Visible = False
Form2.redright.Visible = False
End If
End Sub

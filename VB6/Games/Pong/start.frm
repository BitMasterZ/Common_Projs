VERSION 5.00
Begin VB.Form Form2 
   Caption         =   "Form2"
   ClientHeight    =   9330
   ClientLeft      =   120
   ClientTop       =   420
   ClientWidth     =   14505
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   9330
   ScaleWidth      =   14505
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox difficulty 
      BeginProperty Font 
         Name            =   "Parchment"
         Size            =   36
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   720
      Left            =   8640
      TabIndex        =   10
      Text            =   "easy,normal or insane"
      Top             =   4440
      Visible         =   0   'False
      Width           =   3255
   End
   Begin VB.Timer Timer1 
      Interval        =   1
      Left            =   120
      Top             =   1320
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Start"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   72
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2055
      Left            =   8400
      TabIndex        =   8
      Top             =   1200
      Width           =   4335
   End
   Begin VB.CheckBox blueright 
      Caption         =   "Right side "
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
      Left            =   4800
      TabIndex        =   7
      Top             =   4800
      Width           =   2535
   End
   Begin VB.CheckBox blueleft 
      Caption         =   "Left side "
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
      Left            =   2160
      TabIndex        =   6
      Top             =   4800
      Width           =   2175
   End
   Begin VB.TextBox bluename 
      BeginProperty Font 
         Name            =   "Old English Text MT"
         Size            =   21.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   720
      Left            =   3960
      TabIndex        =   5
      Top             =   3360
      Width           =   2655
   End
   Begin VB.CheckBox redright 
      Caption         =   "Right side "
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
      Left            =   4920
      TabIndex        =   3
      Top             =   1920
      Width           =   2415
   End
   Begin VB.CheckBox redleft 
      Caption         =   "Left side "
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   21.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   975
      Left            =   2400
      TabIndex        =   2
      Top             =   1920
      Width           =   2055
   End
   Begin VB.TextBox redname 
      BeginProperty Font 
         Name            =   "Old English Text MT"
         Size            =   21.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   720
      Left            =   3960
      TabIndex        =   1
      Top             =   600
      Width           =   2655
   End
   Begin VB.Label Label3 
      Alignment       =   2  'Center
      Caption         =   "Difficulty "
      BeginProperty Font 
         Name            =   "Papyrus"
         Size            =   20.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   8640
      TabIndex        =   9
      Top             =   3720
      Visible         =   0   'False
      Width           =   1815
   End
   Begin VB.Label Label2 
      Caption         =   "Player name"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   1680
      TabIndex        =   4
      Top             =   3480
      Width           =   2175
   End
   Begin VB.Shape Shape1 
      FillColor       =   &H00FF0000&
      FillStyle       =   0  'Solid
      Height          =   2655
      Left            =   1080
      Top             =   3480
      Width           =   135
   End
   Begin VB.Label Label1 
      Caption         =   "Player name"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   1680
      TabIndex        =   0
      Top             =   720
      Width           =   2175
   End
   Begin VB.Shape wall 
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   2655
      Left            =   1080
      Top             =   600
      Width           =   135
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub bluename_Change()
Command1.Visible = True
If bluename.Text = "Beans" Then
MsgBox "Mingbo is gay"
Command1.Visible = False
ElseIf bluename.Text = "Ariz" Then
MsgBox "Pathans not permitted in game"
Command1.Visible = False
ElseIf bluename.Text = "Sam" Then
MsgBox "Go do your raindance"
Command1.Visible = False
ElseIf bluename.Text = "Johny" Then
MsgBox "You might kill the keyboard man"
Command1.Visible = False
ElseIf bluename.Text = "Kevin" Then
MsgBox "IB kids not allowed in cool games"
Command1.Visible = False
ElseIf bluename.Text = "Chun" Then
MsgBox "impulsive kids not allowed.(If you do see this chun you're probably trying to reset the computer)"
Command1.Visible = False
ElseIf bluename.Text = "Romer" Then
MsgBox "Midgets not permitted"
Command1.Visible = False
ElseIf bluename.Text = "Jacob" Then
MsgBox "dumb deviation"
Command1.Visible = False
ElseIf bluename.Text = "Steven" Then
MsgBox "androids not permited"
Command1.Visible = False
End If
End Sub

Private Sub Command1_Click()
form3.Timer1.Enabled = False
If difficulty.Text = "easy" Then
Form1.redcom.Interval = 20
Form1.bluecom.Interval = 20
Form1.Timer1.Enabled = False
ElseIf difficulty.Text = "normal" Then
Form1.redcom.Interval = 10
Form1.bluecom.Interval = 10
ElseIf difficulty.Text = "insane" Then
Form1.redcom.Interval = 1
Form1.bluecom.Interval = 1
ElseIf difficulty.Text = "Easy" Then
Form1.redcom.Interval = 20
Form1.bluecom.Interval = 20
ElseIf difficulty.Text = "Normal" Then
Form1.redcom.Interval = 10
Form1.bluecom.Interval = 10
ElseIf difficulty.Text = "Insane" Then
Form1.redcom.Interval = 1
Form1.bluecom.Interval = 1
End If
If redleft.Value = Checked Then
Form2.Visible = False
Form1.Visible = True
Form1.Enabled = True
ElseIf blueleft.Value = Checked Then
Form2.Visible = False
Form1.Visible = True
Form1.Enabled = True
End If
End Sub

Private Sub Form_Load()
Form1.Enabled = False
Form1.Visible = False
End Sub

Private Sub redname_Change()
Command1.Visible = True
If redname.Text = "Jeans" Then
MsgBox "Mingbo is gay"
Command1.Visible = False
ElseIf redname.Text = "Ariz" Then
MsgBox "Pathans not permitted in game"
Command1.Visible = False
ElseIf redname.Text = "Sam" Then
MsgBox "Go do your rain dance"
Command1.Visible = False
ElseIf redname.Text = "Johny" Then
MsgBox "You might kill the keyboard man"
Command1.Visible = False
ElseIf redname.Text = "Kevin" Then
MsgBox "IB kids not allowed in cool games"
Command1.Visible = False
ElseIf redname.Text = "Chun" Then
MsgBox "impulsive kids not allowed.(If you do see this chun you're probably trying to reset the computer)"
Command1.Visible = False
ElseIf redname.Text = "Romer" Then
MsgBox "Midgets not permitted"
Command1.Visible = False
ElseIf redname.Text = "Jacob" Then
MsgBox "dumb deviation"
Command1.Visible = False
ElseIf redname.Text = "Steven" Then
MsgBox "androids not permited"
Command1.Visible = False
End If

End Sub

Private Sub Timer1_Timer()
If form3.red.Value = Checked Then
blueleft.Value = Unchecked
blueright.Value = Unchecked
End If
If redleft.Value = Checked Then
blueright.Value = Checked
redright.Visible = False
blueleft.Visible = False
ElseIf redright.Value = Checked Then
redleft.Visible = False
blueright.Visible = False
blueleft.Value = Checked
ElseIf blueleft.Value = Checked Then
blueright.Visible = False
redleft.Visible = False
redright.Value = Checked
ElseIf blueright.Value = Checked Then
blueleft.Visible = False
redright.Visible = False
redleft.Value = Checked
End If
End Sub


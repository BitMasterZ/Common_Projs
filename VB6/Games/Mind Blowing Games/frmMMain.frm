VERSION 5.00
Begin VB.Form frmMMain 
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "Main menu"
   ClientHeight    =   8190
   ClientLeft      =   105
   ClientTop       =   315
   ClientWidth     =   8865
   Icon            =   "frmMMain.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Moveable        =   0   'False
   ScaleHeight     =   8190
   ScaleWidth      =   8865
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdQuit 
      Caption         =   "Quit"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   24
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   7080
      TabIndex        =   7
      Top             =   7680
      Width           =   1695
   End
   Begin VB.Timer tmrCheck 
      Interval        =   1
      Left            =   6000
      Top             =   3240
   End
   Begin VB.Label lblHead 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Mind-Blowing Games"
      BeginProperty Font 
         Name            =   "OCR A Extended"
         Size            =   48
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   990
      Left            =   720
      TabIndex        =   6
      Top             =   0
      Width           =   10800
   End
   Begin VB.Label lblC 
      AutoSize        =   -1  'True
      Caption         =   "Label1"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   300
      Left            =   3360
      TabIndex        =   5
      Top             =   7200
      Width           =   1260
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      Caption         =   "Castle Wars"
      BeginProperty Font 
         Name            =   "BankGothic Md BT"
         Size            =   27.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   585
      Left            =   2400
      TabIndex        =   4
      Top             =   5160
      Width           =   3960
   End
   Begin VB.Image Image1 
      Height          =   1455
      Left            =   3360
      Picture         =   "frmMMain.frx":0ECA
      Stretch         =   -1  'True
      Top             =   5760
      Width           =   2085
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "Undead Archer"
      BeginProperty Font 
         Name            =   "Chiller"
         Size            =   36
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   840
      Left            =   5640
      TabIndex        =   3
      Top             =   1440
      Width           =   3120
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "Slithering Snake"
      BeginProperty Font 
         Name            =   "Parchment"
         Size            =   48
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1020
      Left            =   -120
      TabIndex        =   2
      Top             =   1320
      Width           =   3765
   End
   Begin VB.Label lblS 
      AutoSize        =   -1  'True
      Caption         =   "Label1"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   300
      Left            =   360
      TabIndex        =   1
      Top             =   4080
      Width           =   1260
   End
   Begin VB.Label lblB 
      AutoSize        =   -1  'True
      Caption         =   "Label1"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   300
      Left            =   6000
      TabIndex        =   0
      Top             =   4200
      Width           =   1260
   End
   Begin VB.Image imgArcher 
      Height          =   2040
      Left            =   5880
      Picture         =   "frmMMain.frx":3AA9
      Stretch         =   -1  'True
      Top             =   2280
      Width           =   2595
   End
   Begin VB.Image imgHead 
      Height          =   1785
      Left            =   240
      Picture         =   "frmMMain.frx":11ED9
      Stretch         =   -1  'True
      Top             =   2280
      Width           =   2445
   End
End
Attribute VB_Name = "frmMMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Coded by: Shobhit and Sethuwran



'Coded by: Shobhit and Senthuwran
Private Sub Form_Load()
intRecordSec = 30
End Sub

Private Sub cmdQuit_Click()
End
End Sub

Private Sub Image1_Click()
    frmSplashC.Show
    Unload Me
End Sub

Private Sub imgArcher_Click()
    frmSplashB.Show
    Unload Me
End Sub

Private Sub imgHead_Click()
    frmMainS.Show
    Unload Me
End Sub


Private Sub tmrCheck_Timer()
'Display scores from games
    'Undead Archers
    lblB.Caption = "Winner: " & strBName & vbCrLf & _
    "Wins: " & intBscore

    'Slithering Snake
    lblS.Caption = "Winner: " & strName & vbCrLf & _
    "Time: " & frmHighS.lblTime.Caption

    'Castle Wars
    lblC.Caption = "Name: " & strCName & vbCrLf & _
    "Score: " & intHighScore


'Marquee
    lblHead.Left = lblHead.Left - 50

    If lblHead.Left <= -lblHead.Width Then

        lblHead.Left = Me.Left

    End If
End Sub

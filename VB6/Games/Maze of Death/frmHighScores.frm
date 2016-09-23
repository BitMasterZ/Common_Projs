VERSION 5.00
Begin VB.Form frmHighScores 
   BorderStyle     =   0  'None
   Caption         =   "Form1"
   ClientHeight    =   5475
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   9210
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5475
   ScaleWidth      =   9210
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdExit 
      Cancel          =   -1  'True
      Caption         =   "Exit"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   24
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   3960
      TabIndex        =   4
      Top             =   4560
      Width           =   2295
   End
   Begin VB.CommandButton cmdReturn 
      Caption         =   "Return"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   24
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   1080
      TabIndex        =   3
      Top             =   4560
      Width           =   2295
   End
   Begin VB.Timer tmrCheck 
      Interval        =   1
      Left            =   7920
      Top             =   2040
   End
   Begin VB.Label lblScore 
      AutoSize        =   -1  'True
      BeginProperty Font 
         Name            =   "Parchment"
         Size            =   36
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   765
      Left            =   1560
      TabIndex        =   2
      Top             =   3000
      Width           =   60
   End
   Begin VB.Label lblName 
      AutoSize        =   -1  'True
      BeginProperty Font 
         Name            =   "Parchment"
         Size            =   36
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   765
      Left            =   1560
      TabIndex        =   1
      Top             =   2040
      Width           =   60
   End
   Begin VB.Label lbl 
      Caption         =   "High Scores"
      BeginProperty Font 
         Name            =   "Old English Text MT"
         Size            =   48
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1215
      Left            =   2160
      TabIndex        =   0
      Top             =   240
      Width           =   5655
   End
End
Attribute VB_Name = "frmHighScores"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdExit_Click()
    End
End Sub

Private Sub cmdReturn_Click()

'Redirect to main form
    frmMain.Show
    Unload Me

End Sub

Private Sub tmrCheck_Timer()

'Display player name and score
    lblName.Caption = "Name:" & strName
    lblScore.Caption = "Lives lost:" & intLost
End Sub

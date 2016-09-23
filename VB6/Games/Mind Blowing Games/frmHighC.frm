VERSION 5.00
Begin VB.Form frmHighC 
   BorderStyle     =   0  'None
   ClientHeight    =   4725
   ClientLeft      =   -60
   ClientTop       =   30
   ClientWidth     =   7140
   Icon            =   "frmHighC.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   4725
   ScaleWidth      =   7140
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdQuit 
      Cancel          =   -1  'True
      Caption         =   "Quit"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   36
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   0
      TabIndex        =   4
      Top             =   4080
      Width           =   1815
   End
   Begin VB.Timer tmrCheck 
      Interval        =   1
      Left            =   6720
      Top             =   240
   End
   Begin VB.CommandButton cmdStart 
      Caption         =   "Restart Game"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   24
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   3960
      TabIndex        =   1
      Top             =   3840
      Width           =   3135
   End
   Begin VB.Label lblName 
      AutoSize        =   -1  'True
      Caption         =   "Name:"
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
      Left            =   0
      TabIndex        =   3
      Top             =   1320
      Width           =   1650
   End
   Begin VB.Label lblScore 
      AutoSize        =   -1  'True
      Caption         =   "High Score:"
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
      Left            =   0
      TabIndex        =   2
      Top             =   2400
      Width           =   2820
   End
   Begin VB.Label lblHead 
      Alignment       =   2  'Center
      AutoSize        =   -1  'True
      Caption         =   "Castle Wars"
      BeginProperty Font 
         Name            =   "Vivaldi"
         Size            =   48
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1140
      Left            =   1920
      TabIndex        =   0
      Top             =   0
      Width           =   4335
   End
End
Attribute VB_Name = "frmHighC"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Programmed by: Shobhit Adlakha
'Purpose of  form: The main and High score form
'Coded by: Shobhit and Sethuwran
Option Explicit

Private Sub cmdQuit_Click()
    
    End

End Sub

Private Sub cmdStart_Click()

'Redirects to game
    frmGameC.Show
    Unload Me

End Sub




Private Sub tmrCheck_Timer()

'Assigns the name and high score to the labels caption
    lblScore.Caption = "High Score: " & intHighScore

    lblName.Caption = "Name: " & strCName
    
If intHighScore >= 1000 Then

End If
End Sub

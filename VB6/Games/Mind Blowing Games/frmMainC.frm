VERSION 5.00
Begin VB.Form frmMainC 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Game menu"
   ClientHeight    =   5040
   ClientLeft      =   105
   ClientTop       =   435
   ClientWidth     =   8550
   Icon            =   "frmMainC.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5040
   ScaleWidth      =   8550
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdReturn 
      Caption         =   "Return"
      BeginProperty Font 
         Name            =   "Niagara Solid"
         Size            =   27.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   645
      Left            =   6480
      TabIndex        =   6
      Top             =   4320
      Width           =   1695
   End
   Begin VB.ListBox diff 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      ItemData        =   "frmMainC.frx":7132
      Left            =   3360
      List            =   "frmMainC.frx":7142
      TabIndex        =   5
      Top             =   2400
      Width           =   4095
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Controls"
      BeginProperty Font 
         Name            =   "Niagara Engraved"
         Size            =   27.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   0
      TabIndex        =   3
      Top             =   4320
      Width           =   1695
   End
   Begin VB.CommandButton cmdAbout 
      Caption         =   "About"
      BeginProperty Font 
         Name            =   "Niagara Engraved"
         Size            =   27.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   2400
      TabIndex        =   2
      Top             =   4320
      Width           =   1695
   End
   Begin VB.CommandButton cmdStart 
      Caption         =   "Start"
      BeginProperty Font 
         Name            =   "Niagara Engraved"
         Size            =   27.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   4320
      TabIndex        =   1
      Top             =   4320
      Width           =   1695
   End
   Begin VB.Label Label1 
      Caption         =   "Difficulty"
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
      Left            =   1320
      TabIndex        =   4
      Top             =   2400
      Width           =   1935
   End
   Begin VB.Label lbl 
      Caption         =   "Welcome to Castle Wars"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   36
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1605
      Left            =   840
      TabIndex        =   0
      Top             =   0
      Width           =   5775
   End
End
Attribute VB_Name = "frmMainC"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Coded by: Shobhit and Sethuwran
Private Sub cmdAbout_Click()
frmAboutC.Show
End Sub

Private Sub cmdReturn_Click()
frmMMain.Show
Unload Me
End Sub

Private Sub cmdStart_Click()
frmGameC.Show
Unload Me

End Sub


Private Sub diff_Click()
strDiff = diff.Text
End Sub

Private Sub Form_Load()
strDiff = "Easy"
End Sub

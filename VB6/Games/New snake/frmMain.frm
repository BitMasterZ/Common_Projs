VERSION 5.00
Begin VB.Form frmMain 
   BorderStyle     =   0  'None
   Caption         =   "Form1"
   ClientHeight    =   4215
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   4965
   Icon            =   "frmMain.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4215
   ScaleWidth      =   4965
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdQuit 
      Caption         =   "END"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   48
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   810
      Left            =   720
      TabIndex        =   3
      Top             =   3240
      Width           =   3975
   End
   Begin VB.CommandButton cmdTwo 
      Caption         =   "Two Player"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   27.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   810
      Left            =   720
      TabIndex        =   2
      Top             =   2280
      Width           =   3975
   End
   Begin VB.CommandButton cmdOne 
      Caption         =   "Single Player"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   27.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   810
      Left            =   720
      TabIndex        =   1
      Top             =   1320
      Width           =   3975
   End
   Begin VB.Label lblHead 
      AutoSize        =   -1  'True
      Caption         =   "New Snake"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   36
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   885
      Left            =   720
      TabIndex        =   0
      Top             =   0
      Width           =   4050
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub cmdOne_Click()
frmStart.Show
Unload Me
End Sub

Private Sub cmdQuit_Click()
End
End Sub

Private Sub cmdTwo_Click()
frmTwo.Show
Unload Me

End Sub

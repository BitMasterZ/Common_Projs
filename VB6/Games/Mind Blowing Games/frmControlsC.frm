VERSION 5.00
Begin VB.Form frmControlsC 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Instructions"
   ClientHeight    =   6975
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   6090
   Icon            =   "frmControlsC.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   6975
   ScaleWidth      =   6090
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdOk 
      Caption         =   "Ok"
      Height          =   735
      Left            =   4440
      TabIndex        =   4
      Top             =   0
      Width           =   1575
   End
   Begin VB.Label lblCheat 
      Caption         =   $"frmControlsC.frx":7132
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   3600
      Left            =   0
      TabIndex        =   3
      Top             =   3360
      Width           =   6210
   End
   Begin VB.Label lblHead 
      AutoSize        =   -1  'True
      Caption         =   "Difficulty"
      BeginProperty Font 
         Name            =   "OCR A Extended"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   1
      Left            =   120
      TabIndex        =   2
      Top             =   2760
      Width           =   2100
   End
   Begin VB.Label lblHead 
      AutoSize        =   -1  'True
      Caption         =   "Controls of the Game"
      BeginProperty Font 
         Name            =   "OCR A Extended"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   0
      Left            =   120
      TabIndex        =   1
      Top             =   0
      Width           =   4200
   End
   Begin VB.Label lblControls 
      Caption         =   "1) Move the mouse to control the paddle.       2) Pres P at any time to pause the Game "
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1560
      Index           =   1
      Left            =   120
      TabIndex        =   0
      Top             =   720
      Width           =   2970
   End
End
Attribute VB_Name = "frmControlsC"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Coded by: Shobhit and Sethuwran
Private Sub cmdOk_Click()
Unload Me
End Sub


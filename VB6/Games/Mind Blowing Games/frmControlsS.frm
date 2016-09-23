VERSION 5.00
Begin VB.Form frmControlsS 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Instructions"
   ClientHeight    =   8640
   ClientLeft      =   105
   ClientTop       =   435
   ClientWidth     =   6090
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   8640
   ScaleWidth      =   6090
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdOk 
      Caption         =   "OK"
      Height          =   615
      Left            =   4440
      TabIndex        =   6
      Top             =   120
      Width           =   1095
   End
   Begin VB.Label lblHandicap 
      Caption         =   $"frmControlsS.frx":0000
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
      TabIndex        =   5
      Top             =   5040
      Width           =   5970
   End
   Begin VB.Label lblHead 
      AutoSize        =   -1  'True
      Caption         =   "Handicap"
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
      Index           =   2
      Left            =   0
      TabIndex        =   4
      Top             =   4560
      Width           =   1680
   End
   Begin VB.Label lblCheat 
      Caption         =   "To unlock the cheat, you must beat the default record time (30 sec) ."
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   720
      Left            =   0
      TabIndex        =   3
      Top             =   3720
      Width           =   5490
   End
   Begin VB.Label lblHead 
      AutoSize        =   -1  'True
      Caption         =   "Cheats"
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
      Left            =   0
      TabIndex        =   2
      Top             =   3240
      Width           =   1260
   End
   Begin VB.Label lblControls 
      Caption         =   $"frmControlsS.frx":01EB
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2280
      Left            =   120
      TabIndex        =   1
      Top             =   840
      Width           =   5490
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
      TabIndex        =   0
      Top             =   240
      Width           =   4200
   End
End
Attribute VB_Name = "frmControlsS"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Coded by: Shobhit and Sethuwran
Private Sub cmdOk_Click()
Unload Me
End Sub


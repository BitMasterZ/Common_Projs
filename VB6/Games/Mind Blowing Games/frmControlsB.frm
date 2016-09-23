VERSION 5.00
Begin VB.Form frmControlsB 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Instructions"
   ClientHeight    =   8295
   ClientLeft      =   105
   ClientTop       =   435
   ClientWidth     =   6225
   Icon            =   "frmControlsB.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Moveable        =   0   'False
   ScaleHeight     =   8295
   ScaleWidth      =   6225
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdOk 
      Caption         =   "OK"
      Height          =   615
      Left            =   4440
      TabIndex        =   0
      Top             =   0
      Width           =   1095
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      Caption         =   "For Player 2"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Left            =   3120
      TabIndex        =   7
      Top             =   720
      Width           =   1515
   End
   Begin VB.Label lblControls 
      Caption         =   $"frmControlsB.frx":08CA
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2880
      Index           =   1
      Left            =   0
      TabIndex        =   6
      Top             =   1200
      Width           =   2970
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "For Player 1"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Left            =   0
      TabIndex        =   5
      Top             =   720
      Width           =   1515
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
      TabIndex        =   4
      Top             =   120
      Width           =   4200
   End
   Begin VB.Label lblControls 
      Caption         =   $"frmControlsB.frx":096C
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2880
      Index           =   0
      Left            =   3120
      TabIndex        =   3
      Top             =   1200
      Width           =   2970
   End
   Begin VB.Label lblHead 
      AutoSize        =   -1  'True
      Caption         =   "Momentum"
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
      Top             =   4200
      Width           =   1680
   End
   Begin VB.Label lblCheat 
      Caption         =   $"frmControlsB.frx":0A1F
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
      TabIndex        =   1
      Top             =   4680
      Width           =   6210
   End
End
Attribute VB_Name = "frmControlsB"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Coded by: Shobhit and Sethuwran
Private Sub cmdOk_Click()
Unload Me
End Sub


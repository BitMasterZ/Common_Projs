VERSION 5.00
Begin VB.Form frmStats 
   BorderStyle     =   3  'Fixed Dialog
   ClientHeight    =   5430
   ClientLeft      =   255
   ClientTop       =   1410
   ClientWidth     =   6750
   ClipControls    =   0   'False
   ControlBox      =   0   'False
   Icon            =   "frmStats.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Picture         =   "frmStats.frx":1CFA
   ScaleHeight     =   5430
   ScaleWidth      =   6750
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton cmdExit 
      BackColor       =   &H00004080&
      Caption         =   "X"
      BeginProperty Font 
         Name            =   "OCR A Extended"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   6360
      Style           =   1  'Graphical
      TabIndex        =   2
      Top             =   0
      Width           =   375
   End
   Begin VB.Label lblName 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Name"
      BeginProperty Font 
         Name            =   "OCR A Extended"
         Size            =   21.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   450
      Left            =   2760
      TabIndex        =   1
      Top             =   480
      Width           =   1080
   End
   Begin VB.Label lblStats 
      BackStyle       =   0  'Transparent
      Caption         =   "Label1"
      BeginProperty Font 
         Name            =   "Agency FB"
         Size            =   20.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   3615
      Left            =   3480
      TabIndex        =   0
      Top             =   1200
      Width           =   2895
   End
   Begin VB.Image imgPlayer 
      Height          =   3255
      Left            =   600
      Picture         =   "frmStats.frx":E40A
      Stretch         =   -1  'True
      Top             =   1200
      Width           =   2175
   End
End
Attribute VB_Name = "frmStats"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdExit_Click()
    Unload Me
End Sub


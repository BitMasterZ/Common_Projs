VERSION 5.00
Begin VB.Form frmSplash 
   BorderStyle     =   3  'Fixed Dialog
   ClientHeight    =   4245
   ClientLeft      =   255
   ClientTop       =   1410
   ClientWidth     =   7380
   ClipControls    =   0   'False
   ControlBox      =   0   'False
   Icon            =   "Main.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4245
   ScaleWidth      =   7380
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.Frame Frame1 
      Height          =   4050
      Left            =   150
      TabIndex        =   0
      Top             =   60
      Width           =   7080
      Begin VB.Label Label3 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "?"
         BeginProperty Font 
            Name            =   "Parchment"
            Size            =   140.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000000FF&
         Height          =   2985
         Left            =   1320
         TabIndex        =   4
         Top             =   1800
         Width           =   555
      End
      Begin VB.Label Label2 
         Caption         =   "TCP"
         BeginProperty Font 
            Name            =   "OCR A Std"
            Size            =   72
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1095
         Left            =   0
         TabIndex        =   3
         Top             =   2760
         Width           =   3255
      End
      Begin VB.Label Label1 
         Alignment       =   2  'Center
         Caption         =   "VS"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   18
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   600
         TabIndex        =   2
         Top             =   2160
         Width           =   975
      End
      Begin VB.Image imgLogo 
         Height          =   1785
         Left            =   240
         Picture         =   "Main.frx":6932
         Stretch         =   -1  'True
         Top             =   240
         Width           =   1455
      End
      Begin VB.Label lblProductName 
         Caption         =   "Shobhit's wireless escape"
         BeginProperty Font 
            Name            =   "Charlemagne Std"
            Size            =   27.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   2205
         Left            =   2760
         TabIndex        =   1
         Top             =   480
         Width           =   4305
      End
   End
   Begin VB.Image Image1 
      Height          =   495
      Left            =   3120
      Top             =   1920
      Width           =   1215
   End
End
Attribute VB_Name = "frmSplash"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Option Explicit

Private Sub Form_KeyPress(KeyAscii As Integer)
   Intro.Show
    Unload Me
End Sub

Private Sub Frame1_Click()
   Intro.Show
    Unload Me
End Sub

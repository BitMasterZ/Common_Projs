VERSION 5.00
Begin VB.Form frmSplash 
   BorderStyle     =   3  'Fixed Dialog
   ClientHeight    =   7965
   ClientLeft      =   255
   ClientTop       =   1410
   ClientWidth     =   11460
   ClipControls    =   0   'False
   ControlBox      =   0   'False
   Icon            =   "frmSplash.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   7965
   ScaleWidth      =   11460
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton cmdQuit 
      Caption         =   "Quit"
      Height          =   615
      Left            =   4800
      TabIndex        =   4
      Top             =   4920
      Width           =   1815
   End
   Begin VB.CommandButton cmdReturn 
      Caption         =   "Return to Game"
      Height          =   615
      Left            =   1200
      TabIndex        =   3
      Top             =   4920
      Width           =   1815
   End
   Begin VB.Timer tmrCounter 
      Interval        =   1
      Left            =   7920
      Top             =   4680
   End
   Begin VB.Label lblTime 
      Height          =   495
      Left            =   5400
      TabIndex        =   2
      Top             =   3120
      Width           =   1215
   End
   Begin VB.Label lblName 
      AutoSize        =   -1  'True
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   555
      Left            =   1560
      TabIndex        =   1
      Top             =   3000
      Width           =   90
   End
   Begin VB.Label lblHead 
      Caption         =   "High Score"
      BeginProperty Font 
         Name            =   "Old English Text MT"
         Size            =   72
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1695
      Left            =   1200
      TabIndex        =   0
      Top             =   600
      Width           =   7095
   End
End
Attribute VB_Name = "frmSplash"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Option Explicit

Private Sub cmdQuit_Click()
End
End Sub

Private Sub cmdReturn_Click()

Form1.Show
Unload Me

End Sub

Private Sub tmrCounter_Timer()

lblName.Caption = strName
lblTime.Caption = intRecordMin & " Min " & intRecordSec & " Sec"

End Sub

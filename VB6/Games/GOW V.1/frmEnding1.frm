VERSION 5.00
Begin VB.Form frmEnding1 
   BorderStyle     =   3  'Fixed Dialog
   ClientHeight    =   8970
   ClientLeft      =   255
   ClientTop       =   1410
   ClientWidth     =   7080
   ClipControls    =   0   'False
   ControlBox      =   0   'False
   Icon            =   "frmEnding1.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Picture         =   "frmEnding1.frx":0ECA
   ScaleHeight     =   8970
   ScaleWidth      =   7080
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.Timer tmrWait 
      Interval        =   5000
      Left            =   6000
      Top             =   2160
   End
   Begin VB.Label lblSymbol 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "W"
      BeginProperty Font 
         Name            =   "Symbol"
         Size            =   92.25
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   2250
      Left            =   2280
      TabIndex        =   2
      Top             =   2160
      Width           =   1410
   End
   Begin VB.Label lblHead2 
      Alignment       =   2  'Center
      BackColor       =   &H000000FF&
      BackStyle       =   0  'Transparent
      Caption         =   "G O W: The Fall of Sparta "
      BeginProperty Font 
         Name            =   "Prestige Elite Std"
         Size            =   60
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFF00&
      Height          =   5775
      Left            =   600
      TabIndex        =   1
      Top             =   2640
      Width           =   6255
   End
   Begin VB.Label lblHead 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "To Be continued in..."
      BeginProperty Font 
         Name            =   "Myriad Pro Cond"
         Size            =   27.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000C0&
      Height          =   660
      Left            =   2520
      TabIndex        =   0
      Top             =   240
      Width           =   3450
   End
End
Attribute VB_Name = "frmEnding1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub tmrWait_Timer()
    blnFinish = True
    frmEnding2.Show
    Unload Me
End Sub

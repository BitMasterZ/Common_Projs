VERSION 5.00
Begin VB.Form frmSplash 
   BackColor       =   &H00FFFFFF&
   BorderStyle     =   3  'Fixed Dialog
   ClientHeight    =   5685
   ClientLeft      =   255
   ClientTop       =   1410
   ClientWidth     =   9195
   ClipControls    =   0   'False
   ControlBox      =   0   'False
   Icon            =   "frmSplash.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5685
   ScaleWidth      =   9195
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.Timer tmrcounter 
      Interval        =   1000
      Left            =   6360
      Top             =   3480
   End
   Begin VB.Image Image1 
      Height          =   1890
      Left            =   720
      Picture         =   "frmSplash.frx":000C
      Top             =   3120
      Width           =   3600
   End
   Begin VB.Label lblTitle 
      BackColor       =   &H00FFFFFF&
      Caption         =   "Rock, Paper, Scissor"
      Height          =   1695
      Left            =   480
      TabIndex        =   0
      Top             =   360
      Width           =   5655
   End
End
Attribute VB_Name = "frmSplash"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Option Explicit
Dim intcounter As Integer

Private Sub Form_KeyPress(KeyAscii As Integer)
    Unload Me
    frmGame.Show
End Sub

Private Sub Form_Load()
    lblTitle.FontName = "Old English Text MT"
    lblTitle.FontSize = "36"
End Sub

Private Sub Frame1_Click()
    Unload Me
    frmGame.Show
End Sub

Private Sub tmrCounter_Timer()
intcounter = intcounter + 1
If intcounter >= 3 Then
Unload Me
frmGame.Show
End If
End Sub

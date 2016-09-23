VERSION 5.00
Begin VB.Form frmStart 
   BackColor       =   &H00000040&
   BorderStyle     =   0  'None
   Caption         =   "START"
   ClientHeight    =   1830
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   4380
   Icon            =   "frmStart.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1830
   ScaleWidth      =   4380
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer tmrMar 
      Interval        =   1
      Left            =   3720
      Top             =   1200
   End
   Begin VB.CommandButton cmdStart 
      BackColor       =   &H0080C0FF&
      Caption         =   "START"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   36
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   705
      Left            =   120
      Style           =   1  'Graphical
      TabIndex        =   2
      Top             =   1080
      Width           =   3015
   End
   Begin VB.TextBox txt 
      BackColor       =   &H00000040&
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   26.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   495
      Left            =   3240
      MaxLength       =   2
      TabIndex        =   1
      Text            =   "5"
      Top             =   600
      Width           =   855
   End
   Begin VB.Label lbl 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "New Snake Game"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   21.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFF80&
      Height          =   465
      Left            =   0
      TabIndex        =   3
      Top             =   0
      Width           =   4410
   End
   Begin VB.Label lb 
      BackStyle       =   0  'Transparent
      Caption         =   "Number of blocks"
      BeginProperty Font 
         Name            =   "Papyrus"
         Size            =   20.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   495
      Left            =   0
      TabIndex        =   0
      Top             =   600
      Width           =   3255
   End
End
Attribute VB_Name = "frmStart"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim lngSpare As Long

Private Sub cmdStart_Click()

If IsNumeric(txt.Text) And _
txt.Text > 2 And txt.Text < 50 Then 'Define number range

    Number = txt.Text 'Assign

'Redirect
    frmGame.Show
    Unload Me

Else
    
    MsgBox "Enter Number"


End If

End Sub

Private Sub Marquee()
Do Until lbl.Left <= -lbl.Width
lbl.Left = lbl.Left - 1
For intSpare = -1000 To 1000
Next
DoEvents
Loop
lbl.Left = Me.Width
End Sub

Private Sub tmrMar_Timer()
Call Marquee

End Sub

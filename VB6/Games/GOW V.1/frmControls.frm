VERSION 5.00
Begin VB.Form frmControls 
   BorderStyle     =   0  'None
   Caption         =   "Form1"
   ClientHeight    =   8970
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   7290
   Icon            =   "frmControls.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Picture         =   "frmControls.frx":0ECA
   ScaleHeight     =   8970
   ScaleWidth      =   7290
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdShow 
      BackColor       =   &H00808080&
      Caption         =   "Style 1"
      BeginProperty Font 
         Name            =   "LCD5x8H"
         Size            =   24
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   2280
      MaskColor       =   &H0080C0FF&
      Style           =   1  'Graphical
      TabIndex        =   6
      Top             =   120
      Width           =   2655
   End
   Begin VB.CommandButton cmdOk 
      BackColor       =   &H00808080&
      Caption         =   "OK"
      BeginProperty Font 
         Name            =   "LCD5x8H"
         Size            =   24
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   4920
      MaskColor       =   &H0080C0FF&
      Style           =   1  'Graphical
      TabIndex        =   5
      Top             =   120
      Width           =   1935
   End
   Begin VB.Label lblHead2 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Instructions"
      BeginProperty Font 
         Name            =   "Blackadder ITC"
         Size            =   27.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   720
      Left            =   120
      TabIndex        =   4
      Top             =   5280
      Width           =   2295
   End
   Begin VB.Label lblRead 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "PRESS AND HOLD KEYS FOR EFFECT"
      BeginProperty Font 
         Name            =   "Arial Narrow"
         Size            =   21.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   495
      Left            =   0
      TabIndex        =   3
      Top             =   720
      Width           =   6615
   End
   Begin VB.Label lblInstructions 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "Agency FB"
         Size            =   20.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000C0C0&
      Height          =   480
      Left            =   240
      TabIndex        =   2
      Top             =   4200
      Width           =   75
   End
   Begin VB.Label lblControls 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "Agency FB"
         Size            =   20.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000C0C0&
      Height          =   480
      Left            =   120
      TabIndex        =   1
      Top             =   1200
      Width           =   75
   End
   Begin VB.Label lblHead 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Controls"
      BeginProperty Font 
         Name            =   "Blackadder ITC"
         Size            =   27.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   720
      Left            =   120
      TabIndex        =   0
      Top             =   0
      Width           =   1650
   End
End
Attribute VB_Name = "frmControls"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Option Explicit
Dim StrInstruct(1 To 15) As String, intC As Integer
Dim intStyle As Integer
Private Sub cmdOk_Click()
'Continue level
    Select Case Lvl
        Case 1
            frmLvl1.tmrAnimate.Interval = 1
            frmLvl1.tmrKratos.Interval = 1
        Case 2
            frmLvl2.tmrAnimate.Interval = 1
            frmLvl2.tmrKratos.Interval = 1
        Case 3
            frmLvl3.tmrAnimate.Interval = 1
            frmLvl3.tmrKratos.Interval = 1
        Case 4
            frmLvl4.tmrAnimate.Interval = 1
            frmLvl4.tmrKratos.Interval = 1
        Case 5
            frmLvl5.tmrAnimate.Interval = 1
            frmLvl5.tmrKratos.Interval = 1
        Case 6
            frmLvl6.tmrAnimate.Interval = 1
            frmLvl6.tmrKratos.Interval = 1
    End Select

'Close instructions
Unload Me
End Sub

Private Sub cmdShow_Click()
'Change Style
    intStyle = intStyle + 1
    If intStyle > 1 Then intStyle = 0

Select Case intStyle

    Case 1 'Labels with background
        lblInstructions.BackStyle = 1
        lblControls.BackStyle = 1
        cmdShow.Caption = "Style 2"

    Case 0 'Labels without background
        lblInstructions.BackStyle = 0
        lblControls.BackStyle = 0
        cmdShow.Caption = "Style 1"

End Select
End Sub

Private Sub Form_Load()
'Instructions
    StrInstruct(1) = "1) Left: Left arrow key"
    StrInstruct(2) = "2) Right: Right arrow key"
    StrInstruct(3) = "3) Jump: Up arrow key"
    StrInstruct(4) = "4) Block/Drop: Down Arrow key"
    StrInstruct(5) = "5) Swing: Q key"
    StrInstruct(6) = "6) Interact: Space bar"
    StrInstruct(7) = "7) Light Attack: F key"
    StrInstruct(8) = "8) Heavy Attack: G Key"
    StrInstruct(9) = "9) View Objective: O Key"
    StrInstruct(10) = "1) Get to the door and open it. If door is not visible" & vbCrLf & " goto a switch and pull it"
    StrInstruct(11) = "2) Boxes can be opened to unlock upgrades"
    StrInstruct(12) = "3) Pulling switchs stops and starts platform movement"
    StrInstruct(13) = "4) You die when your health reaches zero in a fight" & vbCrLf & "or you fall to the ground"

'Controls
    For intC = 1 To 9
        lblControls.Caption = lblControls.Caption & StrInstruct(intC) & vbCrLf
    Next intC

'Position
    lblInstructions.Top = lblControls.Top + lblControls.Height

'Instructions
    For intC = 10 To 13
        lblInstructions.Caption = lblInstructions.Caption & StrInstruct(intC) & vbCrLf
    Next intC

End Sub

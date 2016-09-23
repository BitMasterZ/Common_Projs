VERSION 5.00
Begin VB.Form frmHighS 
   AutoRedraw      =   -1  'True
   BackColor       =   &H00000000&
   BorderStyle     =   3  'Fixed Dialog
   ClientHeight    =   7245
   ClientLeft      =   255
   ClientTop       =   1410
   ClientWidth     =   10905
   ClipControls    =   0   'False
   ControlBox      =   0   'False
   Icon            =   "frmSplash.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   7245
   ScaleWidth      =   10905
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton cmdCheat2 
      BackColor       =   &H00808080&
      Cancel          =   -1  'True
      Caption         =   "Cheat 2"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   26.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   5520
      Style           =   1  'Graphical
      TabIndex        =   6
      Top             =   6480
      Visible         =   0   'False
      Width           =   2055
   End
   Begin VB.CommandButton cmdCheat 
      BackColor       =   &H00808080&
      Caption         =   "Cheat"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   26.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   3480
      Style           =   1  'Graphical
      TabIndex        =   5
      Top             =   6480
      Width           =   1815
   End
   Begin VB.CommandButton cmdQuit 
      BackColor       =   &H00808080&
      Caption         =   "Quit"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   26.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   3480
      Style           =   1  'Graphical
      TabIndex        =   4
      Top             =   5760
      Width           =   1815
   End
   Begin VB.CommandButton cmdReturn 
      BackColor       =   &H00808080&
      Caption         =   "Return to Game"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   26.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1335
      Left            =   840
      Style           =   1  'Graphical
      TabIndex        =   3
      Top             =   5760
      Width           =   2415
   End
   Begin VB.Timer tmrCounter 
      Interval        =   1
      Left            =   7320
      Top             =   4680
   End
   Begin VB.Label lblTime 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "Parchment"
         Size            =   60
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   1275
      Left            =   6240
      TabIndex        =   2
      Top             =   2280
      Width           =   105
   End
   Begin VB.Label lblName 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "Parchment"
         Size            =   60
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   1275
      Left            =   1560
      TabIndex        =   1
      Top             =   2280
      Width           =   105
   End
   Begin VB.Label lblHead 
      BackStyle       =   0  'Transparent
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
      ForeColor       =   &H00FFFFFF&
      Height          =   1695
      Left            =   720
      TabIndex        =   0
      Top             =   120
      Width           =   7095
   End
End
Attribute VB_Name = "frmHighS"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Option Explicit
Dim intSpare As Integer
Dim intShade(1 To 3) As Integer 'colours
Dim sngPos(1 To 2) As Single 'X and Y coordinates
Dim intR As Integer 'Radius length
Dim intCounter As Integer
Dim blnMsg As Boolean

Private Sub cmdCheat_Click()
blnMsg = MsgBox("nosnakemaze", vbInformation, " Cheat to remove box(lower case)")
End Sub

Private Sub cmdCheat2_Click()

    
    blnMsg = MsgBox("playtime", vbInformation, " Cheat to increase time(lower case)")
    
    
End Sub

Private Sub cmdQuit_Click()
    
    End

End Sub

Private Sub cmdReturn_Click()

frmGameS.tmrMove.Interval = 1
frmGameS.tmrTime.Interval = 1000

intCounter = 0

'Redirect to game
    frmGameS.Show
    Unload Me

End Sub



'Coded by: Shobhit and Sethuwran

Private Sub tmrCounter_Timer()

'Random numbers
    For intSpare = 1 To 3

        Randomize
    
        intShade(intSpare) = Int(255 * Rnd) + 13 'RGB Shades

    Next intSpare

    Randomize

    sngPos(2) = Int(Me.Height * Rnd)

    sngPos(1) = Int(Me.Width * Rnd)

    intR = Int(100 * Rnd) + 10


'Random circles
    intCounter = intCounter + 1

    If intCounter < 500 Then
    
        Circle (sngPos(1), sngPos(2)), intR, RGB(intShade(1), intShade(2), intShade(3))

    End If

'Display
    lblName.Caption = strName
    lblTime.Caption = intRecordMin & " Min " & intRecordSec & " Sec"


'Refresh

    cmdQuit.Refresh
    cmdReturn.Refresh
    lblTime.Refresh
    lblHead.Refresh
    lblName.Refresh

End Sub

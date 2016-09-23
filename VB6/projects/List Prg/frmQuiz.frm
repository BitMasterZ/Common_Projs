VERSION 5.00
Begin VB.Form frmQuiz 
   BackColor       =   &H00FFFFFF&
   BorderStyle     =   0  'None
   ClientHeight    =   7065
   ClientLeft      =   120
   ClientTop       =   420
   ClientWidth     =   9540
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   ScaleHeight     =   7065
   ScaleWidth      =   9540
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdNext 
      Caption         =   "Next"
      Enabled         =   0   'False
      Height          =   495
      Left            =   6120
      TabIndex        =   4
      Top             =   360
      Width           =   1215
   End
   Begin VB.TextBox txtGuess 
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "Microsoft Sans Serif"
         Size            =   20.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   840
      TabIndex        =   2
      Top             =   3720
      Width           =   7095
   End
   Begin VB.Label lblAns 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "OCR A Std"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   300
      Left            =   840
      TabIndex        =   3
      Top             =   5040
      Width           =   210
   End
   Begin VB.Label lblWord 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "g"
      BeginProperty Font 
         Name            =   "OCR A Std"
         Size            =   21.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   465
      Left            =   1680
      TabIndex        =   1
      Top             =   1440
      Width           =   315
   End
   Begin VB.Label lblScore 
      AutoSize        =   -1  'True
      Caption         =   "Score:"
      BeginProperty Font 
         Name            =   "Agency FB"
         Size            =   24
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   600
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   945
   End
   Begin VB.Menu mnuApp 
      Caption         =   "App"
      Begin VB.Menu mnuClose 
         Caption         =   "Close Window"
      End
      Begin VB.Menu mnuExit 
         Caption         =   "Exit App"
      End
   End
End
Attribute VB_Name = "frmQuiz"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim Score As Integer, Index As Integer

Private Sub Generator()
lblAns.Caption = ""

Randomize
Index = Int(Rnd * Max) + 1

lblWord.Caption = Words(Index).Title

End Sub

Private Sub cmdNext_Click()
cmdNext.Enabled = False
Call Generator
End Sub

Private Sub Form_Load()
Call Generator
End Sub

Private Sub mnuClose_Click()
Unload Me
End Sub

Private Sub mnuExit_Click()
End
End Sub

Private Function Check(strGuess As String)
Dim blnCheck As Boolean

blnCheck = (UCase(strGuess) = UCase(Words(Index).Defin) Or UCase(strGuess) = UCase(Words(Index).Syn(1)) Or UCase(strGuess) = UCase(Words(Index).Syn(2)) _
Or UCase(strGuess) = UCase(Words(Index).Syn(3)) Or UCase(strGuess) = UCase(Words(Index).Syn(4)) Or UCase(strGuess) = UCase(Words(Index).Syn(5)))

If blnCheck = True Then
Check = "Correct"
Score = Score + 1
Else
Check = "Wrong" & vbCrLf & Words(Index).Defin & vbCrLf & Words(Index).Syn(1) & vbCrLf & Words(Index).Syn(2) & vbCrLf & Words(Index).Syn(3) _
& vbCrLf & Words(Index).Syn(4) & vbCrLf & Words(Index).Syn(5)

End If
cmdNext.Enabled = True
End Function



Private Sub txtGuess_KeyDown(KeyCode As Integer, Shift As Integer)
If KeyCode = 13 Then lblAns.Caption = Check(txtGuess.Text)
lblScore.Caption = "Score: " & Score
End Sub

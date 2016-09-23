VERSION 5.00
Begin VB.Form frmTwo 
   BorderStyle     =   0  'None
   Caption         =   "Form1"
   ClientHeight    =   6150
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   5505
   Icon            =   "frmTwo.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   6150
   ScaleWidth      =   5505
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdSubmit 
      Caption         =   "Submit"
      BeginProperty Font 
         Name            =   "Arial Rounded MT Bold"
         Size            =   21.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   3360
      TabIndex        =   20
      Top             =   960
      Width           =   1935
   End
   Begin VB.TextBox txtPlayer2 
      BeginProperty Font 
         Name            =   "Segoe Print"
         Size            =   24
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   780
      Index           =   4
      Left            =   4560
      MaxLength       =   1
      TabIndex        =   19
      Top             =   5400
      Width           =   555
   End
   Begin VB.TextBox txtPlayer2 
      BeginProperty Font 
         Name            =   "Segoe Print"
         Size            =   24
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   960
      Index           =   3
      Left            =   4560
      MaxLength       =   1
      TabIndex        =   18
      Top             =   4440
      Width           =   555
   End
   Begin VB.TextBox txtPlayer2 
      BeginProperty Font 
         Name            =   "Segoe Print"
         Size            =   24
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   960
      Index           =   2
      Left            =   4560
      MaxLength       =   1
      TabIndex        =   17
      Top             =   3600
      Width           =   555
   End
   Begin VB.TextBox txtPlayer2 
      BeginProperty Font 
         Name            =   "Segoe Print"
         Size            =   24
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   960
      Index           =   1
      Left            =   4560
      MaxLength       =   1
      TabIndex        =   16
      Top             =   2760
      Width           =   555
   End
   Begin VB.TextBox txtPlayer1 
      BeginProperty Font 
         Name            =   "Segoe Print"
         Size            =   24
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   960
      Index           =   4
      Left            =   1560
      MaxLength       =   1
      TabIndex        =   15
      Top             =   5280
      Width           =   555
   End
   Begin VB.TextBox txtPlayer1 
      BeginProperty Font 
         Name            =   "Segoe Print"
         Size            =   24
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   960
      Index           =   3
      Left            =   1560
      MaxLength       =   1
      TabIndex        =   14
      Top             =   4440
      Width           =   555
   End
   Begin VB.TextBox txtPlayer1 
      BeginProperty Font 
         Name            =   "Segoe Print"
         Size            =   24
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   960
      Index           =   2
      Left            =   1560
      MaxLength       =   1
      TabIndex        =   13
      Top             =   3600
      Width           =   555
   End
   Begin VB.TextBox txtPlayer1 
      BeginProperty Font 
         Name            =   "Segoe Print"
         Size            =   24
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   780
      Index           =   1
      Left            =   1560
      MaxLength       =   1
      TabIndex        =   12
      Top             =   2880
      Width           =   555
   End
   Begin VB.Label lblP1 
      AutoSize        =   -1  'True
      Caption         =   "Right:"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   24
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   570
      Index           =   8
      Left            =   3120
      TabIndex        =   11
      Top             =   5520
      Width           =   1245
   End
   Begin VB.Label lblP1 
      AutoSize        =   -1  'True
      Caption         =   "Left:"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   24
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   570
      Index           =   7
      Left            =   3120
      TabIndex        =   10
      Top             =   4560
      Width           =   1020
   End
   Begin VB.Label lblP1 
      AutoSize        =   -1  'True
      Caption         =   "Down:"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   24
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   570
      Index           =   6
      Left            =   3120
      TabIndex        =   9
      Top             =   3720
      Width           =   1305
   End
   Begin VB.Label lblP1 
      AutoSize        =   -1  'True
      Caption         =   "Up:"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   24
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   570
      Index           =   5
      Left            =   3120
      TabIndex        =   8
      Top             =   2880
      Width           =   735
   End
   Begin VB.Label lblP1 
      AutoSize        =   -1  'True
      Caption         =   "Right:"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   24
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   570
      Index           =   4
      Left            =   120
      TabIndex        =   7
      Top             =   5520
      Width           =   1365
   End
   Begin VB.Label lblP1 
      AutoSize        =   -1  'True
      Caption         =   "Left:"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   24
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   570
      Index           =   3
      Left            =   120
      TabIndex        =   6
      Top             =   4560
      Width           =   900
   End
   Begin VB.Label lblP1 
      AutoSize        =   -1  'True
      Caption         =   "Down:"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   24
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   570
      Index           =   2
      Left            =   120
      TabIndex        =   5
      Top             =   3720
      Width           =   1305
   End
   Begin VB.Label lblP1 
      AutoSize        =   -1  'True
      Caption         =   "Up:"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   24
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   570
      Index           =   1
      Left            =   120
      TabIndex        =   4
      Top             =   2880
      Width           =   735
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "Player 2"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   36
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   825
      Left            =   2880
      TabIndex        =   3
      Top             =   1800
      Width           =   2625
   End
   Begin VB.Label lblP1 
      AutoSize        =   -1  'True
      Caption         =   "Player 1"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   36
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   825
      Index           =   0
      Left            =   120
      TabIndex        =   2
      Top             =   1800
      Width           =   2625
   End
   Begin VB.Label lblSubHead 
      AutoSize        =   -1  'True
      Caption         =   "Assign Controls"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   21.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   120
      TabIndex        =   1
      Top             =   1080
      Width           =   3075
   End
   Begin VB.Label lblHead 
      Caption         =   "Two player snake game"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   24
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   5415
   End
End
Attribute VB_Name = "frmTwo"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim Q As Integer, Spare As Integer
Private Sub cmdSubmit_Click()

For Q = 1 To 4

    If IsNumeric(txtPlayer1(Q).Text) = True _
    Or IsNumeric(txtPlayer2(Q).Text) = True Then
                
        MsgBox "Invalid"
        Exit Sub

    End If

    For Spare = 1 To 4

        If txtPlayer1(Q).Text = txtPlayer2(Spare).Text Then

            MsgBox "Invalid"
            Exit Sub
        
        End If
    Next
            
'Assign keys
    Player1(Q) = Asc(txtPlayer1(Q).Text)
    Player2(Q) = Asc(txtPlayer2(Q).Text)
        
Next
     
'Redirect
    frmGame2.Show
    Unload Me

End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
'Called for caps lock 20
End Sub

Private Sub Form_Load()
Call Form_KeyDown(20, 1)
End Sub


Private Sub txtPlayer1_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)

If KeyCode = 20 Then Call Form_KeyDown(20, 1)

End Sub

Private Sub txtPlayer2_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)

If KeyCode = 20 Then Call Form_KeyDown(20, 1)

End Sub

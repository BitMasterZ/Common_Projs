VERSION 5.00
Begin VB.Form frmSearch 
   BackColor       =   &H00FFFFFF&
   BorderStyle     =   0  'None
   ClientHeight    =   5790
   ClientLeft      =   120
   ClientTop       =   420
   ClientWidth     =   9225
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   ScaleHeight     =   5790
   ScaleWidth      =   9225
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox txtWord 
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "OCR A Extended"
         Size            =   26.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   240
      TabIndex        =   0
      Top             =   240
      Width           =   7095
   End
   Begin VB.Label lblDefin 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "Maiandra GD"
         Size            =   20.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   480
      Left            =   360
      TabIndex        =   1
      Top             =   1320
      Width           =   120
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
Attribute VB_Name = "frmSearch"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False




Private Sub mnuClose_Click()
Unload Me
End Sub

Private Sub mnuExit_Click()
End
End Sub

Private Sub txtWord_KeyDown(KeyCode As Integer, Shift As Integer)

If KeyCode = 13 Then lblDefin.Caption = Search(txtWord.Text)

End Sub

Private Function Search(strWord As String)
Dim C As Integer, Index As Integer

For C = LBound(Words) To UBound(Words)
If UCase(Words(C).Title) = UCase(strWord) Then Index = C

Next

If Index = 0 Then
Search = "Word not found"
Else
Search = Words(Index).Defin & vbCrLf & Words(Index).Syn(1) & vbCrLf & Words(Index).Syn(2) & vbCrLf & Words(Index).Syn(3) & vbCrLf & Words(Index).Syn(4) & vbCrLf & Words(Index).Syn(5)
End If

End Function


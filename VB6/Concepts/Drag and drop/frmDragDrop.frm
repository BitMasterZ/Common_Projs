VERSION 5.00
Begin VB.Form frmDrag 
   BorderStyle     =   0  'None
   Caption         =   "Form1"
   ClientHeight    =   4710
   ClientLeft      =   3690
   ClientTop       =   2835
   ClientWidth     =   6675
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4710
   ScaleWidth      =   6675
   ShowInTaskbar   =   0   'False
   Begin VB.Label lblWin 
      Caption         =   "Correct"
      BeginProperty Font 
         Name            =   "Viner Hand ITC"
         Size            =   21.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   1800
      TabIndex        =   6
      Top             =   1320
      Visible         =   0   'False
      Width           =   1695
   End
   Begin VB.Label lblClue 
      Caption         =   "Mild Green"
      Height          =   375
      Index           =   4
      Left            =   480
      TabIndex        =   5
      Top             =   3840
      Width           =   855
   End
   Begin VB.Label lblClue 
      Caption         =   "Orange"
      Height          =   375
      Index           =   3
      Left            =   4560
      TabIndex        =   4
      Top             =   3840
      Width           =   855
   End
   Begin VB.Label lblClue 
      Caption         =   "Sky Blue"
      Height          =   375
      Index           =   2
      Left            =   1440
      TabIndex        =   3
      Top             =   3840
      Width           =   855
   End
   Begin VB.Label lblClue 
      Caption         =   "Dark Green"
      Height          =   375
      Index           =   1
      Left            =   3480
      TabIndex        =   2
      Top             =   3840
      Width           =   855
   End
   Begin VB.Label lblClue 
      Caption         =   "Light Green"
      Height          =   375
      Index           =   0
      Left            =   2520
      TabIndex        =   1
      Top             =   3840
      Width           =   855
   End
   Begin VB.Image imgBlank 
      BorderStyle     =   1  'Fixed Single
      Height          =   495
      Index           =   4
      Left            =   480
      Top             =   3240
      Width           =   495
   End
   Begin VB.Image imgBlank 
      BorderStyle     =   1  'Fixed Single
      Height          =   495
      Index           =   3
      Left            =   4680
      Top             =   3240
      Width           =   495
   End
   Begin VB.Image imgBlank 
      BorderStyle     =   1  'Fixed Single
      Height          =   495
      Index           =   2
      Left            =   1560
      Top             =   3240
      Width           =   495
   End
   Begin VB.Image imgBlank 
      BorderStyle     =   1  'Fixed Single
      Height          =   495
      Index           =   1
      Left            =   3600
      Top             =   3240
      Width           =   495
   End
   Begin VB.Image imgBlank 
      BorderStyle     =   1  'Fixed Single
      Height          =   495
      Index           =   0
      Left            =   2760
      Top             =   3240
      Width           =   495
   End
   Begin VB.Image imgPicture 
      DragMode        =   1  'Automatic
      Height          =   480
      Index           =   4
      Left            =   3960
      Picture         =   "frmDragDrop.frx":0000
      Top             =   1320
      Width           =   480
   End
   Begin VB.Image imgPicture 
      DragMode        =   1  'Automatic
      Height          =   480
      Index           =   3
      Left            =   3120
      Picture         =   "frmDragDrop.frx":0CCA
      Top             =   1320
      Width           =   480
   End
   Begin VB.Image imgPicture 
      DragMode        =   1  'Automatic
      Height          =   480
      Index           =   2
      Left            =   2280
      Picture         =   "frmDragDrop.frx":1994
      Top             =   1320
      Width           =   480
   End
   Begin VB.Image imgPicture 
      DragMode        =   1  'Automatic
      Height          =   480
      Index           =   1
      Left            =   1440
      Picture         =   "frmDragDrop.frx":265E
      Top             =   1320
      Width           =   480
   End
   Begin VB.Image imgPicture 
      DragMode        =   1  'Automatic
      Height          =   480
      Index           =   0
      Left            =   600
      Picture         =   "frmDragDrop.frx":3328
      Top             =   1320
      Width           =   480
   End
   Begin VB.Label lblHead 
      Alignment       =   2  'Center
      AutoSize        =   -1  'True
      Caption         =   "Match the picture with the color"
      BeginProperty Font 
         Name            =   "Old English Text MT"
         Size            =   21.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   510
      Left            =   960
      TabIndex        =   0
      Top             =   120
      Width           =   5385
   End
End
Attribute VB_Name = "frmDrag"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim intCounter As Integer 'to detect if the user has completed the task

Private Sub Form_DragDrop(Source As Control, X As Single, Y As Single)

'If the user drop the image on the form
Source.Visible = True

End Sub

Private Sub Form_DragOver(Source As Control, X As Single, Y As Single, State As Integer)

'Change the dragicon so that it looks like the source is moving
Source.DragIcon = Source.Picture

'Make the source visible
Source.Visible = False

End Sub

Private Sub imgBlank_DragDrop(Index As Integer, Source As Control, X As Single, Y As Single)

If Source.Index = Index Then  'If the index of the control arrays are equal

    imgBlank(Index).Picture = Source.Picture 'Assign picture
    
    Source.Visible = False 'Make the source invisible
    
    intCounter = intCounter + 1 'To add the score up
    
Else  'If user drops the picture on the wrong control

    Source.Visible = True
        
End If

If intCounter = 5 Then lblWin.Visible = True 'To check if user has won

End Sub

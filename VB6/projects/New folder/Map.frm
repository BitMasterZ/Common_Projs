VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   10935
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   17805
   LinkTopic       =   "Form1"
   ScaleHeight     =   10935
   ScaleWidth      =   17805
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdOpen 
      Caption         =   "Open Map"
      Height          =   615
      Left            =   360
      TabIndex        =   9
      Top             =   6600
      Width           =   1815
   End
   Begin VB.CommandButton cmdMap 
      Caption         =   "Save Map"
      Height          =   615
      Left            =   360
      TabIndex        =   8
      Top             =   5400
      Width           =   1815
   End
   Begin VB.Frame Holder 
      Caption         =   "Block Types"
      Height          =   4095
      Left            =   0
      TabIndex        =   1
      Top             =   480
      Width           =   1215
      Begin VB.Label lblColors 
         BackColor       =   &H00400000&
         Height          =   375
         Index           =   5
         Left            =   360
         TabIndex        =   7
         Top             =   3480
         Width           =   375
      End
      Begin VB.Label lblColors 
         BackColor       =   &H00FF0000&
         Height          =   375
         Index           =   4
         Left            =   360
         TabIndex        =   6
         Top             =   2880
         Width           =   375
      End
      Begin VB.Label lblColors 
         BackColor       =   &H0000FFFF&
         Height          =   375
         Index           =   3
         Left            =   360
         TabIndex        =   5
         Top             =   2280
         Width           =   375
      End
      Begin VB.Label lblColors 
         BackColor       =   &H0000C000&
         Height          =   375
         Index           =   2
         Left            =   360
         TabIndex        =   4
         Top             =   1680
         Width           =   375
      End
      Begin VB.Label lblColors 
         BackColor       =   &H00000000&
         Height          =   375
         Index           =   1
         Left            =   360
         TabIndex        =   3
         Top             =   1080
         Width           =   375
      End
      Begin VB.Label lblColors 
         BackColor       =   &H000000FF&
         Height          =   375
         Index           =   0
         Left            =   360
         TabIndex        =   2
         Top             =   480
         Width           =   375
      End
   End
   Begin VB.PictureBox Map 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BorderStyle     =   0  'None
      Height          =   9735
      Left            =   3720
      ScaleHeight     =   649
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   785
      TabIndex        =   0
      Top             =   480
      Width           =   11775
   End
   Begin VB.Timer tmrAnim 
      Interval        =   1
      Left            =   4680
      Top             =   3000
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim World As New GridMap
Dim Player As New Character
Dim blnClick As Boolean
Dim Fill As Integer



Private Sub cmdMap_Click()
Open "C:/users/shobhit/desktop/map.txt" For Output As #1
    
Print #1, World.MapCode
    
Close #1


End Sub

Private Sub cmdOpen_Click()
Call World.Filler
End Sub

Private Sub Form_Load()
ScaleMode = 3
AutoRedraw = True
Call World.Generate(30)
'Call World.Filler

ReDim Col(0 To lblColors.Ubound) As Long

Col(0) = Me.BackColor
Col(1) = vbBlack
Col(2) = vbRed
Col(3) = vbGreen
Col(4) = vbBlue
Col(5) = vbCyan

For C = 0 To lblColors.Ubound
lblColors(C).BackColor = Col(C)
Next C



End Sub





Private Sub lblColors_Click(Index As Integer)
For C = 0 To lblColors.Ubound
lblColors(C).BorderStyle = 0
Next C
Fill = Index
lblColors(Index).BorderStyle = 1
End Sub



Private Sub Map_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
Call World.BFill(X, Y, Fill)
End Sub

Private Sub tmrAnim_Timer()
Cls
Call World.Draw(Map)

End Sub

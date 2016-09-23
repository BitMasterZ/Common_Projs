VERSION 5.00
Begin VB.Form Form2 
   BorderStyle     =   0  'None
   Caption         =   "Form2"
   ClientHeight    =   8250
   ClientLeft      =   60
   ClientTop       =   -30
   ClientWidth     =   11055
   Icon            =   "snake.frx":0000
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   8250
   ScaleWidth      =   11055
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdColour 
      Height          =   375
      Index           =   15
      Left            =   7800
      Style           =   1  'Graphical
      TabIndex        =   20
      Top             =   6120
      Width           =   615
   End
   Begin VB.CommandButton cmdColour 
      Height          =   375
      Index           =   14
      Left            =   7200
      Style           =   1  'Graphical
      TabIndex        =   19
      Top             =   6120
      Width           =   615
   End
   Begin VB.CommandButton cmdColour 
      Height          =   375
      Index           =   13
      Left            =   6600
      Style           =   1  'Graphical
      TabIndex        =   18
      Top             =   6120
      Width           =   615
   End
   Begin VB.CommandButton cmdColour 
      Height          =   375
      Index           =   12
      Left            =   6000
      Style           =   1  'Graphical
      TabIndex        =   17
      Top             =   6120
      Width           =   615
   End
   Begin VB.CommandButton cmdColour 
      Height          =   375
      Index           =   11
      Left            =   7800
      Style           =   1  'Graphical
      TabIndex        =   16
      Top             =   5760
      Width           =   615
   End
   Begin VB.CommandButton cmdColour 
      Height          =   375
      Index           =   10
      Left            =   7200
      Style           =   1  'Graphical
      TabIndex        =   15
      Top             =   5760
      Width           =   615
   End
   Begin VB.CommandButton cmdColour 
      Height          =   375
      Index           =   9
      Left            =   6600
      Style           =   1  'Graphical
      TabIndex        =   14
      Top             =   5760
      Width           =   615
   End
   Begin VB.CommandButton cmdColour 
      Height          =   375
      Index           =   8
      Left            =   6000
      Style           =   1  'Graphical
      TabIndex        =   13
      Top             =   5760
      Width           =   615
   End
   Begin VB.CommandButton cmdColour 
      Height          =   375
      Index           =   7
      Left            =   7800
      Style           =   1  'Graphical
      TabIndex        =   12
      Top             =   5400
      Width           =   615
   End
   Begin VB.CommandButton cmdColour 
      Height          =   375
      Index           =   6
      Left            =   7200
      Style           =   1  'Graphical
      TabIndex        =   11
      Top             =   5400
      Width           =   615
   End
   Begin VB.CommandButton cmdColour 
      Height          =   375
      Index           =   5
      Left            =   6600
      Style           =   1  'Graphical
      TabIndex        =   10
      Top             =   5400
      Width           =   615
   End
   Begin VB.CommandButton cmdColour 
      Height          =   375
      Index           =   4
      Left            =   6000
      Style           =   1  'Graphical
      TabIndex        =   9
      Top             =   5400
      Width           =   615
   End
   Begin VB.CommandButton cmdColour 
      Height          =   375
      Index           =   3
      Left            =   7800
      Style           =   1  'Graphical
      TabIndex        =   8
      Top             =   5040
      Width           =   615
   End
   Begin VB.CommandButton cmdColour 
      Height          =   375
      Index           =   2
      Left            =   7200
      Style           =   1  'Graphical
      TabIndex        =   7
      Top             =   5040
      Width           =   615
   End
   Begin VB.CommandButton cmdColour 
      Height          =   375
      Index           =   1
      Left            =   6600
      Style           =   1  'Graphical
      TabIndex        =   6
      Top             =   5040
      Width           =   615
   End
   Begin VB.CommandButton cmdColour 
      Height          =   375
      Index           =   0
      Left            =   6000
      Style           =   1  'Graphical
      TabIndex        =   5
      Top             =   5040
      Width           =   615
   End
   Begin VB.CommandButton cmdNone 
      Caption         =   "No Handicap"
      Height          =   615
      Left            =   2880
      TabIndex        =   4
      Top             =   6600
      Width           =   2055
   End
   Begin VB.CommandButton cmdRight 
      Caption         =   "No Righ+Down and        Down+Right"
      Height          =   615
      Left            =   2880
      TabIndex        =   3
      Top             =   5880
      Width           =   2055
   End
   Begin VB.CommandButton cmdLeft 
      Caption         =   "No Left+Up and        Up+Left"
      Height          =   615
      Left            =   2880
      TabIndex        =   2
      Top             =   5160
      Width           =   2055
   End
   Begin VB.Timer tmrcounter 
      Left            =   1080
      Top             =   6840
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "Handicap"
      BeginProperty Font 
         Name            =   "Vrinda"
         Size            =   24
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   660
      Left            =   3000
      TabIndex        =   1
      Top             =   4320
      Width           =   1830
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "Snake color"
      BeginProperty Font 
         Name            =   "Vrinda"
         Size            =   24
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   480
      Left            =   6240
      TabIndex        =   0
      Top             =   4320
      Width           =   1830
   End
   Begin VB.Image imgDrop 
      BorderStyle     =   1  'Fixed Single
      Height          =   1695
      Left            =   4800
      Top             =   1800
      Width           =   3855
   End
   Begin VB.Image imgMaze3 
      DragMode        =   1  'Automatic
      Height          =   1215
      Left            =   120
      Picture         =   "snake.frx":0ECA
      Stretch         =   -1  'True
      Top             =   4200
      Visible         =   0   'False
      Width           =   2100
   End
   Begin VB.Image imgMaze2 
      DragMode        =   1  'Automatic
      Height          =   1215
      Left            =   600
      Picture         =   "snake.frx":2890
      Stretch         =   -1  'True
      Top             =   2520
      Width           =   2100
   End
   Begin VB.Image imgMaze 
      DragMode        =   1  'Automatic
      Height          =   1215
      Left            =   600
      Picture         =   "snake.frx":3A7C
      Stretch         =   -1  'True
      Top             =   840
      Width           =   2100
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim intCounter As Integer, intColor As Integer


Private Sub cmdColour_Click(Index As Integer)
lngColor = cmdColour(Index).BackColor
End Sub

Private Sub cmdLeft_Click()
intHandicap = 1
End Sub

Private Sub cmdNone_Click()
intHandicap = 0
End Sub

Private Sub cmdRight_Click()
intHandicap = 2
End Sub

Private Sub Form_Load()
intRecordSec = 30 'Default record time when the game starts
lngColor = vbBlack

'Sets each command button to its coressponding QuickBasic colour
Dim intSpare As Integer

For intSpare = cmdColour.LBound To cmdColour.UBound
'Lbound is the lowest index and Ubound is the highest index
    
    cmdColour(intSpare).BackColor = QBColor(intSpare)
    
Next intSpare

End Sub

Private Sub imgDrop_DragDrop(Source As Control, X As Single, Y As Single) 'To Choose the maze


imgDrop.Picture = Source.Picture

tmrCounter.Interval = 1

If Source Is imgMaze2 Then 'If the second maze is selected makes special additions in form 1

    a = "imgMaze2.Picture"

ElseIf Source Is imgMaze Then 'If the first maze is selected

    a = "imgMaze.Picture"

End If

End Sub

Private Sub tmrCounter_Timer()

intCounter = intCounter + 1

If intCounter >= 5 Then

Form1.Show
Form1.Enabled = True
Unload Me

End If


End Sub

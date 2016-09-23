VERSION 5.00
Begin VB.Form frmMenuS 
   BorderStyle     =   0  'None
   Caption         =   "Form2"
   ClientHeight    =   6855
   ClientLeft      =   2655
   ClientTop       =   1050
   ClientWidth     =   5130
   Icon            =   "snake.frx":0000
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   6855
   ScaleWidth      =   5130
   ShowInTaskbar   =   0   'False
   Begin VB.CommandButton cmdReturn 
      Caption         =   "Return"
      BeginProperty Font 
         Name            =   "OCR A Extended"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   3720
      TabIndex        =   25
      Top             =   6240
      Width           =   1215
   End
   Begin VB.CommandButton cmdStart 
      Caption         =   "Start"
      BeginProperty Font 
         Name            =   "OCR A Extended"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   2280
      TabIndex        =   24
      Top             =   6240
      Width           =   1215
   End
   Begin VB.CommandButton cmdColour 
      Height          =   375
      Index           =   15
      Left            =   4200
      Style           =   1  'Graphical
      TabIndex        =   20
      Top             =   5760
      Width           =   615
   End
   Begin VB.CommandButton cmdColour 
      Height          =   375
      Index           =   14
      Left            =   3600
      Style           =   1  'Graphical
      TabIndex        =   19
      Top             =   5760
      Width           =   615
   End
   Begin VB.CommandButton cmdColour 
      Height          =   375
      Index           =   13
      Left            =   3000
      Style           =   1  'Graphical
      TabIndex        =   18
      Top             =   5760
      Width           =   615
   End
   Begin VB.CommandButton cmdColour 
      Height          =   375
      Index           =   12
      Left            =   2400
      Style           =   1  'Graphical
      TabIndex        =   17
      Top             =   5760
      Width           =   615
   End
   Begin VB.CommandButton cmdColour 
      Height          =   375
      Index           =   11
      Left            =   4200
      Style           =   1  'Graphical
      TabIndex        =   16
      Top             =   5400
      Width           =   615
   End
   Begin VB.CommandButton cmdColour 
      Height          =   375
      Index           =   10
      Left            =   3600
      Style           =   1  'Graphical
      TabIndex        =   15
      Top             =   5400
      Width           =   615
   End
   Begin VB.CommandButton cmdColour 
      Height          =   375
      Index           =   9
      Left            =   3000
      Style           =   1  'Graphical
      TabIndex        =   14
      Top             =   5400
      Width           =   615
   End
   Begin VB.CommandButton cmdColour 
      Height          =   375
      Index           =   8
      Left            =   2400
      Style           =   1  'Graphical
      TabIndex        =   13
      Top             =   5400
      Width           =   615
   End
   Begin VB.CommandButton cmdColour 
      Height          =   375
      Index           =   7
      Left            =   4200
      Style           =   1  'Graphical
      TabIndex        =   12
      Top             =   5040
      Width           =   615
   End
   Begin VB.CommandButton cmdColour 
      Height          =   375
      Index           =   6
      Left            =   3600
      Style           =   1  'Graphical
      TabIndex        =   11
      Top             =   5040
      Width           =   615
   End
   Begin VB.CommandButton cmdColour 
      Height          =   375
      Index           =   5
      Left            =   3000
      Style           =   1  'Graphical
      TabIndex        =   10
      Top             =   5040
      Width           =   615
   End
   Begin VB.CommandButton cmdColour 
      Height          =   375
      Index           =   4
      Left            =   2400
      Style           =   1  'Graphical
      TabIndex        =   9
      Top             =   5040
      Width           =   615
   End
   Begin VB.CommandButton cmdColour 
      Height          =   375
      Index           =   3
      Left            =   4200
      Style           =   1  'Graphical
      TabIndex        =   8
      Top             =   4680
      Width           =   615
   End
   Begin VB.CommandButton cmdColour 
      Height          =   375
      Index           =   2
      Left            =   3600
      Style           =   1  'Graphical
      TabIndex        =   7
      Top             =   4680
      Width           =   615
   End
   Begin VB.CommandButton cmdColour 
      Height          =   375
      Index           =   1
      Left            =   3000
      Style           =   1  'Graphical
      TabIndex        =   6
      Top             =   4680
      Width           =   615
   End
   Begin VB.CommandButton cmdColour 
      Height          =   375
      Index           =   0
      Left            =   2400
      Style           =   1  'Graphical
      TabIndex        =   5
      Top             =   4680
      Width           =   615
   End
   Begin VB.CommandButton cmdNone 
      Caption         =   "No Handicap"
      Height          =   615
      Left            =   120
      TabIndex        =   4
      Top             =   6240
      Width           =   2055
   End
   Begin VB.CommandButton cmdRight 
      Caption         =   "No Righ+Down and        Down+Right"
      Height          =   615
      Left            =   120
      TabIndex        =   3
      Top             =   5520
      Width           =   2055
   End
   Begin VB.CommandButton cmdLeft 
      Caption         =   "No Left+Up and        Up+Left"
      Height          =   615
      Left            =   120
      TabIndex        =   2
      Top             =   4800
      Width           =   2055
   End
   Begin VB.Timer tmrcounter 
      Left            =   360
      Top             =   6360
   End
   Begin VB.Label lblSubHead 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Maze 2"
      BeginProperty Font 
         Name            =   "Snap ITC"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Index           =   1
      Left            =   2880
      TabIndex        =   23
      Top             =   120
      Width           =   1320
   End
   Begin VB.Label lblSubHead 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Maze 1"
      BeginProperty Font 
         Name            =   "Snap ITC"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Index           =   0
      Left            =   480
      TabIndex        =   22
      Top             =   120
      Width           =   1230
   End
   Begin VB.Label lblHead 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Drop your Maze"
      BeginProperty Font 
         Name            =   "MS Serif"
         Size            =   24
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   525
      Left            =   720
      TabIndex        =   21
      Top             =   2520
      Width           =   3225
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
      Left            =   240
      TabIndex        =   1
      Top             =   3960
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
      Height          =   660
      Left            =   2400
      TabIndex        =   0
      Top             =   3960
      Width           =   2565
   End
   Begin VB.Image imgDrop 
      BorderStyle     =   1  'Fixed Single
      Height          =   1695
      Left            =   480
      Top             =   1920
      Width           =   3855
   End
   Begin VB.Image imgMaze2 
      DragMode        =   1  'Automatic
      Height          =   1215
      Left            =   2520
      Picture         =   "snake.frx":0ECA
      Stretch         =   -1  'True
      Top             =   480
      Width           =   2100
   End
   Begin VB.Image imgMaze 
      DragMode        =   1  'Automatic
      Height          =   1215
      Left            =   120
      Picture         =   "snake.frx":20B6
      Stretch         =   -1  'True
      Top             =   480
      Width           =   2100
   End
End
Attribute VB_Name = "frmMenuS"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
'Coded by: Shobhit and Sethuwran
Dim intColor As Integer 'Box colors


Private Sub cmdColour_Click(Index As Integer)

    lngColor = cmdColour(Index).BackColor 'assigns snake color

End Sub

Private Sub cmdLeft_Click()

    intHandicap = 1

End Sub

Private Sub cmdNone_Click()

    intHandicap = 0

End Sub

Private Sub cmdReturn_Click()
frmMMain.Show
Unload Me
End Sub

Private Sub cmdRight_Click()

    intHandicap = 2

End Sub

Private Sub cmdStart_Click()




If a <> "" Then 'If maze is chosen
    
'Redirects to game
    frmGameS.Show
    frmGameS.Enabled = True
    Unload Me

'Enables game
frmGameS.tmrMove.Interval = 1
frmGameS.tmrTime.Interval = 1000

Else
        
    MsgBox ("Choose your maze")

End If

End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
If KeyCode = 27 Then End

End Sub

Private Sub Form_Load()

'Default record time and snake color
    
    lngColor = vbBlack

'Sets each command button to its coressponding QuickBasic colour
    Dim intSpare As Integer

    For intSpare = cmdColour.LBound To cmdColour.UBound
    'Lbound is the lowest index and Ubound is the highest index
    
        cmdColour(intSpare).BackColor = QBColor(intSpare)
    
    Next intSpare

End Sub

Private Sub imgDrop_DragDrop(Source As Control, X As Single, Y As Single) 'To Choose the maze

'Assign picture
    imgDrop.Picture = Source.Picture


If Source Is imgMaze2 Then 'If the second maze is selected makes special additions in form 1

    a = "imgMaze2.Picture"

ElseIf Source Is imgMaze Then 'If the first maze is selected

    a = "imgMaze.Picture"

End If

lblHead.Visible = False

End Sub


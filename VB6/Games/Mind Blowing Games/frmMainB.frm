VERSION 5.00
Begin VB.Form frmMainB 
   BorderStyle     =   0  'None
   Caption         =   "Form1"
   ClientHeight    =   6465
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   8055
   Icon            =   "frmMainB.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   6465
   ScaleWidth      =   8055
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdReturn 
      Caption         =   "Return"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   27.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   645
      Left            =   5760
      TabIndex        =   8
      Top             =   4920
      Width           =   2295
   End
   Begin VB.CommandButton cmdControls 
      Caption         =   "Controls"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   27.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   645
      Left            =   5280
      TabIndex        =   5
      Top             =   5760
      Width           =   2775
   End
   Begin VB.CommandButton cmdAbout 
      Caption         =   "About"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   27.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   645
      Left            =   3000
      TabIndex        =   4
      Top             =   5760
      Width           =   1815
   End
   Begin VB.CommandButton cmdReset 
      Caption         =   "Reset"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   24
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   435
      Left            =   3720
      TabIndex        =   3
      Top             =   3240
      Width           =   1815
   End
   Begin VB.CommandButton cmdStart 
      Caption         =   "Start"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   27.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   645
      Left            =   120
      TabIndex        =   2
      Top             =   5760
      Width           =   1815
   End
   Begin VB.Timer tmrMarq 
      Interval        =   1
      Left            =   840
      Top             =   360
   End
   Begin VB.Image imgVoid 
      Height          =   1335
      Left            =   0
      Top             =   120
      Width           =   615
   End
   Begin VB.Image imgSource 
      DragMode        =   1  'Automatic
      Height          =   1425
      Index           =   2
      Left            =   4560
      Picture         =   "frmMainB.frx":08CA
      Top             =   4080
      Width           =   1260
   End
   Begin VB.Image imgSource 
      DragMode        =   1  'Automatic
      Height          =   1425
      Index           =   1
      Left            =   2640
      Picture         =   "frmMainB.frx":6690
      Top             =   4080
      Width           =   1290
   End
   Begin VB.Label lbl1 
      AutoSize        =   -1  'True
      Caption         =   "VS"
      BeginProperty Font 
         Name            =   "Papyrus"
         Size            =   36
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1140
      Left            =   4080
      TabIndex        =   1
      Top             =   1800
      Width           =   1245
   End
   Begin VB.Image imgDrop 
      BorderStyle     =   1  'Fixed Single
      Height          =   2055
      Index           =   2
      Left            =   5640
      Stretch         =   -1  'True
      Top             =   1320
      Width           =   1575
   End
   Begin VB.Image imgDrop 
      BorderStyle     =   1  'Fixed Single
      Height          =   2055
      Index           =   1
      Left            =   2040
      Stretch         =   -1  'True
      Top             =   1320
      Width           =   1575
   End
   Begin VB.Label lblHead 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "The Undead Archers"
      BeginProperty Font 
         Name            =   "Old English Text MT"
         Size            =   48
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1155
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   8025
   End
   Begin VB.Label lbl 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Player 2"
      BeginProperty Font 
         Name            =   "Agency FB"
         Size            =   21.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   525
      Index           =   1
      Left            =   5760
      TabIndex        =   7
      Top             =   2040
      Width           =   1170
   End
   Begin VB.Label lbl 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Player 1"
      BeginProperty Font 
         Name            =   "Agency FB"
         Size            =   21.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   525
      Index           =   0
      Left            =   2160
      TabIndex        =   6
      Top             =   2040
      Width           =   1065
   End
End
Attribute VB_Name = "frmMainB"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

'Coded by: Shobhit and Sethuwran
Private Sub cmdAbout_Click()
'Open about
    frmAboutB.Show
    
End Sub

Private Sub cmdControls_Click()
frmControlsB.Show
End Sub

Private Sub cmdReset_Click()
'Reset picture
    imgDrop(1).Picture = imgVoid.Picture
    imgDrop(2).Picture = imgVoid.Picture


intBow(1) = 0
intBow(2) = 0

End Sub


Private Sub cmdReturn_Click()
frmMMain.Show
    Unload Me
End Sub

Private Sub cmdStart_Click()

If intBow(1) = 0 Or intBow(2) = 0 Then 'If no character is selected
    
    MsgBox ("Choose a character")

Else

'Redirect to the game form
    frmGameB.Show
    Unload Me
    
End If

End Sub





Private Sub imgDrop_DragDrop(Index As Integer, Source As Control, X As Single, Y As Single)

'Assign picture and index
    imgDrop(Index).Picture = Source.Picture
    intBow(Index) = Source.Index
    
End Sub

Private Sub tmrMarq_Timer()
'Marquee effect
    lblHead.Left = lblHead.Left - 50

    If lblHead.Left <= -lblHead.Width Then 'Left collision
    
        lblHead.Left = Me.Width
    End If


If GetAsyncKeyState(27) Then
frmMMain.Show
    Unload Me

End If
End Sub

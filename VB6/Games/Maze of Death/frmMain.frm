VERSION 5.00
Begin VB.Form frmMain 
   BorderStyle     =   0  'None
   Caption         =   "Form1"
   ClientHeight    =   8520
   ClientLeft      =   0
   ClientTop       =   -30
   ClientWidth     =   8715
   Icon            =   "frmMain.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   8520
   ScaleWidth      =   8715
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdHow 
      Caption         =   "Instructions"
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
      Left            =   2760
      TabIndex        =   5
      Top             =   7680
      Width           =   2895
   End
   Begin VB.CommandButton cmdExit 
      Cancel          =   -1  'True
      Caption         =   "Exit"
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
      Left            =   5160
      TabIndex        =   4
      Top             =   6840
      Width           =   1335
   End
   Begin VB.CommandButton cmdAbout 
      Caption         =   "About"
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
      Left            =   3360
      TabIndex        =   3
      Top             =   6840
      Width           =   1455
   End
   Begin VB.CommandButton cmdStart 
      Caption         =   "Start"
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
      Left            =   1800
      TabIndex        =   2
      Top             =   6840
      Width           =   1335
   End
   Begin VB.Image imgDrop 
      BorderStyle     =   1  'Fixed Single
      Height          =   1530
      Left            =   3600
      Stretch         =   -1  'True
      Top             =   4680
      Width           =   975
   End
   Begin VB.Image imgVik 
      DragMode        =   1  'Automatic
      Height          =   1530
      Index           =   3
      Left            =   4200
      Picture         =   "frmMain.frx":08CA
      Stretch         =   -1  'True
      Top             =   2640
      Width           =   1095
   End
   Begin VB.Image imgVik 
      DragMode        =   1  'Automatic
      Height          =   1530
      Index           =   2
      Left            =   2880
      Picture         =   "frmMain.frx":25B30
      Stretch         =   -1  'True
      Top             =   2640
      Width           =   975
   End
   Begin VB.Image imgVik 
      DragMode        =   1  'Automatic
      Height          =   1530
      Index           =   1
      Left            =   1560
      Picture         =   "frmMain.frx":2A7F2
      Stretch         =   -1  'True
      Top             =   2640
      Width           =   975
   End
   Begin VB.Image imgVik 
      DragMode        =   1  'Automatic
      Height          =   1530
      Index           =   4
      Left            =   5640
      Picture         =   "frmMain.frx":2F64C
      Stretch         =   -1  'True
      Top             =   2640
      Width           =   975
   End
   Begin VB.Label lblSubHead 
      Caption         =   "Choose your character"
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
      Left            =   2760
      TabIndex        =   1
      Top             =   1800
      Width           =   5055
   End
   Begin VB.Label lblHead 
      Caption         =   "Welcome to the Maze of Death"
      BeginProperty Font 
         Name            =   "Palace Script MT"
         Size            =   48
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   1080
      TabIndex        =   0
      Top             =   600
      Width           =   7215
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Dim int viking as a global variable
Dim intSpare As Integer 'For control arrays

Private Sub cmdAbout_Click()

frmAbout.Show 'Show about dialog

End Sub

Private Sub cmdExit_Click()
    
    End

End Sub

Private Sub cmdHow_Click()

    frmInstructions.Show

End Sub

Private Sub cmdStart_Click()

If intViking = 0 Then 'If user does not choose character

    MsgBox "Choose Your Warrior"

Else
    
'Redirects to main form
    frmGame.Show
    Unload Me

End If

End Sub

Private Sub Form_Load()

End Sub

Private Sub imgDrop_DragDrop(Source As Control, X As Single, Y As Single)

'Makes other image visible
For intSpare = imgVik.LBound To imgVik.Ubound

imgVik(intSpare).Visible = True

Next intSpare

'Assigns picture to box
    imgDrop.Picture = Source.Picture
    Source.Visible = False
    
intViking = Source.Index 'Stores the index of selection

End Sub


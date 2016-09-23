VERSION 5.00
Begin VB.Form frmMainS 
   BackColor       =   &H00000000&
   BorderStyle     =   3  'Fixed Dialog
   ClientHeight    =   4875
   ClientLeft      =   255
   ClientTop       =   1410
   ClientWidth     =   9300
   ClipControls    =   0   'False
   ControlBox      =   0   'False
   Icon            =   "frmMain.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4875
   ScaleWidth      =   9300
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton cmdStart 
      BackColor       =   &H00808080&
      Caption         =   "Start"
      BeginProperty Font 
         Name            =   "OCR A Extended"
         Size            =   20.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   3360
      Style           =   1  'Graphical
      TabIndex        =   3
      Top             =   3360
      Width           =   1695
   End
   Begin VB.Timer tmrLoad 
      Left            =   4440
      Top             =   360
   End
   Begin VB.Label lblSubHead 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "Script MT Bold"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   435
      Left            =   720
      TabIndex        =   2
      Top             =   1080
      Width           =   90
   End
   Begin VB.Image imgHead 
      Height          =   2625
      Left            =   5400
      Picture         =   "frmMain.frx":0ECA
      Stretch         =   -1  'True
      Top             =   1320
      Width           =   3765
   End
   Begin VB.Label lblHead 
      BackStyle       =   0  'Transparent
      Caption         =   "Slithering Snake"
      BeginProperty Font 
         Name            =   "Old English Text MT"
         Size            =   60
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   2835
      Left            =   0
      TabIndex        =   1
      Top             =   1560
      Width           =   5115
   End
   Begin VB.Label lblLoad 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Loading........"
      BeginProperty Font 
         Name            =   "Parchment"
         Size            =   42
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   900
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   2355
   End
   Begin VB.Shape shpLoad 
      FillColor       =   &H00FFFFFF&
      FillStyle       =   0  'Solid
      Height          =   375
      Left            =   2520
      Top             =   480
      Width           =   135
   End
End
Attribute VB_Name = "frmMainS"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Coded by: Senthwuran and Shobhit
'Purpose Startup Splash Screen

Option Explicit
Dim sngX As Single, sngY As Single ' Snake position
Dim intX As Integer, intY As Integer  'movement factor
Dim intCounter As Integer 'Snake move interval
Private Sub cmdStart_Click()

'Snake start position
    sngX = imgHead.Left + imgHead.Width / 2
    sngY = imgHead.Top + imgHead.Height / 2

'Snake start factor
intY = -10

'Disables/enables components
    tmrLoad.Interval = 1
    imgHead.Visible = False
    cmdStart.Enabled = False

End Sub

Private Sub Form_KeyPress(KeyAscii As Integer)

'Redirect to menu form
    frmMenuS.Show
    Unload Me
 

End Sub



Private Sub tmrLoad_Timer()
'Progress bar
    shpLoad.Width = shpLoad.Width + 7

'Titles for progress bar
Select Case shpLoad.Width

    Case Is <= 1000
    
        lblSubHead.Caption = "Creating Interfaces"

    Case 1000 To 2000

        lblSubHead.Caption = "Making controls"
    
    Case 2000 To 3000

        lblSubHead.Caption = "Loading forms"

    Case 3000 To 4000

        lblSubHead.Caption = "Initialing program"
    
    Case Is >= 5000

        frmMenuS.Show
        Unload Me

End Select

'Draw snake box
Line (imgHead.Left, imgHead.Top)-(imgHead.Left + imgHead.Width, imgHead.Top + imgHead.Height), vbWhite, B


intCounter = intCounter + 1 'Controls snakes movements

sngX = sngX + intX
sngY = sngY + intY

'Draws snake
PSet (sngX, sngY), vbWhite

Select Case intCounter

    Case Is < 125
    'Up
        intY = -10

    Case 125 To 250
    'Left
        intY = 0
        intX = -10

    Case 250 To 400
    'Down
        intY = 10
        intX = 0

    Case 400 To 550
    'Right
        intY = 0
        intX = 10

    Case 550 To 600
    'Up
        intY = -10
        intX = 0

    Case 600 To 700
    'Right
        intY = 0
        intX = 10

End Select

End Sub

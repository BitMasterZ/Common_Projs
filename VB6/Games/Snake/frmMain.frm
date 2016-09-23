VERSION 5.00
Begin VB.Form frmMain 
   BackColor       =   &H00000000&
   BorderStyle     =   3  'Fixed Dialog
   ClientHeight    =   4845
   ClientLeft      =   255
   ClientTop       =   1410
   ClientWidth     =   8160
   ClipControls    =   0   'False
   ControlBox      =   0   'False
   Icon            =   "frmMain.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4845
   ScaleWidth      =   8160
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
      Top             =   4080
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
      Height          =   2985
      Left            =   3840
      Picture         =   "frmMain.frx":0ECA
      Stretch         =   -1  'True
      Top             =   960
      Width           =   4245
   End
   Begin VB.Label lblHead 
      BackStyle       =   0  'Transparent
      Caption         =   "Snake Game"
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
      Left            =   120
      TabIndex        =   1
      Top             =   1800
      Width           =   3435
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
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Option Explicit
Dim sngX As Single, sngY As Single
Dim intX As Integer, intY As Integer, intCounter As Integer

Private Sub cmdStart_Click()
sngX = imgHead.Left + imgHead.Width / 2
sngY = imgHead.Top + imgHead.Height / 2
intY = -10
tmrLoad.Interval = 1
imgHead.Visible = False

End Sub

Private Sub Form_KeyPress(KeyAscii As Integer)
    
    Unload Me

End Sub

Private Sub tmrLoad_Timer()
shpLoad.Width = shpLoad.Width + 5
If shpLoad.Width <= 1000 Then
    
    lblSubHead.Caption = "Creating Interfaces"

ElseIf shpLoad.Width > 1000 And shpLoad.Width <= 2000 Then

    lblSubHead.Caption = "Making controls"
    
ElseIf shpLoad.Width > 2000 And shpLoad.Width <= 3000 Then

    lblSubHead.Caption = "Loading forms"

ElseIf shpLoad.Width > 3000 And shpLoad.Width <= 4000 Then

    lblSubHead.Caption = "Initialing program"
    
ElseIf shpLoad.Width >= 5000 Then

    Form2.Show
    Unload Me

End If

Line (imgHead.Left, imgHead.Top)-(imgHead.Left + imgHead.Width, imgHead.Top + imgHead.Height), vbWhite, B

intCounter = intCounter + 1

sngX = sngX + intX
sngY = sngY + intY


PSet (sngX, sngY), vbWhite

If intCounter <= 100 Then

    intY = -10

ElseIf intCounter > 100 And intCounter <= 300 Then

intY = 0
intX = -10

ElseIf intCounter > 300 And intCounter <= 500 Then

intY = 10
intX = 0

ElseIf intCounter > 500 And intCounter <= 800 Then

intY = 0
intX = 10

ElseIf intCounter > 800 And intCounter <= 1000 Then

intY = -10
intX = 0


End If
End Sub

VERSION 5.00
Begin VB.Form frmIntro 
   AutoRedraw      =   -1  'True
   BackColor       =   &H00000000&
   BorderStyle     =   0  'None
   ClientHeight    =   4590
   ClientLeft      =   120
   ClientTop       =   420
   ClientWidth     =   9990
   ControlBox      =   0   'False
   Icon            =   "frmIntro.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   306
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   666
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer tmrEffects 
      Interval        =   1
      Left            =   5880
      Top             =   2280
   End
   Begin VB.Label lblWelcome 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Welcome to my Isu"
      BeginProperty Font 
         Name            =   "OCR A Std"
         Size            =   24
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   510
      Left            =   2280
      TabIndex        =   0
      Top             =   1920
      Visible         =   0   'False
      Width           =   5865
   End
   Begin VB.Menu mnuSkip 
      Caption         =   "Skip"
   End
End
Attribute VB_Name = "frmIntro"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Option Explicit
Dim sngX As Single, sngY As Single
Dim sngCoor(1 To 2) As Single, sngRad As Single
Dim blnFinish As Boolean, intC As Integer

Private Sub mnuSkip_Click()
    blnFinish = True
    frmMenu.Show
    Unload Me
End Sub

Private Sub tmrEffects_Timer()
'Sin Curves
    If sngX < Me.ScaleWidth + 80 Then
        sngX = sngX + 1
        sngY = 50 * Sin(25 * sngX)
    'Display
        Line (sngX, sngY + 150)-(sng + 1, 50 * Sin(25 * sngX) + 150), vbGreen
        Line (sngX, sngY + 50)-(sng + 1, 50 * Sin(25 * sngX) + 50), vbRed
        Line (sngX, sngY + 250)-(sng + 1, 50 * Sin(25 * sngX) + 250), vbBlue
    
'Circle
    ElseIf sngRad < 400 Then
        sngCoor(1) = Me.ScaleWidth / 2
        sngCoor(2) = Me.ScaleHeight / 2
        sngRad = sngRad + 0.5
    'Display
        Circle (sngCoor(1), sngCoor(2)), sngRad

'Show Welcome sign
    Else
        lblWelcome.Visible = True
End If


If lblWelcome.Visible = True Then
    intC = intC + 1
    If intC > 20 Then
        blnFinish = True
        frmMenu.Show
        Unload Me
    End If
End If

End Sub

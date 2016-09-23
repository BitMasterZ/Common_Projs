VERSION 5.00
Begin VB.Form frm1 
   AutoRedraw      =   -1  'True
   BorderStyle     =   0  'None
   Caption         =   "Form1"
   ClientHeight    =   8700
   ClientLeft      =   0
   ClientTop       =   30
   ClientWidth     =   15765
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   8700
   ScaleWidth      =   15765
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.PictureBox picSprite 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      BackColor       =   &H80000005&
      DrawWidth       =   2
      Enabled         =   0   'False
      ForeColor       =   &H80000008&
      Height          =   2685
      Left            =   6600
      Picture         =   "Shapes.frx":0000
      ScaleHeight     =   177
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   164
      TabIndex        =   1
      Top             =   4680
      Visible         =   0   'False
      Width           =   2490
   End
   Begin VB.PictureBox picMask 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      BackColor       =   &H80000005&
      DrawWidth       =   2
      Enabled         =   0   'False
      ForeColor       =   &H80000008&
      Height          =   2685
      Left            =   4080
      Picture         =   "Shapes.frx":15470
      ScaleHeight     =   177
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   164
      TabIndex        =   0
      Top             =   4680
      Visible         =   0   'False
      Width           =   2490
   End
   Begin VB.Timer tmrcounter 
      Interval        =   10
      Left            =   5040
      Top             =   4200
   End
   Begin VB.Label label1 
      Caption         =   "Click"
      Height          =   975
      Left            =   1800
      TabIndex        =   2
      Top             =   5760
      Width           =   1815
   End
End
Attribute VB_Name = "frm1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Const imgWidth As Integer = 41
Const imgHeight As Integer = 57
Dim intframeX As Integer
Dim intframeY As Integer
Dim intleft As Integer
Dim intop As Integer
Dim sngX As Integer, sngY As Integer
Dim blnA As Boolean
Dim intspare As Integer
Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
If KeyCode = vbKeyRight Then
intleft = intleft + 10
intframeX = 3
intframeY = intframeY + 1
ElseIf KeyCode = vbKeyLeft Then
intleft = intleft - 10
intframeX = 2
intframeY = intframeY + 1
ElseIf KeyCode = vbKeyUp Then
intop = intop - 10
intframeX = 1
intframeY = intframeY + 1
ElseIf KeyCode = vbKeyDown Then
intop = intop + 10
intframeX = 0
intframeY = intframeY + 1
End If
End Sub


Private Sub Form_Load()
intleft = 300
End Sub

Private Sub Label1_Click()
blnA = Not blnA
End Sub

Private Sub tmrcounter_Timer()

If intframeY >= 3 Then
intframeY = 0
End If
'Cls


If blnA = True Then
Cls
Else
Call Key(vbKeyF)
End If


bitblt Me.hDC, intleft, intop, imgWidth, imgHeight, picMask.hDC, _
     intframeX * imgWidth, intframeY * imgHeight, SRCAND
bitblt Me.hDC, intleft, intop, imgWidth, imgHeight, picSprite.hDC, _
  intframeX * imgWidth, intframeY * imgHeight, SRCINVERT
End Sub

Private Sub Ok()
sngX = intleft
sngY = intop
End Sub

Private Sub Key(a As Integer)
If a = vbKeyF Then
Call Ok
Me.PSet (sngX, sngY), vbBlack
End If
End Sub

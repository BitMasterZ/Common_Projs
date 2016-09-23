VERSION 5.00
Begin VB.Form Form1 
   AutoRedraw      =   -1  'True
   Caption         =   "Form1"
   ClientHeight    =   8805
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   11385
   LinkTopic       =   "Form1"
   ScaleHeight     =   8805
   ScaleWidth      =   11385
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
      Picture         =   "mybitblt.frx":0000
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
      Picture         =   "mybitblt.frx":15470
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
End
Attribute VB_Name = "Form1"
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

Private Sub tmrcounter_Timer()
If intframeY >= 3 Then
intframeY = 0
End If
Cls
BitBlt Me.hDC, intleft, intop, imgWidth, imgHeight, picMask.hDC, _
     intframeX * imgWidth, intframeY * imgHeight, SRCAND
BitBlt Me.hDC, intleft, intop, imgWidth, imgHeight, picSprite.hDC, _
  intframeX * imgWidth, intframeY * imgHeight, SRCINVERT
End Sub

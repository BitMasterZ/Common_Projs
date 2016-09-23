VERSION 5.00
Begin VB.Form Form1 
   AutoRedraw      =   -1  'True
   Caption         =   "Form1"
   ClientHeight    =   7275
   ClientLeft      =   120
   ClientTop       =   420
   ClientWidth     =   11415
   LinkTopic       =   "Form1"
   ScaleHeight     =   485
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   761
   StartUpPosition =   3  'Windows Default
   Begin VB.PictureBox picMask 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      ForeColor       =   &H80000008&
      Height          =   1515
      Left            =   1080
      Picture         =   "2.frx":0000
      ScaleHeight     =   99
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   417
      TabIndex        =   1
      Top             =   5040
      Visible         =   0   'False
      Width           =   6285
   End
   Begin VB.PictureBox picSprite 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      ForeColor       =   &H80000008&
      Height          =   1515
      Left            =   1080
      Picture         =   "2.frx":A6B0
      ScaleHeight     =   99
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   417
      TabIndex        =   0
      Top             =   3600
      Visible         =   0   'False
      Width           =   6285
   End
   Begin VB.Timer tmrmove 
      Interval        =   1
      Left            =   4440
      Top             =   720
   End
   Begin VB.Timer timer 
      Interval        =   1
      Left            =   9360
      Top             =   1680
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Const imgWidth As Integer = 70
Const imgHeight As Integer = 190
Dim intframe As Integer
Dim LeftPos As Integer
Dim TopPos As Integer

Private Sub Form_Load()

End Sub

Private Sub tmrmove_Timer()
Cls
bitblt Me.hDC, LeftPos, TopPos, imgWidth, imgHeight, picMask.hDC, _
     intframe * imgWidth, 0, SRCAND
bitblt Me.hDC, LeftPos, TopPos, imgWidth, imgHeight, picSprite.hDC, _
  intframe * imgWidth, 0, SRCINVERT
If GetAsyncKeyState(vbKeyRight) Then
LeftPos = LeftPos + 10
intframe = intframe + 1
End If
If intframe > 5 Then
intframe = 0
End If
If LeftPos >= 1000 Then
TopPos = TopPos + 100
LeftPos = 0
End If
End Sub



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
   Begin VB.Timer tmrmove 
      Interval        =   100
      Left            =   4440
      Top             =   720
   End
   Begin VB.Timer timer 
      Interval        =   1
      Left            =   9360
      Top             =   1680
   End
   Begin VB.PictureBox picMask 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      ForeColor       =   &H80000008&
      Height          =   2310
      Left            =   1440
      Picture         =   "test.frx":0000
      ScaleHeight     =   152
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   382
      TabIndex        =   1
      Top             =   4320
      Visible         =   0   'False
      Width           =   5760
   End
   Begin VB.PictureBox picSprite 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      ForeColor       =   &H80000008&
      Height          =   2310
      Left            =   1440
      Picture         =   "test.frx":2A9E2
      ScaleHeight     =   152
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   382
      TabIndex        =   0
      Top             =   1920
      Visible         =   0   'False
      Width           =   5760
   End
   Begin VB.Shape Shape1 
      Height          =   135
      Left            =   6840
      Top             =   1800
      Width           =   1815
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Const imgWidth As Integer = 384 / 2.5
Const imgHeight As Integer = 150
Dim intframe As Integer
Private Sub Form_Load()
bitblt Me.hDC, 0, 0, imgWidth, imgHeight, picMask.hDC, _
     0, 0, SRCAND
bitblt Me.hDC, 0, 0, imgWidth, imgHeight, picSprite.hDC, _
  0, 0, SRCINVERT
End Sub

Private Sub tmrmove_Timer()
Cls
bitblt Me.hDC, 100, 100, imgWidth, imgHeight, picMask.hDC, _
     intframe * 100 + 5, 10, SRCAND
bitblt Me.hDC, 100, 100, imgWidth, imgHeight, picSprite.hDC, _
  intframe * 100 + 5, 10, SRCINVERT
  intframe = intframe + 1
If intframe > 2 Then
intframe = 0
tmrmove.Interval = 0
End If
End Sub



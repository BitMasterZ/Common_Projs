VERSION 5.00
Begin VB.Form Form1 
   AutoRedraw      =   -1  'True
   Caption         =   "Form1"
   ClientHeight    =   7275
   ClientLeft      =   120
   ClientTop       =   420
   ClientWidth     =   11415
   LinkTopic       =   "Form1"
   ScaleHeight     =   7275
   ScaleWidth      =   11415
   StartUpPosition =   3  'Windows Default
   Begin VB.PictureBox picSprite 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      ForeColor       =   &H80000008&
      Height          =   1185
      Left            =   120
      Picture         =   "3.frx":0000
      ScaleHeight     =   77
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   627
      TabIndex        =   1
      Top             =   2400
      Visible         =   0   'False
      Width           =   9435
   End
   Begin VB.Timer tmrmove 
      Interval        =   100
      Left            =   4440
      Top             =   720
   End
   Begin VB.PictureBox picMask 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      ForeColor       =   &H80000008&
      Height          =   1185
      Left            =   120
      Picture         =   "3.frx":236EE
      ScaleHeight     =   77
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   627
      TabIndex        =   0
      Top             =   3600
      Visible         =   0   'False
      Width           =   9435
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Dim imgWidth As Integer
Dim imgHeight As Integer
Dim intframe As Integer
Dim sngX As Single

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
If KeyCode = vbKeyRight Then
If intframe < 5 Then
intframe = intframe + 1
Else
intframe = 0
End If
sngX = sngX + 7
End If
End Sub

Private Sub Form_Load()
imgWidth = 100
imgHeight = 100
bitblt Me.hDC, sngX, 100, imgWidth, imgHeight, picMask.hDC, _
     intframe * 100 + 5, 0, SRCAND
bitblt Me.hDC, sngX, 100, imgWidth, imgHeight, picSprite.hDC, _
  intframe * 100 + 5, 0, SRCINVERT
End Sub

Private Sub tmrmove_Timer()
Cls
bitblt Me.hDC, sngX, 100, imgWidth, imgHeight, picMask.hDC, _
     intframe * imgWidth + 5, 5, SRCAND
bitblt Me.hDC, sngX, 100, imgWidth, imgHeight, picSprite.hDC, _
  intframe * imgWidth + 5, 5, SRCINVERT
  


End Sub



VERSION 5.00
Begin VB.Form frmBitBlt 
   Caption         =   "BitBlt Animation."
   ClientHeight    =   4800
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   6285
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   320
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   419
   StartUpPosition =   3  'Windows Default
   Begin VB.PictureBox picSprite 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      ForeColor       =   &H80000008&
      Height          =   1515
      Left            =   0
      Picture         =   "bitblt1.frx":0000
      ScaleHeight     =   99
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   417
      TabIndex        =   2
      Top             =   1800
      Width           =   6285
   End
   Begin VB.PictureBox picMask 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      ForeColor       =   &H80000008&
      Height          =   1515
      Left            =   0
      Picture         =   "bitblt1.frx":1E470
      ScaleHeight     =   99
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   417
      TabIndex        =   1
      Top             =   3240
      Width           =   6285
   End
   Begin VB.PictureBox picContainer 
      AutoRedraw      =   -1  'True
      BorderStyle     =   0  'None
      Height          =   1575
      Left            =   120
      ScaleHeight     =   105
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   401
      TabIndex        =   0
      Top             =   120
      Width           =   6015
   End
End
Attribute VB_Name = "frmBitBlt"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Dim LeftPos As Double
Dim Frame As Integer
Dim maxFrame As Integer

Private Sub Form_GotFocus()

    picContainer.SetFocus

End Sub

Private Sub Form_Load()
    
    LeftPos = 0
    
    picContainer.Cls
    BitBlt picContainer.hDC, LeftPos, 0, 70, 190, picMask.hDC, _
           FrameDirection, Frame, SRCAND
    BitBlt picContainer.hDC, LeftPos, 0, 70, 190, picSprite.hDC, _
           FrameDirection, Frame, SRCINVERT
    Frame = 1
    
End Sub

Private Sub picContainer_KeyDown(KeyCode As Integer, Shift As Integer)

    maxFrame = 5

    If KeyCode = vbKeyRight Then
        Frame = Frame + 1

            If Frame > maxFrame Then
                Frame = 1
            End If
    
            If LeftPos < picContainer.Width Then
                LeftPos = LeftPos + 4
            Else
                LeftPos = 0
            End If
    
            picContainer.Cls
            BitBlt picContainer.hDC, LeftPos, 0, 70, 190, picMask.hDC, _
                Frame * 70, 0, vbSrcAnd
            BitBlt picContainer.hDC, LeftPos, 0, 70, 190, picSprite.hDC, _
                Frame * 70, 0, vbSrcPaint

    End If

End Sub


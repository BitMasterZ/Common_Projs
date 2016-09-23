VERSION 5.00
Begin VB.Form frmBitBltActivity 
   AutoRedraw      =   -1  'True
   BackColor       =   &H8000000A&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "BitBltActivity"
   ClientHeight    =   7185
   ClientLeft      =   3615
   ClientTop       =   885
   ClientWidth     =   7440
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   479
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   496
   Begin VB.PictureBox Picture1 
      BackColor       =   &H000000FF&
      Enabled         =   0   'False
      Height          =   735
      Index           =   4
      Left            =   120
      ScaleHeight     =   675
      ScaleWidth      =   435
      TabIndex        =   13
      Top             =   6120
      Width           =   495
   End
   Begin VB.PictureBox Picture1 
      BackColor       =   &H000000FF&
      Enabled         =   0   'False
      Height          =   735
      Index           =   11
      Left            =   3000
      ScaleHeight     =   675
      ScaleWidth      =   315
      TabIndex        =   12
      Top             =   4320
      Width           =   375
   End
   Begin VB.PictureBox Picture1 
      BackColor       =   &H000000FF&
      Enabled         =   0   'False
      Height          =   3495
      Index           =   10
      Left            =   5880
      ScaleHeight     =   3435
      ScaleWidth      =   435
      TabIndex        =   11
      Top             =   1800
      Width           =   495
   End
   Begin VB.PictureBox Picture1 
      BackColor       =   &H000000FF&
      Enabled         =   0   'False
      Height          =   2535
      Index           =   9
      Left            =   7080
      ScaleHeight     =   2475
      ScaleWidth      =   315
      TabIndex        =   10
      Top             =   4800
      Width           =   375
   End
   Begin VB.PictureBox Picture1 
      BackColor       =   &H000000FF&
      Enabled         =   0   'False
      Height          =   495
      Index           =   8
      Left            =   4680
      ScaleHeight     =   435
      ScaleWidth      =   2715
      TabIndex        =   9
      Top             =   480
      Width           =   2775
   End
   Begin VB.PictureBox Picture1 
      BackColor       =   &H000000FF&
      Enabled         =   0   'False
      Height          =   495
      Index           =   7
      Left            =   4800
      ScaleHeight     =   435
      ScaleWidth      =   1755
      TabIndex        =   8
      Top             =   6480
      Width           =   1815
   End
   Begin VB.PictureBox Picture1 
      BackColor       =   &H000000FF&
      Enabled         =   0   'False
      Height          =   3015
      Index           =   6
      Left            =   4560
      ScaleHeight     =   2955
      ScaleWidth      =   555
      TabIndex        =   7
      Top             =   2160
      Width           =   615
   End
   Begin VB.PictureBox Picture1 
      BackColor       =   &H000000FF&
      Enabled         =   0   'False
      Height          =   3255
      Index           =   5
      Left            =   3000
      ScaleHeight     =   3195
      ScaleWidth      =   435
      TabIndex        =   6
      Top             =   0
      Width           =   495
   End
   Begin VB.PictureBox Picture1 
      BackColor       =   &H000000FF&
      Enabled         =   0   'False
      Height          =   495
      Index           =   3
      Left            =   1800
      ScaleHeight     =   435
      ScaleWidth      =   2235
      TabIndex        =   5
      Top             =   6000
      Width           =   2295
   End
   Begin VB.PictureBox Picture1 
      BackColor       =   &H000000FF&
      Enabled         =   0   'False
      Height          =   2415
      Index           =   2
      Left            =   1800
      ScaleHeight     =   2355
      ScaleWidth      =   435
      TabIndex        =   4
      Top             =   2520
      Width           =   495
   End
   Begin VB.PictureBox Picture1 
      BackColor       =   &H000000FF&
      Enabled         =   0   'False
      Height          =   2295
      Index           =   1
      Left            =   600
      ScaleHeight     =   2235
      ScaleWidth      =   435
      TabIndex        =   3
      Top             =   2640
      Width           =   495
   End
   Begin VB.PictureBox Picture1 
      BackColor       =   &H000000FF&
      Enabled         =   0   'False
      Height          =   495
      Index           =   0
      Left            =   0
      ScaleHeight     =   435
      ScaleWidth      =   1995
      TabIndex        =   2
      Top             =   960
      Width           =   2055
   End
   Begin VB.PictureBox picMask 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      BackColor       =   &H80000005&
      DrawWidth       =   2
      Enabled         =   0   'False
      ForeColor       =   &H80000008&
      Height          =   2685
      Left            =   120
      Picture         =   "frmBitBltExample.frx":0000
      ScaleHeight     =   177
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   164
      TabIndex        =   1
      Top             =   4200
      Visible         =   0   'False
      Width           =   2490
   End
   Begin VB.PictureBox picSprite 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      BackColor       =   &H80000005&
      DrawWidth       =   2
      Enabled         =   0   'False
      ForeColor       =   &H80000008&
      Height          =   2685
      Left            =   2640
      Picture         =   "frmBitBltExample.frx":15470
      ScaleHeight     =   177
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   164
      TabIndex        =   0
      Top             =   4200
      Visible         =   0   'False
      Width           =   2490
   End
End
Attribute VB_Name = "frmBitBltActivity"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim LeftPos As Double   'the distance from the left margin of the container
Dim TopPos As Double    'the distance from the top of the container
Dim Frame As Integer    'this dictates the row of the sprite/mask
        'that will be used for drawing the image...we change
        'this each time in order to simulate animation. Go to
        'the form and notice that the sprite/mask each have 3
        'rows to show 3 different images for each direction.
        'this is why the image looks like its walking when
        'you press the cursor keys

Dim TmrIntroLoop As Integer
Dim TmrMaskLoop As Integer
Dim TmrSpriteLoop As Integer

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
Const imgWidth As Integer = 41
Const imgHeight As Integer = 59
Const MoveAmount As Integer = 4
Static FrameDirection As Integer
If KeyCode = vbKeyDown Then          'When the "down" key is pressed
        TopPos = TopPos + MoveAmount   'Move down by what the MoveAmount is set to
        FrameDirection = 1 - 1           'We want the first column of the mask and sprite image
End If
If KeyCode = vbKeyUp Then            'When the "up" key is pressed
        TopPos = TopPos - MoveAmount   'Move Up by what the MoveAmount is set to
        FrameDirection = 2 - 1           'We want the second column of the mask and sprite image
End If
If KeyCode = vbKeyLeft Then          'When the "Left" key is pressed
        LeftPos = LeftPos - MoveAmount 'Move Left by what the MoveAmount is set to
        FrameDirection = 3 - 1           'We want the third column of the mask and sprite image
End If
If KeyCode = vbKeyRight Then         'When the "Right" key is pressed
        LeftPos = LeftPos + MoveAmount 'Move Right by what the MoveAmount is set to
        FrameDirection = 4 - 1           'We want the fourth column of the mask and sprite image
End If
Me.Cls


'deal with possibility of collision
For X = 0 To 11  'check control array of walls
    If (LeftPos + imgWidth) >= Picture1(X).Left Then
        If LeftPos <= (Picture1(X).Left + Picture1(X).Width) Then
            If (TopPos + imgHeight) >= Picture1(X).Top Then
                    If TopPos <= (Picture1(X).Top + Picture1(X).Height) Then
                    'we have collision! what to do now?
                    'solution is.... move them back.
                    If KeyCode = vbKeyDown Then
                        TopPos = TopPos - MoveAmount
                    End If
                    If KeyCode = vbKeyUp Then
                        TopPos = TopPos + MoveAmount
                    End If
                    If KeyCode = vbKeyLeft Then
                        LeftPos = LeftPos + MoveAmount
                    End If
                    If KeyCode = vbKeyRight Then
                        LeftPos = LeftPos - MoveAmount
                    End If
                End If
            End If
        End If
    End If
Next X
BitBlt Me.hDC, LeftPos, TopPos, imgWidth, imgHeight, picMask.hDC, _
    FrameDirection * imgWidth, Frame * imgHeight, SRCAND
BitBlt Me.hDC, LeftPos, TopPos, imgWidth, imgHeight, picSprite.hDC, _
    FrameDirection * imgWidth, Frame * imgHeight, SRCINVERT

If Frame <> 2 Then Frame = Frame + 1 Else Frame = 0

End Sub


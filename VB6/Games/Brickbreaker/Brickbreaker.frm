VERSION 5.00
Begin VB.Form Form1 
   BorderStyle     =   0  'None
   Caption         =   "Form1"
   ClientHeight    =   6630
   ClientLeft      =   1770
   ClientTop       =   1380
   ClientWidth     =   14925
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   6630
   ScaleWidth      =   14925
   ShowInTaskbar   =   0   'False
   Begin VB.Timer tmrWin 
      Left            =   6840
      Top             =   5640
   End
   Begin VB.Timer tmrgame 
      Interval        =   1
      Left            =   11520
      Top             =   6120
   End
   Begin VB.Shape shpBrick 
      FillColor       =   &H00808080&
      FillStyle       =   0  'Solid
      Height          =   375
      Index           =   74
      Left            =   9360
      Top             =   2400
      Width           =   735
   End
   Begin VB.Shape shpBrick 
      FillColor       =   &H00808080&
      FillStyle       =   0  'Solid
      Height          =   375
      Index           =   73
      Left            =   7920
      Top             =   2400
      Width           =   735
   End
   Begin VB.Shape shpBrick 
      FillColor       =   &H00808080&
      FillStyle       =   0  'Solid
      Height          =   375
      Index           =   72
      Left            =   6480
      Top             =   2400
      Width           =   735
   End
   Begin VB.Shape shpBrick 
      FillColor       =   &H00808080&
      FillStyle       =   0  'Solid
      Height          =   375
      Index           =   71
      Left            =   3600
      Top             =   2400
      Width           =   735
   End
   Begin VB.Shape shpBrick 
      FillColor       =   &H00808080&
      FillStyle       =   0  'Solid
      Height          =   375
      Index           =   70
      Left            =   2160
      Top             =   2400
      Width           =   735
   End
   Begin VB.Shape shpBrick 
      FillColor       =   &H00808080&
      FillStyle       =   0  'Solid
      Height          =   375
      Index           =   69
      Left            =   720
      Top             =   2400
      Width           =   735
   End
   Begin VB.Shape shpBrick 
      FillColor       =   &H00808080&
      FillStyle       =   0  'Solid
      Height          =   375
      Index           =   68
      Left            =   10080
      Top             =   2040
      Width           =   735
   End
   Begin VB.Shape shpBrick 
      FillColor       =   &H00808080&
      FillStyle       =   0  'Solid
      Height          =   375
      Index           =   67
      Left            =   8640
      Top             =   2040
      Width           =   735
   End
   Begin VB.Shape shpBrick 
      FillColor       =   &H00808080&
      FillStyle       =   0  'Solid
      Height          =   375
      Index           =   66
      Left            =   7200
      Top             =   2040
      Width           =   735
   End
   Begin VB.Shape shpBrick 
      FillColor       =   &H00808080&
      FillStyle       =   0  'Solid
      Height          =   375
      Index           =   65
      Left            =   5040
      Top             =   2400
      Width           =   735
   End
   Begin VB.Shape shpBrick 
      FillColor       =   &H00808080&
      FillStyle       =   0  'Solid
      Height          =   375
      Index           =   64
      Left            =   4320
      Top             =   2040
      Width           =   735
   End
   Begin VB.Shape shpBrick 
      FillColor       =   &H00808080&
      FillStyle       =   0  'Solid
      Height          =   375
      Index           =   63
      Left            =   2880
      Top             =   2040
      Width           =   735
   End
   Begin VB.Shape shpBrick 
      FillColor       =   &H00808080&
      FillStyle       =   0  'Solid
      Height          =   375
      Index           =   62
      Left            =   1440
      Top             =   2040
      Width           =   735
   End
   Begin VB.Shape shpBrick 
      FillColor       =   &H00808080&
      FillStyle       =   0  'Solid
      Height          =   375
      Index           =   61
      Left            =   0
      Top             =   2040
      Width           =   735
   End
   Begin VB.Shape shpBrick 
      FillColor       =   &H00808080&
      FillStyle       =   0  'Solid
      Height          =   375
      Index           =   60
      Left            =   9360
      Top             =   1680
      Width           =   735
   End
   Begin VB.Shape shpBrick 
      FillColor       =   &H00808080&
      FillStyle       =   0  'Solid
      Height          =   375
      Index           =   59
      Left            =   7920
      Top             =   1680
      Width           =   735
   End
   Begin VB.Shape shpBrick 
      FillColor       =   &H00808080&
      FillStyle       =   0  'Solid
      Height          =   375
      Index           =   58
      Left            =   6480
      Top             =   1680
      Width           =   735
   End
   Begin VB.Shape shpBrick 
      FillColor       =   &H00808080&
      FillStyle       =   0  'Solid
      Height          =   375
      Index           =   57
      Left            =   5040
      Top             =   1680
      Width           =   735
   End
   Begin VB.Shape shpBrick 
      FillColor       =   &H00808080&
      FillStyle       =   0  'Solid
      Height          =   375
      Index           =   56
      Left            =   3600
      Top             =   1680
      Width           =   735
   End
   Begin VB.Shape shpBrick 
      FillColor       =   &H00808080&
      FillStyle       =   0  'Solid
      Height          =   375
      Index           =   55
      Left            =   2160
      Top             =   1680
      Width           =   735
   End
   Begin VB.Shape shpBrick 
      FillColor       =   &H00808080&
      FillStyle       =   0  'Solid
      Height          =   375
      Index           =   54
      Left            =   720
      Top             =   1680
      Width           =   735
   End
   Begin VB.Shape shpBrick 
      FillColor       =   &H00808080&
      FillStyle       =   0  'Solid
      Height          =   375
      Index           =   53
      Left            =   10080
      Top             =   1320
      Width           =   735
   End
   Begin VB.Shape shpBrick 
      FillColor       =   &H00808080&
      FillStyle       =   0  'Solid
      Height          =   375
      Index           =   52
      Left            =   8640
      Top             =   1320
      Width           =   735
   End
   Begin VB.Shape shpBrick 
      FillColor       =   &H00808080&
      FillStyle       =   0  'Solid
      Height          =   375
      Index           =   51
      Left            =   7200
      Top             =   1320
      Width           =   735
   End
   Begin VB.Shape shpBrick 
      FillColor       =   &H00808080&
      FillStyle       =   0  'Solid
      Height          =   375
      Index           =   50
      Left            =   5760
      Top             =   1320
      Width           =   735
   End
   Begin VB.Shape shpBrick 
      FillColor       =   &H00808080&
      FillStyle       =   0  'Solid
      Height          =   375
      Index           =   49
      Left            =   4320
      Top             =   1320
      Width           =   735
   End
   Begin VB.Shape shpBrick 
      FillColor       =   &H00808080&
      FillStyle       =   0  'Solid
      Height          =   375
      Index           =   48
      Left            =   2880
      Top             =   1320
      Width           =   735
   End
   Begin VB.Shape shpBrick 
      FillColor       =   &H00808080&
      FillStyle       =   0  'Solid
      Height          =   375
      Index           =   47
      Left            =   1440
      Top             =   1320
      Width           =   735
   End
   Begin VB.Shape shpBrick 
      FillColor       =   &H00808080&
      FillStyle       =   0  'Solid
      Height          =   375
      Index           =   46
      Left            =   0
      Top             =   1320
      Width           =   735
   End
   Begin VB.Shape shpBrick 
      FillColor       =   &H00808080&
      FillStyle       =   0  'Solid
      Height          =   375
      Index           =   45
      Left            =   9360
      Top             =   960
      Width           =   735
   End
   Begin VB.Shape shpBrick 
      FillColor       =   &H00808080&
      FillStyle       =   0  'Solid
      Height          =   375
      Index           =   44
      Left            =   7920
      Top             =   960
      Width           =   735
   End
   Begin VB.Shape shpBrick 
      FillColor       =   &H00808080&
      FillStyle       =   0  'Solid
      Height          =   375
      Index           =   43
      Left            =   6480
      Top             =   960
      Width           =   735
   End
   Begin VB.Shape shpBrick 
      FillColor       =   &H00808080&
      FillStyle       =   0  'Solid
      Height          =   375
      Index           =   42
      Left            =   5040
      Top             =   960
      Width           =   735
   End
   Begin VB.Shape shpBrick 
      FillColor       =   &H00808080&
      FillStyle       =   0  'Solid
      Height          =   375
      Index           =   41
      Left            =   3600
      Top             =   960
      Width           =   735
   End
   Begin VB.Shape shpBrick 
      FillColor       =   &H00808080&
      FillStyle       =   0  'Solid
      Height          =   375
      Index           =   40
      Left            =   2160
      Top             =   960
      Width           =   735
   End
   Begin VB.Shape shpBrick 
      FillColor       =   &H00808080&
      FillStyle       =   0  'Solid
      Height          =   375
      Index           =   37
      Left            =   720
      Top             =   960
      Width           =   735
   End
   Begin VB.Shape shpBrick 
      FillColor       =   &H00808080&
      FillStyle       =   0  'Solid
      Height          =   375
      Index           =   36
      Left            =   5760
      Top             =   2040
      Width           =   735
   End
   Begin VB.Shape shpBrick 
      FillColor       =   &H00808080&
      FillStyle       =   0  'Solid
      Height          =   375
      Index           =   35
      Left            =   8640
      Top             =   960
      Width           =   735
   End
   Begin VB.Shape shpBrick 
      FillColor       =   &H00808080&
      FillStyle       =   0  'Solid
      Height          =   375
      Index           =   34
      Left            =   7200
      Top             =   960
      Width           =   735
   End
   Begin VB.Shape shpBrick 
      FillColor       =   &H00808080&
      FillStyle       =   0  'Solid
      Height          =   375
      Index           =   32
      Left            =   5760
      Top             =   960
      Width           =   735
   End
   Begin VB.Shape shpBrick 
      FillColor       =   &H00808080&
      FillStyle       =   0  'Solid
      Height          =   375
      Index           =   26
      Left            =   8640
      Top             =   2400
      Width           =   735
   End
   Begin VB.Shape shpBrick 
      FillColor       =   &H00808080&
      FillStyle       =   0  'Solid
      Height          =   375
      Index           =   19
      Left            =   7200
      Top             =   2400
      Width           =   735
   End
   Begin VB.Label lblWin 
      Caption         =   "You Win"
      BeginProperty Font 
         Name            =   "Old English Text MT"
         Size            =   24
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   975
      Left            =   5520
      TabIndex        =   0
      Top             =   120
      Visible         =   0   'False
      Width           =   2415
   End
   Begin VB.Shape shpBrick 
      FillColor       =   &H00808080&
      FillStyle       =   0  'Solid
      Height          =   375
      Index           =   39
      Left            =   4320
      Top             =   960
      Width           =   735
   End
   Begin VB.Shape shpBrick 
      FillColor       =   &H00808080&
      FillStyle       =   0  'Solid
      Height          =   375
      Index           =   38
      Left            =   4320
      Top             =   2400
      Width           =   735
   End
   Begin VB.Shape shpBrick 
      FillColor       =   &H00808080&
      FillStyle       =   0  'Solid
      Height          =   375
      Index           =   33
      Left            =   0
      Top             =   1680
      Width           =   735
   End
   Begin VB.Shape shpBrick 
      FillColor       =   &H00808080&
      FillStyle       =   0  'Solid
      Height          =   375
      Index           =   31
      Left            =   0
      Top             =   960
      Width           =   735
   End
   Begin VB.Shape shpBrick 
      FillColor       =   &H00808080&
      FillStyle       =   0  'Solid
      Height          =   375
      Index           =   30
      Left            =   3600
      Top             =   2040
      Width           =   735
   End
   Begin VB.Shape shpBrick 
      FillColor       =   &H00808080&
      FillStyle       =   0  'Solid
      Height          =   375
      Index           =   29
      Left            =   2160
      Top             =   2040
      Width           =   735
   End
   Begin VB.Shape shpBrick 
      FillColor       =   &H00808080&
      FillStyle       =   0  'Solid
      Height          =   375
      Index           =   28
      Left            =   5040
      Top             =   2040
      Width           =   735
   End
   Begin VB.Shape shpBrick 
      FillColor       =   &H00808080&
      FillStyle       =   0  'Solid
      Height          =   375
      Index           =   27
      Left            =   6480
      Top             =   2040
      Width           =   735
   End
   Begin VB.Shape shpBrick 
      FillColor       =   &H00808080&
      FillStyle       =   0  'Solid
      Height          =   375
      Index           =   25
      Left            =   7920
      Top             =   2040
      Width           =   735
   End
   Begin VB.Shape shpBrick 
      FillColor       =   &H00808080&
      FillStyle       =   0  'Solid
      Height          =   375
      Index           =   24
      Left            =   3600
      Top             =   1320
      Width           =   735
   End
   Begin VB.Shape shpBrick 
      FillColor       =   &H00808080&
      FillStyle       =   0  'Solid
      Height          =   375
      Index           =   23
      Left            =   9360
      Top             =   2040
      Width           =   735
   End
   Begin VB.Shape shpBrick 
      FillColor       =   &H00808080&
      FillStyle       =   0  'Solid
      Height          =   375
      Index           =   22
      Left            =   2880
      Top             =   2400
      Width           =   735
   End
   Begin VB.Shape shpBrick 
      FillColor       =   &H00808080&
      FillStyle       =   0  'Solid
      Height          =   375
      Index           =   21
      Left            =   5760
      Top             =   2400
      Width           =   735
   End
   Begin VB.Shape shpBrick 
      FillColor       =   &H00808080&
      FillStyle       =   0  'Solid
      Height          =   375
      Index           =   20
      Left            =   1440
      Top             =   2400
      Width           =   735
   End
   Begin VB.Shape shpBrick 
      FillColor       =   &H00808080&
      FillStyle       =   0  'Solid
      Height          =   375
      Index           =   18
      Left            =   8640
      Top             =   1680
      Width           =   735
   End
   Begin VB.Shape shpBrick 
      FillColor       =   &H00808080&
      FillStyle       =   0  'Solid
      Height          =   375
      Index           =   17
      Left            =   2880
      Top             =   960
      Width           =   735
   End
   Begin VB.Shape shpBrick 
      FillColor       =   &H00808080&
      FillStyle       =   0  'Solid
      Height          =   375
      Index           =   16
      Left            =   10080
      Top             =   960
      Width           =   735
   End
   Begin VB.Shape shpBrick 
      FillColor       =   &H00808080&
      FillStyle       =   0  'Solid
      Height          =   375
      Index           =   15
      Left            =   10080
      Top             =   1680
      Width           =   735
   End
   Begin VB.Shape shpBrick 
      FillColor       =   &H00808080&
      FillStyle       =   0  'Solid
      Height          =   375
      Index           =   14
      Left            =   9360
      Top             =   1320
      Width           =   735
   End
   Begin VB.Shape shpBrick 
      FillColor       =   &H00808080&
      FillStyle       =   0  'Solid
      Height          =   375
      Index           =   13
      Left            =   7920
      Top             =   1320
      Width           =   735
   End
   Begin VB.Shape shpBrick 
      FillColor       =   &H00808080&
      FillStyle       =   0  'Solid
      Height          =   375
      Index           =   12
      Left            =   7200
      Top             =   1680
      Width           =   735
   End
   Begin VB.Shape shpBrick 
      FillColor       =   &H00808080&
      FillStyle       =   0  'Solid
      Height          =   375
      Index           =   11
      Left            =   6480
      Top             =   1320
      Width           =   735
   End
   Begin VB.Shape shpBrick 
      FillColor       =   &H00808080&
      FillStyle       =   0  'Solid
      Height          =   375
      Index           =   10
      Left            =   5760
      Top             =   1680
      Width           =   735
   End
   Begin VB.Shape shpBrick 
      FillColor       =   &H00808080&
      FillStyle       =   0  'Solid
      Height          =   375
      Index           =   9
      Left            =   1440
      Top             =   960
      Width           =   735
   End
   Begin VB.Shape shpBrick 
      FillColor       =   &H00808080&
      FillStyle       =   0  'Solid
      Height          =   375
      Index           =   8
      Left            =   10080
      Top             =   2400
      Width           =   735
   End
   Begin VB.Shape shpBrick 
      FillColor       =   &H00808080&
      FillStyle       =   0  'Solid
      Height          =   375
      Index           =   7
      Left            =   1440
      Top             =   1680
      Width           =   735
   End
   Begin VB.Shape shpBrick 
      FillColor       =   &H00808080&
      FillStyle       =   0  'Solid
      Height          =   375
      Index           =   6
      Left            =   720
      Top             =   1320
      Width           =   735
   End
   Begin VB.Shape shpBrick 
      FillColor       =   &H00808080&
      FillStyle       =   0  'Solid
      Height          =   375
      Index           =   5
      Left            =   720
      Top             =   2040
      Width           =   735
   End
   Begin VB.Shape shpBrick 
      FillColor       =   &H00808080&
      FillStyle       =   0  'Solid
      Height          =   375
      Index           =   4
      Left            =   2160
      Top             =   1320
      Width           =   735
   End
   Begin VB.Shape shpBrick 
      FillColor       =   &H00808080&
      FillStyle       =   0  'Solid
      Height          =   375
      Index           =   3
      Left            =   0
      Top             =   2400
      Width           =   735
   End
   Begin VB.Shape shpBrick 
      FillColor       =   &H00808080&
      FillStyle       =   0  'Solid
      Height          =   375
      Index           =   2
      Left            =   5040
      Top             =   1320
      Width           =   735
   End
   Begin VB.Shape shpPad 
      FillColor       =   &H000080FF&
      FillStyle       =   0  'Solid
      Height          =   375
      Left            =   2520
      Top             =   5880
      Width           =   6255
   End
   Begin VB.Shape shpWall 
      Height          =   6615
      Left            =   0
      Top             =   0
      Width           =   11370
   End
   Begin VB.Shape shpBall 
      FillStyle       =   0  'Solid
      Height          =   375
      Left            =   7680
      Shape           =   3  'Circle
      Top             =   3720
      Width           =   495
   End
   Begin VB.Shape shpBrick 
      FillColor       =   &H00808080&
      FillStyle       =   0  'Solid
      Height          =   375
      Index           =   1
      Left            =   4320
      Top             =   1680
      Width           =   735
   End
   Begin VB.Shape shpBrick 
      FillColor       =   &H00808080&
      FillStyle       =   0  'Solid
      Height          =   375
      Index           =   0
      Left            =   2880
      Top             =   1680
      Width           =   735
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim intX As Integer, intY As Integer, intA As Integer
Dim intCounter As Integer
Option Explicit

Private Sub Form_Load()
intX = 100 ' Change in X
intY = 100 'Change in Y

End Sub

Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
shpPad.Left = X - shpPad.Width / 2
End Sub

Private Sub tmrgame_Timer()
shpBall.Top = shpBall.Top - intY
shpBall.Left = shpBall.Left - intX

'Border collision
If shpBall.Left <= shpWall.Left Or shpBall.Left + shpBall.Width >= shpWall.Left + shpWall.Width Then 'Left and right collison
    
    intX = -intX

ElseIf shpBall.Top <= shpWall.Top Then    'Up and down collison
    
    intY = -intY
    
End If

If shpBall.Left + shpBall.Width >= shpPad.Left Then 'From left
    If shpBall.Left <= shpPad.Left + shpPad.Width Then 'from right
        If shpBall.Top + shpBall.Height >= shpPad.Top Then 'from above
         
            intY = -intY
        End If
    End If
End If

If shpBall.Top + shpBall.Height >= shpWall.Top + shpWall.Height Then
    MsgBox "You lost a life"
    shpBall.Top = 3720
    shpBall.Left = 7680

End If
'Brick collision
For intA = shpBrick.LBound To shpBrick.UBound

If shpBrick(intA).Left < Me.Left - shpBrick(intA).Width Then shpBrick(intA).Left = Me.Width
    If shpBall.Left + shpBall.Width >= shpBrick(intA).Left Then 'From left
        If shpBall.Left <= shpBrick(intA).Left + shpBrick(intA).Width Then 'from right
            If shpBall.Top + shpBall.Height >= shpBrick(intA).Top Then 'from above
                If shpBall.Top <= shpBrick(intA).Top + shpBrick(intA).Height Then 'from below
         
                    intY = -intY
                    shpBrick(intA).Visible = False
                    shpBrick(intA).Top = Me.Height + 1000
                    intCounter = intCounter + 1
                End If
            End If
        End If
    End If

Next intA

'If all bricks are destroyed then
If intCounter >= shpBrick.UBound - 1 Then
    lblWin.Visible = True
    tmrgame.Interval = 0
    tmrWin.Interval = 1
End If
End Sub

Private Sub tmrWin_Timer()

'Marquee effect
lblWin.Left = lblWin.Left + 100

If lblWin.Left >= Me.Width Then lblWin.Left = Me.Left - lblWin.Width

End Sub

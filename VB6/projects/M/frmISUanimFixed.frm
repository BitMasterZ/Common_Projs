VERSION 5.00
Begin VB.Form frmISUanim 
   AutoRedraw      =   -1  'True
   BackColor       =   &H80000007&
   Caption         =   "MENU"
   ClientHeight    =   10245
   ClientLeft      =   165
   ClientTop       =   555
   ClientWidth     =   15240
   FillStyle       =   0  'Solid
   LinkTopic       =   "Form1"
   ScaleHeight     =   10245
   ScaleWidth      =   15240
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.CommandButton cmdInstru 
      Caption         =   "Instructions"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   29.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2895
      Left            =   1800
      TabIndex        =   4
      Top             =   2040
      Width           =   6135
   End
   Begin VB.CommandButton cmdGame 
      Appearance      =   0  'Flat
      BackColor       =   &H80000002&
      Caption         =   "Game"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   29.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2895
      Left            =   8160
      TabIndex        =   3
      Top             =   2040
      Width           =   6135
   End
   Begin VB.PictureBox picExplosion 
      BackColor       =   &H80000007&
      BorderStyle     =   0  'None
      Height          =   8775
      Left            =   1680
      Picture         =   "frmISUanimFixed.frx":0000
      ScaleHeight     =   8775
      ScaleWidth      =   5535
      TabIndex        =   2
      Top             =   600
      Visible         =   0   'False
      Width           =   5535
   End
   Begin VB.CommandButton cmdRun 
      Appearance      =   0  'Flat
      BackColor       =   &H80000002&
      Caption         =   "Start Intro Animation"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   29.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2055
      Left            =   5160
      TabIndex        =   1
      Top             =   5160
      Width           =   6135
   End
   Begin VB.PictureBox picSpaceship 
      BackColor       =   &H80000007&
      BorderStyle     =   0  'None
      Enabled         =   0   'False
      FillStyle       =   0  'Solid
      Height          =   3705
      Left            =   11640
      Negotiate       =   -1  'True
      Picture         =   "frmISUanimFixed.frx":2F362
      ScaleHeight     =   3705
      ScaleWidth      =   7380
      TabIndex        =   0
      Top             =   1560
      Visible         =   0   'False
      Width           =   7380
   End
End
Attribute VB_Name = "frmISUanim"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Name : Annie Zhang
'Teacher : Kuehn
'Course : ICS3U0
'Assmt : ISU
'Description : Menu. If animation is selected, a spaceship with smoke coming out
'of it moves across the screen. The spaceship explodes and a square thing(escape pod) falls out.


'Note: i may have killed it with comments.


'dblSmokeX and dblSmokeY are locations of the smoke circles. intStartX and intStartY are starting location of the smoke, smoke length is the length of the smoke and intColour is the colour of the smoke
Dim dblSmokeX(1 To 100) As Double, dblSmokeY(1 To 100) As Double, intStartX As Integer, intStartY As Integer, intSmokeLength As Integer, intColour As Integer
'intColourR, intColourG and intColourB are variable that control the rgb colour of the smoke, dblSmokeXDiff is the difference between the x coordinate of the smoke circle and intStartX, intRadius is the radius of the smoke circle
Dim intColourR As Integer, intColourG As Integer, intColourB As Integer, dblSmokeXDiff As Double, intRadius As Integer
Dim intPodY As Integer, intPodX As Integer 'coordinates of "escape pod"

Private Declare Sub Sleep Lib "kernel32" (ByVal dwMilliseconds As Long) 'sleep

Private Sub cmdGame_Click()
    Load frmISU
    frmISU.Show
    Unload Me
End Sub

Private Sub cmdInstru_Click()
    Load frmInstru
    frmInstru.Show
    Unload Me
End Sub

Private Sub cmdRun_Click()
    Randomize
    'Establish variable values
    intSmokeLength = 3000
    FillColor = vbBlack
    Do
        'Make the command buttons disappear
        cmdRun.Visible = False
        cmdGame.Visible = False
        cmdInstru.Visible = False

        picSpaceship.Visible = True     'Show the space ship
        picSpaceship.Left = picSpaceship.Left - 3       'move the spaceship to the left

        'Set smoke starting position
        intStartX = picSpaceship.Left + 2900
        intStartY = picSpaceship.Top + 200
        
        'Set smoke circles starting positions
        For i = 1 To 100
            dblSmokeY(i) = Int(intStartY + Rnd * 300)   'Give each dblsmokey a random value bigger than intstarty and smaller than intstarty+300
            dblSmokeX(i) = Int(intStartX + Rnd * intSmokeLength)    'Give each dblsmokex a randome value between intstartx and intstartx+3000
        Next i
        
        'Move the smoke circles
        For i = 1 To 100
            dblSmokeX(i) = dblSmokeX(i) + 0.4   'increase x coordinate of smoke circle
            dblSmokeY(i) = dblSmokeY(i) + Sine(dblSmokeY(i) * 100)  'move smoke circle in a sine pattern (wavy)
            If dblSmokeX(i) >= intSmokeLength + intStartX Then      'if the x coordinate of a smoke circle is too large then
                dblSmokeX(i) = intStartX                            'send it back to the starting point for smoke
            End If
            
            dblSmokeXDiff = dblSmokeX(i) - intStartX                'distance from smokecircle to startx
            
            'Make "smoke" very close to ship red, others black to white depending dblsmokediff
            If dblSmokeXDiff < 40 Then
                intColourR = 200 + (Rnd * 55)
                intColourG = 70
                intColourB = 20
            Else
                intColourG = dblSmokeXDiff / 5
                intColourB = intColourG
                intColourR = intColourG
            End If
            
            intRadius = 200 - (dblSmokeXDiff / 20)                  'Give it a radius inversely proportional to the distance between the x coordinate of the circle and the x starting position
            
            picSpaceship.FillColor = RGB(intColourR, intColourG, intColourB)        'Change the fill colour to the colour of the smoke circle
            'Draw smoke
            picSpaceship.Circle (Int(dblSmokeX(i)), Int(dblSmokeY(i))), intRadius, RGB(intColourR, intColourG, intColourB)  'draw the circle on the big smoke cloud
            picSpaceship.Circle (Int(dblSmokeX(i) - 800), Int(dblSmokeY(i) - 1300)), intRadius * 0.7, RGB(intColourR, intColourG, intColourB)   'draw the circle on the small smoke cloud
        Next i
        
        DoEvents
    
        Sleep (70)
         
        picSpaceship.Cls    'clear the spaceship picturebox
        
    Loop Until picSpaceship.Left <= 200     'do until the spaceship has reached its destination
    
    picSpaceship.Visible = False            'make the spaceship disappear
    picExplosion.Visible = True             'make the explosion appear
    
    DoEvents
    
    intPodY = picExplosion.Top + 3000       'set the initial y coordinate of the escape pod
    intPodX = picExplosion.Left + 2000      'set the initial x coordinate of the escape pod
    
    'Make escape pod fall down
    Do
        intPodY = intPodY + 70
        picExplosion.FillColor = vbYellow                                                           'make the fillcolour of the explosion picturebox yellow
        picExplosion.Line (intPodX, intPodY)-(intPodX + 300, intPodY + 500), vbYellow, BF           'draw the yellow part of the escape pod
        picExplosion.FillColor = vbBlue                                                             'make the fillcolour of the explosion picturebox blue
        picExplosion.Line (intPodX + 50, intPodY + 50)-(intPodX + 250, intPodY + 200), vbBlue, BF   'draw the blue part of the escape pod
        picExplosion.Line (intPodX + 50, intPodY + 500)-(intPodX + 250, intPodY + 500), vbBlack     'draw black part of pod
        Sleep (50)
        picExplosion.Cls                                                                            'Clear the explosion picturebox
    Loop Until intPodY >= picExplosion.Top + 5000                                                   'do until the escape pod has reached around halfway down the form
    MsgBox ("Done")
    
    'show some stuff, hide some stuff
    cmdGame.Visible = True
    cmdInstru.Visible = True
    picExplosion.Visible = False
    
End Sub

Private Sub Form_Load()
'Set some values
Me.AutoRedraw = True
Me.ScaleWidth = 600
Me.BackColor = vbBlack

End Sub


Public Function Sine(ByVal degrees As Single) As Single
    'the sin function in degrees
    Sine = Sin(degrees * PI / 180)
End Function

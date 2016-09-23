VERSION 5.00
Begin VB.Form frmGame 
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "Game"
   ClientHeight    =   7785
   ClientLeft      =   150
   ClientTop       =   720
   ClientWidth     =   10425
   Icon            =   "frmGame.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   7785
   ScaleWidth      =   10425
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer tmrGame 
      Interval        =   1
      Left            =   120
      Top             =   2640
   End
   Begin VB.Label lblLives 
      AutoSize        =   -1  'True
      Caption         =   "Lives Lost:"
      BeginProperty Font 
         Name            =   "Papyrus"
         Size            =   26.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   825
      Left            =   1440
      TabIndex        =   0
      Top             =   5520
      Width           =   2535
   End
   Begin VB.Image imgTrap 
      Height          =   540
      Index           =   6
      Left            =   4680
      Picture         =   "frmGame.frx":08CA
      Stretch         =   -1  'True
      Top             =   480
      Width           =   525
   End
   Begin VB.Image imgTrap 
      Height          =   540
      Index           =   5
      Left            =   4680
      Picture         =   "frmGame.frx":7E3C
      Stretch         =   -1  'True
      Top             =   3960
      Width           =   525
   End
   Begin VB.Shape shpWall2 
      FillColor       =   &H00404040&
      FillStyle       =   0  'Solid
      Height          =   1215
      Index           =   11
      Left            =   5760
      Top             =   240
      Visible         =   0   'False
      Width           =   135
   End
   Begin VB.Shape shpWall2 
      FillColor       =   &H00404040&
      FillStyle       =   0  'Solid
      Height          =   1215
      Index           =   10
      Left            =   5160
      Top             =   3720
      Visible         =   0   'False
      Width           =   135
   End
   Begin VB.Shape shpWall2 
      FillColor       =   &H00404040&
      FillStyle       =   0  'Solid
      Height          =   1215
      Index           =   9
      Left            =   1320
      Top             =   3600
      Visible         =   0   'False
      Width           =   135
   End
   Begin VB.Shape shpWall2 
      FillColor       =   &H00404040&
      FillStyle       =   0  'Solid
      Height          =   1215
      Index           =   8
      Left            =   6360
      Top             =   600
      Visible         =   0   'False
      Width           =   135
   End
   Begin VB.Shape shpWall2 
      FillColor       =   &H00404040&
      FillStyle       =   0  'Solid
      Height          =   1215
      Index           =   7
      Left            =   3480
      Top             =   240
      Visible         =   0   'False
      Width           =   135
   End
   Begin VB.Shape shpWall2 
      FillColor       =   &H00404040&
      FillStyle       =   0  'Solid
      Height          =   1215
      Index           =   6
      Left            =   2160
      Top             =   240
      Visible         =   0   'False
      Width           =   135
   End
   Begin VB.Shape shpWall 
      FillColor       =   &H00404040&
      FillStyle       =   0  'Solid
      Height          =   135
      Index           =   8
      Left            =   4800
      Top             =   2640
      Width           =   375
   End
   Begin VB.Image imgTrap 
      Height          =   540
      Index           =   4
      Left            =   7320
      Picture         =   "frmGame.frx":F3AE
      Stretch         =   -1  'True
      Top             =   2880
      Visible         =   0   'False
      Width           =   525
   End
   Begin VB.Image imgTrap 
      Height          =   540
      Index           =   3
      Left            =   6360
      Picture         =   "frmGame.frx":16920
      Stretch         =   -1  'True
      Top             =   2880
      Visible         =   0   'False
      Width           =   525
   End
   Begin VB.Image imgTrap 
      Height          =   540
      Index           =   2
      Left            =   5160
      Picture         =   "frmGame.frx":1DE92
      Stretch         =   -1  'True
      Top             =   720
      Visible         =   0   'False
      Width           =   525
   End
   Begin VB.Shape shpWall2 
      FillColor       =   &H00404040&
      FillStyle       =   0  'Solid
      Height          =   1215
      Index           =   5
      Left            =   6480
      Top             =   240
      Visible         =   0   'False
      Width           =   135
   End
   Begin VB.Shape shpWall2 
      FillColor       =   &H00404040&
      FillStyle       =   0  'Solid
      Height          =   135
      Index           =   4
      Left            =   6360
      Top             =   3480
      Visible         =   0   'False
      Width           =   1575
   End
   Begin VB.Shape shpDoor 
      FillColor       =   &H00FFFFFF&
      FillStyle       =   0  'Solid
      Height          =   135
      Left            =   6600
      Top             =   1320
      Visible         =   0   'False
      Width           =   1335
   End
   Begin VB.Shape shpWall2 
      FillColor       =   &H00404040&
      FillStyle       =   0  'Solid
      Height          =   4695
      Index           =   3
      Left            =   1080
      Top             =   240
      Visible         =   0   'False
      Width           =   135
   End
   Begin VB.Shape shpEnd 
      FillColor       =   &H00C0C000&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   1
      Left            =   6960
      Top             =   240
      Visible         =   0   'False
      Width           =   975
   End
   Begin VB.Shape shpWall2 
      FillColor       =   &H00404040&
      FillStyle       =   0  'Solid
      Height          =   135
      Index           =   2
      Left            =   1080
      Top             =   4800
      Visible         =   0   'False
      Width           =   6975
   End
   Begin VB.Shape shpWall2 
      FillColor       =   &H00404040&
      FillStyle       =   0  'Solid
      Height          =   4695
      Index           =   1
      Left            =   7920
      Top             =   240
      Visible         =   0   'False
      Width           =   135
   End
   Begin VB.Shape shpWall2 
      FillColor       =   &H00404040&
      FillStyle       =   0  'Solid
      Height          =   135
      Index           =   0
      Left            =   1080
      Top             =   120
      Visible         =   0   'False
      Width           =   6975
   End
   Begin VB.Image imgKey 
      Height          =   780
      Left            =   7200
      Picture         =   "frmGame.frx":25404
      Stretch         =   -1  'True
      Top             =   3960
      Visible         =   0   'False
      Width           =   675
   End
   Begin VB.Shape shpWall 
      FillColor       =   &H00404040&
      FillStyle       =   0  'Solid
      Height          =   135
      Index           =   3
      Left            =   2400
      Top             =   4440
      Width           =   2295
   End
   Begin VB.Image imgTrap 
      Height          =   540
      Index           =   1
      Left            =   1680
      Picture         =   "frmGame.frx":2C1A6
      Stretch         =   -1  'True
      Top             =   1680
      Width           =   525
   End
   Begin VB.Shape shpWall 
      FillColor       =   &H00404040&
      FillStyle       =   0  'Solid
      Height          =   135
      Index           =   7
      Left            =   4560
      Top             =   360
      Width           =   735
   End
   Begin VB.Image imgTrap 
      Height          =   540
      Index           =   0
      Left            =   3360
      Picture         =   "frmGame.frx":33718
      Stretch         =   -1  'True
      Top             =   1680
      Width           =   525
   End
   Begin VB.Shape shpEnd 
      FillColor       =   &H00C0C000&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   0
      Left            =   3600
      Top             =   360
      Width           =   975
   End
   Begin VB.Shape shpWall 
      FillColor       =   &H00404040&
      FillStyle       =   0  'Solid
      Height          =   4215
      Index           =   6
      Left            =   5160
      Top             =   360
      Width           =   135
   End
   Begin VB.Shape shpWall 
      FillColor       =   &H00404040&
      FillStyle       =   0  'Solid
      Height          =   975
      Index           =   5
      Left            =   3600
      Top             =   600
      Width           =   135
   End
   Begin VB.Shape shpWall 
      FillColor       =   &H00404040&
      FillStyle       =   0  'Solid
      Height          =   135
      Index           =   4
      Left            =   2880
      Top             =   4440
      Width           =   2295
   End
   Begin VB.Shape shpWall 
      FillColor       =   &H00404040&
      FillStyle       =   0  'Solid
      Height          =   135
      Index           =   2
      Left            =   1320
      Top             =   4440
      Width           =   1575
   End
   Begin VB.Shape shpWall 
      FillColor       =   &H00404040&
      FillStyle       =   0  'Solid
      Height          =   2895
      Index           =   1
      Left            =   1320
      Top             =   1560
      Width           =   135
   End
   Begin VB.Shape shpWall 
      FillColor       =   &H00404040&
      FillStyle       =   0  'Solid
      Height          =   135
      Index           =   0
      Left            =   1320
      Top             =   1440
      Width           =   2295
   End
   Begin VB.Image imgPlay 
      Height          =   975
      Left            =   1920
      Stretch         =   -1  'True
      Top             =   2640
      Width           =   615
   End
   Begin VB.Image imgVik 
      DragMode        =   1  'Automatic
      Height          =   1530
      Index           =   4
      Left            =   5640
      Picture         =   "frmGame.frx":3AC8A
      Stretch         =   -1  'True
      Top             =   5520
      Visible         =   0   'False
      Width           =   975
   End
   Begin VB.Image imgVik 
      DragMode        =   1  'Automatic
      Height          =   1530
      Index           =   1
      Left            =   1560
      Picture         =   "frmGame.frx":42574
      Stretch         =   -1  'True
      Top             =   5520
      Visible         =   0   'False
      Width           =   975
   End
   Begin VB.Image imgVik 
      DragMode        =   1  'Automatic
      Height          =   1530
      Index           =   2
      Left            =   2880
      Picture         =   "frmGame.frx":473CE
      Stretch         =   -1  'True
      Top             =   5520
      Visible         =   0   'False
      Width           =   975
   End
   Begin VB.Image imgVik 
      DragMode        =   1  'Automatic
      Height          =   1530
      Index           =   3
      Left            =   4200
      Picture         =   "frmGame.frx":4C090
      Stretch         =   -1  'True
      Top             =   5520
      Visible         =   0   'False
      Width           =   1095
   End
   Begin VB.Menu mnuFile 
      Caption         =   "File"
      Begin VB.Menu mnuFileBack 
         Caption         =   "Back to main menu"
      End
      Begin VB.Menu mnuFileExit 
         Caption         =   "Exit Program"
      End
      Begin VB.Menu menuBreak 
         Caption         =   "-"
      End
      Begin VB.Menu mnuFileAbout 
         Caption         =   "About"
      End
      Begin VB.Menu mnuFileInstruct 
         Caption         =   "Instuctions"
      End
   End
End
Attribute VB_Name = "frmGame"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Dim intSpare As Integer 'For control arrays
Dim sngStartTop As Single, sngStartLeft As Single 'the default position of the character
Const strCrash As String = "You are dead" 'If Player dies
Const strWin As String = "You Have completed the level.Proceed to next level" 'If Player wins
Dim sngY As Single, sngX As Single 'Trap movement
Dim sngY2 As Single, sngX2 As Single
Dim intLevel As Integer 'The level number
Dim blnKey As Boolean 'If player collects key
Dim intLives As Integer 'Number of lives used
Dim intPosition(0 To 8) As Integer, intPosition2(0 To 11) As Integer 'To store default position of wall
Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)

'To check key pressed by player
    Select Case KeyCode

    Case vbKeyUp
    
        imgPlay.Top = imgPlay.Top - 100 'Up movement

    Case vbKeyDown
    
        imgPlay.Top = imgPlay.Top + 100 'Down movement

    Case vbKeyLeft
    
        imgPlay.Left = imgPlay.Left - 100 'Left movement

    Case vbKeyRight
    
        imgPlay.Left = imgPlay.Left + 100 'Right movement

    End Select

End Sub

Private Sub Form_Load()
'The default starting position of player
    sngStartLeft = imgPlay.Left
    sngStartTop = imgPlay.Top
    
'Default speed of the traps
    sngY = 20
    sngY2 = 30
    sngX = 30
    sngX2 = 15

'Assign default positions
    For intSpare = shpWall.LBound To shpWall.Ubound

        intPosition(intSpare) = shpWall(intSpare).Left

    Next

    For intSpare = shpWall2.LBound To shpWall2.Ubound

    intPosition2(intSpare) = shpWall2(intSpare).Left

    Next

End Sub

Private Sub mnuFileAbout_Click()
'Show the about dialog box
    frmAbout.Show

End Sub

Private Sub mnuFileBack_Click()

intViking = 0
intLevel = 0
imgPlay.Left = sngStartLeft
imgPlay.Top = sngStartTop
intLives = 0
'Returns to main menu
    frmMain.Show
    Unload Me

End Sub

Private Sub mnuFileExit_Click()

    End

End Sub

Private Sub mnuFileInstruct_Click()
    
    frmInstructions.Show

End Sub

Private Sub tmrGame_Timer()

imgPlay.Picture = imgVik(intViking).Picture 'Assigns a picture of the character


'Checks the level
    Select Case intLevel

    Case 0
    'Returns to default position
        For intSpare = shpWall.LBound To shpWall.Ubound

            shpWall(intSpare).Left = intPosition(intSpare)
        Next
        
        
        imgTrap(0).Left = 3360
        'imgTrap(1).Left = 1680
        shpEnd(0).Left = 3600
    
    Case 1
    'Sends controls from previous level somewhere else
        imgTrap(0).Left = -3999
        'imgTrap(1).Left = -5999
        shpEnd(0).Left = -9999
        shpWall(6).Left = -9999
        shpWall(8).Left = -9999

    'Creates second maze
        For intSpare = shpWall2.LBound To shpWall2.Ubound

            shpWall2(intSpare).Visible = True
        Next

        imgTrap(2).Visible = True
        imgTrap(3).Visible = True
        imgTrap(4).Visible = True
        shpEnd(1).Visible = True
        shpDoor.Visible = True
        imgKey.Visible = True
    
    Case 2
    
    'Sends controls from previous level somewhere else
        For intSpare = shpWall2.LBound To shpWall2.Ubound

            shpWall2(intSpare).Visible = False
        Next

        imgTrap(2).Visible = False
        imgTrap(3).Visible = False
        imgTrap(4).Visible = False
        shpEnd(1).Visible = False
        shpDoor.Visible = False
        imgKey.Visible = False
        imgKey.Left = 7200
        shpDoor.Visible = False
    
        'Gives option to retry or quit
        If MsgBox("Do you wish to retry???", vbYesNo + vbQuestion, "You have won the game") = vbYes Then
               
            intLevel = 0
            imgPlay.Left = sngStartLeft
            imgPlay.Top = sngStartTop
        
        Else
        'If player loses less lives than before
            If intLives < intLost Then
                
                intLost = intLives
                strName = InputBox("Enter Your Name", "You lost less lives than you did before", "Anonymus")
                frmHighScores.Show
                Unload Me
                intLevel = 0
                
            Else
        
                End
                
            End If
        
        End If
        
    End Select

lblLives.Caption = "Lives Lost: " & intLives 'Display lives lost

'Calls subroutines
    Call KDCollision
    Call Win
    Call Animate
    Call WCollision
    Call TCollision

End Sub

Private Sub Animate()

Select Case intLevel

Case 0 'For first maze

'Move the traps
    imgTrap(0).Top = imgTrap(0).Top - sngY
    imgTrap(1).Left = imgTrap(1).Left + sngX

'Trap collision with wall
    If imgTrap(0).Top < shpWall(0).Top + shpWall(0).Height Or _
    imgTrap(0).Top + imgTrap(0).Height > shpWall(4).Top Then

        sngY = -sngY


    ElseIf imgTrap(1).Left < shpWall(1).Left + shpWall(1).Width Or _
    imgTrap(1).Left + imgTrap(1).Width > shpWall(6).Left Then

        sngX = -sngX

    End If

Case 1
'Move the traps
    imgTrap(2).Top = imgTrap(2).Top - sngY2
    imgTrap(3).Top = imgTrap(3).Top - sngY
  
'Trap collision with wall

    If imgTrap(2).Top < shpWall2(0).Top + shpWall2(0).Height Or _
    imgTrap(2).Top + imgTrap(2).Height > shpWall2(2).Top Then

        sngY2 = -sngY2

    ElseIf imgTrap(3).Top < shpWall2(5).Top + shpWall2(5).Height Or _
    imgTrap(3).Top + imgTrap(3).Height > shpWall(4).Top - 500 Then

        sngY = -sngY
    
    End If


End Select

End Sub


Private Sub WCollision() 'Collision with wall
'For first level
    For intSpare = shpWall.LBound To shpWall.Ubound

        If imgPlay.Top < shpWall(intSpare).Top + shpWall(intSpare).Height Then 'From Bottom
            If imgPlay.Top + imgPlay.Height > shpWall(intSpare).Top Then 'From Top
                If imgPlay.Left < shpWall(intSpare).Left + shpWall(intSpare).Width Then 'From right
                    If imgPlay.Left + imgPlay.Width > shpWall(intSpare).Left Then 'From left
                        
                        intLives = intLives + 1
                    'Gives user option to quit or to continue
                        If MsgBox(strCrash, vbRetryCancel, "You have been consumed by the maze!!!") = vbRetry Then
     
                            'Send player back to default position
                            imgPlay.Left = sngStartLeft
                            imgPlay.Top = sngStartTop

                            If intLevel = 1 Then 'In level 2
                            'Respawns the key
                                imgKey.Left = 7200
                                blnKey = False
        
                            End If

                        Else
        
                            End

                        End If
                        
                    End If
                End If
            End If
        End If
    
    Next

'For second level
    For intSpare = shpWall2.LBound To shpWall2.Ubound

        If imgPlay.Top < shpWall2(intSpare).Top + shpWall2(intSpare).Height Then 'From Bottom
            If imgPlay.Top + imgPlay.Height > shpWall2(intSpare).Top Then 'From Top
                If imgPlay.Left < shpWall2(intSpare).Left + shpWall2(intSpare).Width Then 'From right
                    If imgPlay.Left + imgPlay.Width > shpWall2(intSpare).Left Then 'From left
                        
                        intLives = intLives + 1
                    'Gives user option to quit or to continue
                        If MsgBox(strCrash, vbRetryCancel, "You have been consumed by the maze!!!") = vbRetry Then
     
                            'Send player back to default position
                            imgPlay.Left = sngStartLeft
                            imgPlay.Top = sngStartTop

                            If intLevel = 1 Then 'In level 2
                            'Respawns the key
                                imgKey.Left = 7200
                                blnKey = False
        
                            End If

                        Else
        
                            End

                        End If

                    End If
                End If
            End If
        End If

    Next

End Sub
Private Sub TCollision()

For intSpare = imgTrap.LBound To imgTrap.Ubound

    If imgPlay.Top < imgTrap(intSpare).Top + imgTrap(intSpare).Height Then 'From Bottom
        If imgPlay.Top + imgPlay.Height > imgTrap(intSpare).Top Then 'From Top
            If imgPlay.Left < imgTrap(intSpare).Left + imgTrap(intSpare).Width Then 'From right
                If imgPlay.Left + imgPlay.Width > imgTrap(intSpare).Left Then 'From left
                        
                        intLives = intLives + 1
                    'Gives user option to quit or to continue
                        If MsgBox(strCrash, vbRetryCancel, "You have been consumed by the maze!!!") = vbRetry Then
     
                            'Send player back to default position
                            imgPlay.Left = sngStartLeft
                            imgPlay.Top = sngStartTop

                            If intLevel = 1 Then 'In level 2
                            'Respawns the key
                                imgKey.Left = 7200
                                blnKey = False
        
                            End If

                        Else
        
                            End

                        End If

                    End If
                End If
            End If
        End If

Next

End Sub

Private Sub Win() 'To check if user hits wining block

For intSpare = shpEnd.LBound To shpEnd.Ubound

    If imgPlay.Top < shpEnd(intSpare).Top + shpEnd(intSpare).Height Then 'From Bottom
        If imgPlay.Top + imgPlay.Height > shpEnd(intSpare).Top Then 'From Top
            If imgPlay.Left < shpEnd(intSpare).Left + shpEnd(intSpare).Width Then 'From right
                If imgPlay.Left + imgPlay.Width > shpEnd(intSpare).Left Then 'From left

                    If MsgBox(strWin, vbYesNo, "You have defeated the maze!!!") = vbYes Then
 
                    intLevel = intLevel + 1
                    imgPlay.Left = sngStartLeft
                    imgPlay.Top = sngStartTop

                    Else
                    
                    imgPlay.Left = sngStartLeft
                    imgPlay.Top = sngStartTop

                    End If

                End If
            End If
        End If
    End If

Next

End Sub
 
 Private Sub KDCollision() 'Collision with key and door

'Collision with key
    If imgPlay.Top < imgKey.Top + imgKey.Height Then 'From Bottom
        If imgPlay.Top + imgPlay.Height > imgKey.Top Then 'From Top
            If imgPlay.Left < imgKey.Left + imgKey.Width Then 'From right
                If imgPlay.Left + imgPlay.Width > imgKey.Left Then 'From left

                    blnKey = True 'The user has taken key
                    imgKey.Left = -999

                End If
            End If
        End If
    End If

'Collision with door
    If imgPlay.Top < shpDoor.Top + shpDoor.Height Then 'From Bottom
        If imgPlay.Top + imgPlay.Height > shpDoor.Top Then 'From Top
            If imgPlay.Left < shpDoor.Left + shpDoor.Width Then 'From right
                If imgPlay.Left + imgPlay.Width > shpDoor.Left Then 'From left

                'To check if user has key
                    If blnKey = True Then
                        
                        shpDoor.Visible = False

                    Else 'If user does not have key
                    
                        If MsgBox("Collect the key to unlock this door", vbInformation, "Objective") = vbOK Then
                        
                            imgPlay.Top = imgPlay.Top + 100
                        
                        End If

                    End If

                End If
            End If
        End If
    End If


 End Sub
 

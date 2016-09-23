VERSION 5.00
Object = "{C1A8AF28-1257-101B-8FB0-0020AF039CA3}#1.1#0"; "MCI32.OCX"
Begin VB.Form frmGameS 
   AutoRedraw      =   -1  'True
   BackColor       =   &H00C0C0C0&
   BorderStyle     =   1  'Fixed Single
   ClientHeight    =   6765
   ClientLeft      =   150
   ClientTop       =   840
   ClientWidth     =   10905
   Icon            =   "game.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   451
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   727
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame1 
      BorderStyle     =   0  'None
      Caption         =   "Frame1"
      Height          =   975
      Left            =   0
      TabIndex        =   6
      Top             =   0
      Width           =   855
      Begin VB.Image imgMute 
         Height          =   720
         Left            =   0
         Picture         =   "game.frx":0ECA
         Stretch         =   -1  'True
         Top             =   120
         Visible         =   0   'False
         Width           =   720
      End
      Begin VB.Image imgPlay 
         Height          =   480
         Left            =   120
         Picture         =   "game.frx":15DF2
         Stretch         =   -1  'True
         Top             =   240
         Width           =   480
      End
   End
   Begin MCI.MMControl Sound 
      Height          =   495
      Left            =   240
      TabIndex        =   5
      Top             =   4800
      Visible         =   0   'False
      Width           =   3540
      _ExtentX        =   6244
      _ExtentY        =   873
      _Version        =   393216
      DeviceType      =   ""
      FileName        =   ""
   End
   Begin VB.Timer tmrTime 
      Interval        =   1000
      Left            =   5040
      Top             =   3840
   End
   Begin VB.Timer tmrMove 
      Interval        =   1
      Left            =   7200
      Top             =   5640
   End
   Begin VB.Label lblPause 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Paused"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   705
      Left            =   4560
      TabIndex        =   4
      Top             =   840
      Visible         =   0   'False
      Width           =   1410
   End
   Begin VB.Label lblHighScore 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "Vladimir Script"
         Size            =   21.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   525
      Left            =   600
      TabIndex        =   3
      Top             =   6120
      Width           =   105
   End
   Begin VB.Label lblTime 
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "Papyrus"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   8280
      TabIndex        =   2
      Top             =   840
      Width           =   2535
   End
   Begin VB.Label lblHead 
      BackStyle       =   0  'Transparent
      Caption         =   "Time played"
      BeginProperty Font 
         Name            =   "Papyrus"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   8880
      TabIndex        =   1
      Top             =   120
      Width           =   1935
   End
   Begin VB.Label lblLose 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Game Over"
      BeginProperty Font 
         Name            =   "Old English Text MT"
         Size            =   48
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   975
      Left            =   2520
      TabIndex        =   0
      Top             =   -120
      Visible         =   0   'False
      Width           =   6495
   End
   Begin VB.Line Line1 
      Visible         =   0   'False
      X1              =   264
      X2              =   272
      Y1              =   240
      Y2              =   240
   End
   Begin VB.Menu mnuFile 
      Caption         =   "File"
      Begin VB.Menu mnuMain 
         Caption         =   "Return to main menu"
      End
      Begin VB.Menu mnuReset 
         Caption         =   "Reset game"
         Enabled         =   0   'False
      End
      Begin VB.Menu mnuQuit 
         Caption         =   "Quit game"
      End
      Begin VB.Menu mnuExit 
         Caption         =   "Exit program"
      End
   End
   Begin VB.Menu mnuGame 
      Caption         =   "Game"
      Begin VB.Menu mnuAbout 
         Caption         =   "About"
      End
      Begin VB.Menu mnuInstructions 
         Caption         =   "Instructions"
      End
      Begin VB.Menu mnuCheat 
         Caption         =   "Cheat"
      End
   End
End
Attribute VB_Name = "frmGameS"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Coded by: Shobhit and Sethuwran

Dim intXfactor As Integer, intYfactor As Integer 'To control directional movement
Dim sngX As Single, sngY As Single 'To control where Pset is being drawn
Dim blnCheat As Boolean 'For cheats
Dim blnEnter(1 To 2) As Boolean, Cheat As String
Dim blnPos(1 To 2) As Boolean
Dim sngHandX As Single, sngHandY As Single    'To set a handicap
Dim strStatus 'For track

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
'Snake Up movement
Select Case KeyCode

Case vbKeyUp
    If intYfactor <> 1 Then ' If  the Snake is not moving Down
        
        intXfactor = 0
        intYfactor = -1
    
    End If

'Snake Down movement
Case vbKeyDown
    
    If intYfactor <> -1 Then ' If  the Snake is not moving Up
        
        intXfactor = 0
        intYfactor = 1
    
    End If
    
'Snake Left movement
Case vbKeyLeft
    
    If intXfactor <> 1 Then ' If  the Snake is not moving Right
        
        intXfactor = -1
        intYfactor = 0
    
    End If

'Snake Right movement
Case vbKeyRight
    
    If intXfactor <> -1 Then ' If  the Snake is not moving Left
        
        intXfactor = 1
        intYfactor = 0
    
    End If
    
Case vbKeyP

'Pause game/ Play game
    tmrMove.Enabled = Not tmrMove.Enabled
    tmrTime.Enabled = Not tmrTime.Enabled

'Display label/ Hide label
    lblPause.Visible = Not lblPause.Visible
    

Case vbKeyQ  'Cheat

    If blnEnter(1) = True Then

        blnCheat = Not blnCheat

    End If

Case vbKeyR 'Reset game

    If lblLose.Visible = True Or blnPos(1) = True Or blnPos(2) = True Then
        
        Call mnuReset_Click
        
    End If
    
Case 27  'Quit game

    
    Call mnuMain_Click
    
Case vbKeyT  'Cheat

    If blnEnter(2) = True And intMinutes <= 60 Then

        intMinutes = intMinutes + 1

    End If
    
Case vbKeyC

    Call mnuCheat_Click
    
End Select
End Sub

Private Sub Form_Load()

'Set the starting X and Y coordinates
    sngX = Line1.X1
    sngY = Line1.Y1

'Snake moves up when form loads
    intYfactor = -1

Sound.FileName = App.Path & "\Snake.wav"
strStatus = "Play"

End Sub


Private Sub imgMute_Click()
strStatus = "Play"

'Display
    imgMute.Visible = False
    imgPlay.Visible = True
End Sub

Private Sub imgPlay_Click()
strStatus = "Stop"

'Display
    imgMute.Visible = True
    imgPlay.Visible = False

End Sub

Private Sub mnuAbout_Click()
Call Form_KeyDown(vbKeyP, 0)
frmAboutS.Show
End Sub

Private Sub mnuCheat_Click()
'Enter cheat
Cheat = InputBox("Enter cheat(lower case)", "Cheat for box")

If Cheat = "nosnakemaze" Then 'Box cheat
    
    blnEnter(1) = True
    Cheat = MsgBox("Press Q to make the box Appear/Disappear", vbInformation, "Cheat enabled")


ElseIf Cheat = "playtime" Then 'Time cheat
    
    blnEnter(2) = True
    Cheat = MsgBox("Press T to increase minutes played ", vbInformation, "Cheat enabled")

End If


End Sub

Private Sub mnuExit_Click()
    End 'Termintate Program
End Sub

Private Sub mnuInstructions_Click()
Call Form_KeyDown(vbKeyP, 0)
frmControlsS.Show
End Sub

Private Sub mnuMain_Click()


Call mnuReset_Click

tmrMove.Interval = 0
tmrTime.Interval = 0
a = ""
'Redirects back to the Main menu(frmgameS)
    frmMenuS.Show
    Unload Me

End Sub

Private Sub mnuQuit_Click()
Call mnuReset_Click

tmrMove.Interval = 0
tmrTime.Interval = 0
a = ""
'Redirects back to the Main menu(frmgameS)
    frmMMain.Show
    Unload Me
End Sub

Private Sub mnuReset_Click() 'Restarts the game

    blnCheat = False

'Resets X and Y coordinates
    sngX = Line1.X1
    sngY = Line1.Y1

    intYfactor = -1
    intXfactor = 0

'erases the snake and remove the Lose label
    lblLose.Visible = False
    Cls

'Reset the highscore timer
    tmrTime.Interval = 1000
    intSeconds = 0
    intMinutes = 0

'enables the snake
    tmrMove.Interval = 1

'Disables the reset menu
    mnuReset.Enabled = False

End Sub

Private Sub tmrMove_Timer()


'Basic movement
    sngX = sngX + 1 * intXfactor
    sngY = sngY + 1 * intYfactor

PSet (sngX, sngY), lngColor 'Command to draw the snake

Call Box

Call Collision

'Positional reset option

    blnPos(1) = (sngX <= 0) Or (sngY <= 0)
    blnPos(2) = (sngX >= 720) Or (sngY >= 448)



End Sub

Private Sub tmrTime_Timer() 'The timer that sets the highscore

intSeconds = intSeconds + 1  'Increase in the time

If intSeconds > 59 Then   '60 seconds =1 minute
    
    intSeconds = 0
    intMinutes = intMinutes + 1

End If

lblTime.Caption = intMinutes & " min " & intSeconds & " sec" 'Displays the time played

lblHighScore.Caption = "Current Highscore: " & intRecordMin & " Min " & intRecordSec & " Sec" 'Displays the current highscores

End Sub

Private Sub Box()
'Command to draw the frame within which the snake is enclosed
If blnCheat = False Then
    
    Line (104, 88)-(550, 300), lngColor, B

Else

    Line (104, 88)-(550, 300), Me.BackColor, B

End If


'Optional:If the second maze is selected in form 2
    If a = "imgMaze2.Picture" Then
    
        Line (192, 88)-(192 + 17, 88 + 105), lngColor, BF
        Line (300, 88)-(300 + 17, 88 + 105), lngColor, BF
        Line (125, 300)-(125 + 17, 300 - 105), lngColor, BF
        Line (500, 300)-(500 + 17, 300 - 105), lngColor, BF

    End If

'Optional: handicap code
    If intHandicap = 1 Then 'No left and up & up and left movements
    
        sngHandX = 1
        sngHandY = 1

    ElseIf intHandicap = 2 Then 'No right and down & down and right movements
    
        sngHandX = -1
        sngHandY = -1

    ElseIf intHandicap = 0 Then 'No Handicap

        sngHandX = intXfactor
        sngHandY = intYfactor
    
    End If


End Sub

Private Sub Collision()

'Code that detects the collison using color
    If Point(sngX + sngHandX, sngY + sngHandY) = lngColor Then
        Sound.Command = "Close"
        Sound.Command = "open"
        Sound.Command = strStatus
        
        
        lblLose.Visible = True

        If intMinutes * 60 + intSeconds > intRecordMin * 60 + intRecordSec Then 'If the player has beat the record time
    
            If intMinutes * 60 + intSeconds >= 180 Then
                
                frmHighS.cmdCheat2.Visible = True
                
            End If
        'Store scores into the record time
            intRecordMin = intMinutes
            intRecordSec = intSeconds
             
            strName = InputBox("Enter Your Name", "HIGH SCORE!!!!!") 'Store players name to be displayed in frmHighS
            Do Until Len(strName) >= 2 And Len(strName) < 20 And IsNumeric(strName) = False
                
                    strName = InputBox("Enter Your Name", "HIGH SCORE!!!!!")
                    
                
            Loop
        'Redirect to high score form
            frmHighS.Show
            Unload Me
        
        'Reset form
        Call mnuReset_Click

        tmrMove.Interval = 0
        tmrTime.Interval = 0
        
        End If
   
    'To enable the reset menu and stop the highscore timer
        mnuReset.Enabled = True
        tmrTime.Interval = 0

    'To stop the snake
        intXfactor = 0
        intYfactor = 0
        tmrMove.Interval = 0

    End If

End Sub

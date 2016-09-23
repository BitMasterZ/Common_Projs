VERSION 5.00
Begin VB.Form Form1 
   BorderStyle     =   0  'None
   Caption         =   "Form1"
   ClientHeight    =   10710
   ClientLeft      =   150
   ClientTop       =   780
   ClientWidth     =   13065
   Icon            =   "game.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   714
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   871
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer tmrTime 
      Interval        =   1000
      Left            =   5040
      Top             =   3840
   End
   Begin VB.Timer Timer1 
      Interval        =   1
      Left            =   360
      Top             =   2400
   End
   Begin VB.Label lblPause 
      AutoSize        =   -1  'True
      Caption         =   "Paused"
      BeginProperty Font 
         Name            =   "Segoe Print"
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
   Begin VB.Label lblheading 
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
      Top             =   -240
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
         Caption         =   "Main"
      End
      Begin VB.Menu mnuReset 
         Caption         =   "Reset"
         Enabled         =   0   'False
      End
      Begin VB.Menu mnuQuit 
         Caption         =   "Quit"
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim intXfactor As Integer, intYfactor As Integer 'To control directional movement
Dim sngX As Single, sngY As Single 'To control where Pset is being drawn

Dim sngHandX As Single, sngHandY As Single    'To set a handicap

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
'Snake Up movement
If KeyCode = vbKeyUp Then
    
    If intYfactor <> 1 Then ' If  the Snake is not moving Down
        
        intXfactor = 0
        intYfactor = -1
    
    End If

'Snake Down movement
ElseIf KeyCode = vbKeyDown Then
    
    If intYfactor <> -1 Then ' If  the Snake is not moving Up
        
        intXfactor = 0
        intYfactor = 1
    
    End If
    
'Snake Left movement
ElseIf KeyCode = vbKeyLeft Then
    
    If intXfactor <> 1 Then ' If  the Snake is not moving Right
        
        intXfactor = -1
        intYfactor = 0
    
    End If

'Snake Right movement
ElseIf KeyCode = vbKeyRight Then
    
    If intXfactor <> -1 Then ' If  the Snake is not moving Left
        
        intXfactor = 1
        intYfactor = 0
    
    End If
ElseIf KeyCode = vbKeyP Then

'Pause game/ Play game
    Timer1.Enabled = Not Timer1.Enabled
    tmrTime.Enabled = Not tmrTime.Enabled

'Display label/ Hide label
    lblPause.Visible = Not lblPause.Visible

End If
End Sub

Private Sub Form_Load()

'Set the starting X and Y coordinates
sngX = Line1.X1
sngY = Line1.Y1

'Snake moves up when form loads
intYfactor = -1

End Sub

Private Sub mnuMain_Click()
intXfactor = 0
intYfactor = 0

'Redirects back to the Main menu(Form2)
Form2.Show
Unload Me

End Sub

Private Sub mnuQuit_Click()

End 'Termintate Program

End Sub

Private Sub mnuReset_Click() 'Restarts the game

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
Timer1.Interval = 1

'Disables the reset menu
mnuReset.Enabled = False
End Sub

Private Sub Timer1_Timer()

On Error GoTo Handler

'Basic movement
sngX = sngX + 1 * intXfactor
sngY = sngY + 1 * intYfactor

PSet (sngX, sngY), lngColor 'Command to draw the snake

Line (104, 88)-(550, 300), lngColor, B 'Command to draw the frame within which the snake is enclosed

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


'Code that detects the collison using color
If Point(sngX + sngHandX, sngY + sngHandY) = lngColor Then

    lblLose.Visible = True

    If intMinutes > intRecordMin Then 'If the player has beat the record time
    
        'Store scores into the record time
        intRecordMin = intMinutes
        intRecordSec = intSeconds

        strName = InputBox("Enter Your Name", "HIGH SCORE!!!!!") 'Store players name to be displayed in Frmsplash

    frmSplash.Show
    Unload Me

    ElseIf intSeconds > intRecordSec Then 'If the player has beat the record time

        'Store scores into the record time
        intRecordMin = intMinutes
        intRecordSec = intSeconds
 
 
        strName = InputBox("Enter Your Name", "HIGH SCORE!!!!!") 'Store players name to be displayed in Frmsplash

    frmSplash.Show
    Unload Me

    End If

'to enable the reset menu and stop the highscore timer
mnuReset.Enabled = True
tmrTime.Interval = 0

'To stop the snake
intXfactor = 0
intYfactor = 0
Timer1.Interval = 0

End If

Exit Sub

Handler: 'If error occurs

strName = "Unknown"

Exit Sub

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

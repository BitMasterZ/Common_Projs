VERSION 5.00
Begin VB.Form frmISU 
   Appearance      =   0  'Flat
   AutoRedraw      =   -1  'True
   BackColor       =   &H80000005&
   Caption         =   "ISU M"
   ClientHeight    =   10965
   ClientLeft      =   165
   ClientTop       =   555
   ClientWidth     =   15240
   ForeColor       =   &H0000FF00&
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MousePointer    =   2  'Cross
   ScaleHeight     =   10965
   ScaleWidth      =   15240
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.Timer tmrClock 
      Left            =   13560
      Top             =   3120
   End
   Begin VB.Label lblScore 
      BackStyle       =   0  'Transparent
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   36
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   975
      Left            =   14040
      TabIndex        =   6
      Top             =   6840
      Width           =   1215
   End
   Begin VB.Label lblScoreBoard 
      BackStyle       =   0  'Transparent
      Caption         =   "Score"
      ForeColor       =   &H0000FF00&
      Height          =   255
      Left            =   14400
      TabIndex        =   5
      Top             =   6480
      Width           =   615
   End
   Begin VB.Label lblTime 
      BackStyle       =   0  'Transparent
      Caption         =   "Time Left"
      ForeColor       =   &H0000FF00&
      Height          =   375
      Left            =   14280
      TabIndex        =   4
      Top             =   3120
      Width           =   975
   End
   Begin VB.Label lblTimer 
      BackStyle       =   0  'Transparent
      Caption         =   "180"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   36
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   1335
      Left            =   14040
      TabIndex        =   3
      Top             =   3480
      Width           =   1215
   End
   Begin VB.Label lblName 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   "Player"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   435
      Left            =   6600
      TabIndex        =   2
      Top             =   10080
      Width           =   795
      WordWrap        =   -1  'True
   End
   Begin VB.Label lblComment 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   $"EW.frx":0000
      ForeColor       =   &H0000FF00&
      Height          =   1095
      Left            =   5160
      TabIndex        =   1
      Top             =   120
      Width           =   6135
   End
   Begin VB.Label lblCursor 
      Height          =   495
      Left            =   240
      TabIndex        =   0
      Top             =   240
      Visible         =   0   'False
      Width           =   1095
   End
End
Attribute VB_Name = "frmISU"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Name : Annie Zhang
'Teacher : Kuehn
'Course : ICS3U0
'Assmt : ISU
'Description: Simple raycaster game. Player has a time limit to shoot different coloured
'boxes in a maze. Game is won when all red cubes have been shot. Player is given a
'score depending on their performance. Game over when time limit is up or HP is 0.
'HP decreases while red cubes are in view.

'array of variables, 1 for each keycode to determine if that key is pressed
Dim blnKey(255) As Boolean

Dim dblPosX As Double, dblPosY As Double 'positon of player

Dim intGrid(1 To 40, 1 To 21) As Integer, intVAngle As Integer, intAngle As Integer     'Grid is the map, intVAngle is the View angle, intAngle is an angle
 
Dim strMap As String, intMapX As Integer, intMapY As Integer                            'Variables used to transfer strMap from text file to Grid

Dim dblRayX As Double, dblRayY As Double, dblXinc As Double, dblYinc As Double          'variables used to cast and increase ray when raycasting

'intDist is Distance between player and wall, intDrawH is the height of the boxes to draw, intWallX and intWallY are used to identify the location to draw the boxes
Dim intDist As Integer, intDrawH As Integer, intWallX As Integer, intWallY As Integer

'variables used to determine "moving cubes" location, movement speed/direction, and whether or not the cube has been destroyed, in that order
Dim dblMonstX(1 To 4) As Double, dblMonstY(1 To 4) As Double, intMonstInc(1 To 4) As Integer, blnMonstLive(1 To 4) As Boolean

'intTimerCounter counts timer intervals, intMonstC is used to set "moving cube" information via for loops
Dim intTimerCounter As Integer, intMonstC As Integer

Dim intTeleX As Integer, intTeleY As Integer        'coordinates of the telecube

'intDamage to be done to player and hp is health points of player, strHP is used to make sure player entered hp is valid
Dim intDamage As Integer, intHP As Integer, strHP As String

'dblHoriz is the Horizon or halfway down the screen, dblScore is the Score of the player
Dim dblHoriz As Double, dblScore As Double

'Clock is the countdown time, strPlayer is player name and bazooka is whether or not the bazooka can be used atm
Dim dblClock As Double, strPlayer As String, blnBazooka As Boolean

Dim strRestart As String        'action after end of game
Dim intRKills As Integer        'Number or terror cubes killed
Dim strWin As String            'What to say when game has ended
Private Const PI = 3.14159265   'the math # pi

Public Function Cosine(ByVal degrees As Single) As Single
    'the cosine function in degrees instead of radians
    Cosine = Cos(degrees * PI / 180)
End Function

Public Function Sine(ByVal degrees As Single) As Single
    'the sin function in degrees instead of radians
    Sine = Sin(degrees * PI / 180)
End Function

Public Function TanF(ByVal degrees As Single) As Single
    'the tan function in degrees instead of radians
    TanF = Tan(degrees * PI / 180)
End Function

Private Sub tmrclock_timer()    'timer, called up every 500 time units to perform actions without player input
    
    Randomize
    
    'decrease countdown
    dblClock = dblClock - 0.25
    lblTimer.Caption = Int(dblClock)
    
    intHP = intHP - intDamage        'decrease player HP
    
    'game over when intHP or countdown reaches 0
    If intHP <= 0 Then
        intHP = 0                    'Set HP to 0 for aesthetic purposes
        Raycast
        GameOver
    ElseIf dblClock <= 0 Then
        dblClock = 0                 'Set countdown to 0 for aesthetic purposes
        Raycast
        GameOver
    End If
    
    
    'Enable bazooka after 15 time units
    If dblClock = 165 Then                          'Check if coundown has reached 165 time units
        lblComment = "Oh look, your bazooka's still working! Press SPACE to shoot it! Note: Every Time You Shoot the Bazooka, 0.25 gets deducted from your score."
        blnBazooka = True                           'Allow for bazooka use
    End If
    
    intTimerCounter = intTimerCounter + 1
    
    'move cubes depending on intTimerCounter
    If intTimerCounter = 2 Then                        'Check if intTimerCounter is at a certain number so that monsters dont move every timer interbal (too fast)
        intGrid(intTeleX, intTeleY) = 0             'Reset telecube's location
        MonsterMove                                 'call up Private sub to move moving cubes
    ElseIf intTimerCounter = 4 Then                    'check if intTimerCounter is at a certain number
        
        'find new "tele cube" location
        Do
                intTeleY = Int((Rnd + 0.05) * 20)   'Randomize telecube's y coordinate. the +0.05 is so that the number is obtained must be above 0
                intTeleX = Int((Rnd + 0.03) * 39)   'Randomize telecube's x coordinate. the +0.03 is so that the number is obtained must be above 0
        Loop Until intGrid(intTeleX, intTeleY) = 0  'Repeat until an unoccupied location is found
        intGrid(intTeleX, intTeleY) = 5             'Place telecube at said unoccupied location
        
        intTimerCounter = 0
        MonsterMove
    End If

    Raycast
End Sub

Private Sub MonsterMove()           'move moving cubes (moving cubes only change y coordinate)
    For intMonstC = 1 To 4          'for loop to repeat process for each moving cube
        If intGrid(dblMonstX(intMonstC), Int(dblMonstY(intMonstC) + intMonstInc(intMonstC))) = 0 And blnMonstLive(intMonstC) = True Then 'Check if the destination location is occupied as well as whether or not the cube has been destroyed. Proceed if location is unoccupied and cube has not been destroyed
            intGrid(dblMonstX(intMonstC), dblMonstY(intMonstC)) = 0                 'Reset moving cube's old location
            dblMonstY(intMonstC) = dblMonstY(intMonstC) + intMonstInc(intMonstC)    'Move Cube
            intGrid(dblMonstX(intMonstC), dblMonstY(intMonstC)) = 4                 'Occupy new location
        Else
            intMonstInc(intMonstC) = -intMonstInc(intMonstC)                        'Otherwise, change the direction in which the cube will move
        End If
    Next intMonstC
End Sub

Private Sub Form_Load()                  'Do upon loading of this form
    Me.ScaleHeight = 1000                'Set height so that walls are the right size, not as important
    Me.ScaleWidth = 600                  'More important, set width so that each angle (60) take up 10 units of screen width so that walls will be drawn properly
    Me.AutoRedraw = True                 'autoredraw to reduce flashing

    tmrClock.Interval = 500              'Set timer intervals
    
    'Set initial settings
    blnBazooka = False
    intDamage = 0
    dblClock = 180
    intVAngle = 90
    dblScore = 0
    dblHoriz = ScaleHeight / 2
    intRKills = 0
    
    
    dblPosX = 3             'Set initial player x position
    dblPosY = 3             'Set initial player y position
    
    'Set movable monster starting positions
    dblMonstX(1) = 3
    dblMonstY(1) = 6
    dblMonstX(2) = 37
    dblMonstY(2) = 10
    dblMonstX(3) = 29
    dblMonstY(3) = 3
    dblMonstX(4) = 10
    dblMonstY(4) = 9
    intTimerCounter = 0
    intTeleX = 18
    intTeleY = 4
    
    'Set movable monster speed
    For intMonstC = 1 To 4                  'repeat procedure for each moving cube
        intMonstInc(intMonstC) = 1          'set moving cube speed
        blnMonstLive(intMonstC) = True      'set moving cube as "alive"
    Next intMonstC
    
    GetMap                                  'Call up private sub to get map from text file
    
    
    Do
        strPlayer = InputBox("Enter Player Name (No More Than 10 Letters)", "ID")   'Ask for player name
        If Len(strPlayer) > 10 Then                                                 'Check if name too long
            MsgBox "Name too long."                                                 'Tell user if name is too long
        ElseIf Len(strPlayer) < 0 Then                                              'check if name too short
            MsgBox "Invalid Input. Try Again."                                      'tell user if name is too short
        End If
    Loop Until Len(strPlayer) <= 10 And Len(strPlayer) > 0                          'Keep asking until name is right length
    lblName.Caption = strPlayer                                                     'change the label to reflect player name
    
    'Cheat, disregard. Used for debugging
    If strPlayer = "annierulz" Then
        intRKills = 30
    End If
    
    Do
        strHP = InputBox("Enter amount of HP you would like to start with (50 to 700), keep in mind your score will be increased if you start with a lower initial HP pool... if you survive.", "HP Pool") 'Ask player for starting hp pool
        If Val(strHP) < 50 Or Val(strHP) > 700 Then    'if starting hp pool is too big or too small then
            MsgBox "Invalid Initial HP"                 'inform player of their mistake
        End If
    Loop Until Val(strHP) >= 50 And Val(strHP) <= 700  'Repeat until a valid hp pool is given
    intHP = Val(strHP)                                  'Set initial hp pool
    Raycast
End Sub

Private Sub GetMap()                                                                'Obtain map information from text file
    Open App.Path & "\map1.txt" For Input As #1                                     'open text file from location
    Input #1, strMap                                                                'Put data in text file into strMap variable
    Close                                                                           'Close text file
    GridDown                                                                        'Call griddown private sub
End Sub

Private Sub GridDown()              'Puts information from strMap into the grid array for more convenient use
    'Walls: 1 = Normal Wall (Blue) 2 = Normal Wall (Green) 3 = Enemy Wall (Red) 4 = Moving Monster Wall (Inprogress Grey)
    '5 = Teleporting Monster (purple), 7 = Indestructable Outer Wall (Blue), 8 = Player
    For intMapY = 1 To 21           'Repeat for each row of the grid (Y)
        For intMapX = 1 To 40       'Repeat for each number in a row (X)
            intGrid(intMapX, intMapY) = Val(Mid(strMap, (intMapY - 1) * 40 + intMapX, 1)) 'Take the character from strMap string and put it into the corresponding Grid variable
        Next intMapX
    Next intMapY
End Sub

Private Sub Form_Keydown(KeyCode As Integer, Shift As Integer)
    
    blnKey(KeyCode) = True     'when a key is pressed, the corresponding key variable in the array will be true
    Dim dblRunInc As Double, dblTurnInc As Integer
    
    'When shift is pressed down move increments increase
    If Shift = 1 Then
        dblRunInc = 0.2
        dblTurnInc = 3
    Else
        dblRunInc = 0
        dblTurnInc = 0
    End If
    
    If blnKey(vbKeyW) = True Then 'check whether "W" is pressed (prefer W to S)
        If intGrid(Int(dblPosX + (Cosine(intVAngle) * 0.3)), Int(dblPosY + (Sine(intVAngle) * 0.3))) = 0 Or intGrid(Int(dblPosX + (Cosine(intVAngle) * 0.3)), Int(dblPosY + (Sine(intVAngle) * 0.3))) = 8 Then 'check if the space in front is occupied proceed if unoccupied
                intGrid(Int(dblPosX), Int(dblPosY)) = 0                             'reset current player position to 0
                dblPosX = dblPosX + (Cosine(intVAngle) * (0.1 + dblRunInc))         'increase player x coordinate, cosine is so that player moves towards the angle that they are looking
                dblPosY = dblPosY + (Sine(intVAngle) * (0.1 + dblRunInc))           'increase player y coordinate, sine is so that player moves towards the angle that they are looking
                intGrid(Int(dblPosX), Int(dblPosY)) = 8                             'Occupy new location
        End If
    
    ElseIf blnKey(vbKeyS) = True Then 'check whether "S" is pressed
        If intGrid(Int(dblPosX - (Cosine(intVAngle) * 0.3)), Int(dblPosY - (Sine(intVAngle) * 0.3))) = 0 Or intGrid(Int(dblPosX - (Cosine(intVAngle) * 0.3)), Int(dblPosY - (Sine(intVAngle) * 0.3))) = 8 Then  'Check if space behind is occupied, proceed if unoccupied
                intGrid(Int(dblPosX), Int(dblPosY)) = 0                             'reset current player position to 0
                dblPosX = dblPosX - (Cosine(intVAngle) * (0.1 + dblRunInc))         'decrease player x coordinate, cosine is so that player moves away from the angle that they are looking
                dblPosY = dblPosY - (Sine(intVAngle) * (0.1 + dblRunInc))           'decrease player y coordinate, sine is so that player moves away from the angle that they are looking
                intGrid(Int(dblPosX), Int(dblPosY)) = 8                             'Occupy new location
        End If
    End If
    
    'Turn player when A or D is pressed
    If blnKey(vbKeyA) = True Then
        intVAngle = intVAngle - (3 + dblTurnInc)
    ElseIf blnKey(vbKeyD) = True Then
        intVAngle = intVAngle + (3 + dblTurnInc)
    End If
    
    'if space is pressed and bazooka is enabled then destroy block at crosshair if applicable
    If blnKey(vbKeySpace) = True And blnBazooka = True Then
        intAngle = intVAngle                                'the angle to send ray is view angle as the crosshair is at the center of the screen
        Ray
        If intGrid(Int(dblRayX), Int(dblRayY)) < 7 Then     'If the grid block the ray hits has a value less than 7 then

            If intGrid(Int(dblRayX), Int(dblRayY)) = 4 Then     'Check if the value is 4, if it is then
                For intMonstC = 1 To 4
                    If dblMonstX(intMonstC) = Int(dblRayX) Then 'if the x coordinate of the moving cube is the same as the grid block hit then (no 2 moving cubes have the same x coordinate)
                        blnMonstLive(intMonstC) = False         'Set that cube as "dead"
                    End If
                Next intMonstC
            ElseIf intGrid(Int(dblRayX), Int(dblRayY)) = 3 Then 'Check if the value is 3, if so then
                intRKills = intRKills + 1
                
                'Game won if all terror cubes destroyed
                If intRKills >= 30 Then
                    GameOver
                End If
                
            End If
            
            intGrid(Int(dblRayX), Int(dblRayY)) = 0             'Reset the value of the grid block that was hit to 0 (unoccupied)
        End If
        
        dblScore = dblScore - 0.25                              'Decrease score for shooting bazooka
        lblScore = Round(dblScore)
        Raycast
        
    End If
    
    Raycast                                                     'Call up raycast private sub to update the screen
End Sub
Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer)

    blnKey(KeyCode) = False 'if the key is released then its corresponding key variable is false

End Sub

Private Sub Ray()
    
    dblRayX = dblPosX   'start ray x coordinate at player x position
    dblRayY = dblPosY   'start ray y coordinate at player y position
    
    'Set increments to check wall at, use sine and cosine so that the increments extend the ray at the correct angle, /30 so that increments arnt too big
    dblXinc = Sine(intAngle) / 30
    dblYinc = Cosine(intAngle) / 30
    
    Do
        'Send ray across grid at angle
        dblRayY = dblRayY + dblXinc     'add y increment to y coordinate of ray to extend ray
        dblRayX = dblRayX + dblYinc     'add x increment to x coordinate of ray to extend ray
        intDist = intDist + 1           'each time ray is extended, we know that the distance to the block is furthur, therefore increase distance
        
        'error proof the ray, due to error if dblRayX or dblRayY is too big or small (caused by the ray extending beyond the limits of the grid because there is no wall to stop it). this probably wont ever be needed but is here just in case
        If Int(dblRayX) <= 0 Then                       'if X coordinate of ray is too small then
            dblRayX = dblRayX + 1                       'increase x coordinate by 1
            intGrid(Int(dblRayX), Int(dblRayY)) = 7     'occupy that location
        ElseIf Int(dblRayY) <= 0 Then                   'if Y coordinate of ray is too small then
            dblRayY = dblRayY + 1                       'increase Y coordinate by 1
            intGrid(Int(dblRayX), Int(dblRayY)) = 7     'occupy that location
        ElseIf Int(dblRayY) >= 22 Then                  'if Y coordinate is too big then
            dblRayY = dblRayY - 1                       'Decrease y coordinate by 1
            intGrid(Int(dblRayX), Int(dblRayY)) = 7     'occupy that location
        ElseIf Int(dblRayX) >= 41 Then                  'if x coordiante is too big then
            dblRayX = dblRayX - 1                       'Decrease x coordinate by 1
            intGrid(Int(dblRayX), Int(dblRayY)) = 7     'occupy that location
        End If
    
    Loop Until (intGrid(Int(dblRayX), Int(dblRayY)) > 0) And (intGrid(Int(dblRayX), Int(dblRayY)) <> 8) 'stop loop when wall is found
End Sub
Private Sub Raycast() 'to cast all rays for current view thereby updating the screen
    intDamage = 0
    Me.ScaleHeight = 1000
    Me.ScaleWidth = 600
    
    
    intWallX = 0    'reset position do draw wall at
    
    
    Line (0, 0)-(ScaleWidth, ScaleHeight), vbBlack, BF 'background
    
    For intAngle = intVAngle - 30 To intVAngle + 30 'repeat for each Angle (60)
        'start raycasting
        Ray
        
        'eliminate fishbowl effect
        'intDist = intDist * (Cosine(intAngle - intVAngle))
        
        
        intDrawH = Int(20000 / intDist) 'get height to draw the wall from Distance to wall
        
        If intDrawH > ScaleHeight Then  'Check if the height to draw the wall is to big
            intDrawH = ScaleHeight      'Make the height to draw the wall smaller
        End If
        
            intDist = intDist / 2       'Make the distance smaller proportionaly
            
            If intDist > 100 Then intDist = 100 'make sure Distance doesnt mess up colour (so that "100 - (intDist)" is not negative as we cannot have negat
            
            intWallY = Int(dblHoriz - (intDrawH / 2)) 'Set the bottom y coordinate of the part of wall to be drawn on the screen
            
            'Draw parts of wall, changes colour depending on what kind of wall
            If intGrid(Int(dblRayX), Int(dblRayY)) = 1 Or intGrid(Int(dblRayX), Int(dblRayY)) = 7 Then 'if wall/grid value is 1 or 7 (blu wall) then
                Line (intWallX, intWallY)-(intWallX + 10, intWallY + intDrawH), RGB(100 - (intDist), 100 - (intDist), 255 - (intDist * 2.55)), BF   'Draw the part of wall blue, darker and smaller if farther away
            ElseIf intGrid(Int(dblRayX), Int(dblRayY)) = 2 Then     'if the wall/grid value is 2 (green wall) then
                Line (intWallX, intWallY)-(intWallX + 10, intWallY + intDrawH), RGB(100 - (intDist), 255 - (intDist * 2.55), 100 - (intDist)), BF   'Draw the part of wall green, darker and smaller if farther away
            ElseIf intGrid(Int(dblRayX), Int(dblRayY)) = 3 Then     'if the wall/grid value is 3 (terror cube) then
                If intDist < 100 Then       'Check if it is close enough to be "seen" (not completely black)
                    intDamage = intDamage + 1   'increase the damage to be dealt to player
                End If
                Line (intWallX, intWallY)-(intWallX + 10, intWallY + intDrawH), RGB(255 - (intDist * 2.55), 100 - (intDist), 100 - (intDist)), BF   'Draw the part of wall red, darker and smaller if farther away
            ElseIf intGrid(Int(dblRayX), Int(dblRayY)) = 4 Then     'if the wall/grid value is 4 (moving cube) then
                Line (intWallX, intWallY)-(intWallX + 10, intWallY + intDrawH), RGB(255 - (intDist * 2.55), 255 - (intDist * 2.55), 100 - (intDist)), BF   'Draw the part of wall yellow, darker and smaller if farther away
            ElseIf intGrid(Int(dblRayX), Int(dblRayY)) = 5 Then     'if the wall/grid value is 5 (tele cube) then
                Line (intWallX, intWallY)-(intWallX + 10, intWallY + intDrawH), RGB(250 - (intDist * 2.5), 50 - (intDist * 0.5), 250 - (intDist * 2.5)), BF 'Draw the part of wall purple, darker and smaller if farther away
            End If
        
            intWallX = intWallX + 10    'set up intWallX for the next wall part (each wall part is 10 units wide)
            
            intDist = 0                 'reset Distance to wall
    Next intAngle
    
    'Draw crosshair
    Line (ScaleWidth / 2 - 10, ScaleHeight / 2)-(ScaleWidth / 2 + 10, ScaleHeight / 2), vbGreen
    Line (ScaleWidth / 2, ScaleHeight / 2 - 20)-(ScaleWidth / 2, ScaleHeight / 2 + 20), vbGreen
    Circle (ScaleWidth / 2, ScaleHeight / 2), 5, vbGreen
    
    'Left Hud (HP)
    Line (0, ScaleHeight / 5)-(30, ScaleHeight / 5 * 1.25), vbGreen 'top slanted line
    Line (0, ScaleHeight - ScaleHeight / 5)-(30, ScaleHeight - ScaleHeight / 5 * 1.25), vbGreen 'bottom slanted line
    Line (30, ScaleHeight / 5 * 1.25)-(30, ScaleHeight - ScaleHeight / 5 * 1.25), vbGreen   'vertical line
    Line (5, (ScaleHeight - ScaleHeight / 5 * 1.5) - intHP * 0.6)-(25, ScaleHeight - ScaleHeight / 5 * 1.5), vbRed, BF  'Hp bar
    Line (5, (ScaleHeight - ScaleHeight / 5 * 1.5) - 700 * 0.6)-(25, ScaleHeight - ScaleHeight / 5 * 1.5), vbGreen, B   'green box around hp to show maximum hp
    
    'Top HUD (Transmission Message)
    Line (ScaleWidth - ScaleWidth / 5, 0)-(ScaleWidth - ScaleWidth / 5 * 1.25, 100), vbGreen    'right slanted line
    Line (ScaleWidth / 5 * 1.25, 100)-(ScaleWidth - ScaleWidth / 5 * 1.25, 100), vbGreen        'horizontal line
    Line (ScaleWidth / 5, 0)-(ScaleWidth / 5 * 1.25, 100), vbGreen                              'left slanted line
    
    'Right HUD (Player Name and Score)
    Line (ScaleWidth, ScaleHeight / 5)-(ScaleWidth - 60, ScaleHeight / 5 * 1.25), vbGreen                               'top slanted line
    Line (ScaleWidth, ScaleHeight - ScaleHeight / 5)-(ScaleWidth - 60, ScaleHeight - ScaleHeight / 5 * 1.25), vbGreen   'vertical line
    Line (ScaleWidth - 60, ScaleHeight / 5 * 1.25)-(ScaleWidth - 60, ScaleHeight - ScaleHeight / 5 * 1.25), vbGreen     'bottom slanted line
End Sub

Private Sub Form_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)   'called when a mouse button is pressed
    
    'Turn when right mouse button clicked
    If Button = 2 Then
        intVAngle = intVAngle + ((X / (ScaleWidth / 60)) - 30)  'find the Angle that the mouse clicked and make that the view angle, thereby turning the player
    'shoot when left mouse button is clicked
    ElseIf Button = 1 Then
        intAngle = intVAngle + ((X / (ScaleWidth / 60)) - 30)   'Find the Angle that the mouse clicked
        Ray                                                     'Cast a ray at that angle
        
        'Remove wall hit by ray if applicable
        If intGrid(Int(dblRayX), Int(dblRayY)) = 3 Then         'if grid value is 3 (terror cube) then
            dblScore = dblScore + 5                             'increase player score by 5
            intGrid(Int(dblRayX), Int(dblRayY)) = 0             'reset the value of that location to 0 (unoccupied)
            lblScore.Caption = Round(dblScore)                  'update player score label
            intRKills = intRKills + 1                           'increase terror cube kills by 1
            If intRKills >= 30 Then                             'if all terror cubes are destroyed then
                GameOver                                        'end game
            End If
        ElseIf intGrid(Int(dblRayX), Int(dblRayY)) = 4 Then     'if grid value is 4 (moving cube) then
            dblScore = dblScore + 10                            'increase player score by 10
            intGrid(Int(dblRayX), Int(dblRayY)) = 0             'reset the value of that location to 0 (unoccupied)
            For intMonstC = 1 To 4                              'do the following for each moving cube
                If dblMonstX(intMonstC) = Int(dblRayX) Then     'check if moving cube x coordinate is same as ray x coordinate
                    blnMonstLive(intMonstC) = False             'if so, moving cube is "dead"
                End If
            Next intMonstC
            lblScore.Caption = Round(dblScore)                  'Update score label
        ElseIf intGrid(Int(dblRayX), Int(dblRayY)) = 5 Then     'if grid value is 5 (tele cube) then
            dblScore = dblScore + 30                            'increase score by 30
            intGrid(Int(dblRayX), Int(dblRayY)) = 0             'reset the value of that location to 0 (unoccupied)
            lblScore.Caption = Round(dblScore)                  'update score label
        End If
        Raycast                                                 'raycast to update screen
    End If
    Raycast                                                     'raycast to update screen
End Sub

Private Sub GameOver()      'called when hp or countdown reaches 0
    If intHP > 0 Then      'If reason for game over is not hp then
    dblScore = dblScore + Int(7000 / Val(strHP))    'add points for low inital hp
    End If
    If intRKills >= 30 Then         'if game was won then
        dblScore = dblScore + 100 + dblClock * 3  'increase score for winner aswell as time left
        strWin = "You Won! 100 points added! "        'change ending comments according to whether or not game was won
    Else
        strWin = "GAME OVER. "      'change ending comments according to whether or not game was won
    End If
    Do
        strRestart = InputBox(strWin & strPlayer & ", Your Final Score Is " & dblScore & " (May Include Extra Points for Initial HP and Time Left Over). To Go Return To Menu Enter m, To Quit Enter q") 'tell player their score, ask if they want to quit or return to menu
        If strRestart <> "m" And strRestart <> "q" Then 'if player did not enter either option then
            MsgBox ("Invalid Input")                   'inform them that their input is invalid
        End If
    Loop Until strRestart = "m" Or strRestart = "q"     'repeat until a valid input is given
    
    If strRestart = "m" Then        'if player wants to return to menu then
        Load frmISUanim             'load menu form
        frmISUanim.Show             'show menu form
        Unload Me                   'unload this form
    ElseIf strRestart = "q" Then    'if player wants to quit then
        Unload Me                   'unload this form
        End
    End If

End Sub


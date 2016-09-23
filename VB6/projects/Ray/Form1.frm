VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   8835
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   16065
   LinkTopic       =   "Form1"
   ScaleHeight     =   8835
   ScaleWidth      =   16065
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer tmrClock 
      Left            =   8280
      Top             =   2880
   End
End
Attribute VB_Name = "Form1"
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

'dblHoriz is the Horizon or halfway down the screen, dblScore is the Score of the player
Dim dblHoriz As Double, dblScore As Double

'Clock is the countdown time, strPlayer is player name and bazooka is whether or not the bazooka can be used atm
Dim dblClock As Double, strPlayer As String, blnBazooka As Boolean

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
    Raycast
End Sub


Private Sub Form_Load()                  'Do upon loading of this form
    Me.ScaleHeight = 1000                'Set height so that walls are the right size, not as important
    Me.ScaleWidth = 600                  'More important, set width so that each angle (60) take up 10 units of screen width so that walls will be drawn properly
    Me.AutoRedraw = True                 'autoredraw to reduce flashing

    tmrClock.Interval = 500              'Set timer intervals
    
    'Set initial settings
    intVAngle = 90
    dblHoriz = ScaleHeight / 2
    
    
    dblPosX = 3             'Set initial player x position
    dblPosY = 3             'Set initial player y position
    
    GetMap                                  'Call up private sub to get map from text file
    Raycast
End Sub

Private Sub GetMap()                                                                'Obtain map information from text file
    Open "C:\Users\shobhit\Desktop\Visual Basic 6\M\map 2.txt" For Input As #1                                      'open text file from location
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
    
    
    
End Sub






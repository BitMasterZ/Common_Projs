VERSION 5.00
Begin VB.Form frmGame 
   AutoRedraw      =   -1  'True
   Caption         =   "Game"
   ClientHeight    =   4725
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   6960
   FillColor       =   &H00C0C0C0&
   BeginProperty Font 
      Name            =   "Arial"
      Size            =   11.25
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   Icon            =   "frmGame.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   315
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   464
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer tmrMove 
      Interval        =   1
      Left            =   3360
      Top             =   1440
   End
End
Attribute VB_Name = "frmGame"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim sngX As Single, sngY As Single 'Snake position
Dim intX As Integer, intY As Integer 'Snake move factor
Dim intSpare As Integer 'For control arrays
Dim intMax As Integer, intA As Integer 'length of snake and the box number
Dim X(1 To 50) As Single, Y(1 To 50) As Single, lngC(1 To 50) As Long 'Box coordinates and colour
Dim R As Integer, G As Integer, B As Integer 'Colour change
Dim lngS As Long 'Snake colour
Dim cX As Single, cY As Single 'Projection coordinates
Dim A As Integer 'Speed

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)

Select Case KeyCode 'to check the key pressed
    
    Case vbKeyUp
        A = 0
        If intY <> 1 Then 'If snake is not going down
        
            intY = -1
            intX = 0
    
        End If
    
    Case vbKeyDown
        A = 0
        If intY <> -1 Then 'If snake is not going up
    
            intY = 1
            intX = 0
    
        End If
    
    Case vbKeyLeft
        A = 0
        If intX <> 1 Then 'If snake is not going right
        
            intY = 0
            intX = -1
    
        End If
    
    Case vbKeyRight
        A = 0
        If intX <> -1 Then 'If snake is not going left
    
            intY = 0
            intX = 1
        
        End If
    
    Case vbKeyP
    
        tmrMove.Enabled = Not tmrMove.Enabled
        
    
    Case vbKeyQ
       
        Call Speed
    
    Case vbKeyA
        
        Line (sngX, sngY)-(sngX + intX * 15 * intMax, sngY + intY * 15 * intMax), , B
        
        For cX = sngX To sngX + intX * 15 * intMax
            For cY = sngY To sngY + intY * 15 * intMax

                If cX >= X(intA) - 2 And cX <= X(intA) + 8 Then
                    If cY >= Y(intA) - 2 And cY <= Y(intA) + 8 Then
                        
                        intMax = intMax + 10
                        MsgBox "consumed"
                        Exit Sub

                    End If
                End If

            Next
        Next

End Select
End Sub

Private Sub Form_Load()

'Default start
    sngX = Me.ScaleWidth / 2
    sngY = Me.ScaleHeight / 2

'Reset
    Me.DrawWidth = 5
    intY = -1
    intMax = 10
    intA = 1

'Set box coordinates
    For intSpare = 1 To Number
        
        Randomize
        X(intSpare) = (Rnd * Me.ScaleWidth)
        Y(intSpare) = (Rnd * Me.ScaleHeight)
        
    Next
End Sub

Private Sub tmrMove_Timer()
    
lngC(intA) = vbBlue 'Changes color

'Snake coodinates
    sngX = sngX + intX
    sngY = sngY + intY

'Erase everything around sanke
    PSet (sngX - intX * intMax, sngY - intY * intMax), Me.BackColor
    PSet (sngX + intX * intMax, sngY + intY * intMax), Me.BackColor
    PSet (sngX + intX * intMax, sngY - intY * intMax), Me.BackColor
    PSet (sngX - intX * intMax, sngY + intY * intMax), Me.BackColor

Circle (sngX, sngY), intMax, Me.BackColor

Call blackBox 'Collision

'Draw snake
    PSet (sngX, sngY), lngS


Call Self 'Self collision


For intSpare = 1 To Number

'Draw boxes
    Line (X(intSpare), Y(intSpare))-(X(intSpare) + 5, Y(intSpare) + 5), lngC(intSpare), BF

'Check collision
    If Point(sngX + intX, sngY + intY) = vbBlue Then
        
        Call Colour
        
        intMax = intMax + 4 'Increase size
        Y(intSpare) = -200 'Change position

        intA = intA + 1

        If intA > Number Then 'If all boxes are consumed

            MsgBox "Complete"
            End

        End If
        
        Exit Sub


    End If

Next
'Respawn Snake
    Select Case sngX

        Case Is <= 0  'Left limit
        
            Cls
            sngX = Me.ScaleWidth

        Case Is >= Me.ScaleWidth 'Right limit
        
            Cls
            sngX = 0

    End Select

    Select Case sngY
        
        Case Is >= Me.ScaleHeight 'Down limit
        
            Cls
            sngY = 0

        Case Is <= 0 'Top limit

            Cls
            sngY = Me.ScaleHeight

    End Select

End Sub

Private Sub blackBox()
If Point(sngX + intX, sngY + intY) = vbBlack Then 'collision with black box
    
    Cls
    Call Colour
    Call Speed

'Decrease size
    If intMax > 5 Then intMax = intMax - 1

End If

End Sub

Private Sub Colour()
'Change colour
    Randomize
    R = Int(Rnd * 255) + 13
    G = Int(Rnd * 255) + 13
    B = Int(Rnd * 255) + 13


    lngS = RGB(R, G, B)

End Sub

Private Sub Self()
'Death
    If Point(sngX + intX * 5, sngY + intY * 5) = lngS Then 'collision with self
        
        MsgBox "Score= " & intA
        End
    
    End If

End Sub

Private Sub Speed()

If A < 2 Then
    
    A = A + 2

    intX = intX * A
    intY = intY * A

End If
End Sub




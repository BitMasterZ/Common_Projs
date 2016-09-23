VERSION 5.00
Begin VB.Form frmGame2 
   AutoRedraw      =   -1  'True
   Caption         =   "Form1"
   ClientHeight    =   6705
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   8475
   DrawWidth       =   5
   Icon            =   "frmGame2.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   447
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   565
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame1 
      BorderStyle     =   0  'None
      Caption         =   "Frame1"
      Height          =   735
      Index           =   1
      Left            =   4920
      TabIndex        =   2
      Top             =   0
      Width           =   3135
      Begin VB.Label lblP2 
         AutoSize        =   -1  'True
         Caption         =   "score"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   24
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   570
         Left            =   120
         TabIndex        =   3
         Top             =   120
         Width           =   960
      End
   End
   Begin VB.Frame Frame1 
      BorderStyle     =   0  'None
      Caption         =   "Frame1"
      Height          =   735
      Index           =   0
      Left            =   360
      TabIndex        =   0
      Top             =   0
      Width           =   3135
      Begin VB.Label lblP1 
         AutoSize        =   -1  'True
         Caption         =   "score"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   24
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   570
         Left            =   0
         TabIndex        =   1
         Top             =   0
         Width           =   960
      End
   End
   Begin VB.Timer tmrMove 
      Interval        =   1
      Left            =   3360
      Top             =   5040
   End
End
Attribute VB_Name = "frmGame2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Const pU As Integer = 1, pD As Integer = 2, pL As Integer = 3, pR As Integer = 4 'Direction index
Dim sngX(1 To 2) As Single, sngY(1 To 2) As Single 'Position
Dim intX(1 To 2) As Integer, intY(1 To 2) As Integer 'change factor
Dim Length(1 To 2) As Single 'long
Dim Spare As Integer, Q As Integer 'for arays
Dim lngS(1 To 2) As Long 'colour
Dim Box(1 To 2, 0 To 50) As Single, Limit As Integer ' Blue boxes
Dim Score(1 To 2) As Integer, Counter As Integer 'Score and counter
Dim BlackX(1 To 20) As Single, BlackY(1 To 20) As Single 'Black box positions
Dim Speed(1 To 2) As Single


Private Sub Form_Load()

Limit = 50
    
'Position set
    sngX(1) = 100
    sngY(1) = 100
   
    sngX(2) = 200
    sngY(2) = 100
    
'Length
    Length(1) = 15
    Length(2) = 15

'Colour
    lngS(1) = vbBlue
    lngS(2) = vbRed

Call Create
Call blackBox

'Default speed
    Speed(1) = 1
    Speed(2) = 1
End Sub

Private Sub tmrMove_Timer()
Call Win
Call Movement
Call DRAW
Call Self

'Score display
    lblP1.Caption = "P1 Score: " & Score(1)
    lblP2.Caption = "P2 Score: " & Score(2)

'Green boxes
For Spare = 0 To Limit

    Line (Box(1, Spare), Box(2, Spare))-(Box(1, Spare) + 5, Box(2, Spare) + 5), vbGreen, BF

    For Q = 1 To 2

        If Point(sngX(Q), sngY(Q)) = vbGreen Then ' Collision

            Box(2, Spare) = -1000
            Score(Q) = Score(Q) + 1
            Length(Q) = Length(Q) + 5
            If Speed(Q) < 3 Then Speed(Q) = Speed(Q) + 0.2
            Counter = Counter + 1
            Exit Sub
        
        End If

        If sngX(Q) > Me.ScaleWidth Then 'Boundaries
            
            Cls
            sngX(Q) = 0

        ElseIf sngX(Q) < 0 Then
            
            Cls
            sngX(Q) = Me.ScaleWidth

        ElseIf sngY(Q) > Me.ScaleHeight Then

            Cls
            sngY(Q) = 0

        ElseIf sngY(Q) < 0 Then

            Cls
            sngY(Q) = Me.ScaleHeight

        End If
    Next Q
Next Spare

'Black box
For Spare = 1 To 20

    Line (BlackX(Spare), BlackY(Spare))-(BlackX(Spare) + 5, BlackY(Spare) + 5), vbBlack, BF

    For Q = 1 To 2

        If Point(sngX(Q), sngY(Q)) = vbBlack Then ' Collision
    
        'Change length and speed
                If Length(Q) > 12 Then Length(Q) = Length(Q) - 10
                If Speed(Q) > 1 Then Speed(Q) = Speed(Q) - 0.2
            
                Cls
                Exit Sub
        
        End If
        
    Next Q

Next Spare


End Sub

Private Sub DRAW()

For Spare = 1 To 2

'Change position
    sngX(Spare) = sngX(Spare) + intX(Spare) * Speed(Spare)
    sngY(Spare) = sngY(Spare) + intY(Spare) * Speed(Spare)

'Selected snake
    Circle (sngX(Spare), sngY(Spare)), Length(Spare), Me.BackColor

'Draw
    PSet (sngX(Spare), sngY(Spare)), lngS(Spare)

Next
End Sub

Private Sub Movement()

'Player 1
If GetAsyncKeyState(Player1(pU)) Then

    If intY(1) <> 1 Then
        
        intY(1) = -1
        intX(1) = 0
    
    End If

ElseIf GetAsyncKeyState(Player1(pD)) Then

    If intY(1) <> -1 Then
    
        intY(1) = 1
        intX(1) = 0

    End If

ElseIf GetAsyncKeyState(Player1(pL)) Then

    If intX(1) <> 1 Then

        intX(1) = -1
        intY(1) = 0

    End If

ElseIf GetAsyncKeyState(Player1(pR)) Then

    If intX(1) <> -1 Then

        intX(1) = 1
        intY(1) = 0
    
    End If
End If

'Player 2

If GetAsyncKeyState(Player2(pU)) Then

    If intY(2) <> 1 Then
        
        intY(2) = -1
        intX(2) = 0
    
    End If

ElseIf GetAsyncKeyState(Player2(pD)) Then

    If intY(2) <> -1 Then
    
        intY(2) = 1
        intX(2) = 0

    End If

ElseIf GetAsyncKeyState(Player2(pL)) Then

    If intX(2) <> 1 Then

        intX(2) = -1
        intY(2) = 0

    End If

ElseIf GetAsyncKeyState(Player2(pR)) Then

    If intX(2) <> -1 Then

        intX(2) = 1
        intY(2) = 0
    
    End If

End If

End Sub

Private Sub Create() 'Assign green box positions

Randomize
For Spare = 0 To Limit

    Box(1, Spare) = Int(Rnd * Me.ScaleWidth) + Me.ScaleLeft
    Box(2, Spare) = Int(Rnd * (Me.ScaleHeight - Frame1(1).Height)) + Frame1(1).Height

Next Spare
End Sub

Private Sub Win()

Dim strScore As String, strLength As String

strLength = Compare()

If Counter >= Limit + 1 Then ' If all boxes are destroyed

'Player  1 win
    If Score(1) > Score(2) Then
        
        strScore = "Player 1 wins with " & Score(1)
        

'Player 2 Win
    ElseIf Score(2) > Score(1) Then
        
        strScore = "Player 2 wins with " & Score(2)
        
'Draw
    ElseIf Score(2) = Score(1) Then

        strScore = "It a tie "
        
    End If
    
MsgBox strScore + strLength
End

End If


End Sub

Private Function Compare()
'Instead of using the return keyword, the value is assigned to the function name

Select Case Length(1)

Case Length(2)

    Compare = " but they were both equally long"

Case Is > Length(2)

    Compare = " but Player 1 was longer than Player 2"

Case Is < Length(2)

    Compare = " but Player 2 was longer than Player 1"

End Select

End Function


Private Sub blackBox()

Randomize
For Spare = 1 To 20

    BlackX(Spare) = Int(Rnd * Me.ScaleWidth) + Me.ScaleLeft
    BlackY(Spare) = Int(Rnd * Me.ScaleHeight) - (Frame1(1).Top + Frame1(1).Height)

Next Spare
End Sub

Private Sub Self()
Dim A As Variant

For Spare = 1 To 2

    If Point(sngX(Spare) + intX(Spare) * 5, sngY(Spare) + intY(Spare) * 5) = lngS(Spare) Then

        A = MsgBox("You ate yourself dumbass", vbCritical, "Player " & Spare)
        End

    End If

Next

End Sub


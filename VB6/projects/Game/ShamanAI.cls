VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "ShamanAI"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
'Decision variables
    Dim Action As Integer, Detected As Boolean, inRange As Boolean, AlignX As Boolean, AlignY As Boolean
'Counters
    Dim Condition As Boolean
    Dim C As Integer, C2 As Integer
    
Public Sub Activate(ch As Character, Enemy As Character, Map As GridMap, dx As Integer, dy As Integer, Index As Integer) 'AI CPU
'If target is dead then do nothing
    If ch.isLiving = False Then Exit Sub

'Check how close the player is
    Call CheckRange(ch, Enemy, dx, dy)

If Detected = False Then
'Passive Mode
    'Redecide
        C = C + 1
        If C > 100 Then
        'Random Action
            Randomize
            Action = Int(Rnd * 1000) Mod 6
            C = 0
        End If

    'Act
    Select Case Action
        Case 0 'Stand
            Call Stand(ch)
        Case 1 'Move right
            Call Move_Right(ch, Map, dx, dy)
        Case 2 'Move left
            Call Move_Left(ch, Map, dx, dy)
        Case 3 'Move up
            Call Move_Up(ch, Map, dx, dy)
        Case 4 'Move down
            Call Move_Down(ch, Map, dx, dy)
        Case 5 'Stand
            Call Stand(ch)
        End Select

Else
'Offense Mode
    If AlignX = True Then
        ch.Fx = IIf(Enemy.Y > ch.Y, 2, 0)
        Call Attack(ch, Index)
    ElseIf AlignY = True Then
        ch.Fx = IIf(Enemy.X > ch.X, 1, 3)
        Call Attack(ch, Index)
    End If
    Call Follow(ch, Enemy, Map, dx, dy)
    'If inRange = True Then Call ch.Attack(ch, Enemy, 1)

End If

End Sub

Public Sub Stand(ch As Character) 'Stop and stand on one spot
    ch.Fx = 1
    ch.Fy = 2
End Sub
Public Sub Move_Right(ch As Character, Map As GridMap, dx As Integer, dy As Integer)
'Avoid Collision
    If Map.Collision(ch, 5, 0, dx, dy) = True Then
        C = 10000
        Exit Sub
    End If
'Move right
    ch.Fy = 1
    Call ch.Move(1, 0)

    
End Sub
Public Sub Move_Left(ch As Character, Map As GridMap, dx As Integer, dy As Integer)
'Avoid Collision
    If Map.Collision(ch, -5, 0, dx, dy) = True Then
        C = 10000
        Exit Sub
    End If

'Move left
    ch.Fy = 3
    Call ch.Move(-1, 0)


End Sub

Public Sub Move_Up(ch As Character, Map As GridMap, dx As Integer, dy As Integer)

'Avoid Collision
    If Map.Collision(ch, 0, -5, dx, dy) = True Then
        C = 10000
        Exit Sub
    End If
'Move up
    ch.Fy = 0
    Call ch.Move(0, -1)

End Sub

Public Sub Move_Down(ch As Character, Map As GridMap, dx As Integer, dy As Integer)
'Avoid Collision
    If Map.Collision(ch, 0, 5, dx, dy) = True Then
        C = 10000
        Exit Sub
    End If
'Move down
    ch.Fy = 2
    Call ch.Move(0, 1)


End Sub

Public Sub CheckRange(ch As Character, Enemy As Character, dx As Integer, dy As Integer) 'check if player is detectable
    Detected = IIf((ch.Collide(Enemy.X, Enemy.Y, 200) = True), True, False)
    inRange = IIf((ch.Collide(Enemy.X, Enemy.Y, 40) = True), True, False)
End Sub

Public Sub Follow(ch As Character, Enemy As Character, Map As GridMap, dx As Integer, dy As Integer) 'Follow player
If Condition = True Then Exit Sub


'Horizontal
    If Enemy.X > ch.X + ch.W / 2 Then
        Call Move_Right(ch, Map, dx, dy)
        AlignX = False
    ElseIf Enemy.X + Enemy.W / 2 < ch.X Then
        Call Move_Left(ch, Map, dx, dy)
        AlignX = False
    Else
        AlignX = True
    End If

'Vertical
    If Enemy.Y > ch.Y + ch.H / 2 Then
        Call Move_Down(ch, Map, dx, dy)
        AlignY = False
    ElseIf Enemy.Y + Enemy.H / 2 < ch.Y Then
        Call Move_Up(ch, Map, dx, dy)
        AlignY = False
    Else
        AlignY = True
    End If
End Sub

Public Sub Death(ch As Character, Enemy As Character, M As Form, dx As Integer, dy As Integer)
If ch.isLiving = False Then Exit Sub 'If already dead
    Call ch.Alert(M, "Dead", dx, dy)
    Enemy.Money = Enemy.Money + 15
    ch.isLiving = False
End Sub


Public Sub Attack(ch As Character, Index As Integer)
Condition = Revival(Index).inUse = True ' Or ShockBolt(Index).inUse = True

    If Revival(Index).inUse = False And ShockBolt(Index).inUse = False Then
    'Random Action
        Randomize
        Action = Int(Rnd * 1000) Mod 7
    End If
    
    'Action = 1
    
    Select Case Action
        Case 0
            Call Revival(Index).Charge(ch, 5)
            Revival(Index).inUse = True
            Call Stand(ch)
       
        Case 1
        Case 2
        Case 3
        Case 4
        Case 5
        Case 6
            Call ShockBolt(Index).Charge(ch, 5)
            ShockBolt(Index).inUse = True
    
    End Select

End Sub

VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "GuardAI"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Dim Mood As Integer
Dim Action As Integer
Dim C As Integer
Dim RangeX As Boolean, RangeY As Boolean

Public Sub Activate(ch As Character, Map As GridMap, dx As Integer, dy As Integer) 'AI CPU
If Mood = 0 Then
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

ElseIf Mood = 1 Then
    Call Follow(ch, Player, Map, dx, dy)
    If (RangeX And RangeY) = True Then Call ch.Attack(ch, Player, 5)
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

Public Sub Interact(NPC As Character, M As Form) 'Decide how npcs communicate
'Comm dialog
    M.lblName = NPC.Class
    M.picComm.Visible = True
    
        M.imgIcon(2).Visible = False
        M.lblIcon(2).Visible = False
        M.imgIcon(4).Visible = False
        M.lblIcon(4).Visible = False

End Sub


Public Function Chat(NPC As Character, Topic As String) As String 'Dialogues with NPCs

Dim Total As String

'Decide dialogue based on topic
Select Case LCase(Topic)

    Case "directions"
    'Change depending on class
            Total = "The Blacksmith is to the north" & vbCrLf & "The Alchemist is to the west " & vbCrLf & "The Mage is to the South" & vbCrLf & "The Merchant is to the east"
        
    End Select

'Return dialogue
    Chat = Total

End Function

Public Sub Follow(ch As Character, Enemy As Character, Map As GridMap, dx As Integer, dy As Integer) 'Follow player
'Horizontal
    If Enemy.X > ch.X + ch.W / 2 Then
        Call Move_Right(ch, Map, dx, dy)
        RangeX = False
    ElseIf Enemy.X + Enemy.W / 2 < ch.X Then
        Call Move_Left(ch, Map, dx, dy)
        RangeX = False
    Else
        RangeX = True
    End If

'Vertical
    If Enemy.Y > ch.Y + ch.H / 2 Then
        Call Move_Down(ch, Map, dx, dy)
        RangeY = False
    ElseIf Enemy.Y + Enemy.H / 2 < ch.Y Then
        Call Move_Up(ch, Map, dx, dy)
        RangeY = False
    Else
        RangeY = True
    End If
    
'Check range
End Sub


Public Sub setMood(A As Integer)
    Mood = A
End Sub

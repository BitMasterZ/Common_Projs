VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "MagicAttack"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
'Display variables
    Dim X As Single, Y As Single
    Dim mRadius As Single, Radius As Single
    Dim Damage As Integer
Dim AttackType As Integer
'Movement speed for projectile
    Dim Vx As Integer, Vy As Integer
'If spell is being used
    Public inUse As Boolean

Public Sub Create(Rad As Single, AType As Integer, Dmg As Integer) 'Intialize
    AttackType = AType
    mRadius = Rad
    Radius = 1
    Damage = Dmg
End Sub

Public Sub Charge(ch As Character, Cost As Integer) 'Charge the attack
If inUse = True Then Exit Sub 'If attack already active

'If Ch does not have enough mana
    If ch.Mana < Cost Then
        Exit Sub
    End If

If AttackType = 1 Then 'Projectiles only
'Throw in the direction the Ch is facing
    Select Case (ch.Fy)
    
        Case 0 'Up
        'set Speed
            Vx = 0
            Vy = -50
        'set Position
            X = ch.X + ch.W / 2
            Y = ch.Y - Radius
            
        Case 1 'Right
        'set Speed
            Vx = 50
            Vy = 0
        'set Position
            X = ch.X + ch.W + Radius
            Y = ch.Y + ch.H / 2
            
        Case 2 'Down
        'set Speed
            Vx = 0
            Vy = 50
        'set Position
            X = ch.X + ch.W / 2
            Y = ch.Y + ch.H + Radius
             
        Case 3 'Left
        'set Speed
            Vx = -50
            Vy = 0
        'set Position
            X = ch.X - Radius
            Y = ch.Y + ch.H / 2
    End Select
Else
    Vx = 0
    Vy = 0
    
    X = ch.X + ch.W / 2
    Y = ch.Y + ch.H / 2
    
End If

End Sub

Public Sub Release(ch As Character, Cost As Integer, M As Form, dx As Integer, dy As Integer) 'Unleash the attack
If inUse = False Then Exit Sub
'Attack
    X = X + Vx
    Y = Y + Vy
    If Radius < mRadius Then Radius = Radius + 1
    
'Stop Attack
    If (X + dx > M.ScaleWidth Or X + dx < 0 Or Y + dy < 0 Or Y + dy > M.ScaleHeight) Or Radius >= mRadius Then
        ch.Mana = ch.Mana - Cost
        Radius = 1
        inUse = False
        X = -999
        Y = -999
    End If
    
    
    
End Sub

Public Function RangeCollision(ch As Character, Target As Character) As Boolean
Dim Dist As Integer
Dist = Sqr((ch.X - Target.X) ^ 2 + (ch.Y - Target.Y) ^ 2)

RangeCollision = IIf(Dist < Radius, True, False)

End Function

Public Sub Draw(M As Form, dx As Integer, dy As Integer, C As Long) 'Display on form
'If inUse = False Then Exit Sub
Dim Num As Integer
   For Num = 0 To Radius
    M.FillColor = C
    M.Circle (X + dx, Y + dy), Num, C
   Next
End Sub

Public Sub Collision(ch As Character, Enemy As Character, Map As GridMap, dx As Integer, dy As Integer, EAI As EnemyAI)
'If the projectille collides with the Ch
    If Enemy.Collide(X, Y, 25) And Enemy.isLiving = True Then
        Call Enemy.Alert(frmDungeon, "HIT", dx, dy)
        X = -99999
        Y = -99999
        Enemy.Health = Enemy.Health + Enemy.Armor - Damage
    End If

'If the enemy dies
    If Enemy.Health <= 0 Then
        Enemy.Health = 0
        Call EAI.Death(Enemy, ch, frmDungeon, dx, dy)
    End If

End Sub

Public Sub PlayerCollision(ch As Character, Enemy As Character, Map As GridMap, dx As Integer, dy As Integer)
'If the projectille collides with the Ch
    If Enemy.Collide(X, Y, 25) And Enemy.isLiving = True Then
        Call Enemy.Alert(frmDungeon, "HIT", dx, dy)
        X = -99999
        Y = -99999
        Enemy.Health = Enemy.Health + Enemy.Armor - Damage
    End If


End Sub

Public Sub Collision2(ch As Character, Enemy As Character, Map As GridMap, dx As Integer, dy As Integer, EAI As ShamanAI)
'If the projectille collides with the Ch
    If Enemy.Collide(X, Y, 25) And Enemy.isLiving = True Then
        Call Enemy.Alert(frmDungeon, "HIT", dx, dy)
        X = -99999
        Y = -99999
        Enemy.Health = Enemy.Health + Enemy.Armor - Damage
    End If

'If the enemy dies
    If Enemy.Health <= 0 Then
        Enemy.Health = 0
        Call EAI.Death(Enemy, ch, frmDungeon, dx, dy)
    End If

End Sub



VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "RangedAttack"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
'Display variables
    Dim X As Single, Y As Single
    Dim W As Single, H As Single
    Dim Fx As Integer, Fy As Integer
'Movement speed for projectile
    Dim Vx As Integer, Vy As Integer
'If spell is being used
    Public inUse As Boolean

Public Sub Create(X1 As Single, Y1 As Single, W1 As Single, H1 As Single) 'Initiate character
    X = X1
    Y = Y1
    W = W1
    H = H1
End Sub

Public Sub Charge(Player As Character) 'Charge the attack
If inUse = True Then Exit Sub 'If attack already active

'If player does not have enough mana
    If Player.hasItem("Bolts") = False Then
        MsgBox ("Out of arrows")
        Exit Sub
    End If

    Select Case (Player.Fy)
    
        Case 0 'Up
        'set Speed
            Vx = 0
            Vy = -50
        'set Position
            X = Player.X + Player.W / 2 - W / 2
            Y = Player.Y - H / 2
            
            Fx = 1
            
        Case 1 'Right
        'set Speed
            Vx = 50
            Vy = 0
        'set Position
            X = Player.X + Player.W - W / 2
            Y = Player.Y + Player.H / 2 - H / 2
            
            Fx = 2
            
        Case 2 'Down
        'set Speed
            Vx = 0
            Vy = 50
        'set Position
            X = Player.X + Player.W / 2 - W / 2
            Y = Player.Y + Player.H - H / 2
             
            Fx = 3
            
        Case 3 'Left
        'set Speed
            Vx = -50
            Vy = 0
        'set Position
            X = Player.X - W / 2
            Y = Player.Y + Player.H / 2 - H / 2
            
            Fx = 0
            
    End Select
    inUse = True
End Sub

Public Sub Release(Player As Character, M As Form, dx As Integer, dy As Integer) 'Unleash the attack
If inUse = False Then Exit Sub
'Attack
    X = X + Vx
    Y = Y + Vy
    
'Stop Attack
    If X + dx > M.ScaleWidth Or X + dx < 0 Or Y + dy < 0 Or Y + dy > M.ScaleHeight Then
        Call Player.RemoveItem(Player.getItemNum("Bolts"), 1)
        inUse = False
    End If
    
End Sub

Public Sub Draw(M As Form, dx As Integer, dy As Integer, Sprite As PictureBox, Mask As PictureBox) 'Display character
    bitblt M.hDC, X + dx, Y + dy, W, H, Mask.hDC, W * Fx, H * Fy, SRCAND
    bitblt M.hDC, X + dx, Y + dy, W, H, Sprite.hDC, W * Fx, H * Fy, SRCPAINT
End Sub

Public Sub Collision(Player As Character, Enemy As Character, Map As GridMap, dx As Integer, dy As Integer, EAI As EnemyAI, Dmg As Integer)
'If the projectille collides with the player
    If Enemy.Collide(X, Y, 35) And Enemy.isLiving = True Then
        Call Enemy.Alert(frmDungeon, "HIT", dx, dy)
        X = -99999
        Y = -99999
        Enemy.Health = Enemy.Health + Enemy.Armor - Dmg
    End If

'If the enemy dies
    If Enemy.Health <= 0 Then
        Enemy.Health = 0
        Call EAI.Death(Enemy, Player, frmDungeon, dx, dy)
    End If

End Sub

Public Sub Collision2(Player As Character, Enemy As Character, Map As GridMap, dx As Integer, dy As Integer, EAI As ShamanAI, Dmg As Integer)
'If the projectille collides with the player
    If Enemy.Collide(X, Y, 35) And Enemy.isLiving = True Then
        Call Enemy.Alert(frmDungeon, "HIT", dx, dy)
        X = -99999
        Y = -99999
        Enemy.Health = Enemy.Health + Enemy.Armor - Dmg
    End If

'If the enemy dies
    If Enemy.Health <= 0 Then
        Enemy.Health = 0
        Call EAI.Death(Enemy, Player, frmDungeon, dx, dy)
    End If

End Sub



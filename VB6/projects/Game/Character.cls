VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "Character"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
'Display variables
    Public X As Single, Y As Single
    Public W As Single, H As Single
    Public Fx As Integer, Fy As Integer
'Stats variable
    Public Class As String, Name As String
    Public Money As Long, Health As Integer, Mana As Double, mHealth As Integer, mMana As Integer
    Public Damage As Integer, Armor As Integer, XP As Integer, Level As Integer
    Public isLiving As Boolean, canMove As Boolean
    Public AttackType As Integer

'Extra
    Dim C As Integer, C2 As Integer, C3 As Integer
    Private Type Item
        ItemName As String
        Price As Integer
        Quantity As Integer
        UseType As Integer
    End Type

'Items belonging to character
    Private Inventory(0 To 10) As Item
Dim INum As Integer

Public Sub Create(X1 As Single, Y1 As Single, W1 As Single, H1 As Single, cl As String) 'Initiate character
    X = X1
    Y = Y1
    W = W1
    H = H1
    Class = cl
    isLiving = True
    canMove = True
End Sub

Public Sub SecondarySpecs(dam As Integer, arm As Integer, X As Integer, lvl As Integer, mon As Long, heal As Integer, man As Integer) ' Set other stats
    Damage = dam
    Armor = arm
    XP = X
    Level = lvl
    Money = mon
    Health = heal
    Mana = man

'set Max health
    mHealth = heal
    mMana = man
    
End Sub

Public Sub Draw(M As Form, dx As Integer, dy As Integer, Sprite As PictureBox, Mask As PictureBox) 'Display character
'If target dead then ghost effect
    If isLiving = True Then bitblt M.hDC, X + dx, Y + dy, W, H, Mask.hDC, W * Fx, H * Fy, SRCAND
    bitblt M.hDC, X + dx, Y + dy, W, H, Sprite.hDC, W * Fx, H * Fy, SRCINVERT
End Sub

Public Function Collide(X1 As Single, Y1 As Single, D As Integer) As Boolean 'Check for point to character collision
Dim Coll As Boolean, Dist As Double

'Find Displacement
    Dist = Sqr((X + W / 2 - X1) ^ 2 + (Y + H / 2 - Y1) ^ 2)
'Check
    Collide = IIf(Dist < D, True, False)
    
End Function

Public Sub Move(Vx As Integer, Vy As Integer)
'Move character
    X = X + Vx
    Y = Y + Vy
    
    C = C + 1
    If C > 7 Then
    'Frame change
        Fx = Fx + 1
        If Fx > 2 Then Fx = 0
        C = 0
    End If
    
End Sub
Public Sub Spawn(Map As GridMap, Enemy As Character) 'Set random x and Y coordinates
Dim X As Single, Y As Single

'Random coordinates
    Do
        Randomize
        X = Int(Rnd * Map.MaxX) + 10
        Y = Int(Rnd * Map.MaxY) + 10

    Loop Until (Map.isFilled(X, Y) = False) And (Map.isFilled(X + Enemy.W, Y + Enemy.H) = False) 'Prevent from spawning on a block

'Assign
    Enemy.X = X
    Enemy.Y = Y
End Sub

Public Sub Attack(ch As Character, Enemy As Character, Attackspeed As Integer)  'One character does damage to another
C2 = C2 + 1
If C2 > 10 * Attackspeed Then 'Damage depends on speed
    If Enemy.Armor >= ch.Damage Then Exit Sub
    Enemy.Health = Enemy.Health + Enemy.Armor - ch.Damage
    C2 = 0
End If

End Sub

Public Sub Alert(M As Form, Msg As String, dx As Integer, dy As Integer) 'Display player alert
    M.PSet (X + dx, Y + dy)
    M.Print Msg
    Sleep (30)
End Sub
''''''''''''''''''''''''''''''''''''''''''''''''''''''Inventory stuff'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

Public Sub AddItem(IName As String, P As Integer, Q As Integer, UT As Integer)
'Stack if already have item with same name
    Dim blnExists As Boolean
    For C3 = 0 To INum
        blnExists = IIf(Inventory(C3).ItemName = IName, True, False)
        If blnExists = True Then
            Inventory(C3).Quantity = Inventory(C3).Quantity + Q
            Exit Sub
        End If
    Next C3
    
'If new item
    Inventory(INum).ItemName = IName
    Inventory(INum).Price = P
    Inventory(INum).Quantity = Q
    Inventory(INum).UseType = UT
'Increase inventory count
    INum = INum + 1

End Sub
Public Sub RemoveItem(ItemNum As Integer, Q As Integer)
'remove from stack
    Inventory(ItemNum).Quantity = Inventory(ItemNum).Quantity - Q
    
'If item stack finished
    If Inventory(ItemNum).Quantity = 0 Then
    'Shift inventory space
        For C3 = ItemNum To INum - 1
            Inventory(C3).ItemName = Inventory(C3 + 1).ItemName
            Inventory(C3).Quantity = Inventory(C3 + 1).Quantity
            Inventory(C3).Price = Inventory(C3 + 1).Price
        Next C3
    'Decrease inventory count
        INum = INum - 1
    End If
End Sub

Public Function getItemName(Num As Integer) 'Get name of item
    getItemName = Inventory(Num).ItemName
End Function

Public Function getItemUsable(Num As Integer) 'Get the number of stacks of item
    getItemUsable = Inventory(Num).UseType
End Function

Public Function getItemQuantity(Num As Integer) 'Get the number of stacks of item
    getItemQuantity = Inventory(Num).Quantity
End Function

Public Function getItemPrice(Num As Integer) 'Get the SP and CP of item
    getItemPrice = Inventory(Num).Price
End Function


Public Sub List(Obj As ListBox) 'List inventory
'Clear the list
    Call Obj.Clear
'Add items to list
    For C3 = 0 To INum - 1
        Call Obj.AddItem(Inventory(C3).Quantity & Space(10) & Inventory(C3).ItemName & Space(13 - Len(Inventory(C3).ItemName)) & "~" & Inventory(C3).Price, C3)
    Next C3

End Sub



Public Function hasItem(ItName As String) 'Check if the player has a particular item
    Dim blnHas As Boolean
'Check the entire inventory
    For C3 = 0 To INum - 1
        blnHas = IIf(LCase(Inventory(C3).ItemName) = LCase(ItName), True, blnHas)
    Next C3
'Return
    hasItem = blnHas
End Function

Public Function getItemNum(ItName As String) 'Check if the player has a particular item
    Dim Num As Integer
'Check the entire inventory
    For C3 = 0 To INum - 1
        Num = IIf(LCase(Inventory(C3).ItemName) = LCase(ItName), C3, Num)
    Next C3
'Return
    getItemNum = Num
End Function

Public Function getInvSpace()
    getInvSpace = INum - 1
End Function

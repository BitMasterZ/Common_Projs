Attribute VB_Name = "mdlSyncKey"
'GetASyncKeyState
    Public Declare Function GetAsyncKeyState Lib "user32" (ByVal vKey As Long) As Integer

Public Sub ItemEffect(IName As String)
'Check which item it is
    Select Case LCase(IName)
    
        Case "health potion"
        ' Regen Health
            Player.Health = Player.Health + 100
            If Player.Health > Player.mHealth Then Player.Health = Player.mHealth
        Case "mana potion"
        ' Regen Mana
            Player.Mana = Player.Mana + 100
            If Player.Mana > Player.mMana Then Player.Mana = Player.mMana
        Case "mana potion"
        ' Regen Mana
            
    End Select
End Sub

Public Sub ItemAddSpec(IName As String)
'Check which item it is
    Select Case LCase(IName)
        
        Case "iron sword"
            
            Player.Damage = Player.Damage + 50
        
        Case "iron chest"
            
            Player.Armor = Player.Armor + 10
        
        Case "iron leggings"
            
            Player.Armor = Player.Armor + 5
        
        Case "iron boots"
            
            Player.Armor = Player.Armor + 2
        
        Case "iron helmet"
            
            Player.Armor = Player.Armor + 1
    
    End Select
    

End Sub

Public Sub ItemRemoveSpec(IName As String)
'Check which item it is
    Select Case LCase(IName)
        
        Case "iron sword"
            
            Player.Damage = Player.Damage - 50
        
        Case "iron chest"
            
            Player.Armor = Player.Armor - 10
        
        Case "iron leggings"
            
            Player.Armor = Player.Armor - 5
        
        Case "iron boots"
            
            Player.Armor = Player.Armor - 2
        
        Case "iron helmet"
            
            Player.Armor = Player.Armor - 1
    
    End Select
    

End Sub

Public Sub Save(Opts As Integer)
On Error GoTo CreateNew
'File vars
    Dim FileNum As Integer, Temp As String, C As Integer, C2 As Integer
    Const FileName As String = "SaveFile"

'check selected option
    If Opts = 0 Then 'Create New Save File
    'Try to activate error handler
        For C = 1 To 6
            FileNum = C
            Open (App.Path & "\" & FileName & FileNum & ".dat") For Input As #1
                Input #1, Temp
            Close #1
        Next C
    'If 6 save files already existing
        MsgBox ("Max save files reached")
        
    Else 'Overwrite existing file
        If FileExists(Opts) = False Then
        'Use recurrsion to fix for missing files
            Call Save(Opts + 1)
        
        Else
        'When fixed
            FileNum = Opts
            Open (App.Path & "\" & FileName & FileNum & ".dat") For Output As #1
            
            If frmTown.Visible = True Then
                Write #1, 1
            ElseIf frmDungeon.Visible = True Then
                Write #1, 2
            End If
            'Primary specs
                Write #1, Player.Name
                Write #1, Player.Class
                Write #1, Player.Health
                Write #1, Player.Mana
                Write #1, Player.mHealth
                Write #1, Player.mMana
            'Secondary specs
                Write #1, Player.Damage
                Write #1, Player.Armor
                Write #1, Player.Money
                Write #1, Player.XP
                Write #1, Player.Level
           'Inventory
                For C2 = 0 To Player.getInvSpace
                    Write #1, Player.getItemName(C2)
                    Write #1, Player.getItemPrice(C2)
                    Write #1, Player.getItemQuantity(C2)
                    Write #1, Player.getItemUsable(C2)
                Next
            Close #1
        End If
    End If
    
Exit Sub

CreateNew: 'for the new save option

    Open (App.Path & "\" & FileName & FileNum & ".dat") For Output As #1
        'Level
            If frmTown.Visible = True Then
                Write #1, 1
            ElseIf frmDungeon.Visible = True Then
                Write #1, 2
            End If
    
        'Primary specs
                Write #1, Player.Name
                Write #1, Player.Class
                Write #1, Player.Health
                Write #1, Player.Mana
                Write #1, Player.mHealth
                Write #1, Player.mMana
        'Secondary specs
                Write #1, Player.Damage
                Write #1, Player.Armor
                Write #1, Player.Money
                Write #1, Player.XP
                Write #1, Player.Level
        'Inventory
                For C2 = 0 To Player.getInvSpace
                    Write #1, Player.getItemName(C2)
                    Write #1, Player.getItemPrice(C2)
                    Write #1, Player.getItemQuantity(C2)
                    Write #1, Player.getItemUsable(C2)
                Next
    Close #1

End Sub

Public Sub ListFiles(lst As ListBox) 'Display all the save files
On Error GoTo Handle
'File vars
    Dim FileNum As Integer, Temp As String, C As Integer, C2 As Integer
    Const FileName As String = "SaveFile"

'Reset and Intialize
    lst.Clear
    Call lst.AddItem("[New Save]", 0)
    C2 = 1
    
'List Files
    For C = 1 To 6
        FileNum = C
        If FileExists(FileNum) = True Then
            Call lst.AddItem("Save File " & vbCrLf & FileNum & Space(3) & "Name: " & Temp, C2)
            C2 = C2 + 1
        End If
    Next C

Exit Sub

Handle:
 Resume Next
End Sub

Public Sub Delete(FileNum As Integer)
On Error GoTo Handler
Const FileName As String = "SaveFile"

'Destroy file
    Kill (App.Path & "\" & FileName & FileNum & ".dat")


Exit Sub

Handler: 'Use recurrsion to solve error

Call Delete(FileNum + 1)

End Sub

Private Function FileExists(FileNum As Integer) As Boolean 'Check if file exists
On Error GoTo Handler
Const FileName As String = "SaveFile"
Dim Temp As String

'Test if error then file does not exist
    Open (App.Path & "\" & FileName & FileNum & ".dat") For Input As #2
        Input #2, Temp
    Close #2

'If test passed
    FileExists = True

Exit Function

Handler:
'If test failed
    FileExists = False

End Function

Public Sub Loader(FileNum As Integer)
On Error GoTo Fixer
Const FileName As String = "SaveFile"
Dim Num As Integer, C As Integer, C2 As Integer
Dim Text(0 To 200) As String, Txt As String



    If FileExists(FileNum) = False Then
        Call Loader(FileNum + 1)
    Else
        Num = FreeFile
        Open (App.Path & "\" & FileName & FileNum & ".dat") For Input As #Num
            Do Until EOF(Num)
                Input #Num, Text(C)
                C = C + 1
            Loop
        Close #Num
    End If
    
    Player.Name = Text(1)
    Player.Class = Text(2)
    Player.Health = Val(Text(3))
    Player.Mana = Val(Text(4))
    Player.mHealth = Val(Text(5))
    Player.mMana = Val(Text(6))
    Player.Damage = Val(Text(7))
    Player.Armor = Val(Text(8))
    Player.Money = Val(Text(9))
    Player.XP = Val(Text(10))
    Player.Level = Val(Text(11))
           
    For C2 = 0 To Player.getInvSpace
        Call Player.RemoveItem(C2, Player.getItemQuantity(C2))
    Next C2
           
    For C2 = 12 To C Step 4
        Call Player.AddItem(CStr(Text(C2)), Val(Text(C2 + 1)), Val(Text(C2 + 2)), Val(Text(C2 + 3)))
    Next C2
    
    Select Case Val(Text(0))
    
        Case 1
            frmTown.Show
            Unload frmDungeon
        Case 2
            frmDungeon.Show
            Unload frmTown
    End Select
       
    
    'Call MsgBox("File Loaded", vbInformation, "File Loaded")

Exit Sub
Fixer:
Call MsgBox("This save file is corrupt", vbCritical)

End Sub



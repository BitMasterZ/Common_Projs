VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "GridMap"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit

Private Type Block
 X As Single
 Y As Single
 Fill As Integer
End Type

Private Grid() As Block
Dim Size As Integer
Dim C As Integer, C2 As Integer, C3 As Integer
Dim D(1 To 2) As Integer
Public MaxX As Integer, MaxY As Integer
Dim Angle As Double
Public Sub Generate(S As Integer, B As Integer)
ReDim Grid(0 To B) As Block
C3 = 0
'Get Size
    Size = S
    
'Create Block Grid
    For C = 0 To Int(Sqr(UBound(Grid))) - 1
        For C2 = 0 To Int(Sqr(UBound(Grid))) - 1
            Grid(C3).X = C2 * Size
            Grid(C3).Y = C * Size
            C3 = C3 + 1
        Next C2
    Next C
        
    MaxX = Grid(Int(Sqr(C3)) - 1).X
    MaxY = Grid(C3 - 1).Y
        
End Sub


Public Sub Draw(M As Form, dx As Integer, dy As Integer)

    D(1) = dx
    D(2) = dy

'Draw the Map onto the form
    For C = 0 To UBound(Grid)
        Select Case Grid(C).Fill
        
            Case 0 'Floor
                 bitblt M.hDC, Grid(C).X + dx, Grid(C).Y + dy, Size, Size, M.picTerrain.hDC, Size * 0, Size * 11, SRCINVERT
            
            Case 1 'Primary Wall
                 bitblt M.hDC, Grid(C).X + dx, Grid(C).Y + dy, Size, Size, M.picTerrain.hDC, Size * 8, Size * 0, SRCINVERT
            
            Case 2 'Secondary wall
                bitblt M.hDC, Grid(C).X + dx, Grid(C).Y + dy, Size, Size, M.picTerrain.hDC, Size * 6, Size * 1, SRCINVERT
            
            Case 3 'Table
                bitblt M.hDC, Grid(C).X + dx, Grid(C).Y + dy, Size, Size, M.picTerrain.hDC, Size * 11, Size * 2, SRCINVERT
            
            Case 4 'Water
                bitblt M.hDC, Grid(C).X + dx, Grid(C).Y + dy, Size, Size, M.picTerrain.hDC, Size * 13, Size * 12, SRCINVERT
            
            Case 5 'Decoration Block
                bitblt M.hDC, Grid(C).X + dx, Grid(C).Y + dy, Size, Size, M.picTerrain.hDC, Size * 1, Size * 9, SRCINVERT
            
            Case 6 'Chest
                bitblt M.hDC, Grid(C).X + dx, Grid(C).Y + dy, Size, Size, M.picTerrain.hDC, Size * 12, Size * 4, SRCINVERT
            
            Case 7 'Chest sideways
                bitblt M.hDC, Grid(C).X + dx, Grid(C).Y + dy, Size, Size, M.picTerrain.hDC, Size * 13, Size * 4, SRCINVERT
            
            Case 8 'Health regen block
                bitblt M.hDC, Grid(C).X + dx, Grid(C).Y + dy, Size, Size, M.picTerrain.hDC, Size * 7, Size * 7, SRCINVERT
            
            Case 9 'Mana regen block
                bitblt M.hDC, Grid(C).X + dx, Grid(C).Y + dy, Size, Size, M.picTerrain.hDC, Size * 8, Size * 7, SRCINVERT
            
        End Select
      
    Next C

End Sub

Public Sub InvertDraw(M As Form, dx As Integer, dy As Integer)

    D(1) = dx
    D(2) = dy

'Draw the Map onto the form
    For C = 0 To UBound(Grid)
        Select Case Grid(C).Fill
        
            Case 0 'Brimstone
                 bitblt M.hDC, Grid(C).X + dx, Grid(C).Y + dy, Size, Size, M.picTerrain.hDC, Size * 7, Size * 6, SRCINVERT
            
            Case 1 'Primary Wall
                 bitblt M.hDC, Grid(C).X + dx, Grid(C).Y + dy, Size, Size, M.picTerrain.hDC, Size * 9, Size * 6, SRCINVERT
            
            Case 2 'Secondary wall
                bitblt M.hDC, Grid(C).X + dx, Grid(C).Y + dy, Size, Size, M.picTerrain.hDC, Size * 14, Size * 2, SRCINVERT
            
            Case 3 'Table
                bitblt M.hDC, Grid(C).X + dx, Grid(C).Y + dy, Size, Size, M.picTerrain.hDC, Size * 2, Size * 7, SRCINVERT
            
            Case 4 'Lava
                bitblt M.hDC, Grid(C).X + dx, Grid(C).Y + dy, Size, Size, M.picTerrain.hDC, Size * 13, Size * 14, SRCINVERT
            
            Case 5 'Decoration Block
                bitblt M.hDC, Grid(C).X + dx, Grid(C).Y + dy, Size, Size, M.picTerrain.hDC, Size * 1, Size * 9, SRCINVERT
            
            Case 6 'Chest
                bitblt M.hDC, Grid(C).X + dx, Grid(C).Y + dy, Size, Size, M.picTerrain.hDC, Size * 12, Size * 4, SRCINVERT
            
            Case 7 'Chest sideways
                bitblt M.hDC, Grid(C).X + dx, Grid(C).Y + dy, Size, Size, M.picTerrain.hDC, Size * 13, Size * 4, SRCINVERT
            
            Case 8 'Health regen block
                bitblt M.hDC, Grid(C).X + dx, Grid(C).Y + dy, Size, Size, M.picTerrain.hDC, Size * 7, Size * 7, SRCINVERT
            
            Case 9 'Mana regen block
                bitblt M.hDC, Grid(C).X + dx, Grid(C).Y + dy, Size, Size, M.picTerrain.hDC, Size * 8, Size * 7, SRCINVERT
            
        End Select
      
    Next C

End Sub



Public Sub pDraw(M As PictureBox) 'Draw Minimap
Dim S As Integer
S = 6

    For C = 0 To UBound(Grid)
        
        Select Case Grid(C).Fill
                   
            Case 1
                M.Line (Grid(C).X, Grid(C).Y)-(Grid(C).X + S, Grid(C).Y + S), vbBlack, BF
            
            Case 2
                M.Line (Grid(C).X, Grid(C).Y)-(Grid(C).X + S, Grid(C).Y + S), RGB(200, 0, 0), BF
            
            Case 3
                M.Line (Grid(C).X, Grid(C).Y)-(Grid(C).X + S, Grid(C).Y + S), vbWhite, BF
            
            Case 4
                M.Line (Grid(C).X, Grid(C).Y)-(Grid(C).X + S, Grid(C).Y + S), vbBlue, BF
            
            Case 5
               M.Line (Grid(C).X, Grid(C).Y)-(Grid(C).X + S, Grid(C).Y + S), vbYellow, BF
            
            Case 6
                M.Line (Grid(C).X, Grid(C).Y)-(Grid(C).X + Size, Grid(C).Y + Size), vbRed, BF
            
            Case 7
                M.Line (Grid(C).X, Grid(C).Y)-(Grid(C).X + Size, Grid(C).Y + Size), RGB(25, 67, 99), BF
            
            Case 8
                M.Line (Grid(C).X, Grid(C).Y)-(Grid(C).X + Size, Grid(C).Y + Size), RGB(77, 77, 0), BF
            
            Case 9
                M.Line (Grid(C).X, Grid(C).Y)-(Grid(C).X + Size, Grid(C).Y + Size), vbGreen, BF
               
        End Select
    
    Next C

End Sub

Public Sub cDraw(M As PictureBox, Map As GridMap, Obj As Character, dx As Integer, dy As Integer, C As Long) ' Character display
On Error Resume Next
Dim Num As Integer

'Identify block
    Num = Map.BlockNum(Obj.X + dx, Obj.Y + dy)
'Display character
    M.FillColor = C
    M.Circle (Grid(Num).X + 3, Grid(Num).Y + 3), 3, C
End Sub

Public Sub pointDraw(M As PictureBox, Map As GridMap, X As Single, Y As Single, C As Long)
On Error Resume Next
Dim Num As Integer

'Identify block
    Num = Map.BlockNum(X, Y)
'Display point
    M.FillColor = C
    M.Circle (Grid(Num).X + 3, Grid(Num).Y + 3), 3, C
End Sub

Public Function BlockNum(X As Single, Y As Single) As Integer 'Find the Block number for a coordinate
Dim R As Integer
R = -1

'Coordinate check
    For C = 0 To UBound(Grid)
        If X > Grid(C).X + D(1) And X < Grid(C).X + D(1) + Size Then
            If Y > Grid(C).Y + D(2) And Y < Grid(C).Y + D(2) + Size Then
                R = C
            End If
        End If
    Next C

'Return
    BlockNum = R
End Function

Public Function MapCode() As String 'Generate Map Code
Dim Total As String

'Combine into one string
    For C = LBound(Grid) To UBound(Grid)

        Total = Total & Grid(C).Fill

    Next C

'Return
    MapCode = Total

End Function


Public Sub Filler(strDirect As String, S As Integer)
On Error GoTo Err
Dim AllFill As String
    
'Read file
    Open strDirect For Input As #1
    
        Input #1, AllFill
    
    Close #1
    
'Generate Map
    Call Generate(S, Len(AllFill) - 1)
    
'Assign fills
   For C = 1 To Len(AllFill)
   
        Grid(C - 1).Fill = Val(Mid(AllFill, C, 1))
   
   Next C
    
Exit Sub

Err:

    MsgBox ("File does not exist")
   
End Sub

Public Sub BFill(X As Single, Y As Single, F As Integer)
If BlockNum(X, Y) = -1 Then Exit Sub

'Fill the Block
    Grid(BlockNum(X, Y)).Fill = F
End Sub


Public Function Collision(Obj As Character, Vx As Integer, Vy As Integer, dx As Integer, dy As Integer)
On Error GoTo Correct
Dim Cx As Single, Cy As Single ' correction variables
Dim Coll As Boolean, Coll2 As Boolean 'Collision variable

'Check if inside map range
    If (BlockNum(Obj.X + Vx + dx + Cx, Obj.Y + Vy + dy + Cy) <> -1) Or (BlockNum(Obj.X + Obj.W + Vx + Cx, Obj.Y + Obj.H + Vy + dy + Cy) <> -1) Then
    
    'Horizontal Collision
        If Vx > 0 Then
            Coll = IIf(Grid(BlockNum(Obj.X + Vx + dx + Cx + Obj.W, Obj.Y + Vy + dy + Cy)).Fill = 0, False, True)
        ElseIf Vx < 0 Then
            Coll = IIf(Grid(BlockNum(Obj.X + Vx + Cx + dx, Obj.Y + Vy + dy + Cy)).Fill = 0, False, True)
        End If
    
    'Vertical Collision
        If Vy > 0 Then
            Coll2 = IIf(Grid(BlockNum(Obj.X + Vx + Cx + dx, Obj.Y + Vy + dy + Obj.H + Cy)).Fill = 0, False, True)
        ElseIf Vy < 0 Then
            Coll2 = IIf(Grid(BlockNum(Obj.X + Vx + Cx + dx, Obj.Y + Vy + dy + Cy)).Fill = 0, False, True)
        End If
    
    
    Else
        
        Coll = True
    
    End If

'Return
    Collision = Coll Or Coll2

Exit Function

Correct: ' Correct for "no mans land"
    
'Horizontal correction
    If Vx <> 0 Then
        Cx = Cx + 0.1
    Else
        Cx = 0
    End If

'Vertical Collision
    If Vy <> 0 Then
        Cy = Cy + 0.1
    Else
        Cy = 0
    End If
    Resume Next
End Function

Public Function isFilled(X As Single, Y As Single) As Boolean 'Check if the block on a coordinate is filled
On Error GoTo Correct
    
    isFilled = IIf(Grid(BlockNum(X, Y)).Fill = 0, False, True)

Exit Function

Correct:
'Correct for "no mans land"
    X = X + 0.5
    Y = Y + 0.5

End Function
 
Public Function Proximity(F As Integer, Char As Character, dx As Integer, dy As Integer) ' Check how close a player is to a certain TYPE of block
On Error Resume Next
Dim Px As Single, Py As Single
'Rotate Coordinates
    Px = Cos(Angle) * 25
    Py = Sin(Angle) * 25
    Angle = Angle + 0.5

'Check fill
    Proximity = IIf(Grid(BlockNum(Char.X + Char.W / 2 + dx + Px, Char.Y + Char.H / 2 + dy + Py)).Fill = F, True, False)

End Function

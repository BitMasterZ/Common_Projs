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





Public Sub Draw(M As Form) 'Draw Minimap


    For C = 0 To UBound(Grid)
        
        Select Case Grid(C).Fill
                   
            Case 1
                M.Line (Grid(C).X, Grid(C).Y)-(Grid(C).X + Size, Grid(C).Y + Size), vbBlack, BF
            
            Case 2
                M.Line (Grid(C).X, Grid(C).Y)-(Grid(C).X + Size, Grid(C).Y + Size), RGB(200, 0, 0), BF
            
            Case 3
                M.Line (Grid(C).X, Grid(C).Y)-(Grid(C).X + Size, Grid(C).Y + Size), vbWhite, BF
            
            Case 4
                M.Line (Grid(C).X, Grid(C).Y)-(Grid(C).X + Size, Grid(C).Y + Size), vbBlue, BF
            
            Case 5
               M.Line (Grid(C).X, Grid(C).Y)-(Grid(C).X + Size, Grid(C).Y + Size), vbYellow, BF
            
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



Public Function isFilled(X As Single, Y As Single) As Boolean 'Check if the block on a coordinate is filled
On Error GoTo Correct
    
    isFilled = IIf(Grid(BlockNum(X, Y)).Fill = 0, False, True)

Exit Function

Correct:
'Correct for "no mans land"
    X = X + 0.5
    Y = Y + 0.5

End Function
 
Public Sub Project(Dist As Single, sX As Single, M As Form)
Dim SH As Single
SH = 64 / Dist * 277

M.Line (sX, M.ScaleHeight / 2 - SH / 2)-(sX + 10, M.ScaleHeight / 2 + SH / 2), vbRed, BF


End Sub



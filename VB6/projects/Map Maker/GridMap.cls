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

End Sub


Public Sub Draw(M As PictureBox)

'Draw the Map onto the form
    For C = 0 To UBound(Grid)
        Select Case Grid(C).Fill
        
            Case 0
                M.Line (Grid(C).X, Grid(C).Y)-(Grid(C).X + Size, Grid(C).Y + Size), M.BackColor, BF
            
            Case 1
                M.Line (Grid(C).X, Grid(C).Y)-(Grid(C).X + Size, Grid(C).Y + Size), vbBlack, BF
            
            Case 2
                M.Line (Grid(C).X, Grid(C).Y)-(Grid(C).X + Size, Grid(C).Y + Size), vbRed, BF
            
            Case 3
                M.Line (Grid(C).X, Grid(C).Y)-(Grid(C).X + Size, Grid(C).Y + Size), vbGreen, BF
            
            Case 4
                M.Line (Grid(C).X, Grid(C).Y)-(Grid(C).X + Size, Grid(C).Y + Size), vbBlue, BF
            
            Case 5
                M.Line (Grid(C).X, Grid(C).Y)-(Grid(C).X + Size, Grid(C).Y + Size), vbCyan, BF
                
            Case 6
                M.Line (Grid(C).X, Grid(C).Y)-(Grid(C).X + Size, Grid(C).Y + Size), vbWhite, BF
            
            Case 7
                M.Line (Grid(C).X, Grid(C).Y)-(Grid(C).X + Size, Grid(C).Y + Size), RGB(25, 67, 99), BF
            
            Case 8
                M.Line (Grid(C).X, Grid(C).Y)-(Grid(C).X + Size, Grid(C).Y + Size), RGB(77, 77, 0), BF
            
            Case 9
                M.Line (Grid(C).X, Grid(C).Y)-(Grid(C).X + Size, Grid(C).Y + Size), RGB(0, 100, 100), BF
            
            
        End Select
      
      M.Line (Grid(C).X, Grid(C).Y)-(Grid(C).X + Size, Grid(C).Y + Size), vbBlack, B

    Next C

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


Public Sub Filler(strDirect As String)
On Error GoTo Err
Dim AllFill As String
    
'Read file
    Open strDirect For Input As #1
    
        Input #1, AllFill
    
    Close #1
    
'Generate Map
    Call Generate(10, Len(AllFill) - 1)
    
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


Public Function Collide(X As Single, Y As Single) As Boolean
If BlockNum(X, Y) = -1 Then Exit Function
If (Grid(BlockNum(X, Y)).Fill = 0) Then
    Collide = False
Else
    Collide = True
End If
End Function






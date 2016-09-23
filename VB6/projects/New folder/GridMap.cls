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
Private Type Block
 X As Single
 Y As Single
 Fill As Integer
End Type

Private Grid() As Block
Dim Size As Integer
Dim C As Integer, C2 As Integer, C3 As Integer


Public Sub Generate(S As Integer, B As Integer)
Dim C As Integer, C2 As Integer, C3 As Integer
ReDim Grid(0 To B) As Block


Size = S
For C = 0 To Int(Sqr(UBound(Grid))) - 1
    For C2 = 0 To Int(Sqr(UBound(Grid))) - 1
        Grid(C3).X = C2 * Size
        Grid(C3).Y = C * Size
        C3 = C3 + 1
    Next C2
Next C



End Sub


Public Sub Draw(M As PictureBox)
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
            
            
            
            
    End Select
      M.Line (Grid(C).X, Grid(C).Y)-(Grid(C).X + Size, Grid(C).Y + Size), vbBlack, B
Next C

End Sub

Public Function BlockNum(X As Single, Y As Single) As Integer
Dim R As Integer
R = -1
For C = 0 To UBound(Grid)
    If X > Grid(C).X And X < Grid(C).X + Size Then
        If Y > Grid(C).Y And Y < Grid(C).Y + Size Then
            R = C
        End If
    End If
Next C

BlockNum = R
End Function

Public Function MapCode() As String
Dim Total As String

For C = LBound(Grid) To UBound(Grid)

Total = Total & Grid(C).Fill

Next C


MapCode = Total

End Function


Public Sub Filler()
    Dim AllFill As String
    
    Open "C:/users/shobhit/desktop/map.txt" For Input As #1
    
    Input #1, AllFill
    
    Close #1
    
    
   For C = 1 To Len(AllFill)
    Grid(C - 1).Fill = Val(Mid(AllFill, C, 1))
   Next C
    
    
End Sub

Public Sub BFill(X As Single, Y As Single, F As Integer)
If BlockNum(X, Y) = -1 Then Exit Sub
Grid(BlockNum(X, Y)).Fill = F
End Sub


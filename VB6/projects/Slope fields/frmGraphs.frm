VERSION 5.00
Begin VB.Form Form1 
   AutoRedraw      =   -1  'True
   BackColor       =   &H00FFFFFF&
   Caption         =   "Slope Fields"
   ClientHeight    =   7395
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   9510
   LinkTopic       =   "Form1"
   ScaleHeight     =   493
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   634
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer tmr 
      Interval        =   1
      Left            =   4200
      Top             =   3480
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim CenX As Single, CenY As Single
Dim C As Integer
Const k As Integer = 5


Private Function toPixel(Centi As Integer) As Single
    toPixel = Centi * 37.795275591
End Function
Private Function toCenti(Pixel As Integer) As Single
    toCenti = Pixel / 37.795275591
End Function


Private Sub DrawAxes(XScale As Integer, YScale As Integer)
    CenX = ScaleWidth / 2
    CenY = ScaleHeight / 2
    Line (CenX, 0)-(CenX, ScaleHeight), vbBlack
    Line (0, CenY)-(ScaleWidth, CenY), vbBlack
            
    
    YStep = ScaleHeight / (2 * k * YScale)
    XStep = ScaleWidth / (2 * k * XScale)
        
        
    For C = 0 To ScaleWidth Step XStep
        Line (C, CenY - 5)-(C, CenY + 5), vbBlack
        Temp = Round((C / XStep - k * XScale))
        If Temp Mod 5 = 0 Then Print Temp
    Next C
     For C = 0 To ScaleHeight Step YStep
        Line (CenX - 5, C)-(CenX + 5, C), vbBlack
        Temp = Round(k * YScale - (C / YStep))
        If Temp Mod 5 = 0 Then Print Temp
    Next C
    
End Sub

Private Sub DrawDirField(XScale As Integer, YScale As Integer)
YStep = ScaleHeight / (2 * k * YScale)
XStep = ScaleWidth / (2 * k * XScale)
Dim X As Single, Y As Single, dY As Single
    For X = 0 To ScaleWidth Step XStep
        For Y = 0 To ScaleHeight Step YStep
            

            Dim sX As Single, sY As Single
            sX = Round((X / XStep - k * XScale))
            sY = Round(k * YScale - (Y / YStep))
            dY = sX * sY
            Line (X, Y)-(X + 5, Y - 5 * Normalize(dY)), vbRed
            
        Next Y
    Next X

End Sub

Private Function Normalize(Vec As Single) As Single
On Error GoTo Default
Dim Num As Single, Ang As Double
If Vec = 0 Then Normalize = 0


Normalize = Vec / Abs(Vec)

Exit Function
Default:

Normalize = 0
End Function

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
Me.PrintForm

End Sub

Private Sub tmr_Timer()
    Cls
    Call DrawAxes(4, 4)
    Call DrawDirField(4, 4)
End Sub

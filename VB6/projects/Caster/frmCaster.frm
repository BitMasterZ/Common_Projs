VERSION 5.00
Begin VB.Form frmCaster 
   AutoRedraw      =   -1  'True
   BackColor       =   &H00000000&
   BorderStyle     =   0  'None
   Caption         =   "Form1"
   ClientHeight    =   8535
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   15420
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   569
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   1028
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer tmrPlayer 
      Interval        =   1
      Left            =   11640
      Top             =   3840
   End
   Begin VB.Timer tmrAnim 
      Interval        =   1
      Left            =   7080
      Top             =   4080
   End
End
Attribute VB_Name = "frmCaster"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim Map As New GridMap
Dim Player As New Character
Dim Rays(0 To 179) As New Ray
Dim C As Integer, C2 As Integer
Dim blnUse As Boolean
Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
    For C = LBound(Rays) To UBound(Rays)
        Call Rays(C).Initiate(Player.X, Player.Y, Player.Angle - DtoR(180) + DtoR(5 * C))
    Next C
End Sub

Private Sub Form_Load()
    Call Map.Filler(App.Path & "\map.dat", 30)
    Call Player.Initiate(100, 100)
    For C = LBound(Rays) To UBound(Rays)
        Call Rays(C).Initiate(Player.X, Player.Y, Player.Angle - DtoR(180) + DtoR(1 * C))
    Next C
End Sub

Private Sub tmrAnim_Timer()
Cls
    Cast
    
    
End Sub

Private Sub tmrPlayer_Timer()

If GetAsyncKeyState(vbKeyD) Then
    Player.Rotate (1)
    
ElseIf GetAsyncKeyState(vbKeyA) Then
    Player.Rotate (-1)

ElseIf GetAsyncKeyState(vbKeyW) Then

If Player.Coll = True Then Exit Sub
    Player.Move (1)

ElseIf GetAsyncKeyState(vbKeyS) Then

    Player.Move (-1)

End If
End Sub

Private Sub Cast()
If blnUse = True Then Exit Sub
blnUse = True
For C2 = LBound(Rays) To UBound(Rays)
    Call Rays(C2).Initiate(Player.X, Player.Y, Player.Angle - DtoR(180) + DtoR(5 * C2))
    Do Until Rays(C2).Collision(Map) = True
        Call Rays(C2).Extend(Player)
    Loop
        
                Call Map.Project(Rays(C2).Length, C2 * 64 + 0.1, Me)
                'Player.Coll = IIf(Rays(C2).Length < 30, True, Player.Coll)
                    
            
    Next C2
    
blnUse = False
    
End Sub


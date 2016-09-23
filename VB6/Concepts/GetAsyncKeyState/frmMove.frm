VERSION 5.00
Begin VB.Form frmMove 
   BorderStyle     =   0  'None
   Caption         =   "Form1"
   ClientHeight    =   4680
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   8205
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4680
   ScaleWidth      =   8205
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer tmrMove 
      Interval        =   1
      Left            =   2280
      Top             =   2880
   End
   Begin VB.Shape shp2 
      Height          =   1335
      Left            =   4080
      Top             =   1200
      Width           =   255
   End
   Begin VB.Shape shp1 
      Height          =   1335
      Left            =   960
      Top             =   1200
      Width           =   255
   End
End
Attribute VB_Name = "frmMove"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Create 2 shapes
    'Name them shp1 and shp2

'set the forms border style to none
    'You don't need to do this. This is just so it looks good


'Create a timer
    'Name it tmrMove
    'set the interval to one

'Go to the module




'Go to the timer's subroutine

Private Sub tmrMove_Timer()
'To use Getasynckeystate you need an if condition

    If GetAsyncKeyState(vbKeyUp) Then 'This checks if you press the up button
    
        shp2.Top = shp2.Top - 100

    ElseIf GetAsyncKeyState(vbKeyDown) Then 'This checks if you press the down button
    
        shp2.Top = shp2.Top + 100
        
    ElseIf GetAsyncKeyState(vbKeyLeft) Then 'This checks if you press the left button
    
        shp2.Left = shp2.Left - 100
    
    ElseIf GetAsyncKeyState(vbKeyRight) Then 'This checks if you press the right button
    
        shp2.Left = shp2.Left + 100

    End If

'Movement for the second paddle
    If GetAsyncKeyState(vbKeyW) Then 'This checks if you press the W button
    
        shp1.Top = shp1.Top - 100

    ElseIf GetAsyncKeyState(vbKeyS) Then 'This checks if you press the S button
    
        shp1.Top = shp1.Top + 100
        
    ElseIf GetAsyncKeyState(vbKeyA) Then 'This checks if you press the A button
    
        shp1.Left = shp1.Left - 100
    
    ElseIf GetAsyncKeyState(vbKeyD) Then 'This checks if you press the D button
    
        shp1.Left = shp1.Left + 100

    End If

'Run the program
'Notice how both of them can move at the same time

'Just for fun
'Use this code to move your form

    If GetAsyncKeyState(vbKeyZ) Then 'This checks if you press the Z button
    
        Me.Top = Me.Top - 100

    ElseIf GetAsyncKeyState(vbKeyX) Then 'This checks if you press the X button
    
        Me.Top = Me.Top + 100
        
    ElseIf GetAsyncKeyState(vbKeyC) Then 'This checks if you press the C button
    
        Me.Left = Me.Left - 100
    
    ElseIf GetAsyncKeyState(vbKeyV) Then 'This checks if you press the V button
    
        Me.Left = Me.Left + 100

    End If

'You can also resize objects using this

    If GetAsyncKeyState(vbKeyF) Then 'This checks if you press the F button
    
        Me.Height = Me.Height - 100

    ElseIf GetAsyncKeyState(vbKeyG) Then 'This checks if you press the G button
    
        Me.Height = Me.Height + 100
        
    ElseIf GetAsyncKeyState(vbKeyH) Then 'This checks if you press the H button
    
        Me.Width = Me.Width - 100
    
    ElseIf GetAsyncKeyState(vbKeyJ) Then 'This checks if you press the J button
    
        Me.Width = Me.Width + 100

    End If

End Sub

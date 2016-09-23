VERSION 5.00
Begin VB.Form frmJump 
   Caption         =   "Jump v.1"
   ClientHeight    =   5040
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   9840
   LinkTopic       =   "Form1"
   ScaleHeight     =   5040
   ScaleWidth      =   9840
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer tmrJump 
      Left            =   7440
      Top             =   2040
   End
   Begin VB.Shape shpWall 
      Height          =   4815
      Left            =   0
      Top             =   0
      Width           =   9735
   End
   Begin VB.Image imgChtr 
      Height          =   900
      Left            =   2280
      Picture         =   "frmJump.frx":0000
      Stretch         =   -1  'True
      Top             =   3840
      Width           =   885
   End
End
Attribute VB_Name = "frmJump"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

'For the jump code
'Dim an integer
Dim intJump As Integer

'Create a timer
    'rename it to tmrJump
    'Set interval to zero
    
'Create an image/pic box
    'rename it to imgChtr
    'set the picture to ur character pic
    
'Create a big box using the shape tool
    'Rename it to shape wall
    'Make sure that imgchtr is in that box

'Open the form keydown event(using top 2 list boxes)


Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)

Select Case KeyCode
    
    Case vbKeyUp 'If up key is pressed

    'Initiate jump timer
        tmrJump.Interval = 1
        intJump = 50

End Select
End Sub

'Open the tmrJump event prodecure(dbl click on it)


Private Sub tmrJump_Timer()

imgChtr.Top = imgChtr.Top - intJump 'Jump code

'Jump collison

    If imgChtr.Top <= shpWall.Top Then 'Top collision
    
        intJump = -intJump 'inverses jump value
            '50 becomes -50
            'Instead of imgchtr.top-50
            'It becomes imgchtr.top+50 (-- = +)
    
    ElseIf imgChtr.Top + imgChtr.Height >= shpWall.Top + shpWall.Height Then
    
    'Stops jump
    
        intJump = 0
        
    'Disables timer
        tmrJump.Interval = 0
        
End If




End Sub

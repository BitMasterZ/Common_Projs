VERSION 5.00
Begin VB.Form frmMove 
   Caption         =   "Movement using KeyDown"
   ClientHeight    =   9675
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   22845
   LinkTopic       =   "Form1"
   ScaleHeight     =   9675
   ScaleWidth      =   22845
   StartUpPosition =   3  'Windows Default
   Begin VB.Shape shpMove 
      Height          =   2055
      Left            =   8520
      Top             =   3840
      Width           =   375
   End
End
Attribute VB_Name = "frmMove"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Purpose of program: to create movement using keydown

'Open a new VB file in another window

'First create a shape and rename it to shpMove
'In the form load menu goto the upper right scroll list and select KeyDown

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)  'This should appear
'try putting  (MsgBox"tommy is dum") inside the keydown sub and run the program
'If you press any key the msg box appears

'But if you want a specific key do a particular funtion, you have to use Keycode
'The concept of keycode is that it reads any key you press on the keyboard and registers it as a key number
'But to make it simpler for programmers VB has a variable for keys called Vbkey
'to use the keycode and vbkey you need an if condition.
'the format is(  If Keycode= vbkeyUp( you can use any key, try left,down,right, W for the same code


'Try this code
    'If keycode=vbkeyleft then Msgbox""
'If you press the left arrow button, a message box shows up

'to make shpMove move do
If KeyCode = vbKeyUp Then 'If condition using keycode and vbkey


shpMove.Top = shpMove.Top - 100 'This keeps subtracting 100 from the top value of the shape and makes it go up

End If

If KeyCode = vbKeyDown Then


shpMove.Top = shpMove.Top + 100 'This keeps adding 100 to the top value of the shape and makes it go down

End If


If KeyCode = vbKeyLeft Then


shpMove.Left = shpMove.Left - 100 'This keeps subtracting 100 from the left value of the shape and makes it go left

End If

If KeyCode = vbKeyRight Then


shpMove.Left = shpMove.Left + 100 'This keeps adding 100 to the left value of the shape and makes it go right

End If

'You can assign diferent key values if you wish, like VbkeyW, vbkeyEnter,etc.)
'to make it move faster increase the number being added to/subtracted from the shape top/left and vice versa

End Sub




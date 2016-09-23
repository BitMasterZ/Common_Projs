VERSION 5.00
Begin VB.Form frmMain 
   Caption         =   "Form1"
   ClientHeight    =   7140
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   9735
   LinkTopic       =   "Form1"
   ScaleHeight     =   7140
   ScaleWidth      =   9735
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdStart 
      Caption         =   "Start"
      Height          =   375
      Left            =   7560
      TabIndex        =   0
      Top             =   4440
      Width           =   1455
   End
   Begin VB.Image imgSelect 
      BorderStyle     =   1  'Fixed Single
      Height          =   2535
      Left            =   3360
      Stretch         =   -1  'True
      Top             =   3600
      Width           =   2055
   End
   Begin VB.Image imgChar 
      DragMode        =   1  'Automatic
      Height          =   1275
      Index           =   2
      Left            =   3360
      Picture         =   "frmMain.frx":0000
      Stretch         =   -1  'True
      Top             =   1200
      Width           =   1995
   End
   Begin VB.Image imgChar 
      DragMode        =   1  'Automatic
      Height          =   1335
      Index           =   1
      Left            =   720
      Picture         =   "frmMain.frx":0078
      Stretch         =   -1  'True
      Top             =   1080
      Width           =   1935
   End
   Begin VB.Image imgChar 
      DragMode        =   1  'Automatic
      Height          =   1500
      Index           =   3
      Left            =   6120
      Picture         =   "frmMain.frx":00F0
      Top             =   960
      Width           =   1485
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Coded by Shobhit Adlakha
'Purpose: to use drag and drop to choose characters(sort of)


'First create three image boxes
    'Create a control array between them called imgChar
    'Put any three pictures you want
    'Set the dragmode to 1-Automatic
    'Set stretch as true
    'Make sure that the lowest index is not zero
    '(go to img box with 0 index and set it to three)

'Create another image box
    'Rename it to imgSelect
    'Set the borderstyle to fixed(so that it is visible)
    'Set stretch as true
    
'Create a command button to redirect you to the next form
    'Rename it cmdStart
    'Set the caption as "start"
    
'Create a module
    'Go to the module

'Create another form
    'Rename it frmGame
    
    
'Now code the drag and drop
Private Sub imgSelect_DragDrop(Source As Control, X As Single, Y As Single)
Dim intSpare As Integer 'For array

'To make the d 'n' d look more realistic
    For intSpare = imgChar.lbound To imgChar.ubound
        
        imgChar(intSpare).Visible = True
    
    Next intSpare

'The code above makes every character image (except for the one you drag [below]) visible when image is dropped

imgSelect.Picture = Source.Picture 'assigns image

Source.Visible = False 'Makes the one you drag invisible

intChar = Source.Index 'Stores the index of the image in the integer


' Try to use icons and set the dragicon to the picture to make it look more realistic


End Sub


'Code the Start button
Private Sub cmdStart_Click()

If intChar = 0 Then 'If user does not choose character

    MsgBox ("Choose!")
    
Else 'Character is chosen

'Redirect to other form
    frmGame.Show
    Me.Hide

End If
End Sub

'Go the second form

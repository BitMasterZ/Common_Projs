VERSION 5.00
Begin VB.Form frmGame 
   Caption         =   "Form1"
   ClientHeight    =   5295
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   7395
   LinkTopic       =   "Form1"
   ScaleHeight     =   5295
   ScaleWidth      =   7395
   StartUpPosition =   3  'Windows Default
   Begin VB.Image imgChar 
      Height          =   1275
      Index           =   2
      Left            =   2640
      Picture         =   "frmGame.frx":0000
      Stretch         =   -1  'True
      Top             =   240
      Visible         =   0   'False
      Width           =   1995
   End
   Begin VB.Image imgChar 
      Height          =   1335
      Index           =   1
      Left            =   0
      Picture         =   "frmGame.frx":0078
      Stretch         =   -1  'True
      Top             =   120
      Visible         =   0   'False
      Width           =   1935
   End
   Begin VB.Image imgChar 
      Height          =   1500
      Index           =   3
      Left            =   5400
      Picture         =   "frmGame.frx":00F0
      Top             =   0
      Visible         =   0   'False
      Width           =   1485
   End
   Begin VB.Image imgPlayer 
      Height          =   1575
      Left            =   2760
      Stretch         =   -1  'True
      Top             =   2520
      Width           =   1215
   End
End
Attribute VB_Name = "frmGame"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Copy paste the three images on the form
    'Make sure that the indexs remain the way they were
    'Set visible as False
    
    
'Creat an image box
    'Rename it to imgPlayer
    'Set stretch as true so it remains the size you want it to be
    
    
'Go to form load and put the following code

Private Sub Form_Load()
    
    imgPlayer = imgChar(intChar).Picture 'Assigns you character picture

End Sub


'When reurning to the main, set intchar to zero so the user has to select a new character


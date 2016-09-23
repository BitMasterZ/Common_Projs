VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   7605
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   9285
   LinkTopic       =   "Form1"
   ScaleHeight     =   7605
   ScaleWidth      =   9285
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox txtDisplay 
      Height          =   6015
      Left            =   5400
      MultiLine       =   -1  'True
      TabIndex        =   2
      Top             =   240
      Width           =   3735
   End
   Begin VB.CommandButton cmdWrite 
      Caption         =   "Write"
      Height          =   375
      Left            =   3720
      TabIndex        =   1
      Top             =   6600
      Width           =   2175
   End
   Begin VB.CommandButton cmdRead 
      Caption         =   "Read"
      Height          =   375
      Left            =   1080
      TabIndex        =   0
      Top             =   6600
      Width           =   2175
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim B As String
Dim intspare As Integer
Private Sub cmdRead_Click()
Cls

'Input
On Error Resume Next

    Open App.Path & ("\data.pdf") For Input As #1
    
For intspare = 1 To 10
    Input #1, B
    Print B 'Display
Next
    Close #1


End Sub

Private Sub cmdWrite_Click()
'Input
    Open App.Path & ("\data.pdf") For Output As #2
    Print #2, txtDisplay.Text
    Close #2


End Sub


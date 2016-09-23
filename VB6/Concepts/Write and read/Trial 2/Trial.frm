VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   7515
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   9735
   LinkTopic       =   "Form1"
   ScaleHeight     =   7515
   ScaleWidth      =   9735
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "Command1"
      Height          =   615
      Left            =   6120
      TabIndex        =   3
      Top             =   4080
      Width           =   1815
   End
   Begin VB.CommandButton cmdRead 
      Caption         =   "Read"
      Height          =   495
      Left            =   2280
      TabIndex        =   2
      Top             =   3120
      Width           =   1455
   End
   Begin VB.CommandButton cmdWrite 
      Caption         =   "Write"
      Height          =   495
      Left            =   360
      TabIndex        =   1
      Top             =   3120
      Width           =   1455
   End
   Begin VB.TextBox Lines 
      Height          =   2775
      Left            =   4080
      MultiLine       =   -1  'True
      TabIndex        =   0
      Text            =   "Trial.frx":0000
      Top             =   120
      Width           =   3015
   End
   Begin VB.Label Label1 
      Caption         =   "Label1"
      Height          =   495
      Left            =   4320
      TabIndex        =   4
      Top             =   3480
      Width           =   1215
   End
   Begin VB.Shape Box 
      Height          =   1575
      Left            =   720
      Top             =   5160
      Width           =   1335
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim B(1 To 2) As Variant
Dim Spare As Integer

Private Sub cmdRead_Click()
Open App.Path & ("\data.doc") For Input As #2

For Spare = 1 To 2
Input #2, B(Spare)

Print B(Spare)
Next
Close #2

End Sub

Private Sub cmdWrite_Click()

Open App.Path & ("\data.doc") For Output As #1

Print #1, Lines.Text

Close #1

End Sub

Private Sub Command1_Click()

Box.Height = Val(B(1))
Box.Width = Val(B(2))


End Sub


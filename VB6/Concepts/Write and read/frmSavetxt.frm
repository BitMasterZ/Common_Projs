VERSION 5.00
Begin VB.Form Form1 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Form1"
   ClientHeight    =   3150
   ClientLeft      =   45
   ClientTop       =   375
   ClientWidth     =   4875
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3150
   ScaleWidth      =   4875
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "Command1"
      Height          =   375
      Left            =   360
      TabIndex        =   1
      Top             =   2640
      Width           =   4335
   End
   Begin VB.TextBox Text1 
      Height          =   2175
      Left            =   360
      MultiLine       =   -1  'True
      TabIndex        =   0
      Top             =   120
      Width           =   4215
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Open App.Path & ("\data.txt") For Output As #2
Print #2, Text1.Text
Close #2
End Sub

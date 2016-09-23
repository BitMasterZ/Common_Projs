VERSION 5.00
Begin VB.Form frmPrint 
   Caption         =   "Form1"
   ClientHeight    =   4590
   ClientLeft      =   120
   ClientTop       =   420
   ClientWidth     =   6195
   LinkTopic       =   "Form1"
   ScaleHeight     =   4590
   ScaleWidth      =   6195
   StartUpPosition =   3  'Windows Default
   Begin VB.Label lblName 
      Height          =   255
      Left            =   1560
      TabIndex        =   1
      Top             =   1080
      Width           =   2775
   End
   Begin VB.Label Label1 
      Caption         =   "Your name is:"
      Height          =   255
      Left            =   360
      TabIndex        =   0
      Top             =   1080
      Width           =   1215
   End
End
Attribute VB_Name = "frmPrint"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Create two labels

'Set the caption property of the first label to "Your name is:"

'Rename the second label as "lblName"
'lblName will display the name you entered in frm1
'Open the form load event procedure



Private Sub Form_Load()
'Set lblName's caption property to strName
lblName.Caption = strName
End Sub

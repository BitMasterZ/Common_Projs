VERSION 5.00
Begin VB.Form frmInstru 
   Caption         =   "Instruction Manuel"
   ClientHeight    =   11010
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   15240
   LinkTopic       =   "Form1"
   Picture         =   "frmInstru.frx":0000
   ScaleHeight     =   11010
   ScaleWidth      =   15240
   Begin VB.CommandButton cmdNext 
      Appearance      =   0  'Flat
      BackColor       =   &H00808080&
      Caption         =   "NEXT"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   16.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   10680
      MaskColor       =   &H0000FFFF&
      Style           =   1  'Graphical
      TabIndex        =   0
      Top             =   9600
      UseMaskColor    =   -1  'True
      Width           =   4215
   End
End
Attribute VB_Name = "frmInstru"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Name : Annie Zhang
'Teacher : Kuehn
'Course : ICS3U0
'Assmt : ISU
'Description : Picture of Instructions.

Private Sub cmdNext_Click()
Load frmInstru2 'load second page/form of instructions
frmInstru2.Show 'show second page/form of instructions
Unload Me       'unload this form
End Sub

Private Sub Form_Load()

End Sub

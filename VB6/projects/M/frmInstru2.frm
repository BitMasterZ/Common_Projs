VERSION 5.00
Begin VB.Form frmInstru2 
   Caption         =   "Instruction Manuel"
   ClientHeight    =   11010
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   15240
   LinkTopic       =   "Form1"
   Picture         =   "frmInstru2.frx":0000
   ScaleHeight     =   11010
   ScaleWidth      =   15240
   Begin VB.CommandButton cmdDone 
      BackColor       =   &H0000FF00&
      Caption         =   "Back To MENU"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   19.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2175
      Left            =   13080
      Style           =   1  'Graphical
      TabIndex        =   1
      Top             =   6600
      Width           =   2055
   End
   Begin VB.CommandButton cmdPrevious 
      BackColor       =   &H0000FF00&
      Caption         =   "Previous"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   19.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   975
      Left            =   720
      Style           =   1  'Graphical
      TabIndex        =   0
      Top             =   9720
      Width           =   3735
   End
End
Attribute VB_Name = "frmInstru2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Name : Annie Zhang
'Teacher : Kuehn
'Course : ICS3U0
'Assmt : ISU
'Description : Picture of Instructions. page 2

Private Sub cmdDone_Click()
Load frmISUanim 'load menu
frmISUanim.Show 'show menu
Unload Me       'unload this form
End Sub

Private Sub cmdPrevious_Click()
Load frmInstru  'load instructions page/form 1
frmInstru.Show  'show instructions page/form 1
Unload Me       'unload this form
End Sub

VERSION 5.00
Begin VB.Form Intro 
   AutoRedraw      =   -1  'True
   BorderStyle     =   3  'Fixed Dialog
   ClientHeight    =   3465
   ClientLeft      =   255
   ClientTop       =   1410
   ClientWidth     =   8955
   ClipControls    =   0   'False
   ControlBox      =   0   'False
   Icon            =   "Intro.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3465
   ScaleWidth      =   8955
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.Timer tmrcredits 
      Interval        =   1
      Left            =   360
      Top             =   4680
   End
   Begin VB.Label First 
      Caption         =   $"Intro.frx":8032
      BeginProperty Font 
         Name            =   "OCR A Std"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   5055
      Left            =   0
      TabIndex        =   0
      Top             =   240
      Width           =   8895
   End
End
Attribute VB_Name = "Intro"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Option Explicit

Private Sub Form_Load()
First.Top = Me.ScaleHeight
End Sub

Private Sub Form_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
Level1.Show
Unload Me
End Sub

Private Sub tmrcredits_Timer()
First.Top = First.Top - 5
If First.Top + First.Height < Me.ScaleTop Then
Level1.Show
Unload Me
End If

End Sub

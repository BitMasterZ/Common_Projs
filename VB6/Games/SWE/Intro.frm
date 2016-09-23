VERSION 5.00
Begin VB.Form Intro 
   BorderStyle     =   3  'Fixed Dialog
   ClientHeight    =   1470
   ClientLeft      =   255
   ClientTop       =   1410
   ClientWidth     =   8970
   ClipControls    =   0   'False
   ControlBox      =   0   'False
   Icon            =   "Intro.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1470
   ScaleWidth      =   8970
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.Timer tmrcredits 
      Interval        =   1
      Left            =   360
      Top             =   4680
   End
   Begin VB.Label First 
      Caption         =   $"Intro.frx":6932
      BeginProperty Font 
         Name            =   "OCR A Std"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   3135
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
IntroV.Show
Unload Me
tmrcredits.Enabled = False
End Sub

Private Sub tmrcredits_Timer()
First.Top = First.Top - 5
If First.Top + First.Height < Me.ScaleTop Then
IntroV.Show
Unload Me
tmrcredits.Enabled = False
End If

End Sub


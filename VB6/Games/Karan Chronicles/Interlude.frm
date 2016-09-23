VERSION 5.00
Begin VB.Form Interlude 
   BorderStyle     =   0  'None
   Caption         =   "        "
   ClientHeight    =   2625
   ClientLeft      =   210
   ClientTop       =   1365
   ClientWidth     =   8985
   ClipControls    =   0   'False
   ControlBox      =   0   'False
   Icon            =   "Interlude.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2625
   ScaleWidth      =   8985
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.Timer tmrcredits 
      Interval        =   1
      Left            =   240
      Top             =   4200
   End
   Begin VB.Label First 
      Caption         =   $"Interlude.frx":8032
      BeginProperty Font 
         Name            =   "OCR A Std"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   3495
      Left            =   0
      TabIndex        =   0
      Top             =   480
      Width           =   8895
   End
End
Attribute VB_Name = "Interlude"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Option Explicit

Private Sub Form_Load()
First.Top = Me.ScaleHeight
End Sub

Private Sub tmrcredits_Timer()
First.Top = First.Top - 5
If First.Top + First.Height < Me.ScaleTop Then
Finallvl.Show
Unload Me
End If

End Sub

Private Sub Form_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
Finallvl.Show
Unload Me
End Sub


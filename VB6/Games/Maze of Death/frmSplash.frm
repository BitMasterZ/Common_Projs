VERSION 5.00
Begin VB.Form frmSplash 
   BackColor       =   &H00000000&
   BorderStyle     =   3  'Fixed Dialog
   ClientHeight    =   5085
   ClientLeft      =   255
   ClientTop       =   1410
   ClientWidth     =   9090
   ClipControls    =   0   'False
   ControlBox      =   0   'False
   Icon            =   "frmSplash.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5085
   ScaleWidth      =   9090
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.Timer tmrMove 
      Interval        =   1
      Left            =   2400
      Top             =   3360
   End
   Begin VB.Label lblSubHead 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "Script MT Bold"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   435
      Left            =   3120
      TabIndex        =   2
      Top             =   840
      Width           =   90
   End
   Begin VB.Shape shpLoad 
      FillColor       =   &H00FFFFFF&
      FillStyle       =   0  'Solid
      Height          =   375
      Left            =   2280
      Top             =   360
      Width           =   135
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "Loading........"
      BeginProperty Font 
         Name            =   "Parchment"
         Size            =   36
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   855
      Left            =   120
      TabIndex        =   1
      Top             =   120
      Width           =   2175
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Maze Of DEATH!!!"
      BeginProperty Font 
         Name            =   "OCR A Extended"
         Size            =   36
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   1695
      Left            =   360
      TabIndex        =   0
      Top             =   1440
      Width           =   3615
   End
   Begin VB.Image imgHead 
      Height          =   2475
      Left            =   4080
      Picture         =   "frmSplash.frx":08CA
      Stretch         =   -1  'True
      Top             =   1920
      Width           =   3975
   End
End
Attribute VB_Name = "frmSplash"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Option Explicit
Dim intCounter As Integer
Private Sub Form_KeyPress(KeyAscii As Integer)
    frmMain.Show
    Unload Me
End Sub

Private Sub tmrMove_Timer()
intLost = 10
shpLoad.Width = shpLoad.Width + 20

If shpLoad.Width <= 1000 Then
    
    lblSubHead.Caption = "Creating Interfaces"

ElseIf shpLoad.Width > 1000 And shpLoad.Width <= 2000 Then

    lblSubHead.Caption = "Making controls"
    
ElseIf shpLoad.Width > 2000 And shpLoad.Width <= 3000 Then

    lblSubHead.Caption = "Loading forms"

ElseIf shpLoad.Width > 3000 And shpLoad.Width <= 4000 Then

    lblSubHead.Caption = "Initialing program"
    
ElseIf shpLoad.Width >= 5000 Then

    frmMain.Show
    Unload Me

End If
End Sub


VERSION 5.00
Begin VB.Form frmSplash 
   BackColor       =   &H00808080&
   BorderStyle     =   3  'Fixed Dialog
   ClientHeight    =   4545
   ClientLeft      =   255
   ClientTop       =   1410
   ClientWidth     =   7785
   ClipControls    =   0   'False
   ControlBox      =   0   'False
   Icon            =   "frmSplash.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4545
   ScaleWidth      =   7785
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton cmdStart 
      Caption         =   "Begin"
      Height          =   615
      Left            =   240
      TabIndex        =   1
      Top             =   1680
      Width           =   1095
   End
   Begin VB.Timer tmrMove 
      Left            =   1200
      Top             =   960
   End
   Begin VB.Shape shpProg 
      BorderStyle     =   0  'Transparent
      FillColor       =   &H0000C000&
      FillStyle       =   0  'Solid
      Height          =   375
      Index           =   20
      Left            =   7440
      Top             =   120
      Visible         =   0   'False
      Width           =   135
   End
   Begin VB.Shape shpProg 
      BorderStyle     =   0  'Transparent
      FillColor       =   &H0000C000&
      FillStyle       =   0  'Solid
      Height          =   375
      Index           =   19
      Left            =   7200
      Top             =   120
      Visible         =   0   'False
      Width           =   135
   End
   Begin VB.Shape shpProg 
      BorderStyle     =   0  'Transparent
      FillColor       =   &H0000C000&
      FillStyle       =   0  'Solid
      Height          =   375
      Index           =   18
      Left            =   6960
      Top             =   120
      Visible         =   0   'False
      Width           =   135
   End
   Begin VB.Shape shpProg 
      BorderStyle     =   0  'Transparent
      FillColor       =   &H0000C000&
      FillStyle       =   0  'Solid
      Height          =   375
      Index           =   17
      Left            =   6720
      Top             =   120
      Visible         =   0   'False
      Width           =   135
   End
   Begin VB.Shape shpProg 
      BorderStyle     =   0  'Transparent
      FillColor       =   &H0000C000&
      FillStyle       =   0  'Solid
      Height          =   375
      Index           =   16
      Left            =   6480
      Top             =   120
      Visible         =   0   'False
      Width           =   135
   End
   Begin VB.Shape shpProg 
      BorderStyle     =   0  'Transparent
      FillColor       =   &H0000C000&
      FillStyle       =   0  'Solid
      Height          =   375
      Index           =   15
      Left            =   6240
      Top             =   120
      Visible         =   0   'False
      Width           =   135
   End
   Begin VB.Shape shpProg 
      BorderStyle     =   0  'Transparent
      FillColor       =   &H0000C000&
      FillStyle       =   0  'Solid
      Height          =   375
      Index           =   14
      Left            =   6000
      Top             =   120
      Visible         =   0   'False
      Width           =   135
   End
   Begin VB.Shape shpProg 
      BorderStyle     =   0  'Transparent
      FillColor       =   &H0000C000&
      FillStyle       =   0  'Solid
      Height          =   375
      Index           =   13
      Left            =   5760
      Top             =   120
      Visible         =   0   'False
      Width           =   135
   End
   Begin VB.Shape shpProg 
      BorderStyle     =   0  'Transparent
      FillColor       =   &H0000C000&
      FillStyle       =   0  'Solid
      Height          =   375
      Index           =   12
      Left            =   5520
      Top             =   120
      Visible         =   0   'False
      Width           =   135
   End
   Begin VB.Shape shpProg 
      BorderStyle     =   0  'Transparent
      FillColor       =   &H0000C000&
      FillStyle       =   0  'Solid
      Height          =   375
      Index           =   11
      Left            =   5280
      Top             =   120
      Visible         =   0   'False
      Width           =   135
   End
   Begin VB.Shape shpProg 
      BorderStyle     =   0  'Transparent
      FillColor       =   &H0000C000&
      FillStyle       =   0  'Solid
      Height          =   375
      Index           =   10
      Left            =   5040
      Top             =   120
      Visible         =   0   'False
      Width           =   135
   End
   Begin VB.Shape shpProg 
      BorderStyle     =   0  'Transparent
      FillColor       =   &H0000C000&
      FillStyle       =   0  'Solid
      Height          =   375
      Index           =   9
      Left            =   4800
      Top             =   120
      Visible         =   0   'False
      Width           =   135
   End
   Begin VB.Shape shpProg 
      BorderStyle     =   0  'Transparent
      FillColor       =   &H0000C000&
      FillStyle       =   0  'Solid
      Height          =   375
      Index           =   8
      Left            =   4560
      Top             =   120
      Visible         =   0   'False
      Width           =   135
   End
   Begin VB.Shape shpProg 
      BorderStyle     =   0  'Transparent
      FillColor       =   &H0000C000&
      FillStyle       =   0  'Solid
      Height          =   375
      Index           =   7
      Left            =   4320
      Top             =   120
      Visible         =   0   'False
      Width           =   135
   End
   Begin VB.Shape shpProg 
      BorderStyle     =   0  'Transparent
      FillColor       =   &H0000C000&
      FillStyle       =   0  'Solid
      Height          =   375
      Index           =   6
      Left            =   4080
      Top             =   120
      Visible         =   0   'False
      Width           =   135
   End
   Begin VB.Shape shpProg 
      BorderStyle     =   0  'Transparent
      FillColor       =   &H0000C000&
      FillStyle       =   0  'Solid
      Height          =   375
      Index           =   5
      Left            =   3840
      Top             =   120
      Visible         =   0   'False
      Width           =   135
   End
   Begin VB.Shape shpProg 
      BorderStyle     =   0  'Transparent
      FillColor       =   &H0000C000&
      FillStyle       =   0  'Solid
      Height          =   375
      Index           =   4
      Left            =   3600
      Top             =   120
      Visible         =   0   'False
      Width           =   135
   End
   Begin VB.Shape shpProg 
      BorderStyle     =   0  'Transparent
      FillColor       =   &H0000C000&
      FillStyle       =   0  'Solid
      Height          =   375
      Index           =   3
      Left            =   3360
      Top             =   120
      Visible         =   0   'False
      Width           =   135
   End
   Begin VB.Shape shpProg 
      BorderStyle     =   0  'Transparent
      FillColor       =   &H0000C000&
      FillStyle       =   0  'Solid
      Height          =   375
      Index           =   2
      Left            =   3120
      Top             =   120
      Visible         =   0   'False
      Width           =   135
   End
   Begin VB.Shape shpProg 
      BorderStyle     =   0  'Transparent
      FillColor       =   &H0000C000&
      FillStyle       =   0  'Solid
      Height          =   375
      Index           =   1
      Left            =   2880
      Top             =   120
      Visible         =   0   'False
      Width           =   135
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Loading...."
      BeginProperty Font 
         Name            =   "OCR A Extended"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   345
      Left            =   240
      TabIndex        =   0
      Top             =   120
      Width           =   2145
   End
   Begin VB.Shape shpProg 
      BorderStyle     =   0  'Transparent
      FillColor       =   &H0000C000&
      FillStyle       =   0  'Solid
      Height          =   375
      Index           =   0
      Left            =   2640
      Top             =   120
      Visible         =   0   'False
      Width           =   135
   End
End
Attribute VB_Name = "frmSplash"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Option Explicit
Dim M As Integer

Private Sub cmdStart_Click()
tmrMove.Interval = 500

cmdStart.Visible = False

End Sub

Private Sub Form_KeyPress(KeyAscii As Integer)
    frmMain.Show
    Unload Me
End Sub

Private Sub tmrMove_Timer()

shpProg(M).Visible = True
If M < shpProg.UBound Then M = M + 1

End Sub

Private Sub Snake()

End Sub

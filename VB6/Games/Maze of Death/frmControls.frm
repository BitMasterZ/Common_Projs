VERSION 5.00
Begin VB.Form frmInstructions 
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "Instructions of game"
   ClientHeight    =   7800
   ClientLeft      =   2760
   ClientTop       =   3690
   ClientWidth     =   6675
   Icon            =   "frmControls.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   7800
   ScaleWidth      =   6675
   ShowInTaskbar   =   0   'False
   Begin VB.Frame frame 
      BackColor       =   &H8000000B&
      Caption         =   "Description of Controls"
      Height          =   6375
      Left            =   1680
      TabIndex        =   2
      Top             =   1320
      Width           =   4935
      Begin VB.Label lblDescription 
         BackStyle       =   0  'Transparent
         Caption         =   "Key: Must be collected to open locked doors"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   13.5
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Index           =   5
         Left            =   0
         TabIndex        =   9
         Top             =   5400
         Width           =   4815
      End
      Begin VB.Label lblDescription 
         BackStyle       =   0  'Transparent
         Caption         =   "Locked Door : Cannot be opened without a key"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   13.5
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Index           =   4
         Left            =   0
         TabIndex        =   8
         Top             =   4440
         Width           =   4815
      End
      Begin VB.Label lblDescription 
         BackStyle       =   0  'Transparent
         Caption         =   "Unlocked Door : Allows character to escape maze. To win, you must touch these."
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   13.5
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1095
         Index           =   3
         Left            =   0
         TabIndex        =   7
         Top             =   3240
         Width           =   5415
      End
      Begin VB.Label lblDescription 
         BackStyle       =   0  'Transparent
         Caption         =   "Traps: Can be stationary or moving. Will kill character if touched"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   13.5
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Index           =   2
         Left            =   0
         TabIndex        =   6
         Top             =   2280
         Width           =   4575
      End
      Begin VB.Label lblDescription 
         BackStyle       =   0  'Transparent
         Caption         =   "Wall:The boundaries of maze. Will kill character if touched."
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   13.5
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Index           =   1
         Left            =   120
         TabIndex        =   5
         Top             =   1440
         Width           =   4095
      End
      Begin VB.Label lblDescription 
         BackStyle       =   0  'Transparent
         Caption         =   "Your character"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   13.5
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Index           =   0
         Left            =   120
         TabIndex        =   4
         Top             =   720
         Width           =   1935
      End
      Begin VB.Label lblHead 
         Caption         =   "Legend"
         BeginProperty Font 
            Name            =   "Old English Text MT"
            Size            =   20.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   120
         TabIndex        =   3
         Top             =   240
         Width           =   1335
      End
   End
   Begin VB.CommandButton OKButton 
      Caption         =   "OK"
      Height          =   375
      Left            =   5400
      TabIndex        =   0
      Top             =   720
      Width           =   1215
   End
   Begin VB.Shape shpWall 
      FillColor       =   &H00404040&
      FillStyle       =   0  'Solid
      Height          =   135
      Index           =   0
      Left            =   120
      Top             =   3000
      Width           =   1575
   End
   Begin VB.Image imgTrap 
      Height          =   540
      Index           =   0
      Left            =   1080
      Picture         =   "frmControls.frx":08CA
      Stretch         =   -1  'True
      Top             =   3600
      Width           =   525
   End
   Begin VB.Shape shpEnd 
      FillColor       =   &H00C0C000&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   0
      Left            =   600
      Top             =   4680
      Width           =   975
   End
   Begin VB.Image imgVik 
      DragMode        =   1  'Automatic
      Height          =   810
      Index           =   3
      Left            =   360
      Picture         =   "frmControls.frx":7E3C
      Stretch         =   -1  'True
      Top             =   1920
      Width           =   495
   End
   Begin VB.Image imgVik 
      DragMode        =   1  'Automatic
      Height          =   810
      Index           =   2
      Left            =   0
      Picture         =   "frmControls.frx":2D0A2
      Stretch         =   -1  'True
      Top             =   1920
      Width           =   495
   End
   Begin VB.Image imgVik 
      DragMode        =   1  'Automatic
      Height          =   810
      Index           =   1
      Left            =   720
      Picture         =   "frmControls.frx":31D64
      Stretch         =   -1  'True
      Top             =   1920
      Width           =   495
   End
   Begin VB.Image imgVik 
      DragMode        =   1  'Automatic
      Height          =   810
      Index           =   4
      Left            =   1200
      Picture         =   "frmControls.frx":36BBE
      Stretch         =   -1  'True
      Top             =   1920
      Width           =   495
   End
   Begin VB.Shape Shape1 
      FillColor       =   &H00FFFFFF&
      FillStyle       =   0  'Solid
      Height          =   135
      Left            =   240
      Top             =   5880
      Width           =   1335
   End
   Begin VB.Image imgKey 
      Height          =   780
      Index           =   0
      Left            =   960
      Picture         =   "frmControls.frx":3E4A8
      Stretch         =   -1  'True
      Top             =   6720
      Width           =   675
   End
   Begin VB.Label lblControl 
      Caption         =   "Use arrow keys to move your Character and avoid the traps and the walls and reach the end"
      BeginProperty Font 
         Name            =   "OCR A Extended"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1095
      Left            =   0
      TabIndex        =   1
      Top             =   0
      Width           =   6495
   End
End
Attribute VB_Name = "frmInstructions"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Option Explicit

Private Sub OKButton_Click()
    Unload Me
End Sub

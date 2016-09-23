VERSION 5.00
Begin VB.Form frmMapMaker 
   BorderStyle     =   0  'None
   ClientHeight    =   11070
   ClientLeft      =   150
   ClientTop       =   795
   ClientWidth     =   18480
   Icon            =   "frmMapMaker.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   11070
   ScaleWidth      =   18480
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer tmrAnim 
      Interval        =   1
      Left            =   4920
      Top             =   2760
   End
   Begin VB.PictureBox Map 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BorderStyle     =   0  'None
      Height          =   11055
      Left            =   2880
      ScaleHeight     =   737
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   961
      TabIndex        =   7
      Top             =   0
      Width           =   14415
   End
   Begin VB.Frame Holder 
      Caption         =   "Block Types"
      Height          =   6495
      Left            =   240
      TabIndex        =   0
      Top             =   240
      Width           =   1215
      Begin VB.Label lblColors 
         BackColor       =   &H0000FFFF&
         Height          =   375
         Index           =   9
         Left            =   360
         TabIndex        =   11
         Top             =   5880
         Width           =   375
      End
      Begin VB.Label lblColors 
         BackColor       =   &H0000C000&
         Height          =   375
         Index           =   8
         Left            =   360
         TabIndex        =   10
         Top             =   5280
         Width           =   375
      End
      Begin VB.Label lblColors 
         BackColor       =   &H00000000&
         Height          =   375
         Index           =   7
         Left            =   360
         TabIndex        =   9
         Top             =   4680
         Width           =   375
      End
      Begin VB.Label lblColors 
         BackColor       =   &H000000FF&
         Height          =   375
         Index           =   6
         Left            =   360
         TabIndex        =   8
         Top             =   4080
         Width           =   375
      End
      Begin VB.Label lblColors 
         BackColor       =   &H000000FF&
         Height          =   375
         Index           =   0
         Left            =   360
         TabIndex        =   6
         Top             =   480
         Width           =   375
      End
      Begin VB.Label lblColors 
         BackColor       =   &H00000000&
         Height          =   375
         Index           =   1
         Left            =   360
         TabIndex        =   5
         Top             =   1080
         Width           =   375
      End
      Begin VB.Label lblColors 
         BackColor       =   &H0000C000&
         Height          =   375
         Index           =   2
         Left            =   360
         TabIndex        =   4
         Top             =   1680
         Width           =   375
      End
      Begin VB.Label lblColors 
         BackColor       =   &H0000FFFF&
         Height          =   375
         Index           =   3
         Left            =   360
         TabIndex        =   3
         Top             =   2280
         Width           =   375
      End
      Begin VB.Label lblColors 
         BackColor       =   &H00FF0000&
         Height          =   375
         Index           =   4
         Left            =   360
         TabIndex        =   2
         Top             =   2880
         Width           =   375
      End
      Begin VB.Label lblColors 
         BackColor       =   &H00400000&
         Height          =   375
         Index           =   5
         Left            =   360
         TabIndex        =   1
         Top             =   3480
         Width           =   375
      End
   End
   Begin VB.Menu mnuFile 
      Caption         =   "File"
      Begin VB.Menu mnuNew 
         Caption         =   "New Map"
      End
      Begin VB.Menu mnuSave 
         Caption         =   "Save Map"
      End
      Begin VB.Menu mnuOpen 
         Caption         =   "Open Map"
      End
      Begin VB.Menu mnuSize 
         Caption         =   "Size"
      End
      Begin VB.Menu mnuSpare 
         Caption         =   "-"
      End
      Begin VB.Menu mnuChange 
         Caption         =   "Change Directory"
      End
      Begin VB.Menu mnuExit 
         Caption         =   "Exit App"
      End
   End
End
Attribute VB_Name = "frmMapMaker"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Map Maker
Option Explicit

Dim World As New GridMap
Dim Size As Integer, Blocks As Integer
Dim Fill As Integer


Dim strFile As String, strDirect As String
Dim C As Integer
Private Sub Form_Load()
ReDim Col(0 To lblColors.UBound) As Long

'Default
    ScaleMode = 3
    AutoRedraw = True
    strDirect = App.Path

'Colors Array Values
    
    Col(0) = Me.BackColor
    Col(1) = vbBlack
    Col(2) = vbRed
    Col(3) = vbGreen
    Col(4) = vbBlue
    Col(5) = vbCyan
    Col(6) = vbWhite
    Col(7) = RGB(25, 67, 99)
    Col(8) = RGB(77, 77, 0)
    Col(9) = RGB(0, 100, 100)
 
    

'Set colors
    For C = 0 To lblColors.UBound
        lblColors(C).BackColor = Col(C)
    Next C

Call World.Generate(30, 400)

End Sub

Private Sub lblColors_Click(Index As Integer)
'Reset
    For C = 0 To lblColors.UBound
        lblColors(C).BorderStyle = 0
    Next C

'Assign
    Fill = Index
'Highlight
    lblColors(Index).BorderStyle = 1
End Sub

Private Sub Map_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
'Fill the Block
    Call World.BFill(X, Y, Fill)
End Sub


Private Sub mnuChange_Click()
'Change the directory
    strDirect = InputBox("Enter Directory", "Open Directory", strDirect)
End Sub

Private Sub mnuExit_Click()
End
End Sub

Private Sub mnuNew_Click()
    Map.Cls
    Blocks = Val(InputBox("Number of Blocks"))
    Size = Val(InputBox("Size of Blocks"))

  
    Call World.Generate(Size, Blocks)
    
End Sub

Private Sub mnuOpen_Click() 'Open map
'Enter the name of the file
    strFile = InputBox("Enter File Name", "Create file")
    
    Call World.Filler(strDirect + "/" + strFile)
End Sub

Private Sub mnuSave_Click() ' Create Map
'Enter the name and type of the file
    strFile = InputBox("Enter File Name", "Create file")

'Write Map
    Open strDirect + "/" + strFile For Output As #1
    
        Print #1, World.MapCode
    
    Close #1

End Sub

Private Sub mnuSize_Click()
    Size = Val(InputBox("Size of Blocks"))

    Call World.Generate(Size, Blocks)

End Sub

Private Sub tmrAnim_Timer()
Cls

'Draw the map
    Call World.Draw(Map)

End Sub




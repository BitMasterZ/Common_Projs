VERSION 5.00
Begin VB.Form frmSize 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Eraser Size"
   ClientHeight    =   3540
   ClientLeft      =   45
   ClientTop       =   375
   ClientWidth     =   5775
   Icon            =   "frmSize.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3540
   ScaleWidth      =   5775
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.PictureBox picSample 
      AutoRedraw      =   -1  'True
      Height          =   1275
      Index           =   7
      Left            =   4080
      ScaleHeight     =   1215
      ScaleWidth      =   1215
      TabIndex        =   8
      Top             =   1920
      Width           =   1275
   End
   Begin VB.PictureBox picSample 
      AutoRedraw      =   -1  'True
      Height          =   1275
      Index           =   6
      Left            =   2760
      ScaleHeight     =   1215
      ScaleWidth      =   1215
      TabIndex        =   7
      Top             =   1920
      Width           =   1275
   End
   Begin VB.PictureBox picSample 
      AutoRedraw      =   -1  'True
      Height          =   1275
      Index           =   5
      Left            =   1440
      ScaleHeight     =   1215
      ScaleWidth      =   1215
      TabIndex        =   6
      Top             =   1920
      Width           =   1275
   End
   Begin VB.PictureBox picSample 
      AutoRedraw      =   -1  'True
      Height          =   1275
      Index           =   4
      Left            =   120
      ScaleHeight     =   1215
      ScaleWidth      =   1215
      TabIndex        =   5
      Top             =   1920
      Width           =   1275
   End
   Begin VB.PictureBox picSample 
      AutoRedraw      =   -1  'True
      Height          =   1275
      Index           =   3
      Left            =   4080
      ScaleHeight     =   1215
      ScaleWidth      =   1215
      TabIndex        =   4
      Top             =   600
      Width           =   1275
   End
   Begin VB.PictureBox picSample 
      AutoRedraw      =   -1  'True
      Height          =   1275
      Index           =   2
      Left            =   2760
      ScaleHeight     =   1215
      ScaleWidth      =   1215
      TabIndex        =   3
      Top             =   600
      Width           =   1275
   End
   Begin VB.PictureBox picSample 
      AutoRedraw      =   -1  'True
      Height          =   1275
      Index           =   1
      Left            =   1440
      ScaleHeight     =   1215
      ScaleWidth      =   1215
      TabIndex        =   2
      Top             =   600
      Width           =   1275
   End
   Begin VB.PictureBox picSample 
      AutoRedraw      =   -1  'True
      Height          =   1275
      Index           =   0
      Left            =   120
      ScaleHeight     =   1215
      ScaleWidth      =   1215
      TabIndex        =   1
      Top             =   600
      Width           =   1275
   End
   Begin VB.Label lblHead 
      AutoSize        =   -1  'True
      Caption         =   "Choose a eraser size:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   435
      Left            =   120
      TabIndex        =   0
      Top             =   0
      Width           =   3495
   End
End
Attribute VB_Name = "frmSize"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim intCenterX As Integer, intCenterY As Integer

Private Sub Form_Load()
intWidth = 5
intCenterX = (picSample(0).Left + picSample(0).Width) / 3
intCenterY = (picSample(0).Top + picSample(0).Height) / 3

Dim intSpare As Integer

For intSpare = picSample.LBound To picSample.UBound
    picSample(intSpare).DrawWidth = intWidth
    picSample(intSpare).PSet (intCenterX, intCenterY)
    intWidth = intWidth + 10
Next intSpare
    
End Sub

Private Sub picSample_Click(Index As Integer)

intWidth = picSample(Index).DrawWidth
Unload Me
End Sub

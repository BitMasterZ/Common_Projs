VERSION 5.00
Begin VB.Form frmScores 
   BorderStyle     =   3  'Fixed Dialog
   ClientHeight    =   3525
   ClientLeft      =   255
   ClientTop       =   1410
   ClientWidth     =   3450
   ClipControls    =   0   'False
   ControlBox      =   0   'False
   Icon            =   "frmScores.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3525
   ScaleWidth      =   3450
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton cmdExit 
      Caption         =   "Exit"
      Height          =   615
      Left            =   2520
      TabIndex        =   2
      Top             =   120
      Width           =   855
   End
   Begin VB.Label lbl 
      Height          =   2175
      Left            =   120
      TabIndex        =   1
      Top             =   1080
      Width           =   2895
   End
   Begin VB.Label lblScore 
      Caption         =   "Scores"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   24
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   480
      TabIndex        =   0
      Top             =   120
      Width           =   1815
   End
End
Attribute VB_Name = "frmScores"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Input Scores from File
Option Explicit
Dim strText As String
Dim FileNum As Integer

Private Sub cmdExit_click()
    Unload Me
End Sub

Private Sub Form_Load()
On Error GoTo Handler:

FileNum = FreeFile

'Start
    Open App.Path & ("\Scores.dat") For Input As FileNum

    'Input
        Do Until EOF(FileNum)
            
            Input #FileNum, strText
            lbl.Caption = lbl.Caption & strText & vbCrLf

        Loop

Close #FileNum

Exit Sub


Handler:
    lbl.Caption = "No previous game data available"

End Sub


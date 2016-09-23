VERSION 5.00
Begin VB.Form frmEnding2 
   BorderStyle     =   0  'None
   Caption         =   "Form1"
   ClientHeight    =   5820
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   7125
   Icon            =   "frmEnding2.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5820
   ScaleWidth      =   7125
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdQuit 
      Caption         =   "Quit"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   24
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   555
      Left            =   2640
      TabIndex        =   0
      Top             =   5280
      Width           =   1815
   End
   Begin VB.Label lblMessage 
      Caption         =   "Thank You for playing my Isu"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   24
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   240
      TabIndex        =   2
      Top             =   360
      Width           =   6495
   End
   Begin VB.Label lblFinish 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   24
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   3975
      Left            =   360
      TabIndex        =   1
      Top             =   1200
      Width           =   6495
   End
End
Attribute VB_Name = "frmEnding2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Option Explicit
Private Sub cmdQuit_Click()
End
End Sub

Private Sub Form_Load()
    lblFinish.Caption = "You have not finished the game so the cheats have not been unlocked. If tyou wish to continue the game from the level you lost , reopen the game and goto Load Game and click on your save file "
    If blnFinish = True Then Call Cheat
End Sub


Private Sub Cheat()
Dim intFile As Integer
Const strFile As String = "GOW Skip Cheats"

intFile = FreeFile
'Create cheat file
    Open App.Path & "\" & strFile & ".txt" For Output As #intFile

        Write #intFile, "Level        Password " & vbCrLf
        Write #intFile, "Level 1:     *GOWLvl2* "
        Write #intFile, "Level 2:     **GOWLvl3** "
        Write #intFile, "Level 3:     ***GOWLvl4*** "
        Write #intFile, "Level 4:     ****GOWLvl5**** "
        Write #intFile, "Level 5:     *****GOWLvl6***** "
    
    Close #intFile

'Display
lblFinish.Caption = "Since you have now finished the game, you have unlocked all of the level skip cheats which is saved in " & App.Path & " as " & strFile & ".txt"


End Sub




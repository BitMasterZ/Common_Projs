VERSION 5.00
Begin VB.Form frmGame 
   BackColor       =   &H00FFFFFF&
   Caption         =   "Rock Paper Scissors"
   ClientHeight    =   7665
   ClientLeft      =   120
   ClientTop       =   420
   ClientWidth     =   10500
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Moveable        =   0   'False
   ScaleHeight     =   7665
   ScaleWidth      =   10500
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdWin 
      BeginProperty Font 
         Name            =   "Old English Text MT"
         Size            =   20.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   2280
      TabIndex        =   5
      Top             =   480
      Width           =   4335
   End
   Begin VB.Timer tmrResult 
      Interval        =   1000
      Left            =   4920
      Top             =   5160
   End
   Begin VB.Timer tmrCounter 
      Interval        =   1000
      Left            =   4920
      Top             =   5640
   End
   Begin VB.Label Label2 
      BackColor       =   &H00FFFFFF&
      Caption         =   "Wins"
      BeginProperty Font 
         Name            =   "Papyrus"
         Size            =   20.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   5760
      TabIndex        =   4
      Top             =   4680
      Width           =   1095
   End
   Begin VB.Label Label1 
      BackColor       =   &H00FFFFFF&
      Caption         =   "Wins"
      BeginProperty Font 
         Name            =   "Papyrus"
         Size            =   20.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   960
      TabIndex        =   3
      Top             =   4560
      Width           =   1095
   End
   Begin VB.Image imgVoid 
      Height          =   495
      Left            =   960
      Top             =   5400
      Width           =   1215
   End
   Begin VB.Label lblVictory 
      BackColor       =   &H00FFFFFF&
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "WHITEWATER"
         Size            =   27.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Index           =   1
      Left            =   6840
      TabIndex        =   2
      Top             =   4680
      Visible         =   0   'False
      Width           =   375
   End
   Begin VB.Label lblVictory 
      BackColor       =   &H00FFFFFF&
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "WHITEWATER"
         Size            =   27.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Index           =   0
      Left            =   2160
      TabIndex        =   1
      Top             =   4560
      Visible         =   0   'False
      Width           =   495
   End
   Begin VB.Label lblCounter 
      BackColor       =   &H00FFFFFF&
      Caption         =   "6"
      BeginProperty Font 
         Name            =   "WIRED"
         Size            =   36
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   975
      Left            =   4680
      TabIndex        =   0
      Top             =   1680
      Visible         =   0   'False
      Width           =   735
   End
   Begin VB.Image imgResult2 
      BorderStyle     =   1  'Fixed Single
      Height          =   495
      Left            =   6120
      Top             =   3240
      Width           =   1215
   End
   Begin VB.Image imgPaper2 
      Height          =   1080
      Left            =   8520
      Picture         =   "frmGame.frx":0000
      Top             =   1680
      Visible         =   0   'False
      Width           =   1140
   End
   Begin VB.Image imgScissor2 
      Height          =   750
      Left            =   7200
      Picture         =   "frmGame.frx":4062
      Top             =   1800
      Visible         =   0   'False
      Width           =   1140
   End
   Begin VB.Image imgRock2 
      Height          =   750
      Left            =   6120
      Picture         =   "frmGame.frx":6D2C
      Top             =   1800
      Visible         =   0   'False
      Width           =   840
   End
   Begin VB.Image imgResult 
      BorderStyle     =   1  'Fixed Single
      Height          =   495
      Left            =   1800
      Top             =   3240
      Width           =   1215
   End
   Begin VB.Image imgPaper 
      DragMode        =   1  'Automatic
      Height          =   600
      Left            =   1320
      Picture         =   "frmGame.frx":8E3E
      Stretch         =   -1  'True
      Top             =   1920
      Width           =   765
   End
   Begin VB.Image imgScissor 
      DragMode        =   1  'Automatic
      Height          =   615
      Left            =   2400
      Picture         =   "frmGame.frx":CEA0
      Stretch         =   -1  'True
      Top             =   1920
      Width           =   675
   End
   Begin VB.Image imgRock 
      DragMode        =   1  'Automatic
      Height          =   615
      Left            =   3480
      Picture         =   "frmGame.frx":FC32
      Stretch         =   -1  'True
      Top             =   1920
      Width           =   675
   End
End
Attribute VB_Name = "frmGame"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdWin_Click()
If lblVictory(0).Caption > lblVictory(1).Caption Then
 
    MsgBox ("Player Wins")
  
ElseIf lblVictory(0).Caption < lblVictory(1).Caption Then

    MsgBox ("Comp Wins")

ElseIf lblVictory(0).Caption = lblVictory(1).Caption Then

    MsgBox ("Draw")
End If
    End
End Sub

Private Sub imgResult_DragDrop(Source As Control, X As Single, Y As Single)
imgResult.Picture = Source.Picture
    
    Source.Visible = False

imgScissor.DragMode = 0
imgRock.DragMode = 0
imgPaper.DragMode = 0
End Sub

Private Sub tmrCounter_Timer()

    cmdWin.Left = -4200

If imgResult.Picture = imgScissor.Picture Or imgResult.Picture = imgPaper.Picture Or imgResult.Picture = imgRock.Picture Then
    If lblCounter.Caption >= 0 Then
        lblCounter.Visible = True
        lblCounter.Caption = lblCounter.Caption - 1
    End If
Else
    
    lblCounter.Caption = 6
    lblCounter.Visible = False
End If
    
If lblCounter.Caption = 0 Then
    
    Call comp
    lblCounter.Visible = False
  
ElseIf lblCounter.Caption = -1 Then
    
    lblCounter.Visible = False

End If

Do Until cmdWin.Left >= 10540
    DoEvents
    cmdWin.Left = cmdWin.Left + 1

Loop

End Sub
 Private Sub comp()
Dim inta As Integer

    inta = Int(Rnd * 100) Mod 3

If inta = 0 Then
    
    imgResult2.Picture = imgRock.Picture

ElseIf inta = 1 Then
     
     imgResult2.Picture = imgScissor2.Picture
 
ElseIf inta = 2 Then

    imgResult2.Picture = imgPaper2.Picture
    
End If
 End Sub

Private Sub tmrResult_Timer()
If imgResult.Picture = imgRock.Picture And imgResult2.Picture = imgScissor2.Picture Then
 'rock vs Scissor
    lblVictory(0).Visible = True
    lblVictory(0).Caption = lblVictory(0).Caption + 1
        imgResult.Picture = imgVoid.Picture
        imgResult2.Picture = imgVoid.Picture
            imgScissor.DragMode = 1
            imgRock.DragMode = 1
            imgPaper.DragMode = 1
            imgPaper.Visible = True
            imgRock.Visible = True
            imgScissor.Visible = True
        
ElseIf imgResult.Picture = imgRock.Picture And imgResult2.Picture = imgPaper2.Picture Then
  'rock vs paper
    lblVictory(1).Visible = True
    lblVictory(1).Caption = lblVictory(1).Caption + 1
       imgResult.Picture = imgVoid.Picture
       imgResult2.Picture = imgVoid.Picture
            imgScissor.DragMode = 1
            imgRock.DragMode = 1
            imgPaper.DragMode = 1
            imgPaper.Visible = True
            imgRock.Visible = True
            imgScissor.Visible = True
            
ElseIf imgResult.Picture = imgScissor.Picture And imgResult2.Picture = imgPaper2.Picture Then
  'scissor vs paper
    lblVictory(0).Visible = True
    lblVictory(0).Caption = lblVictory(0).Caption + 1
        imgResult.Picture = imgVoid.Picture
        imgResult2.Picture = imgVoid.Picture
            imgScissor.DragMode = 1
            imgRock.DragMode = 1
            imgPaper.DragMode = 1
            imgPaper.Visible = True
            imgRock.Visible = True
            imgScissor.Visible = True
                    
ElseIf imgResult.Picture = imgScissor.Picture And imgResult2.Picture = imgRock2.Picture Then
   'scissor vs rock
    lblVictory(1).Visible = True
    lblVictory(1).Caption = lblVictory(1).Caption + 1
        imgResult.Picture = imgVoid.Picture
        imgResult2.Picture = imgVoid.Picture
            imgScissor.DragMode = 1
            imgRock.DragMode = 1
            imgPaper.DragMode = 1
            imgPaper.Visible = True
            imgRock.Visible = True
            imgScissor.Visible = True
                
ElseIf imgResult.Picture = imgPaper.Picture And imgResult2.Picture = imgRock2.Picture Then
   'paper vs rock
    lblVictory(0).Visible = True
    lblVictory(0).Caption = lblVictory(0).Caption + 1
        imgResult.Picture = imgVoid.Picture
        imgResult2.Picture = imgVoid.Picture
            imgScissor.DragMode = 1
            imgRock.DragMode = 1
            imgPaper.DragMode = 1
            imgPaper.Visible = True
            imgRock.Visible = True
            imgScissor.Visible = True
                    
ElseIf imgResult.Picture = imgPaper.Picture And imgResult2.Picture = imgScissor2.Picture Then
   'paper vs scissor
    lblVictory(1).Visible = True
    lblVictory(1).Caption = lblVictory(1).Caption + 1
       imgResult.Picture = imgVoid.Picture
       imgResult2.Picture = imgVoid.Picture
            imgScissor.DragMode = 1
            imgRock.DragMode = 1
            imgPaper.DragMode = 1
            imgPaper.Visible = True
            imgRock.Visible = True
            imgScissor.Visible = True
            
ElseIf imgResult.Picture = imgPaper.Picture And imgResult2.Picture = imgPaper2.Picture Then
   'paper vs paper
    imgResult.Picture = imgVoid.Picture
    imgResult2.Picture = imgVoid.Picture
        imgScissor.DragMode = 1
        imgRock.DragMode = 1
        imgPaper.DragMode = 1
        imgPaper.Visible = True
        
ElseIf imgResult.Picture = imgRock.Picture And imgResult2.Picture = imgRock2.Picture Then
   'Rock vs Rock
    imgResult.Picture = imgVoid.Picture
    imgResult2.Picture = imgVoid.Picture
        imgScissor.DragMode = 1
        imgRock.DragMode = 1
        imgPaper.DragMode = 1
        imgRock.Visible = True

ElseIf imgResult.Picture = imgScissor.Picture And imgResult2.Picture = imgScissor2.Picture Then
   'scissor vs scissor
    imgResult.Picture = imgVoid.Picture
    imgResult2.Picture = imgVoid.Picture
        imgScissor.DragMode = 1
        imgRock.DragMode = 1
        imgPaper.DragMode = 1
        imgScissor.Visible = True
End If


If lblVictory(0).Caption > lblVictory(1).Caption Then
 
    cmdWin.Caption = "Player Wins"
  
ElseIf lblVictory(0).Caption < lblVictory(1).Caption Then

    cmdWin.Caption = "Comp Wins"

ElseIf lblVictory(0).Caption = lblVictory(1).Caption Then

    cmdWin.Caption = "Draw"
End If
End Sub

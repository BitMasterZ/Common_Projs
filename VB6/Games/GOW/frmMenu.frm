VERSION 5.00
Begin VB.Form frmMenu 
   AutoRedraw      =   -1  'True
   BorderStyle     =   0  'None
   Caption         =   "Form1"
   ClientHeight    =   8085
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   10170
   Icon            =   "frmMenu.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Picture         =   "frmMenu.frx":0ECA
   ScaleHeight     =   8085
   ScaleWidth      =   10170
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame fmeLoad 
      BorderStyle     =   0  'None
      Caption         =   "Frame1"
      Height          =   6495
      Left            =   10200
      TabIndex        =   4
      Top             =   600
      Width           =   9015
      Begin VB.PictureBox picBack2 
         AutoSize        =   -1  'True
         BorderStyle     =   0  'None
         Height          =   6750
         Left            =   0
         Picture         =   "frmMenu.frx":10CCC8
         ScaleHeight     =   6750
         ScaleWidth      =   9000
         TabIndex        =   5
         Top             =   0
         Width           =   9000
         Begin VB.Label lblOpt 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "Delete"
            BeginProperty Font 
               Name            =   "Blackadder ITC"
               Size            =   26.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00FFFFFF&
            Height          =   675
            Index           =   3
            Left            =   5160
            TabIndex        =   14
            Top             =   120
            Width           =   1200
         End
         Begin VB.Label lblOpt 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "Return"
            BeginProperty Font 
               Name            =   "Blackadder ITC"
               Size            =   26.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00FFFFFF&
            Height          =   675
            Index           =   2
            Left            =   6840
            TabIndex        =   13
            Top             =   120
            Width           =   1395
         End
         Begin VB.Label lblSave 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   14.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00FFFFFF&
            Height          =   360
            Index           =   6
            Left            =   6360
            TabIndex        =   12
            Top             =   3840
            Width           =   60
         End
         Begin VB.Label lblSave 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   14.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00FFFFFF&
            Height          =   360
            Index           =   5
            Left            =   3120
            TabIndex        =   11
            Top             =   3840
            Width           =   60
         End
         Begin VB.Label lblSave 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   14.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00FFFFFF&
            Height          =   360
            Index           =   4
            Left            =   0
            TabIndex        =   10
            Top             =   3840
            Width           =   60
         End
         Begin VB.Label lblSave 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   14.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00FFFFFF&
            Height          =   360
            Index           =   3
            Left            =   6360
            TabIndex        =   9
            Top             =   960
            Width           =   60
         End
         Begin VB.Label lblSave 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   14.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00FFFFFF&
            Height          =   360
            Index           =   2
            Left            =   3120
            TabIndex        =   8
            Top             =   960
            Width           =   60
         End
         Begin VB.Label lblSave 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   14.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00FFFFFF&
            Height          =   360
            Index           =   1
            Left            =   0
            TabIndex        =   7
            Top             =   960
            Width           =   60
         End
         Begin VB.Label lblHead 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "Save Files"
            BeginProperty Font 
               Name            =   "Century Gothic"
               Size            =   36
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00FFFFFF&
            Height          =   870
            Index           =   2
            Left            =   0
            TabIndex        =   6
            Top             =   0
            Width           =   3330
         End
      End
   End
   Begin VB.Frame fmeMain 
      BorderStyle     =   0  'None
      Caption         =   "Frame1"
      Height          =   6255
      Left            =   720
      TabIndex        =   0
      Top             =   600
      Width           =   7815
      Begin VB.PictureBox picBack 
         AutoSize        =   -1  'True
         BorderStyle     =   0  'None
         Height          =   8100
         Left            =   0
         Picture         =   "frmMenu.frx":12B435
         ScaleHeight     =   8100
         ScaleWidth      =   8100
         TabIndex        =   1
         Top             =   0
         Width           =   8100
         Begin VB.Label lblOpt 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "QUIT"
            BeginProperty Font 
               Name            =   "Copperplate Gothic Light"
               Size            =   29.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00FFFFFF&
            Height          =   630
            Index           =   5
            Left            =   3360
            TabIndex        =   16
            Top             =   3360
            Width           =   1560
         End
         Begin VB.Label lblOpt 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "Instructions"
            BeginProperty Font 
               Name            =   "Blackadder ITC"
               Size            =   29.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00FFFFFF&
            Height          =   750
            Index           =   4
            Left            =   2760
            TabIndex        =   15
            Top             =   0
            Width           =   2595
         End
         Begin VB.Label lblOpt 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "Load Game"
            BeginProperty Font 
               Name            =   "Blackadder ITC"
               Size            =   29.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00FFFFFF&
            Height          =   750
            Index           =   1
            Left            =   4320
            TabIndex        =   3
            Top             =   960
            Width           =   2475
         End
         Begin VB.Label lblOpt 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "New Game"
            BeginProperty Font 
               Name            =   "Blackadder ITC"
               Size            =   29.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00FFFFFF&
            Height          =   750
            Index           =   0
            Left            =   1560
            TabIndex        =   2
            Top             =   960
            Width           =   2370
         End
      End
   End
End
Attribute VB_Name = "frmMenu"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'O
'Date: 6th June 2012

Option Explicit
Dim intC As Integer
Dim strVerify(1 To 6) As String, strLines(1 To 6, 1 To 6) As String

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
'Exit Program
    If KeyCode = 27 Then End
End Sub

Private Sub Form_Load()
'Default Positions
    lblSave(3).Left = lblSave(3).Left - 120
    lblSave(6).Left = lblSave(6).Left - 120
    lblSave(1).Left = lblSave(1).Left + 120
    lblSave(4).Left = lblSave(4).Left + 120
End Sub

Private Sub lblOpt_Click(Index As Integer)

Select Case Index
    Case 0 'New Game
     'Intial values
        MJump = 15
        Jumps = 2
        MHealth = 500
        Lvl = 1
     'Redirect to loading screen
        frmLoad.Show
        Unload Me

    Case 1 'Load Game
    'Shift Display
        Do Until fmeLoad.Left <= 720
            fmeLoad.Left = fmeLoad.Left - 70
            fmeMain.Left = fmeMain.Left - 70
            DoEvents
        Loop
    'Load files
        Call Loader

    Case 2 'Return
    'Shift Display
        Do Until fmeMain.Left >= 720
            fmeLoad.Left = fmeLoad.Left + 70
            fmeMain.Left = fmeMain.Left + 70
            DoEvents
        Loop

    Case 3 'Delete File
    On Error GoTo Handler:
        Dim FileN As String
    'Number limited to range
        Do Until IsNumeric(FileN) = True And ((Val(FileN) >= 1 And Val(FileN) <= 6) Or Val(FileN) = 0)
            FileN = InputBox("Delete File #(1- 6)[0 to exit]")
            
        Loop
    'Destroy File
        Kill (App.Path & "\GOW" & FileN & ".dat")
        lblSave(FileN).Caption = "Empty Slot " & FileN
        
    Case 4 'Instructions
        frmControls.Show
        
    Case 5 ' Quit
        End
    
End Select

Exit Sub

Handler:

    MsgBox ("The File you wish to delete does not exist")

End Sub

Private Sub lblSave_Click(Index As Integer)
If lblSave(Index).Caption = "Empty Slot " & Index Or lblSave(Index).Caption = "Corrupt File" Then Exit Sub 'Invalid File

'Assign Values
    Jumps = Val(strLines(2, Index))
    MJump = Val(strLines(3, Index))
    MHealth = Val(strLines(5, Index))
    Sword = CBool(strLines(6, Index))
'Load  a file
    Lvl = Val(strLines(1, Index))
'Loading Screen
    frmLoad.Show
    Unload Me
End Sub

Private Sub lblSave_MouseMove(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
    lblSave(Index).ForeColor = vbCyan
    lblSave(Index).BorderStyle = 1
End Sub

Private Sub picBack_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)

For intC = lblOpt.LBound To lblOpt.UBound
    
    lblOpt(intC).ForeColor = vbWhite

Next intC

End Sub


Private Sub picBack2_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
'Rest colours
    lblOpt(2).ForeColor = vbWhite
    lblOpt(3).ForeColor = vbWhite

    For intC = lblSave.LBound To lblSave.UBound
        lblSave(intC).ForeColor = vbWhite
        lblSave(intC).BorderStyle = 0
    Next intC
    
End Sub
Private Sub lblOpt_MouseMove(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
    lblOpt(Index).ForeColor = vbRed
    lblOpt(Index).FontBold = Not lblOpt(Index).FontBold
End Sub

Private Sub Loader()
On Error Resume Next ' Continue loading other files if one does not exist

Dim intFileNum As Integer
Const File As String = "GOW"


intFileNum = FreeFile


For intC = 1 To 6 ' Max 6 save files
'Open File
    Open App.Path & "\" & File & intC & ".dat" For Input As intFileNum
     'Input Data
        Input #intFileNum, strVerify(intC)
        Input #intFileNum, strLines(1, intC)
        Input #intFileNum, strLines(2, intC)
        Input #intFileNum, strLines(3, intC)
        Input #intFileNum, strLines(5, intC)
        Input #intFileNum, strLines(6, intC)
    
    Close #intFileNum

Next intC

'Show in Label
    Call Display
End Sub


Private Sub Display()

For intC = 1 To 6
'Check if file was corrupted
Dim StrSword As String


    If strVerify(intC) = "****GOW:SaveFile****" Then ' Verified
        
        StrSword = IIf(strLines(6, intC) = "#TRUE#", "Unlocked", "Locked")
        
        lblSave(intC).Caption = "Level: " & strLines(1, intC) & vbCrLf & "# of Jumps: " & strLines(2, intC) & vbCrLf & _
                                "Jump Height: " & strLines(3, intC) & vbCrLf & "Health: " & strLines(5, intC) & vbCrLf & _
                                "Sword: " & StrSword
                                
    ElseIf strVerify(intC) = "" Then
        
        lblSave(intC).Caption = "Empty Slot " & intC
    
    Else

        lblSave(intC).Caption = "Corrupt File"
    
    End If

Next intC
End Sub

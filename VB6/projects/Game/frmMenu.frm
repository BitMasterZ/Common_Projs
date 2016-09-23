VERSION 5.00
Object = "{6BF52A50-394A-11D3-B153-00C04F79FAA6}#1.0#0"; "wmp.dll"
Begin VB.Form frmMenu 
   BorderStyle     =   3  'Fixed Dialog
   ClientHeight    =   9465
   ClientLeft      =   255
   ClientTop       =   1410
   ClientWidth     =   10680
   ClipControls    =   0   'False
   ControlBox      =   0   'False
   BeginProperty Font 
      Name            =   "OCR A Extended"
      Size            =   15.75
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   Icon            =   "frmMenu.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   9465
   ScaleWidth      =   10680
   StartUpPosition =   2  'CenterScreen
   Begin VB.PictureBox picFiles 
      BackColor       =   &H00000000&
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   5055
      Left            =   2400
      Picture         =   "frmMenu.frx":1CFA
      ScaleHeight     =   323.301
      ScaleMode       =   0  'User
      ScaleWidth      =   397
      TabIndex        =   7
      Top             =   1920
      Visible         =   0   'False
      Width           =   6015
      Begin VB.CommandButton cmdLoad 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Load"
         Height          =   495
         Left            =   120
         Picture         =   "frmMenu.frx":7799C
         Style           =   1  'Graphical
         TabIndex        =   11
         Top             =   4440
         Width           =   1935
      End
      Begin VB.ListBox lstFiles 
         Appearance      =   0  'Flat
         BackColor       =   &H00C0FFFF&
         Height          =   3480
         Left            =   120
         TabIndex        =   10
         Top             =   960
         Width           =   5775
      End
      Begin VB.CommandButton cmdFileExit 
         BackColor       =   &H00004080&
         Caption         =   "X"
         Height          =   375
         Left            =   5520
         Style           =   1  'Graphical
         TabIndex        =   9
         Top             =   120
         Width           =   375
      End
      Begin VB.CommandButton cmdDelete 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Delete"
         Height          =   495
         Left            =   2040
         Picture         =   "frmMenu.frx":ADD63
         Style           =   1  'Graphical
         TabIndex        =   8
         Top             =   4440
         Width           =   1935
      End
      Begin VB.Label lblSave 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Save Files"
         BeginProperty Font 
            Name            =   "Agency FB"
            Size            =   36
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000000FF&
         Height          =   870
         Left            =   1815
         TabIndex        =   12
         Top             =   0
         Width           =   2295
      End
   End
   Begin VB.Timer tmrLooper 
      Interval        =   1
      Left            =   4800
      Top             =   4440
   End
   Begin VB.PictureBox Picture2 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   0
      Picture         =   "frmMenu.frx":E412A
      ScaleHeight     =   795
      ScaleWidth      =   10635
      TabIndex        =   3
      Top             =   0
      Width           =   10695
      Begin VB.Label lblTitle 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Death Craft"
         BeginProperty Font 
            Name            =   "Algerian"
            Size            =   48
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   1065
         Left            =   2160
         TabIndex        =   4
         Top             =   -120
         Width           =   6270
      End
   End
   Begin VB.PictureBox Picture1 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   0
      Picture         =   "frmMenu.frx":1A3A55
      ScaleHeight     =   795
      ScaleWidth      =   10635
      TabIndex        =   1
      Top             =   8640
      Width           =   10695
      Begin VB.Label lblOpts 
         AutoSize        =   -1  'True
         BackColor       =   &H00400000&
         BackStyle       =   0  'Transparent
         Caption         =   "Quit"
         BeginProperty Font 
            Name            =   "Papyrus"
            Size            =   24
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   765
         Index           =   3
         Left            =   8640
         TabIndex        =   13
         Top             =   0
         Width           =   1080
      End
      Begin VB.Label lblOpts 
         AutoSize        =   -1  'True
         BackColor       =   &H00400000&
         BackStyle       =   0  'Transparent
         Caption         =   "Options"
         BeginProperty Font 
            Name            =   "Papyrus"
            Size            =   24
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   765
         Index           =   2
         Left            =   6000
         TabIndex        =   6
         Top             =   0
         Width           =   1845
      End
      Begin VB.Label lblOpts 
         AutoSize        =   -1  'True
         BackColor       =   &H00400000&
         BackStyle       =   0  'Transparent
         Caption         =   "Load Game"
         BeginProperty Font 
            Name            =   "Papyrus"
            Size            =   24
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   765
         Index           =   1
         Left            =   2880
         TabIndex        =   5
         Top             =   0
         Width           =   2550
      End
      Begin VB.Label lblOpts 
         AutoSize        =   -1  'True
         BackColor       =   &H00400000&
         BackStyle       =   0  'Transparent
         Caption         =   "New Game"
         BeginProperty Font 
            Name            =   "Papyrus"
            Size            =   24
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   765
         Index           =   0
         Left            =   0
         TabIndex        =   2
         Top             =   0
         Width           =   2400
      End
   End
   Begin WMPLibCtl.WindowsMediaPlayer wmpVideo 
      Height          =   8655
      Left            =   -120
      TabIndex        =   0
      Top             =   840
      Width           =   15255
      URL             =   ""
      rate            =   1
      balance         =   0
      currentPosition =   0
      defaultFrame    =   ""
      playCount       =   1
      autoStart       =   -1  'True
      currentMarker   =   0
      invokeURLs      =   -1  'True
      baseURL         =   ""
      volume          =   50
      mute            =   0   'False
      uiMode          =   "full"
      stretchToFit    =   0   'False
      windowlessVideo =   0   'False
      enabled         =   -1  'True
      enableContextMenu=   -1  'True
      fullScreen      =   0   'False
      SAMIStyle       =   ""
      SAMILang        =   ""
      SAMIFilename    =   ""
      captioningID    =   ""
      enableErrorDialogs=   0   'False
      _cx             =   26908
      _cy             =   15266
   End
End
Attribute VB_Name = "frmMenu"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Option Explicit
Dim C As Integer

Private Sub cmdFileExit_Click()
picFiles.Visible = False
wmpVideo.URL = App.Path & "\" & "video.wmv"
End Sub

Private Sub Form_Load()
        Player.AttackType = 1
        SkillSet(12).Learned = True
        SkillSet(12).Level = 1
        
        wmpVideo.URL = App.Path & "\" & "video.wmv"
        If App.PrevInstance = True Then
            MsgBox ("This program is already running in another window")
            End
        End If
            
End Sub


Private Sub lblOpts_Click(Index As Integer)

Select Case Index
    
    Case 0
        Player.Name = InputBox("Enter the name of your character")
        If Trim(Player.Name) = "" Then Exit Sub
        
        Call Player.Create(100, 100, 25, 36, "Warrior")
        Call Player.SecondarySpecs(5, 0, 0, 0, 1000, 100, 300)
        frmTown.Show
        Unload Me
    
    Case 1
        wmpVideo.Close
        picFiles.Visible = True
        Call ListFiles(lstFiles)
        
    Case 3
        End
        
End Select

End Sub

Private Sub lblOpts_MouseMove(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
For C = 0 To lblOpts.UBound
    lblOpts(C).BackStyle = 0
Next C
    lblOpts(Index).BackStyle = 1

End Sub


Private Sub tmrLooper_Timer()
If LCase(wmpVideo.Status) = "stopped" Then
    wmpVideo.URL = App.Path & "\" & "video.wmv"
End If
End Sub
Private Sub cmdDelete_Click()
If lstFiles.ListIndex <= 0 Then Exit Sub
    Call Delete(lstFiles.ListIndex)
    Call ListFiles(lstFiles)
End Sub
Private Sub cmdLoad_Click()
If lstFiles.ListIndex <= 0 Then Exit Sub
    Call Player.Create(100, 100, 25, 36, "Warrior")
    Call Loader(lstFiles.ListIndex)
    Unload Me
End Sub


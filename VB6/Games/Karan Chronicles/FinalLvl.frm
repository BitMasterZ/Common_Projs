VERSION 5.00
Begin VB.Form FinalLvl 
   AutoRedraw      =   -1  'True
   BorderStyle     =   0  'None
   Caption         =   "Form1"
   ClientHeight    =   11010
   ClientLeft      =   495
   ClientTop       =   495
   ClientWidth     =   20895
   Icon            =   "FinalLvl.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Picture         =   "FinalLvl.frx":8032
   ScaleHeight     =   734
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   1393
   ShowInTaskbar   =   0   'False
   Begin VB.Frame shpWall 
      BackColor       =   &H000000FF&
      BorderStyle     =   0  'None
      Caption         =   "Frame1"
      Height          =   2175
      Index           =   6
      Left            =   15120
      TabIndex        =   36
      Top             =   960
      Visible         =   0   'False
      Width           =   1695
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Firewall"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   18
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   540
         Index           =   6
         Left            =   120
         TabIndex        =   37
         Top             =   960
         Width           =   2055
      End
   End
   Begin VB.Frame shpWall 
      BackColor       =   &H000000FF&
      BorderStyle     =   0  'None
      Caption         =   "Frame1"
      Height          =   1215
      Index           =   5
      Left            =   0
      TabIndex        =   32
      Top             =   -120
      Visible         =   0   'False
      Width           =   7935
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Firewall"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   18
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   540
         Index           =   5
         Left            =   2880
         TabIndex        =   33
         Top             =   480
         Width           =   2055
      End
   End
   Begin VB.Frame shpWall 
      BackColor       =   &H000000FF&
      BorderStyle     =   0  'None
      Caption         =   "Frame1"
      Height          =   975
      Index           =   4
      Left            =   10320
      TabIndex        =   30
      Top             =   0
      Visible         =   0   'False
      Width           =   7815
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Firewall"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   18
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   540
         Index           =   4
         Left            =   3360
         TabIndex        =   31
         Top             =   360
         Width           =   2055
      End
   End
   Begin VB.Frame shpWall 
      BackColor       =   &H000000FF&
      BorderStyle     =   0  'None
      Caption         =   "Frame1"
      Height          =   2415
      Index           =   3
      Left            =   16800
      TabIndex        =   28
      Top             =   8640
      Visible         =   0   'False
      Width           =   1695
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Firewall"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   18
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   540
         Index           =   3
         Left            =   120
         TabIndex        =   29
         Top             =   960
         Width           =   2055
      End
   End
   Begin VB.Frame shpWall 
      BackColor       =   &H000000FF&
      BorderStyle     =   0  'None
      Caption         =   "Frame1"
      Height          =   2415
      Index           =   2
      Left            =   12840
      TabIndex        =   26
      Top             =   8640
      Visible         =   0   'False
      Width           =   1695
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Firewall"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   18
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   540
         Index           =   2
         Left            =   120
         TabIndex        =   27
         Top             =   960
         Width           =   2055
      End
   End
   Begin VB.Frame shpWall 
      BackColor       =   &H000000FF&
      BorderStyle     =   0  'None
      Caption         =   "Frame1"
      Height          =   9975
      Index           =   1
      Left            =   -120
      TabIndex        =   24
      Top             =   1080
      Width           =   255
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Firewall"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   18
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   540
         Index           =   1
         Left            =   120
         TabIndex        =   25
         Top             =   4560
         Width           =   2055
      End
   End
   Begin VB.Frame shpWall 
      BackColor       =   &H000000FF&
      BorderStyle     =   0  'None
      Caption         =   "Frame1"
      Height          =   375
      Index           =   0
      Left            =   6480
      TabIndex        =   14
      Top             =   -120
      Width           =   3135
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Firewall"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   18
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   540
         Index           =   0
         Left            =   840
         TabIndex        =   15
         Top             =   0
         Width           =   2055
      End
   End
   Begin VB.PictureBox picSprite 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      ForeColor       =   &H80000008&
      Height          =   1650
      Index           =   3
      Left            =   7440
      Picture         =   "FinalLvl.frx":3A1F74
      ScaleHeight     =   108
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   628
      TabIndex        =   13
      Top             =   2880
      Visible         =   0   'False
      Width           =   9450
   End
   Begin VB.Timer Movie 
      Interval        =   1
      Left            =   15720
      Top             =   6960
   End
   Begin VB.PictureBox picSprite 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      ForeColor       =   &H80000008&
      Height          =   1680
      Index           =   4
      Left            =   4440
      Picture         =   "FinalLvl.frx":3D3A86
      ScaleHeight     =   110
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   461
      TabIndex        =   12
      Top             =   4080
      Visible         =   0   'False
      Width           =   6945
   End
   Begin VB.PictureBox picMask 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      ForeColor       =   &H80000008&
      Height          =   1860
      Index           =   4
      Left            =   8160
      Picture         =   "FinalLvl.frx":3F8D78
      ScaleHeight     =   122
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   460
      TabIndex        =   11
      Top             =   3240
      Visible         =   0   'False
      Width           =   6930
   End
   Begin VB.PictureBox picSprite 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      ForeColor       =   &H80000008&
      Height          =   1575
      Index           =   0
      Left            =   4800
      Picture         =   "FinalLvl.frx":421F62
      ScaleHeight     =   103
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   817
      TabIndex        =   6
      Top             =   2400
      Visible         =   0   'False
      Width           =   12285
   End
   Begin VB.Timer tmrMove 
      Interval        =   1
      Left            =   11520
      Top             =   720
   End
   Begin VB.PictureBox picMask 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      ForeColor       =   &H80000008&
      Height          =   1575
      Index           =   0
      Left            =   5160
      Picture         =   "FinalLvl.frx":45FA30
      ScaleHeight     =   103
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   817
      TabIndex        =   5
      Top             =   1080
      Visible         =   0   'False
      Width           =   12285
   End
   Begin VB.PictureBox picSprite 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      ForeColor       =   &H80000008&
      Height          =   2235
      Index           =   1
      Left            =   7920
      Picture         =   "FinalLvl.frx":49D4FE
      ScaleHeight     =   147
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   628
      TabIndex        =   4
      Top             =   2280
      Visible         =   0   'False
      Width           =   9450
   End
   Begin VB.PictureBox picMask 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      ForeColor       =   &H80000008&
      Height          =   2250
      Index           =   1
      Left            =   9120
      Picture         =   "FinalLvl.frx":4E0F14
      ScaleHeight     =   148
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   628
      TabIndex        =   3
      Top             =   2760
      Visible         =   0   'False
      Width           =   9450
   End
   Begin VB.PictureBox picSprite 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      ForeColor       =   &H80000008&
      Height          =   1980
      Index           =   2
      Left            =   3360
      Picture         =   "FinalLvl.frx":525086
      ScaleHeight     =   130
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   1032
      TabIndex        =   2
      Top             =   2280
      Visible         =   0   'False
      Width           =   15510
   End
   Begin VB.PictureBox picMask 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      ForeColor       =   &H80000008&
      Height          =   1980
      Index           =   2
      Left            =   4200
      Picture         =   "FinalLvl.frx":5874F8
      ScaleHeight     =   130
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   1030
      TabIndex        =   1
      Top             =   3120
      Visible         =   0   'False
      Width           =   15480
   End
   Begin VB.PictureBox picMask 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      ForeColor       =   &H80000008&
      Height          =   1650
      Index           =   3
      Left            =   9360
      Picture         =   "FinalLvl.frx":5E9762
      ScaleHeight     =   108
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   628
      TabIndex        =   0
      Top             =   3360
      Visible         =   0   'False
      Width           =   9450
   End
   Begin VB.Label Label4 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Exit"
      BeginProperty Font 
         Name            =   "Rosewood Std Regular"
         Size            =   24
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   555
      Left            =   18960
      TabIndex        =   35
      Top             =   8040
      Width           =   960
   End
   Begin VB.Shape shpExit 
      FillColor       =   &H00FFFFFF&
      FillStyle       =   0  'Solid
      Height          =   2415
      Left            =   18720
      Top             =   8520
      Width           =   1455
   End
   Begin VB.Label Label3 
      BackStyle       =   0  'Transparent
      Caption         =   "Shut down Firewall"
      BeginProperty Font 
         Name            =   "Rosewood Std Regular"
         Size            =   24
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000080FF&
      Height          =   1275
      Left            =   18360
      TabIndex        =   34
      Top             =   0
      Visible         =   0   'False
      Width           =   2460
   End
   Begin VB.Image Shut 
      Height          =   1800
      Left            =   18840
      Picture         =   "FinalLvl.frx":61B274
      Stretch         =   -1  'True
      Top             =   1080
      Visible         =   0   'False
      Width           =   1455
   End
   Begin VB.Label Mess 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Label3"
      BeginProperty Font 
         Name            =   "Orator Std"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      Index           =   7
      Left            =   3240
      TabIndex        =   23
      Top             =   7440
      Visible         =   0   'False
      Width           =   900
   End
   Begin VB.Image Bubble 
      Height          =   3000
      Index           =   7
      Left            =   2880
      Picture         =   "FinalLvl.frx":640336
      Stretch         =   -1  'True
      Top             =   6960
      Visible         =   0   'False
      Width           =   4500
   End
   Begin VB.Label Mess 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Label3"
      BeginProperty Font 
         Name            =   "Orator Std"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      Index           =   6
      Left            =   10200
      TabIndex        =   22
      Top             =   7200
      Visible         =   0   'False
      Width           =   900
   End
   Begin VB.Image Bubble 
      Height          =   3000
      Index           =   6
      Left            =   9240
      Picture         =   "FinalLvl.frx":640DEE
      Stretch         =   -1  'True
      Top             =   6720
      Visible         =   0   'False
      Width           =   4650
   End
   Begin VB.Label Mess 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Label3"
      BeginProperty Font 
         Name            =   "Orator Std"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      Index           =   5
      Left            =   3240
      TabIndex        =   21
      Top             =   7440
      Visible         =   0   'False
      Width           =   900
   End
   Begin VB.Image Bubble 
      Height          =   3000
      Index           =   5
      Left            =   2880
      Picture         =   "FinalLvl.frx":64187E
      Stretch         =   -1  'True
      Top             =   6960
      Visible         =   0   'False
      Width           =   4500
   End
   Begin VB.Label Mess 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Label3"
      BeginProperty Font 
         Name            =   "Orator Std"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      Index           =   4
      Left            =   10200
      TabIndex        =   20
      Top             =   7200
      Visible         =   0   'False
      Width           =   900
   End
   Begin VB.Image Bubble 
      Height          =   3000
      Index           =   4
      Left            =   9240
      Picture         =   "FinalLvl.frx":642336
      Stretch         =   -1  'True
      Top             =   6720
      Visible         =   0   'False
      Width           =   4650
   End
   Begin VB.Label Mess 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Label3"
      BeginProperty Font 
         Name            =   "Orator Std"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      Index           =   3
      Left            =   3240
      TabIndex        =   19
      Top             =   7440
      Visible         =   0   'False
      Width           =   900
   End
   Begin VB.Image Bubble 
      Height          =   3000
      Index           =   3
      Left            =   2880
      Picture         =   "FinalLvl.frx":642DC6
      Stretch         =   -1  'True
      Top             =   6960
      Visible         =   0   'False
      Width           =   4500
   End
   Begin VB.Label Mess 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Label3"
      BeginProperty Font 
         Name            =   "Orator Std"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      Index           =   2
      Left            =   10200
      TabIndex        =   18
      Top             =   7200
      Visible         =   0   'False
      Width           =   900
   End
   Begin VB.Image Bubble 
      Height          =   3000
      Index           =   2
      Left            =   9240
      Picture         =   "FinalLvl.frx":64387E
      Stretch         =   -1  'True
      Top             =   6720
      Visible         =   0   'False
      Width           =   4650
   End
   Begin VB.Label Mess 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Label3"
      BeginProperty Font 
         Name            =   "Orator Std"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      Index           =   1
      Left            =   3240
      TabIndex        =   17
      Top             =   7440
      Visible         =   0   'False
      Width           =   900
   End
   Begin VB.Image Bubble 
      Height          =   3000
      Index           =   1
      Left            =   2880
      Picture         =   "FinalLvl.frx":64430E
      Stretch         =   -1  'True
      Top             =   6960
      Visible         =   0   'False
      Width           =   4500
   End
   Begin VB.Label Mess 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Label3"
      BeginProperty Font 
         Name            =   "Orator Std"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      Index           =   0
      Left            =   10200
      TabIndex        =   16
      Top             =   7200
      Visible         =   0   'False
      Width           =   900
   End
   Begin VB.Image Bubble 
      Height          =   3000
      Index           =   0
      Left            =   9240
      Picture         =   "FinalLvl.frx":644DC6
      Stretch         =   -1  'True
      Top             =   6720
      Visible         =   0   'False
      Width           =   4650
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "End"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   330
      Left            =   5160
      TabIndex        =   10
      Top             =   6600
      Width           =   675
   End
   Begin VB.Label lblGround 
      BackStyle       =   0  'Transparent
      Height          =   255
      Index           =   5
      Left            =   15120
      TabIndex        =   9
      Top             =   8760
      Width           =   1335
   End
   Begin VB.Label lblGround 
      BackStyle       =   0  'Transparent
      Height          =   255
      Index           =   7
      Left            =   17760
      TabIndex        =   8
      Top             =   8760
      Width           =   1095
   End
   Begin VB.Label lblGround 
      BackStyle       =   0  'Transparent
      Height          =   375
      Index           =   8
      Left            =   16080
      TabIndex        =   7
      Top             =   9720
      Width           =   855
   End
End
Attribute VB_Name = "Finallvl"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim W(0 To 20) As Integer, H(0 To 20) As Integer '10 movement positions
Dim intFrame(0 To 20) As Integer 'bitblt frames
Dim LeftPos As Integer, TopPos As Integer
Dim A As Integer 'Index for bitblt
Dim Spare As Long, Q As Integer 'for arrays and spacing
Dim blnPress As Boolean 'TO prevent keydown procedure from repeating
Dim Index As Integer 'Collison
Dim moveX(0 To 20) As Integer 'moving speed
Dim T As Long 'for arrays
Dim Caller As Boolean, Win As Boolean
Dim Enemy(1 To 2) As Single
Dim Scene As Boolean
Dim Counter As Integer, subCounter As Integer
Dim Msgs(0 To 200) As String, Exchange As Integer
Dim Fire As Boolean




Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
If Scene = True Then Exit Sub
If Win = True Then Exit Sub
Select Case KeyCode
'Reiatsu charge
    Case vbKeyDown
        If blnPress = True Then Exit Sub 'pressed more than once
        blnPress = True
        
        Call Charge

'left/right movement
    Case vbKeyRight
        Call Movement(1)

    Case vbKeyLeft
        Call Movement(-1)

'Fly and fall
    Case vbKeyUp
        If blnPress = True Then Exit Sub
        blnPress = True

        Call Fly
        
'Position form
    Case vbKeyW
        Me.Top = Me.Top - 50
    Case vbKeyE
        Me.Left = Me.Left - 50

'Win
    Case vbKeyR
     'display
        MsgBox "You win"
        TopPos = 600
        LeftPos = 0
        Win = True
    'Redirect
        Finish.Show
        Unload Me

    Case vbKeyS
        Me.AutoRedraw = Not Me.AutoRedraw
        
        Case 27
    End

End Select
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer)
If Scene = True Then Exit Sub
If Win = True Then Exit Sub
Select Case KeyCode

    Case vbKeyDown 'cancel charge

        Do Until intFrame(1) = 0
        'Delay
            DoEvents
            For Spare = -1000000 To 1000000
            Next Spare
            For Spare = -1000000 To 1000000
            Next Spare
            Debug.Print "Charge"
            
        'return to normal pos
            intFrame(1) = intFrame(1) - 1
        Loop
End Select

End Sub

Private Sub Form_Load()
'Defaults
    'Dimensions
        W(1) = 100
        H(1) = 135
        
        W(4) = 36 * 2.5
        H(4) = 45 * 2.5 - 11
        W(0) = 145 / 1.1 + 2
        H(0) = 100 / 1.1

        W(2) = 143
        H(2) = 120
        
        W(3) = 50
        shpWall(0).Top = -shpWall(0).Height
        H(3) = 96

    For Spare = 0 To 10
        
        moveX(Spare) = 30
    intFrame(4) = 4
    Next Spare
    Enemy(2) = 610
    Enemy(1) = Me.ScaleWidth
    Q = 5 'Spacing
    moveX(1) = 20
    TopPos = 640
    Call Dialogues
Scene = True
End Sub



Private Sub Label1_Click()
    End
End Sub


Private Sub Movie_Timer()
shpWall(0).Left = Enemy(1) - shpWall(0).Width / 4

Counter = Counter + 1
Cls
Print Counter
Mess(Exchange).Caption = Msgs(Exchange)


'bitblt function
    bitblt Me.hDC, LeftPos, TopPos, W(A), H(A), picMask(A).hDC, _
        intFrame(A) * W(A) + 4, 2 + Q, SRCAND
    bitblt Me.hDC, LeftPos, TopPos, W(A), H(A), picSprite(A).hDC, _
        intFrame(A) * W(A) + 4, 2 + Q, SRCINVERT
        
    bitblt Me.hDC, Enemy(1), Enemy(2), W(4), H(4), picMask(4).hDC, _
        intFrame(4) * W(4) + 2, 2 + Q, SRCAND
    bitblt Me.hDC, Enemy(1), Enemy(2), W(4), H(A), picSprite(4).hDC, _
        intFrame(4) * W(4) + 2, 2 + Q, SRCINVERT


If Counter < 40 Then
        intFrame(0) = intFrame(0) + 1
        If intFrame(0) = 6 Then intFrame(0) = 0
        LeftPos = LeftPos + 10

ElseIf Counter > 40 And Counter < 115 Then
Enemy(1) = Enemy(1) - 10
'First
ElseIf Counter > 115 And Counter < 200 Then

Bubble(Exchange).Visible = True
Mess(Exchange).Visible = True

ElseIf Counter > 200 And Counter < 202 Then
    Bubble(Exchange).Visible = False
    Mess(Exchange).Visible = False
    Exchange = Exchange + 1

'Second
ElseIf Counter > 202 And Counter < 250 Then

Bubble(Exchange).Visible = True
Mess(Exchange).Visible = True

ElseIf Counter > 200 And Counter < 202 Then
    Bubble(Exchange).Visible = False
    Mess(Exchange).Visible = False
    Exchange = Exchange + 1

'Third
ElseIf Counter > 252 And Counter < 300 Then

Bubble(Exchange).Visible = True
Mess(Exchange).Visible = True

ElseIf Counter > 300 And Counter < 302 Then
    Bubble(Exchange).Visible = False
    Mess(Exchange).Visible = False
    Exchange = Exchange + 1

'Fourth
ElseIf Counter > 302 And Counter < 350 Then

Bubble(Exchange).Visible = True
Mess(Exchange).Visible = True

ElseIf Counter > 350 And Counter < 352 Then
    Bubble(Exchange).Visible = False
    Mess(Exchange).Visible = False
    Exchange = Exchange + 1

'Fifith
ElseIf Counter > 352 And Counter < 400 Then

Bubble(Exchange).Visible = True
Mess(Exchange).Visible = True

ElseIf Counter > 400 And Counter < 402 Then
    Bubble(Exchange).Visible = False
    Mess(Exchange).Visible = False
    Exchange = Exchange + 1

'sixth
ElseIf Counter > 402 And Counter < 500 Then

Bubble(Exchange).Visible = True
Mess(Exchange).Visible = True

ElseIf Counter > 500 And Counter < 502 Then
    Bubble(Exchange).Visible = False
    Mess(Exchange).Visible = False
    Exchange = Exchange + 1

'Kill attempt
ElseIf Counter > 500 And Counter < 550 Then
    subCounter = subCounter + 1
    If subCounter = 10 Then
    intFrame(4) = intFrame(4) - 1
    subCounter = 0
    End If
    
'Enemy dead
ElseIf Counter > 555 And Counter < 600 Then
    shpWall(0).Top = shpWall(0).Top + 30

    If shpWall(0).Top + shpWall(0).Height >= Enemy(2) Then Enemy(2) = shpWall(0).Top + shpWall(0).Height

ElseIf Counter > 600 And Counter < 602 Then
T = MsgBox("Threat too great, shutting down computer", vbCritical, "Firewall")

ElseIf Counter > 602 And Counter < 650 Then

Bubble(Exchange).Visible = True
Mess(Exchange).Visible = True

ElseIf Counter > 650 And Counter < 652 Then
    Bubble(Exchange).Visible = False
    Mess(Exchange).Visible = False

ElseIf Counter > 653 Then
    
    Scene = False
    Movie.Enabled = False

End If


End Sub

Private Sub tmrmove_Timer()
If Scene = True Then Exit Sub
If Win = True Then Exit Sub

Cls
'bitblt function
    bitblt Me.hDC, LeftPos, TopPos, W(A), H(A), picMask(A).hDC, _
        intFrame(A) * W(A) + 4, 2 + Q, SRCAND
    bitblt Me.hDC, LeftPos, TopPos, W(A), H(A), picSprite(A).hDC, _
        intFrame(A) * W(A) + 4, 2 + Q, SRCINVERT
        
    bitblt Me.hDC, Enemy(1), Enemy(2), W(4), H(4), picMask(4).hDC, _
        intFrame(4) * W(4) + 2, 2 + Q, SRCAND
    bitblt Me.hDC, Enemy(1), Enemy(2), W(4), H(A), picSprite(4).hDC, _
        intFrame(4) * W(4) + 2, 2 + Q, SRCINVERT
        
If Caller = True Then 'Dead
    bitblt Me.hDC, LeftPos + W(A) / 3, TopPos - 10, W(3), H(3), picMask(3).hDC, _
        intFrame(3) * W(3) + 4, 2, SRCAND
    bitblt Me.hDC, LeftPos + W(A) / 3, TopPos - 10, W(3), H(3), picSprite(3).hDC, _
        intFrame(3) * W(3) + 4, 2, SRCINVERT
    
    If intFrame(3) < 7 Then
        intFrame(3) = intFrame(3) + 1
    Else
        
        MsgBox "Karan died"
    'Reset Position
        TopPos = 600
        LeftPos = shpWall(1).Left + shpWall(1).Width + 10
        intFrame(3) = 0
    
        Caller = False
            
    End If
End If
     
    Call FWmove
     Call Coll
     
If LeftPos > Me.ScaleWidth - 50 Then
Me.Left = Me.Left - 100
LeftPos = LeftPos - 100
End If
End Sub

Private Sub Charge()
If Scene = True Then Exit Sub
If Win = True Then Exit Sub

'Position and display
    TopPos = 580
    A = 1
    
Debug.Print "Charge sub"

Do Until intFrame(1) = 5
'Delay
    
    For Spare = -1000000 To 1000000
    Next Spare
    For Spare = -1000000 To 1000000
    Next Spare
    Debug.Print
    DoEvents

'Event
    intFrame(1) = intFrame(1) + 1
Loop

blnPress = False
End Sub

Private Sub Movement(W As Integer)
If Scene = True Then Exit Sub

If Win = True Then Exit Sub
Debug.Print "Movement"



Select Case W
    Case 1 'Right
        If A <> 2 Then ' If not flying or falling
            A = 0
            TopPos = 641
        End If

        intFrame(0) = intFrame(0) + 1
        If intFrame(0) = 6 Then intFrame(0) = 0
        LeftPos = LeftPos + 10

    Case -1 'Left
        If A <> 2 Then
            A = 0
            TopPos = 641
        End If

        intFrame(0) = intFrame(0) - 1
        If intFrame(0) < 0 Then intFrame(0) = 5
        LeftPos = LeftPos - 10
End Select
End Sub

Private Sub Fly()
If Scene = True Then Exit Sub

If Win = True Then Exit Sub

'Position
    A = 2
    Q = 3
    TopPos = 605

Do Until intFrame(2) = 3
Debug.Print "Fly"
'Delay
    
    For Spare = -2000000 To 2000000
    Next Spare
    For Spare = -2000000 To 2000000
    Next Spare
    For Spare = -2000000 To 2000000
    Next Spare
    
    DoEvents

'Event
    
    intFrame(2) = intFrame(2) + 1
Loop

Do Until TopPos <= 0

'Delay
    
    For Spare = -50000 To 50000
    Next Spare
    DoEvents

'Events
    intFrame(2) = intFrame(2) + 1
    If intFrame(2) > 6 Then intFrame(2) = 3
    TopPos = TopPos - 9
Loop

Call Fall
End Sub

Private Sub Fall()
If Scene = True Then Exit Sub

If Win = True Then Exit Sub

Do Until TopPos >= 605

'Delay
    
    For Spare = -100000 To 100000
    Next Spare
    
    DoEvents
    If Win = True Then Exit Sub
    
'Events
    intFrame(2) = intFrame(2) - 1
    If intFrame(2) < 3 Then intFrame(2) = 6
    TopPos = TopPos + 6
Debug.Print "fall"
Loop

Do Until intFrame(2) = 0
If Win = True Then Exit Sub
    
'Delay
     
    For Spare = -2000000 To 2000000
    Next Spare
    For Spare = -2000000 To 2000000
    Next Spare
    For Spare = -2000000 To 2000000
    Next Spare
    DoEvents

'Events
    intFrame(2) = intFrame(2) - 1
Loop

blnPress = False

End Sub

Private Sub Coll()
If Scene = True Then Exit Sub

If Win = True Then Exit Sub

Debug.Print "Coll"

For Spare = 0 To shpWall.UBound

    If TopPos + H(A) > shpWall(Spare).Top + shpWall(Spare).Height / 4 And TopPos < shpWall(Spare).Top + shpWall(Spare).Height - H(A) / 4 Then
        If LeftPos + W(A) > shpWall(Spare).Left + shpWall(Spare).Width / 4 And LeftPos < shpWall(Spare).Left + shpWall(Spare).Width - H(A) / 4 Then

            If Caller = True Then Exit Sub
            Caller = True
  
        End If
    End If
Next Spare

If TopPos + H(A) > Shut.Top + Shut.Height / 1.5 And TopPos < Shut.Top + Shut.Height - H(A) / 1.5 Then
    If LeftPos + W(A) > Shut.Left + Shut.Width / 1.5 And LeftPos < Shut.Left + Shut.Width - H(A) / 1.5 Then
Fire = True
End If
End If

If TopPos + H(A) > shpExit.Top + shpExit.Height / 1.5 And TopPos < shpExit.Top + shpExit.Height - H(A) / 1.5 Then
    If LeftPos + W(A) > shpExit.Left + shpExit.Width / 1.5 And LeftPos < shpExit.Left + shpExit.Width - H(A) / 1.5 Then

If Fire = False Then
MsgBox "Shut down the firewall first"
Exit Sub
End If

    Call Form_KeyDown(vbKeyR, A)
    Win = True
   
    End If
End If


End Sub

    
Private Sub FWmove()
If Scene = True Then Exit Sub
If Win = True Then Exit Sub

If Fire = True Then

For Spare = 0 To shpWall.UBound
shpWall(Spare).Left = -20000
Next Spare
Label3.Visible = False
Shut.Visible = False
Exit Sub
End If


For Spare = 2 To shpWall.UBound
shpWall(Spare).Visible = True
Next Spare
Label3.Visible = True
Shut.Visible = True
shpWall(1).Left = shpWall(1).Left + 3
End Sub


Private Sub Dialogues()
For Spare = 0 To Mess.UBound
Mess(Spare).ForeColor = vbRed
Next Spare

Msgs(0) = "Who are you? " & vbCrLf & "Do you know how to get" & vbCrLf & " out of here?"
Msgs(1) = "You must be that " & vbCrLf & " hacker who triggered" & vbCrLf & "  the firewall." & vbCrLf & "How are you here?"
Msgs(2) = "I was trying to gain" & vbCrLf & " access to your network" & vbCrLf & "and suddenly got pulled " & vbCrLf & "   into the computer"
Msgs(3) = "The firewall switch " & vbCrLf & "is just ahead!!" & vbCrLf & "lets get out of here"
Msgs(4) = "I don't need your help" & vbCrLf & " anymore"
Msgs(5) = "Damnit!!!!"


End Sub

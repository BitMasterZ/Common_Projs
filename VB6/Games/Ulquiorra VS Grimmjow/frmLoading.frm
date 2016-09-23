VERSION 5.00
Begin VB.Form frmLoading 
   AutoRedraw      =   -1  'True
   BackColor       =   &H00000000&
   BorderStyle     =   3  'Fixed Dialog
   ClientHeight    =   5220
   ClientLeft      =   255
   ClientTop       =   1410
   ClientWidth     =   9465
   ClipControls    =   0   'False
   ControlBox      =   0   'False
   ForeColor       =   &H00C0C0C0&
   Icon            =   "frmLoading.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Picture         =   "frmLoading.frx":000C
   ScaleHeight     =   348
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   631
   StartUpPosition =   2  'CenterScreen
   Begin VB.Timer tmrLoad 
      Interval        =   5000
      Left            =   7800
      Top             =   3120
   End
   Begin VB.PictureBox picSprite 
      AutoRedraw      =   -1  'True
      Height          =   1575
      Left            =   600
      Picture         =   "frmLoading.frx":C0CAE
      ScaleHeight     =   101
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   557
      TabIndex        =   1
      Top             =   3720
      Visible         =   0   'False
      Width           =   8415
   End
   Begin VB.PictureBox picMask 
      AutoRedraw      =   -1  'True
      Height          =   1455
      Left            =   720
      Picture         =   "frmLoading.frx":ED00C
      ScaleHeight     =   93
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   557
      TabIndex        =   0
      Top             =   3720
      Visible         =   0   'False
      Width           =   8415
   End
   Begin VB.Timer tmrEffects 
      Interval        =   300
      Left            =   8880
      Top             =   480
   End
   Begin VB.Label lblHead 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Loading"
      BeginProperty Font 
         Name            =   "OCR A Extended"
         Size            =   24
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   525
      Left            =   2760
      TabIndex        =   3
      Top             =   2520
      Width           =   1995
   End
   Begin VB.Label lblTips 
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "Arial Narrow"
         Size            =   20.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000040C0&
      Height          =   1935
      Left            =   1320
      TabIndex        =   2
      Top             =   240
      Width           =   7335
   End
End
Attribute VB_Name = "frmLoading"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

'Shows hints and tips for game while showing loading animation
Option Explicit
Const imgW As Integer = 77, imgH As Integer = 120 'Dimensions for Loading Sprites
Dim Spare As Long ' Used in For loops
Dim LoadTime As Integer 'Randomized load time
Dim intFrame As Integer 'Bitblt frame counter
Dim Counter As Integer ' Counts to load time
Dim strTips(0 To 14) As String 'Tips and hints
Dim RTips As Integer 'Random Tips Index
Dim StrPass As String 'Password to skip form

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
'Allows user to skip form if they enter the correct password
    StrPass = StrPass + Chr(KeyCode)
'Check Password
    If StrPass = "START IT" Then Counter = LoadTime
'Reset Password for retry
    If KeyCode = 13 Then StrPass = ""
End Sub

Private Sub Form_Load()

If App.PrevInstance = True Then
MsgBox "Already open"
End
End If


'Random Load time for form
    Randomize
    LoadTime = Int(Rnd * 2) + 3

'Tips and Hints
    strTips(0) = "The Blue bar represents Grimmjow's health and the Green bar represents Ulquiorra's health"
    strTips(1) = "The Cyan bar is the Reiatsu. It is required for special, final and cero attacks as well as speed boosts"
    strTips(2) = "Crouching and Transforming increase resistance to damage"
    strTips(3) = "Transformations are used mainly for defense. Using them disables any other moves"
    strTips(4) = "Ulquiorra can teleport back and forth between his last position and Grimmjow"
    strTips(5) = "Grimmjow's Ceros are faster than Ulquiorra's but are less damaging"
    strTips(6) = "Ulquiorra automatically regenerates health while charging Reiatsu"
    strTips(7) = "Ulquiorra's transformation is disabled after Grimmjow's final attack"
    strTips(8) = "To view the score goto Main / Scores"
    strTips(9) = "To exit the game goto Main / Exit"
    strTips(10) = "To view the controls goto Main / Controls "
    strTips(11) = "To view the scores from the last played game goto Main/ Previous"
    strTips(12) = "Crouching while jumping will cancel the jump"
    strTips(13) = "For Grimmjow, pressing Z while running jumping increases dash speed but also consumes Reiatsu"
    strTips(14) = "Light and Heavy Attacks increase Reiatsu when they hit your opponent"

'Display
lblTips.Caption = strTips(RTips)

End Sub





Private Sub tmrEffects_Timer()
Cls
'Randomize tips
    Randomize
    RTips = Int(Rnd * 14)

'Bitblt Effects
    bitblt Me.hDC, 400, lblHead.Top, imgW, imgH, picMask.hDC, _
            intFrame * imgW + 2, 3, SRCAND
    bitblt Me.hDC, 400, lblHead.Top, imgW, imgH, picSprite.hDC, _
            intFrame * imgW + 2, 3, SRCINVERT

    bitblt Me.hDC, lblHead.Left - imgW - 5, lblHead.Top, imgW, imgH, picMask.hDC, _
        intFrame * imgW + 2, 3, SRCAND
    bitblt Me.hDC, lblHead.Left - imgW - 5, lblHead.Top, imgW, imgH, picSprite.hDC, _
        intFrame * imgW + 2, 3, SRCINVERT

'Reset Frames
    If intFrame = 0 Then
    'Delay
        For Spare = -10000 To 10000
        Next
        
        intFrame = 6

        End If

'Frame change
    intFrame = intFrame - 1

'Loading Effect
    lblHead.Caption = lblHead.Caption + "."
    
    If lblHead.Caption = "Loading......" Then lblHead.Caption = "Loading"

End Sub

Private Sub tmrLoad_Timer()
'Show tips
    lblTips.Caption = strTips(RTips)

'Load Counter
    Counter = Counter + 1

'If Loaded
    If Counter >= LoadTime Then

        Game.Show
        Unload Me

    End If
End Sub


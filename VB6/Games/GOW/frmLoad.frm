VERSION 5.00
Begin VB.Form frmLoad 
   BorderStyle     =   3  'Fixed Dialog
   ClientHeight    =   5580
   ClientLeft      =   255
   ClientTop       =   1410
   ClientWidth     =   10950
   ClipControls    =   0   'False
   ControlBox      =   0   'False
   Icon            =   "frmLoad.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Picture         =   "frmLoad.frx":0ECA
   ScaleHeight     =   372
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   730
   StartUpPosition =   2  'CenterScreen
   Begin VB.PictureBox sLoad 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1980
      Left            =   840
      Picture         =   "frmLoad.frx":F087
      ScaleHeight     =   128
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   128
      TabIndex        =   3
      Top             =   840
      Visible         =   0   'False
      Width           =   1980
   End
   Begin VB.Timer tmrLoad 
      Interval        =   1000
      Left            =   8760
      Top             =   2280
   End
   Begin VB.Timer tmrEffects 
      Interval        =   80
      Left            =   8760
      Top             =   3240
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   " W"
      BeginProperty Font 
         Name            =   "Symbol"
         Size            =   200.25
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   4065
      Left            =   2880
      TabIndex        =   2
      Top             =   240
      Width           =   4080
   End
   Begin VB.Label lblLoad 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Loading....."
      BeginProperty Font 
         Name            =   "Agency FB"
         Size            =   36
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   870
      Left            =   3840
      TabIndex        =   1
      Top             =   4320
      Width           =   2445
   End
   Begin VB.Label lblTips 
      BackStyle       =   0  'Transparent
      Caption         =   "Label1"
      BeginProperty Font 
         Name            =   "Agency FB"
         Size            =   20.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   1395
      Left            =   2640
      TabIndex        =   0
      Top             =   120
      Width           =   6240
   End
End
Attribute VB_Name = "frmLoad"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'O
'Date: 6th June 2012
Option Explicit

Dim BytG As Byte, BytB As Byte 'Colours
Dim intC As Integer, strTips(1 To 7) As String, intCounter As Integer
Dim intFrameX As Integer, intFrameY As Integer 'Bitblt Frames


Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
'Goto game
    If KeyCode = 27 Then intCounter = 25
End Sub

Private Sub Form_Load()
'Default Values
    BytG = 255
    BytB = 255
    intC = 10

    strTips(1) = "Upgrades can be unlocked by opening chests."
    strTips(2) = "Each level can be skipped by a cheat code which can be unlocked by finsihing the game"
    strTips(3) = "The controls can be viewed anytime using Game/ Controls"
    strTips(4) = "To quit goto Game/Quit"
    strTips(5) = "Levels and upgrades can be saved when exiting the game"
    strTips(6) = "There is a limit of 6 save files. After the limit is reached, you have the option to overwrite any of those files when saving"
    strTips(7) = "Levels are completed by opening doors "

'Intial Caption
    lblTips.Caption = strTips(1)

End Sub



Private Sub tmrEffects_Timer()
Cls

'Turn colour red/white
    BytG = BytG - intC
    BytB = BytB - intC
    lblLoad.ForeColor = RGB(255, BytG, BytB)
'Increase/ Decrease font size
    lblLoad.FontSize = lblLoad.FontSize + intC / 15

    If BytG - intC < 0 Or BytG - intC > 255 Then intC = -intC

'Coin turn bitblt
    bitblt Me.hDC, Me.ScaleWidth / 2 - 21, Me.ScaleHeight / 2 - 41, 42, 42, sLoad.hDC, _
        intFrameX * 42, intFrameY * 42, SRCPAINT
        
    bitblt Me.hDC, Me.ScaleWidth / 2 - 21, Me.ScaleHeight / 2 - 41, 42, 42, sLoad.hDC, _
        intFrameX * 42, intFrameY * 42, SRCINVERT
 
    bitblt Me.hDC, Me.ScaleWidth / 2 - 21, Me.ScaleHeight / 2, 42, 42, sLoad.hDC, _
        intFrameX * 42, intFrameY * 42, SRCPAINT
        
    bitblt Me.hDC, Me.ScaleWidth / 2 - 21, Me.ScaleHeight / 2, 42, 42, sLoad.hDC, _
        intFrameX * 42, intFrameY * 42, SRCINVERT

'Frame Change
    intFrameX = intFrameX + 1

'Frame reset
    If intFrameX > 2 Then
        intFrameX = 0
        intFrameY = intFrameY + 1
    End If
    If intFrameY > 2 Then intFrameY = 0
End Sub

Private Sub tmrLoad_Timer()

intCounter = intCounter + 1

If intCounter = 15 Then MsgBox ("To skip the loading next time press Esc")

'Show Hints/ tips
    If intCounter Mod 4 = 0 Then 'Multiple of 5
        Dim RTip As Integer
        Randomize
        RTip = Int(Rnd * 100) Mod 7 + 1
        lblTips.Caption = strTips(RTip)
    End If
    
'Loading complete
    If intCounter > 15 Then
    
        Select Case Lvl 'Global Var
            Case 1
                frmLvl1.Show

            Case 2
                frmLvl2.Show

            Case 3
                frmLvl3.Show

            Case 4
                frmLvl4.Show
                
            Case 5
                frmLvl5.Show
            
            Case 6
                frmLvl6.Show

        End Select

        Unload Me
    End If
End Sub

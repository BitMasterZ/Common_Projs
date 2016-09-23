VERSION 5.00
Begin VB.Form frmLvl6 
   AutoRedraw      =   -1  'True
   BorderStyle     =   0  'None
   ClientHeight    =   10140
   ClientLeft      =   120
   ClientTop       =   420
   ClientWidth     =   18195
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   Picture         =   "frmLvl6.frx":0000
   ScaleHeight     =   676
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   1213
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.PictureBox MKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1050
      Index           =   1
      Left            =   2520
      Picture         =   "frmLvl6.frx":BF92B
      ScaleHeight     =   66
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   58
      TabIndex        =   13
      Top             =   2400
      Visible         =   0   'False
      Width           =   930
   End
   Begin VB.PictureBox SKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1050
      Index           =   1
      Left            =   2160
      Picture         =   "frmLvl6.frx":C0388
      ScaleHeight     =   66
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   58
      TabIndex        =   12
      Top             =   3000
      Visible         =   0   'False
      Width           =   930
   End
   Begin VB.Frame fmeWall 
      BackColor       =   &H00000000&
      BorderStyle     =   0  'None
      Caption         =   "Frame1"
      Height          =   7455
      Index           =   7
      Left            =   17400
      TabIndex        =   11
      Top             =   2640
      Width           =   375
   End
   Begin VB.Frame fmeWall 
      BackColor       =   &H00000000&
      BorderStyle     =   0  'None
      Caption         =   "Frame1"
      Height          =   1575
      Index           =   6
      Left            =   17400
      TabIndex        =   10
      Top             =   0
      Width           =   375
   End
   Begin VB.Frame fmeWall 
      BackColor       =   &H00000000&
      BorderStyle     =   0  'None
      Caption         =   "Frame1"
      Height          =   1695
      Index           =   5
      Left            =   12600
      TabIndex        =   9
      Top             =   8400
      Width           =   375
   End
   Begin VB.Frame fmeWall 
      BackColor       =   &H00000000&
      BorderStyle     =   0  'None
      Caption         =   "Frame1"
      Height          =   6615
      Index           =   4
      Left            =   12600
      TabIndex        =   8
      Top             =   0
      Width           =   375
   End
   Begin VB.Frame fmeWall 
      BackColor       =   &H00000000&
      BorderStyle     =   0  'None
      Caption         =   "Frame1"
      Height          =   1695
      Index           =   3
      Left            =   8160
      TabIndex        =   7
      Top             =   0
      Width           =   375
   End
   Begin VB.Frame fmeWall 
      BackColor       =   &H00000000&
      BorderStyle     =   0  'None
      Caption         =   "Frame1"
      Height          =   6975
      Index           =   2
      Left            =   8160
      TabIndex        =   6
      Top             =   3240
      Width           =   375
   End
   Begin VB.Frame fmeWall 
      BackColor       =   &H00000000&
      BorderStyle     =   0  'None
      Caption         =   "Frame1"
      Height          =   3375
      Index           =   1
      Left            =   4200
      TabIndex        =   5
      Top             =   6720
      Width           =   375
   End
   Begin VB.Frame fmeWall 
      BackColor       =   &H00000000&
      BorderStyle     =   0  'None
      Caption         =   "Frame1"
      Height          =   3975
      Index           =   0
      Left            =   4200
      TabIndex        =   4
      Top             =   0
      Width           =   375
   End
   Begin VB.PictureBox sFire 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1695
      Left            =   5520
      Picture         =   "frmLvl6.frx":C0DCC
      ScaleHeight     =   109
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   424
      TabIndex        =   3
      Top             =   2760
      Visible         =   0   'False
      Width           =   6420
   End
   Begin VB.PictureBox mFire 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1695
      Left            =   6120
      Picture         =   "frmLvl6.frx":C3BC5
      ScaleHeight     =   109
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   424
      TabIndex        =   2
      Top             =   3240
      Visible         =   0   'False
      Width           =   6420
   End
   Begin VB.Timer tmrKratos 
      Interval        =   1
      Left            =   14520
      Top             =   6960
   End
   Begin VB.Timer tmrAnimate 
      Interval        =   1
      Left            =   16680
      Top             =   5520
   End
   Begin VB.PictureBox MKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   960
      Index           =   0
      Left            =   12360
      Picture         =   "frmLvl6.frx":C6A52
      ScaleHeight     =   60
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   77
      TabIndex        =   1
      Top             =   2880
      Visible         =   0   'False
      Width           =   1215
   End
   Begin VB.PictureBox SKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   960
      Index           =   0
      Left            =   9720
      Picture         =   "frmLvl6.frx":C82AA
      ScaleHeight     =   60
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   77
      TabIndex        =   0
      Top             =   720
      Visible         =   0   'False
      Width           =   1215
   End
   Begin VB.Menu mnuGame 
      Caption         =   "Game"
      Begin VB.Menu mnuQuit 
         Caption         =   "Quit"
      End
      Begin VB.Menu mnuControl 
         Caption         =   "Controls"
      End
      Begin VB.Menu mnuGoal 
         Caption         =   "Objective"
      End
   End
End
Attribute VB_Name = "frmLvl6"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Dim Kratos As Person, Fire(1 To 4) As Obj     ' User Defined Types
Dim blnOver As Boolean, intC As Integer, sngYpos As Single
Const sngGravity As Single = 2


Private Sub mnuGoal_Click()
MsgBox ("Level 6 Objective: Go to the end without falling or hitting the walls" & vbCrLf & "Hint: You will rise when above a fire, slow down and move back using the left arrow key and speed up using the right arrow key")
End Sub


Private Sub Form_Load()
If blnOver = True Then Exit Sub

'Bit blit Dimensions
    
    Kratos.sngWid(0) = 106
    Kratos.sngHei(0) = 70
    
    Kratos.sngWid(1) = 50
    Kratos.sngHei(1) = 60
'Object Dimensions
  
 For intC = 1 To 4
    Fire(intC).sngWid = 110
    Fire(intC).sngHei = 110
    Fire(intC).sngY = Me.ScaleHeight - Fire(intC).sngHei
    Fire(intC).sngX = intC * 300 - 200
 Next intC
  
Call mnuGoal_Click
  
End Sub

Private Sub mnuControl_Click()
'Show Controls
    frmControls.Show
    Lvl = 6
'Pause game
    tmrKratos.Interval = 0
    tmrAnimate.Interval = 0
End Sub

Private Sub mnuQuit_Click()
Dim intQuit As Integer
'Quit Game?
    intQuit = MsgBox("Do you wish to quit", vbOKCancel + vbQuestion, "Exit game")
'No
    If intQuit = vbCancel Then Exit Sub
'Save?
    Call Save
'Quit
    blnOver = True
    frmending2.Show
    Unload Me
End Sub


Private Sub tmrAnimate_Timer()
If blnOver = True Then Exit Sub

Cls

'Glide towards ground
 Kratos.sngX = Kratos.sngX + 3
 Kratos.sngY = Kratos.sngY + sngGravity

'Bitblt

   
    'Kratos
        bitblt Me.hDC, Kratos.sngX, Kratos.sngY, Kratos.sngWid(Kratos.PicNum), Kratos.sngHei(Kratos.PicNum), MKratos(Kratos.PicNum).hDC, _
            Kratos.intFx(Kratos.PicNum) * Kratos.sngWid(Kratos.PicNum), Kratos.intFy(Kratos.PicNum) * Kratos.sngHei(Kratos.PicNum), SRCAND

        bitblt Me.hDC, Kratos.sngX, Kratos.sngY, Kratos.sngWid(Kratos.PicNum), Kratos.sngHei(Kratos.PicNum), SKratos(Kratos.PicNum).hDC, _
            Kratos.intFx(Kratos.PicNum) * Kratos.sngWid(Kratos.PicNum), Kratos.intFy(Kratos.PicNum) * Kratos.sngHei(Kratos.PicNum), SRCINVERT


For intC = 1 To 4
    'Fire
        bitblt Me.hDC, Fire(intC).sngX, Fire(intC).sngY, Fire(intC).sngWid, Fire(intC).sngHei, mFire.hDC, _
            Fire(intC).sngWid * Fire(intC).intFx, 0, SRCAND

        bitblt Me.hDC, Fire(intC).sngX, Fire(intC).sngY, Fire(intC).sngWid, Fire(intC).sngHei, sFire.hDC, _
            Fire(intC).sngWid * Fire(intC).intFx, 0, SRCINVERT
            
            
            Fire(intC).intFx = Fire(intC).intFx + 1
            Sleep (5)
            If Fire(intC).intFx > 3 Then Fire(intC).intFx = 0
            

Next intC
'Death Condition
    If Kratos.sngY > Me.ScaleHeight Then
        MsgBox ("You are dead")
        Call Save
        blnOver = True
        frmending2.Show
        Unload Me
    End If

    If Kratos.sngX > Me.ScaleWidth Then
        frmEnding1.Show
        blnOver = True
        Unload Me
    End If

Call Rise

'Collision with walls
    For intC = fmeWall.LBound To fmeWall.UBound
        If Kratos.sngY + Kratos.sngHei(Kratos.PicNum) - 25 >= fmeWall(intC).Top And _
            Kratos.sngY + 25 <= fmeWall(intC).Top + fmeWall(intC).Height And _
            Kratos.sngX + Kratos.sngWid(Kratos.PicNum) - 30 > fmeWall(intC).Left And _
            Kratos.sngX < fmeWall(intC).Left + fmeWall(intC).Width Then
       
            Call Dead
        End If
    Next intC

End Sub

Private Sub Save()
On Error GoTo Handler
Dim intSave As Integer, strFileN As String
Dim intC As Integer, intFileNum As Integer
Const File As String = "GOW"

'Svae File
    intSave = MsgBox("Do you wish to save", vbYesNo + vbInformation, "Save")
    'No
        If intSave = vbNo Then Exit Sub

'Check for exisitng save files
    intFileNum = FreeFile
    For intC = 1 To 6
        Open App.Path & "\" & File & intC & ".dat" For Input As intFileNum
        Close #intFileNum
    Next intC

'Already 6 save files , Replace
    Do Until IsNumeric(strFileN) = True And ((Val(strFileN) >= 1 And Val(strFileN) <= 6) Or Val(strFileN) = 0)
        strFileN = InputBox("Overwrite File #(1- 6)[0 to exit]")
    Loop

    intC = Val(strFileN)
    GoTo Handler


Exit Sub

Handler:
'Save File

Open App.Path & "\" & File & intC & ".dat" For Output As intFileNum
    Write #intFileNum, "****GOW:SaveFile****"
    Write #intFileNum, "6"
    Write #intFileNum, Jumps
    Write #intFileNum, MJump
    Write #intFileNum, MHealth
    Write #intFileNum, Sword
Close #intFileNum



End Sub

Private Sub tmrKratos_Timer()

If blnOver = True Then Exit Sub

'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''Right''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
If GetAsyncKeyState(vbKeyRight) Then

    Kratos.sngX = Kratos.sngX + 2
    
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''Left'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

ElseIf GetAsyncKeyState(vbKeyLeft) Then
   
    Kratos.sngX = Kratos.sngX - 2


'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''View Objective'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

ElseIf GetAsyncKeyState(vbKeyO) Then
    Call mnuGoal_Click

End If

End Sub

Private Sub Rise()

For intC = 1 To 4
'On top of fire
    If Kratos.sngX + Kratos.sngWid(0) > Fire(intC).sngX + 50 And Kratos.sngX < Fire(intC).sngX + Fire(intC).sngWid Then

        If Kratos.sngY > 100 Then Kratos.sngY = Kratos.sngY - 6
        Exit Sub

    End If

Next intC

End Sub

Private Sub Dead()
Do Until Kratos.sngY > Me.ScaleHeight
 
    Kratos.PicNum = 1
 
    Kratos.sngY = Kratos.sngY + 15
 
    Cls
        'Kratos
            bitblt Me.hDC, Kratos.sngX, Kratos.sngY, Kratos.sngWid(Kratos.PicNum), Kratos.sngHei(Kratos.PicNum), MKratos(Kratos.PicNum).hDC, _
                Kratos.intFx(Kratos.PicNum) * Kratos.sngWid(Kratos.PicNum), Kratos.intFy(Kratos.PicNum) * Kratos.sngHei(Kratos.PicNum), SRCAND

            bitblt Me.hDC, Kratos.sngX, Kratos.sngY, Kratos.sngWid(Kratos.PicNum), Kratos.sngHei(Kratos.PicNum), SKratos(Kratos.PicNum).hDC, _
                Kratos.intFx(Kratos.PicNum) * Kratos.sngWid(Kratos.PicNum), Kratos.intFy(Kratos.PicNum) * Kratos.sngHei(Kratos.PicNum), SRCINVERT


    For intC = 1 To 4
        'Fire
            bitblt Me.hDC, Fire(intC).sngX, Fire(intC).sngY, Fire(intC).sngWid, Fire(intC).sngHei, mFire.hDC, _
                Fire(intC).sngWid * Fire(intC).intFx, 0, SRCAND

            bitblt Me.hDC, Fire(intC).sngX, Fire(intC).sngY, Fire(intC).sngWid, Fire(intC).sngHei, sFire.hDC, _
                Fire(intC).sngWid * Fire(intC).intFx, 0, SRCINVERT
            
        'Frame change
            Fire(intC).intFx = Fire(intC).intFx + 1
            Sleep (5)
            If Fire(intC).intFx > 3 Then Fire(intC).intFx = 0
            
    Next intC
'Delay
    DoEvents
    Sleep (50)
Loop

    MsgBox ("You are dead")
    Call Save
    blnOver = True
    frmending2.Show
    Unload Me

End Sub


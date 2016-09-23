VERSION 5.00
Begin VB.Form Form1 
   AutoRedraw      =   -1  'True
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Mike's VB6 raycaster demo"
   ClientHeight    =   7215
   ClientLeft      =   150
   ClientTop       =   435
   ClientWidth     =   9615
   ControlBox      =   0   'False
   BeginProperty Font 
      Name            =   "Courier New"
      Size            =   12
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   FontTransparent =   0   'False
   Icon            =   "vbrc.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   7215
   ScaleWidth      =   9615
   StartUpPosition =   2  'CenterScreen
   Begin VB.PictureBox texfile 
      AutoRedraw      =   -1  'True
      Height          =   1095
      Index           =   0
      Left            =   12120
      ScaleHeight     =   69
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   69
      TabIndex        =   21
      Top             =   5040
      Width           =   1095
   End
   Begin VB.Timer starttimer 
      Interval        =   500
      Left            =   7920
      Top             =   1920
   End
   Begin VB.PictureBox tex 
      AutoRedraw      =   -1  'True
      Height          =   1095
      Index           =   16
      Left            =   12840
      Picture         =   "vbrc.frx":0442
      ScaleHeight     =   69
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   69
      TabIndex        =   19
      Top             =   2280
      Width           =   1095
   End
   Begin VB.PictureBox tex 
      AutoRedraw      =   -1  'True
      Height          =   1095
      Index           =   15
      Left            =   12720
      Picture         =   "vbrc.frx":3484
      ScaleHeight     =   69
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   69
      TabIndex        =   18
      Top             =   2160
      Width           =   1095
   End
   Begin VB.PictureBox tex 
      AutoRedraw      =   -1  'True
      Height          =   1095
      Index           =   14
      Left            =   12600
      Picture         =   "vbrc.frx":64C6
      ScaleHeight     =   69
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   69
      TabIndex        =   17
      Top             =   2040
      Width           =   1095
   End
   Begin VB.PictureBox tex 
      AutoRedraw      =   -1  'True
      Height          =   1095
      Index           =   13
      Left            =   12480
      Picture         =   "vbrc.frx":9508
      ScaleHeight     =   69
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   69
      TabIndex        =   16
      Top             =   1920
      Width           =   1095
   End
   Begin VB.PictureBox tex 
      AutoRedraw      =   -1  'True
      Height          =   1095
      Index           =   12
      Left            =   12360
      Picture         =   "vbrc.frx":C54A
      ScaleHeight     =   69
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   69
      TabIndex        =   15
      Top             =   1800
      Width           =   1095
   End
   Begin VB.PictureBox tex 
      AutoRedraw      =   -1  'True
      Height          =   1095
      Index           =   11
      Left            =   12240
      Picture         =   "vbrc.frx":F58C
      ScaleHeight     =   69
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   69
      TabIndex        =   14
      Top             =   1680
      Width           =   1095
   End
   Begin VB.PictureBox tex 
      AutoRedraw      =   -1  'True
      Height          =   1095
      Index           =   10
      Left            =   12120
      Picture         =   "vbrc.frx":125CE
      ScaleHeight     =   69
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   69
      TabIndex        =   13
      Top             =   1560
      Width           =   1095
   End
   Begin VB.PictureBox tex 
      AutoRedraw      =   -1  'True
      Height          =   1095
      Index           =   9
      Left            =   12000
      Picture         =   "vbrc.frx":15610
      ScaleHeight     =   69
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   69
      TabIndex        =   12
      Top             =   1440
      Width           =   1095
   End
   Begin VB.PictureBox tex 
      AutoRedraw      =   -1  'True
      Height          =   1095
      Index           =   8
      Left            =   11880
      Picture         =   "vbrc.frx":18652
      ScaleHeight     =   69
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   69
      TabIndex        =   11
      Top             =   1320
      Width           =   1095
   End
   Begin VB.PictureBox tex 
      AutoRedraw      =   -1  'True
      Height          =   1095
      Index           =   7
      Left            =   11760
      Picture         =   "vbrc.frx":1B694
      ScaleHeight     =   69
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   69
      TabIndex        =   10
      Top             =   1080
      Width           =   1095
   End
   Begin VB.PictureBox tex 
      AutoRedraw      =   -1  'True
      Height          =   1095
      Index           =   6
      Left            =   11640
      Picture         =   "vbrc.frx":1E6D6
      ScaleHeight     =   69
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   69
      TabIndex        =   9
      Top             =   960
      Width           =   1095
   End
   Begin VB.PictureBox tex 
      AutoRedraw      =   -1  'True
      Height          =   1095
      Index           =   5
      Left            =   11520
      Picture         =   "vbrc.frx":21718
      ScaleHeight     =   69
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   69
      TabIndex        =   8
      Top             =   840
      Width           =   1095
   End
   Begin VB.PictureBox tex 
      AutoRedraw      =   -1  'True
      Height          =   1095
      Index           =   0
      Left            =   12360
      ScaleHeight     =   69
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   69
      TabIndex        =   7
      Top             =   3720
      Width           =   1095
   End
   Begin VB.PictureBox tex 
      AutoRedraw      =   -1  'True
      Height          =   1095
      Index           =   4
      Left            =   11400
      Picture         =   "vbrc.frx":2475A
      ScaleHeight     =   69
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   69
      TabIndex        =   6
      Top             =   720
      Width           =   1095
   End
   Begin VB.PictureBox tex 
      AutoRedraw      =   -1  'True
      Height          =   1095
      Index           =   3
      Left            =   11280
      Picture         =   "vbrc.frx":2779C
      ScaleHeight     =   69
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   69
      TabIndex        =   5
      Top             =   600
      Width           =   1095
   End
   Begin VB.PictureBox tex 
      AutoRedraw      =   -1  'True
      Height          =   1095
      Index           =   2
      Left            =   11160
      Picture         =   "vbrc.frx":2A7DE
      ScaleHeight     =   69
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   69
      TabIndex        =   4
      Top             =   480
      Width           =   1095
   End
   Begin VB.PictureBox crop 
      AutoRedraw      =   -1  'True
      Height          =   1020
      Left            =   11520
      ScaleHeight     =   64
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   1
      TabIndex        =   3
      Top             =   1800
      Width           =   75
   End
   Begin VB.PictureBox tex 
      AutoRedraw      =   -1  'True
      Height          =   1095
      Index           =   1
      Left            =   11040
      Picture         =   "vbrc.frx":2D820
      ScaleHeight     =   69
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   69
      TabIndex        =   2
      Top             =   360
      Width           =   1095
   End
   Begin VB.PictureBox bg1 
      AutoRedraw      =   -1  'True
      Height          =   7260
      Left            =   9840
      Picture         =   "vbrc.frx":30862
      ScaleHeight     =   480
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   640
      TabIndex        =   1
      Top             =   6240
      Width           =   9660
   End
   Begin VB.PictureBox mainscr 
      AutoRedraw      =   -1  'True
      BorderStyle     =   0  'None
      Height          =   7200
      Left            =   0
      MousePointer    =   99  'Custom
      ScaleHeight     =   480
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   640
      TabIndex        =   0
      Top             =   0
      Width           =   9600
      Begin VB.Timer Timer2 
         Enabled         =   0   'False
         Interval        =   500
         Left            =   8760
         Top             =   4560
      End
      Begin VB.Label ViewFPS 
         Alignment       =   1  'Right Justify
         BackStyle       =   0  'Transparent
         Caption         =   "0 FPS"
         ForeColor       =   &H00FFFFFF&
         Height          =   255
         Left            =   7920
         TabIndex        =   20
         Top             =   0
         Width           =   1575
      End
   End
   Begin VB.Menu mnuFile 
      Caption         =   "&File"
      Begin VB.Menu itmLoadMap 
         Caption         =   "&Load map..."
      End
      Begin VB.Menu itmBeginSave 
         Caption         =   "Begin image sequence save"
      End
      Begin VB.Menu dash0 
         Caption         =   "-"
      End
      Begin VB.Menu mnuExitExit 
         Caption         =   "E&xit"
      End
   End
   Begin VB.Menu mnuOptions 
      Caption         =   "&Options"
      Begin VB.Menu mnuQuality 
         Caption         =   "&Quality"
         Begin VB.Menu itmHighest 
            Caption         =   "Highest"
         End
         Begin VB.Menu itmHigh 
            Caption         =   "High"
         End
         Begin VB.Menu itmMedium 
            Caption         =   "Medium"
         End
         Begin VB.Menu itmLow 
            Caption         =   "Low"
         End
         Begin VB.Menu itmVeryLow 
            Caption         =   "Very Low"
         End
         Begin VB.Menu itmlolwut 
            Caption         =   "LOL WUT"
         End
      End
      Begin VB.Menu itmRotateTex 
         Caption         =   "Rotating wall textures"
         Visible         =   0   'False
      End
      Begin VB.Menu itmNoClip 
         Caption         =   "No clipping"
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Option Explicit

    Dim Map(-100 To 100, -100 To 100) As Integer
    Dim iKey(255) As Integer
        
    Dim DirX As Integer, DirY As Integer
    Dim Quality As Integer
    Dim Jumping As Integer
    Dim TiltEffect As Integer
    Dim K As Integer, WhichLine As Single
    Dim CountFPS As Integer, SaveFrame As Integer
    Dim DoClipping As Integer, RotateTex As Integer, DoRotateTex As Integer
    
    Dim OldPlayerX As Single, OldPlayerY As Single
    Dim PlayerX As Single, PlayerY As Single
    Dim Slope As Single, InvSlope As Single
    Dim Slope64 As Single, InvSlope64 As Single
    Dim XIntY As Single, YIntY As Single
    Dim XIntX As Single, YIntX As Single
    Dim Angle As Single
    Dim Jump As Single
    Dim Gravity As Single
    Dim MidLine As Single
    Dim Tilt As Single
    Dim TiltCount As Single
    Dim sizediv As Single
    Dim Speed1 As Single, Speed2 As Single, Turn1 As Single, Turn2 As Single
    
    Dim a$, b$
    Dim filesz As Long
    
    Dim mapfile$, framepath$
        
    Const PI = 3.141592
    Const QUP = -1
    Const QDOWN = 1
    Const QLEFT = -1
    Const QRIGHT = 1
    Const FieldOfVision = 60
    Const ResX = 640
    Const ResY = 480
    Const HalfX = ResX / 2
    Const HalfY = ResY / 2
    Const HalfFOV = FieldOfVision / 2
    Const ZERO = 1E-32
    Const NumberBeams = (360 / FieldOfVision) * ResX
    Const HalfBeams = NumberBeams / 2
    Const BlockSize = 32
    Const BlockSizeRatio = 64 / BlockSize

Private Sub Form_Load()
    mapfile$ = "big.map"
    InitVars
    DoClipping = 1
    GetMap
    Timer2.Enabled = True
    starttimer.Enabled = True
End Sub

Private Sub itmBeginSave_Click()
framepath$ = InputBox("Save to where:", "Image sequence", "c:\frames\")
End Sub

Private Sub itmHigh_Click()
Quality = 2
End Sub

Private Sub itmHighest_Click()
Quality = 1
End Sub

Private Sub itmLoadMap_Click()
    mapfile$ = InputBox("Path and filename to raycaster file:", "Load map", "big.map")
    If Len(mapfile$) = 0 Then Exit Sub
    InitVars
    GetMap
    Timer2.Enabled = True
End Sub

Private Sub itmlolwut_Click()
Quality = 10
End Sub

Private Sub itmLow_Click()
Quality = 4
End Sub

Private Sub itmMedium_Click()
Quality = 3
End Sub

Private Sub itmNoClip_Click()
If itmNoClip.Checked = False Then
  itmNoClip.Checked = True: DoClipping = 0
  Exit Sub
Else
  itmNoClip.Checked = False: DoClipping = 1
End If
End Sub

Private Sub itmRotateTex_Click()
If itmRotateTex.Checked = False Then
    itmRotateTex.Checked = True
    DoRotateTex = 1
    RotateTex = 0
Else
    itmRotateTex.Checked = False
    DoRotateTex = 0
End If
End Sub

Private Sub itmVeryLow_Click()
Quality = 5
End Sub

Private Sub mainscr_KeyDown(KeyCode As Integer, Shift As Integer)

    iKey(KeyCode) = True
End Sub

Private Sub mainscr_KeyUp(KeyCode As Integer, Shift As Integer)
    
    iKey(KeyCode) = False
           
End Sub

Sub GetMap()
    Dim x As Integer, y As Integer, mapxsz As Integer, mapysz As Integer
    Dim a$, b$
    
    Form1.Show
    mainscr.Cls: mainscr.Line (0, 0)-(640, 480), 0, BF
    mainscr.FontSize = 12
    mainscr.ForeColor = &HFFFFFF
    mainscr.CurrentX = 10: mainscr.CurrentY = 450
    mainscr.Print "Loading map and extracting textures, please wait..."
    DoEvents
    
    Open mapfile$ For Binary As #1
    a$ = Space$(1): Get #1, , a$: mapxsz = Asc(a$)
    a$ = Space$(1): Get #1, , a$: mapysz = Asc(a$)
    a$ = Space$(1): Get #1, , a$: PlayerX = (mapxsz + 1 - Asc(a$)) * BlockSize + (BlockSize / 2)
    a$ = Space$(1): Get #1, , a$: PlayerY = Asc(a$) * BlockSize + (BlockSize / 2)
        
    For y = 1 To mapysz
      For x = mapxsz To 1 Step -1
        a$ = Space$(1): Get #1, , a$
        Map(x, y) = Asc(a$)
      Next x
    Next y
    
    Dim blkcount As Integer
    a$ = Space$(1): Get #1, , a$
    blkcount = Asc(a$)
        
    Dim loadwall As Integer
    Dim filesz As Long
    For loadwall = 1 To blkcount
      If loadwall > texfile.UBound Then Load texfile(loadwall)
        b$ = Space$(2): Get #1, , b$
        filesz = 0
        filesz = (Asc(Left$(b$, 1)) * 256)
        filesz = filesz + Asc(Right$(b$, 1))
        
        Open "~tmpblock.bmp" For Output As #2
        a$ = Space$(filesz)
        'Do Until LOF(2) = 12342
          Get #1, , a$
          Print #2, a$;
        'Loop
        Close #2
        texfile(loadwall).Left = texfile(0).Left
        texfile(loadwall).Picture = LoadPicture("~tmpblock.bmp")
    Next loadwall
    Close #1
    Kill "~tmpblock.bmp"
End Sub

Sub InitVars()

    Dim d As Double
    
        Angle = 0
        Quality = 1
        MidLine = HalfY
End Sub

Sub Raycast()


    Dim BeamCount As Single
    Dim CurrentAngle As Single
    Dim Distance As Single
    Dim DistanceX As Single, DistanceY As Single
    Dim DistanceUp As Integer, DistanceDown As Integer
    Dim WallHitX As Single, WallHitY As Single
    Dim CheckX As Single, CheckY As Single
    Dim reverse As Integer
    Dim fst%, inputcount As Integer, inputinterval As Integer
Running = True
Do
    inputinterval = CountFPS / 30
    inputcount = inputcount + 1
  If inputcount >= inputinterval Then
    inputcount = 0
    Tilt = TiltCount * -300
    
        Dim isrun As Integer
    If iKey(16) Then isrun = 2.5 Else isrun = 1
    OldPlayerX = PlayerX: OldPlayerY = PlayerY

    
    If iKey(vbKeyRight) Then Turn1 = 2
    
    If iKey(vbKeyLeft) Then Turn2 = 2
    
        Angle = Angle + Turn1 * isrun
        Angle = Angle - Turn2 * isrun
        Turn1 = Turn1 / 1.4
        Turn2 = Turn2 / 1.4
        If Turn1 < 0.01 Then Turn1 = 0
        If Turn2 < 0.01 Then Turn2 = 0
    
    If iKey(vbKeyUp) Then Speed1 = 2.5 * isrun
        
        PlayerX = PlayerX + Cos(Angle * PI / 180) * Speed1
        If DoClipping = 1 Then CheckWallHitX
        PlayerY = PlayerY - Sin(Angle * PI / 180) * Speed1
        If DoClipping = 1 Then CheckWallHitY
        
        Speed1 = Speed1 / 1.1
        If Speed1 < 0.01 Then Speed1 = 0
    
    If iKey(vbKeyDown) Then Speed2 = 2.5 * isrun
        
        PlayerX = PlayerX - Cos(Angle * PI / 180) * Speed2
        If DoClipping = 1 Then CheckWallHitX
        PlayerY = PlayerY + Sin(Angle * PI / 180) * Speed2
        If DoClipping = 1 Then CheckWallHitY
        
        Speed2 = Speed2 / 1.1
        If Speed2 < 0.01 Then Speed2 = 0
    
    If iKey(vbKeyEscape) Then
        End
    End If
    If iKey(32) And Jumping = False Then
        Jumping = True
        Gravity = -1000
    End If
    If iKey(vbKeyPageUp) Then
        MidLine = MidLine + 20
    End If
    If iKey(vbKeyPageDown) Then
        MidLine = MidLine - 20
    End If
    
    Jump = Jump - Gravity
    If Jump < 0 Then Jump = 0: Gravity = 100: Jumping = False
    Gravity = Gravity + 100

    
    If Angle < 0 Then Angle = Angle + 360
    If Angle > 360 Then Angle = Angle - 360
        
    Jump = Jump - Gravity
    If Jump < 0 Then Jump = 0: Gravity = 10
    Gravity = Gravity + 10
    
    RotateTex = RotateTex + 1
    If RotateTex = 64 Then RotateTex = 0
  End If

    fst% = -(Angle * 1.777778)
    'mainscr.PaintPicture bg1, fst%, 0
    'mainscr.PaintPicture bg1, fst% + 640, 0
    BitBlt mainscr.hdc, fst%, 0, 640, MidLine, bg1.hdc, 0, 0, vbSrcCopy
    BitBlt mainscr.hdc, fst% + 640, 0, 640, MidLine, bg1.hdc, 0, 0, vbSrcCopy
    mainscr.Line (0, MidLine)-(640, 480), RGB(85, 85, 85), BF

    For BeamCount = HalfX To -HalfX + 1 Step -Quality
        CurrentAngle = Angle + BeamCount * (HalfFOV / HalfX)
        If CurrentAngle < 0 Then CurrentAngle = CurrentAngle + 360
        If CurrentAngle > 360 Then CurrentAngle = CurrentAngle - 360
        If CurrentAngle = 0 Then CurrentAngle = 1
        If CurrentAngle = 90 Then CurrentAngle = 91
        If CurrentAngle = 180 Then CurrentAngle = 181
        If CurrentAngle = 270 Then CurrentAngle = 271
        If CurrentAngle = 360 Then CurrentAngle = 1
    
                        
        GetSlopes CurrentAngle
    
        GetFirstIntY
                    
        GetFirstIntX
                    
        
        WallHitX = 0: WallHitY = 0
        
        reverse = -1
        Do
            If WallHitY = False Then
                CheckX = (XIntY - 0.5) \ BlockSize
                CheckY = (YIntY - 0.5) \ BlockSize
                                
                If DirX = QLEFT Then CheckX = CheckX - 1
                      
                If CheckX > 0 And CheckX < 101 And CheckY > 0 And CheckY < 101 Then
                    If Map(CheckX, CheckY) Then WallHitY = Map(CheckX, CheckY)
                Else
                    WallHitY = 1
                End If
            End If
        
            If WallHitX = False Then
                CheckX = (XIntX - 0.5) \ BlockSize
                CheckY = (YIntX - 0.5) \ BlockSize
            
                If DirY = QUP Then CheckY = CheckY - 1
            
                If CheckX > 0 And CheckX < 101 And CheckY > 0 And CheckY < 101 Then
                    If Map(CheckX, CheckY) Then WallHitX = Map(CheckX, CheckY)
                Else
                    WallHitX = 1
                End If
            End If
                
        'exit loop if there is a wall hit on both axises
        
            If WallHitX > 0 And WallHitY > 0 Then Exit Do
        
        'calculate the next intersections
        
            If WallHitY = 0 Then
                XIntY = XIntY + (BlockSize * DirX)
                YIntY = YIntY + (Slope64 * DirY)
            End If
            
            If WallHitX = 0 Then
                XIntX = XIntX + (InvSlope64 * DirX)
                YIntX = YIntX + (BlockSize * DirY)
            End If
        
        Loop
        
        'calculate the distances to the intersections
            DistanceY = Abs((YIntY - PlayerY) / (Sin(CurrentAngle * PI / 180) + ZERO))
            DistanceX = Abs((XIntX - PlayerX) / Cos(CurrentAngle * PI / 180) + ZERO)
            
        'get the distance that is closer
            If DistanceX < DistanceY Then
                Distance = DistanceX
                WallHitY = False
            Else    '- If DistanceY <= DistanceX
                Distance = DistanceY
                WallHitX = False
            End If

        'make the walls straight
            Distance = Distance / (1 / Cos(BeamCount * PI / HalfBeams))
                
        'get ready to draw the wall
            DistanceUp = ((10000 - Jump) / (Distance + 1)) + Tilt
            DistanceDown = ((10000 + Jump) / (Distance + 1)) - Tilt
        
        'draw the wall strip
            DoRotateTex = 0
            reverse = 1
            If WallHitX Then
                If WallHitX > 127 Then WallHitX = WallHitX - 127: DoRotateTex = 1
                K = WallHitX: WhichLine = (XIntX And 63)
                WhichLine = WhichLine + 63
                If DoRotateTex = 1 Then WhichLine = WhichLine - (63 - RotateTex)
            End If
            If WallHitY Then
                If WallHitY > 127 Then WallHitY = WallHitY - 127: DoRotateTex = 1
                K = WallHitY: WhichLine = (YIntY And 63) + 32
                If DoRotateTex = 1 Then WhichLine = WhichLine + RotateTex
            End If

            If K Then
                If WhichLine < 0 Then WhichLine = 63 - WhichLine
                If WhichLine > 63 Then WhichLine = WhichLine - 63

                'crop.PaintPicture texfile(K).Picture, WhichLine, 0
                'mainscr.PaintPicture crop.Image, BeamCount + HalfX, MidLine - DistanceUp, Quality, DistanceUp + DistanceDown + 2
                'StretchBlt mainscr.hdc, BeamCount + HalfX - Quality, MidLine - DistanceUp, Quality, DistanceUp + DistanceDown, crop.hdc, 0, 0, 1, 64, vbSrcCopy
                StretchBlt mainscr.hdc, BeamCount + HalfX - Quality, MidLine - DistanceUp, Quality, DistanceUp + DistanceDown, texfile(K).hdc, WhichLine, 0, 1, 64, vbSrcCopy
            End If
            
            Tilt = Tilt + TiltCount
    Next BeamCount
    If Len(framepath$) > 0 Then SavePicture mainscr.Image, framepath$ + Mid$(Str$(SaveFrame), 2) + ".bmp": SaveFrame = SaveFrame + 1
    CountFPS = CountFPS + 1
    DoEvents
Loop
End Sub

Sub GetSlopes(CurrentAngle As Single)

    Slope = Abs(Tan(CurrentAngle * PI / 180))
    Slope64 = Slope * BlockSize
    
    InvSlope = Abs(1 / (Tan(CurrentAngle * PI / 180) + ZERO))
    InvSlope64 = InvSlope * BlockSize
    
    'determine which quadrant the ray is in
    Select Case CurrentAngle
        Case 0 To 90    '- quadrant 1
            DirX = QRIGHT
            DirY = QUP
        Case 91 To 180  '- quadrant 2
            DirX = QLEFT
            DirY = QUP
        Case 181 To 270 '- quadrant 3
            DirX = QLEFT
            DirY = QDOWN
        Case 271 To 360 '- quadrant 4
            DirX = QRIGHT
            DirY = QDOWN
    End Select
    
End Sub

Sub GetFirstIntY()

    'get the first intersection on the Y axis
        If DirX = QRIGHT Then
            XIntY = (PlayerX \ BlockSize) * BlockSize + BlockSize
        Else    'If DirX = QLEFT
            XIntY = (PlayerX \ BlockSize) * BlockSize
        End If
        
        YIntY = PlayerY + Slope * Abs(PlayerX - XIntY) * DirY
        
End Sub

Sub GetFirstIntX()

    'get the first intersection on the Y axis
        If DirY = QDOWN Then
            YIntX = (PlayerY \ BlockSize) * BlockSize + BlockSize
        Else    '- If DirY = QUP
            YIntX = (PlayerY \ BlockSize) * BlockSize
        End If
        
        XIntX = PlayerX + InvSlope * Abs(PlayerY - YIntX) * DirX
        
End Sub

Sub CheckWallHitX()

    Dim x As Integer, y As Integer
    
    For y = -10 To 10 Step 20
        For x = -10 To 10 Step 20
            If Map((PlayerX + x) \ BlockSize, (PlayerY + y) \ BlockSize) Then PlayerX = OldPlayerX
        Next x
    Next y
        
End Sub

Sub CheckWallHitY()

    Dim x As Integer, y As Integer
    
    For y = -10 To 10 Step 20
        For x = -10 To 10 Step 20
            If Map((PlayerX + x) \ BlockSize, (PlayerY + y) \ BlockSize) Then PlayerY = OldPlayerY
        Next x
    Next y
    
End Sub

Private Sub mnuExitExit_Click()
End
End Sub

Private Sub mnuTiltEffectDisable_Click()
    TiltEffect = False
End Sub

Private Sub mnuTiltEffectEnable_Click()
    TiltEffect = True
End Sub

Private Sub starttimer_Timer()
starttimer.Enabled = False
Raycast
End Sub

Private Sub Timer2_Timer()
ViewFPS.Caption = Str$(CountFPS * 2) + " FPS"
'If CountFPS * 2 > 30 Then Timer1.Interval = Timer1.Interval + 1
'If CountFPS * 2 < 30 And Timer1.Interval > 1 Then Timer1.Interval = Timer1.Interval - 1
'If Timer1.Interval < 1 Then Timer1.Interval = 1
CountFPS = 0
End Sub

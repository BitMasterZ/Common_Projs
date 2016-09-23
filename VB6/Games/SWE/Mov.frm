VERSION 5.00
Begin VB.Form IntroV 
   AutoRedraw      =   -1  'True
   BackColor       =   &H00000000&
   BorderStyle     =   0  'None
   Caption         =   "Form1"
   ClientHeight    =   8040
   ClientLeft      =   1485
   ClientTop       =   1620
   ClientWidth     =   18420
   DrawWidth       =   5
   ForeColor       =   &H00FFFFFF&
   Icon            =   "Mov.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   536
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   1228
   ShowInTaskbar   =   0   'False
   Begin VB.Timer Movie 
      Interval        =   1
      Left            =   10080
      Top             =   7440
   End
   Begin VB.PictureBox picMask 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      ForeColor       =   &H80000008&
      Height          =   1005
      Index           =   3
      Left            =   1800
      Picture         =   "Mov.frx":6932
      ScaleHeight     =   65
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   209
      TabIndex        =   5
      Top             =   1320
      Visible         =   0   'False
      Width           =   3165
   End
   Begin VB.PictureBox picSprite 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      ForeColor       =   &H80000008&
      Height          =   1005
      Index           =   3
      Left            =   1680
      Picture         =   "Mov.frx":108E8
      ScaleHeight     =   65
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   209
      TabIndex        =   4
      Top             =   5160
      Visible         =   0   'False
      Width           =   3165
   End
   Begin VB.PictureBox picSprite 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      ForeColor       =   &H80000008&
      Height          =   810
      Index           =   1
      Left            =   6000
      Picture         =   "Mov.frx":1A89E
      ScaleHeight     =   52
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   293
      TabIndex        =   3
      Top             =   4920
      Visible         =   0   'False
      Width           =   4425
   End
   Begin VB.PictureBox picMask 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      ForeColor       =   &H80000008&
      Height          =   810
      Index           =   1
      Left            =   6120
      Picture         =   "Mov.frx":25BA0
      ScaleHeight     =   52
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   295
      TabIndex        =   2
      Top             =   1080
      Visible         =   0   'False
      Width           =   4455
   End
   Begin VB.Timer tmrmove 
      Interval        =   100
      Left            =   6000
      Top             =   960
   End
   Begin VB.PictureBox picMask 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      ForeColor       =   &H80000008&
      Height          =   2640
      Index           =   0
      Left            =   1800
      Picture         =   "Mov.frx":31042
      ScaleHeight     =   174
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   421
      TabIndex        =   1
      Top             =   360
      Visible         =   0   'False
      Width           =   6345
   End
   Begin VB.PictureBox picSprite 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      ForeColor       =   &H80000008&
      Height          =   2640
      Index           =   0
      Left            =   2280
      Picture         =   "Mov.frx":66BA4
      ScaleHeight     =   174
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   421
      TabIndex        =   0
      Top             =   120
      Visible         =   0   'False
      Width           =   6345
   End
   Begin VB.Label Quit 
      BackStyle       =   0  'Transparent
      Caption         =   "End"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   24
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   615
      Left            =   0
      TabIndex        =   8
      Top             =   0
      Width           =   855
   End
   Begin VB.Label Mess 
      BackStyle       =   0  'Transparent
      Caption         =   "Oh no! I compeletly forgot about the wep key authourization "
      BeginProperty Font 
         Name            =   "Orator Std"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1275
      Index           =   1
      Left            =   14520
      TabIndex        =   7
      Top             =   5640
      Visible         =   0   'False
      Width           =   3330
   End
   Begin VB.Image Bubble 
      Height          =   3000
      Index           =   1
      Left            =   13560
      Picture         =   "Mov.frx":9C706
      Stretch         =   -1  'True
      Top             =   5280
      Visible         =   0   'False
      Width           =   4650
   End
   Begin VB.Label Mess 
      BackStyle       =   0  'Transparent
      Caption         =   "There's the outgoing signal! I'm finally going to get out of here"
      BeginProperty Font 
         Name            =   "Orator Std"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1275
      Index           =   0
      Left            =   14640
      TabIndex        =   6
      Top             =   480
      Visible         =   0   'False
      Width           =   3330
   End
   Begin VB.Image Bubble 
      Height          =   3000
      Index           =   0
      Left            =   13560
      Picture         =   "Mov.frx":9D196
      Stretch         =   -1  'True
      Top             =   120
      Visible         =   0   'False
      Width           =   4650
   End
   Begin VB.Image router 
      Height          =   1470
      Left            =   12000
      Picture         =   "Mov.frx":9DC26
      Top             =   6360
      Width           =   420
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   100
      Left            =   1200
      Picture         =   "Mov.frx":9FC90
      Stretch         =   -1  'True
      Top             =   720
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   99
      Left            =   1200
      Picture         =   "Mov.frx":A0329
      Stretch         =   -1  'True
      Top             =   720
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   98
      Left            =   1200
      Picture         =   "Mov.frx":A09C2
      Stretch         =   -1  'True
      Top             =   720
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   97
      Left            =   1200
      Picture         =   "Mov.frx":A105B
      Stretch         =   -1  'True
      Top             =   720
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   96
      Left            =   1200
      Picture         =   "Mov.frx":A16F4
      Stretch         =   -1  'True
      Top             =   720
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   95
      Left            =   1200
      Picture         =   "Mov.frx":A1D8D
      Stretch         =   -1  'True
      Top             =   720
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   94
      Left            =   1200
      Picture         =   "Mov.frx":A2426
      Stretch         =   -1  'True
      Top             =   720
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   93
      Left            =   1200
      Picture         =   "Mov.frx":A2ABF
      Stretch         =   -1  'True
      Top             =   720
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   92
      Left            =   1200
      Picture         =   "Mov.frx":A3158
      Stretch         =   -1  'True
      Top             =   720
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   91
      Left            =   1200
      Picture         =   "Mov.frx":A37F1
      Stretch         =   -1  'True
      Top             =   720
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   90
      Left            =   1200
      Picture         =   "Mov.frx":A3E8A
      Stretch         =   -1  'True
      Top             =   720
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   89
      Left            =   1200
      Picture         =   "Mov.frx":A4523
      Stretch         =   -1  'True
      Top             =   720
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   88
      Left            =   1200
      Picture         =   "Mov.frx":A4BBC
      Stretch         =   -1  'True
      Top             =   720
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   87
      Left            =   1200
      Picture         =   "Mov.frx":A5255
      Stretch         =   -1  'True
      Top             =   720
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   86
      Left            =   1200
      Picture         =   "Mov.frx":A58EE
      Stretch         =   -1  'True
      Top             =   720
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   85
      Left            =   1200
      Picture         =   "Mov.frx":A5F87
      Stretch         =   -1  'True
      Top             =   720
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   84
      Left            =   1200
      Picture         =   "Mov.frx":A6620
      Stretch         =   -1  'True
      Top             =   720
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   83
      Left            =   1200
      Picture         =   "Mov.frx":A6CB9
      Stretch         =   -1  'True
      Top             =   720
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   82
      Left            =   1200
      Picture         =   "Mov.frx":A7352
      Stretch         =   -1  'True
      Top             =   720
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   81
      Left            =   1200
      Picture         =   "Mov.frx":A79EB
      Stretch         =   -1  'True
      Top             =   720
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   80
      Left            =   1200
      Picture         =   "Mov.frx":A8084
      Stretch         =   -1  'True
      Top             =   720
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   79
      Left            =   1200
      Picture         =   "Mov.frx":A871D
      Stretch         =   -1  'True
      Top             =   720
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   78
      Left            =   1200
      Picture         =   "Mov.frx":A8DB6
      Stretch         =   -1  'True
      Top             =   720
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   77
      Left            =   1200
      Picture         =   "Mov.frx":A944F
      Stretch         =   -1  'True
      Top             =   720
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   76
      Left            =   1200
      Picture         =   "Mov.frx":A9AE8
      Stretch         =   -1  'True
      Top             =   720
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   75
      Left            =   1200
      Picture         =   "Mov.frx":AA181
      Stretch         =   -1  'True
      Top             =   720
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   74
      Left            =   1200
      Picture         =   "Mov.frx":AA81A
      Stretch         =   -1  'True
      Top             =   720
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   73
      Left            =   1200
      Picture         =   "Mov.frx":AAEB3
      Stretch         =   -1  'True
      Top             =   720
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   72
      Left            =   1200
      Picture         =   "Mov.frx":AB54C
      Stretch         =   -1  'True
      Top             =   720
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   71
      Left            =   1200
      Picture         =   "Mov.frx":ABBE5
      Stretch         =   -1  'True
      Top             =   720
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   70
      Left            =   1200
      Picture         =   "Mov.frx":AC27E
      Stretch         =   -1  'True
      Top             =   720
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   69
      Left            =   1200
      Picture         =   "Mov.frx":AC917
      Stretch         =   -1  'True
      Top             =   720
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   68
      Left            =   1200
      Picture         =   "Mov.frx":ACFB0
      Stretch         =   -1  'True
      Top             =   720
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   67
      Left            =   1200
      Picture         =   "Mov.frx":AD649
      Stretch         =   -1  'True
      Top             =   720
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   66
      Left            =   1200
      Picture         =   "Mov.frx":ADCE2
      Stretch         =   -1  'True
      Top             =   720
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   65
      Left            =   1200
      Picture         =   "Mov.frx":AE37B
      Stretch         =   -1  'True
      Top             =   720
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   64
      Left            =   1200
      Picture         =   "Mov.frx":AEA14
      Stretch         =   -1  'True
      Top             =   720
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   63
      Left            =   1200
      Picture         =   "Mov.frx":AF0AD
      Stretch         =   -1  'True
      Top             =   720
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   62
      Left            =   1200
      Picture         =   "Mov.frx":AF746
      Stretch         =   -1  'True
      Top             =   720
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   61
      Left            =   1200
      Picture         =   "Mov.frx":AFDDF
      Stretch         =   -1  'True
      Top             =   720
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   60
      Left            =   1200
      Picture         =   "Mov.frx":B0478
      Stretch         =   -1  'True
      Top             =   720
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   59
      Left            =   1200
      Picture         =   "Mov.frx":B0B11
      Stretch         =   -1  'True
      Top             =   720
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   58
      Left            =   1200
      Picture         =   "Mov.frx":B11AA
      Stretch         =   -1  'True
      Top             =   720
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   57
      Left            =   1200
      Picture         =   "Mov.frx":B1843
      Stretch         =   -1  'True
      Top             =   720
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   56
      Left            =   1200
      Picture         =   "Mov.frx":B1EDC
      Stretch         =   -1  'True
      Top             =   720
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   55
      Left            =   1200
      Picture         =   "Mov.frx":B2575
      Stretch         =   -1  'True
      Top             =   720
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   54
      Left            =   1200
      Picture         =   "Mov.frx":B2C0E
      Stretch         =   -1  'True
      Top             =   720
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   53
      Left            =   1200
      Picture         =   "Mov.frx":B32A7
      Stretch         =   -1  'True
      Top             =   720
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   52
      Left            =   1200
      Picture         =   "Mov.frx":B3940
      Stretch         =   -1  'True
      Top             =   720
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   51
      Left            =   1200
      Picture         =   "Mov.frx":B3FD9
      Stretch         =   -1  'True
      Top             =   720
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   50
      Left            =   1200
      Picture         =   "Mov.frx":B4672
      Stretch         =   -1  'True
      Top             =   720
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   49
      Left            =   1200
      Picture         =   "Mov.frx":B4D0B
      Stretch         =   -1  'True
      Top             =   720
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   48
      Left            =   1200
      Picture         =   "Mov.frx":B53A4
      Stretch         =   -1  'True
      Top             =   720
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   47
      Left            =   1200
      Picture         =   "Mov.frx":B5A3D
      Stretch         =   -1  'True
      Top             =   720
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   46
      Left            =   1200
      Picture         =   "Mov.frx":B60D6
      Stretch         =   -1  'True
      Top             =   720
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   45
      Left            =   1200
      Picture         =   "Mov.frx":B676F
      Stretch         =   -1  'True
      Top             =   720
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   44
      Left            =   1200
      Picture         =   "Mov.frx":B6E08
      Stretch         =   -1  'True
      Top             =   720
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   43
      Left            =   1200
      Picture         =   "Mov.frx":B74A1
      Stretch         =   -1  'True
      Top             =   720
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   42
      Left            =   1200
      Picture         =   "Mov.frx":B7B3A
      Stretch         =   -1  'True
      Top             =   720
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   41
      Left            =   1200
      Picture         =   "Mov.frx":B81D3
      Stretch         =   -1  'True
      Top             =   720
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   40
      Left            =   1200
      Picture         =   "Mov.frx":B886C
      Stretch         =   -1  'True
      Top             =   720
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   39
      Left            =   1200
      Picture         =   "Mov.frx":B8F05
      Stretch         =   -1  'True
      Top             =   720
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   38
      Left            =   1200
      Picture         =   "Mov.frx":B959E
      Stretch         =   -1  'True
      Top             =   720
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   37
      Left            =   1200
      Picture         =   "Mov.frx":B9C37
      Stretch         =   -1  'True
      Top             =   720
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   36
      Left            =   1200
      Picture         =   "Mov.frx":BA2D0
      Stretch         =   -1  'True
      Top             =   720
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   35
      Left            =   1200
      Picture         =   "Mov.frx":BA969
      Stretch         =   -1  'True
      Top             =   720
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   34
      Left            =   1200
      Picture         =   "Mov.frx":BB002
      Stretch         =   -1  'True
      Top             =   720
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   33
      Left            =   1200
      Picture         =   "Mov.frx":BB69B
      Stretch         =   -1  'True
      Top             =   720
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   32
      Left            =   1200
      Picture         =   "Mov.frx":BBD34
      Stretch         =   -1  'True
      Top             =   720
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   31
      Left            =   1200
      Picture         =   "Mov.frx":BC3CD
      Stretch         =   -1  'True
      Top             =   720
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   30
      Left            =   1200
      Picture         =   "Mov.frx":BCA66
      Stretch         =   -1  'True
      Top             =   720
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   29
      Left            =   1200
      Picture         =   "Mov.frx":BD0FF
      Stretch         =   -1  'True
      Top             =   720
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   28
      Left            =   1200
      Picture         =   "Mov.frx":BD798
      Stretch         =   -1  'True
      Top             =   720
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   27
      Left            =   1200
      Picture         =   "Mov.frx":BDE31
      Stretch         =   -1  'True
      Top             =   720
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   26
      Left            =   1200
      Picture         =   "Mov.frx":BE4CA
      Stretch         =   -1  'True
      Top             =   720
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   25
      Left            =   1200
      Picture         =   "Mov.frx":BEB63
      Stretch         =   -1  'True
      Top             =   720
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   24
      Left            =   1200
      Picture         =   "Mov.frx":BF1FC
      Stretch         =   -1  'True
      Top             =   720
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   23
      Left            =   1200
      Picture         =   "Mov.frx":BF895
      Stretch         =   -1  'True
      Top             =   720
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   22
      Left            =   1200
      Picture         =   "Mov.frx":BFF2E
      Stretch         =   -1  'True
      Top             =   720
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   21
      Left            =   1200
      Picture         =   "Mov.frx":C05C7
      Stretch         =   -1  'True
      Top             =   720
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   20
      Left            =   1200
      Picture         =   "Mov.frx":C0C60
      Stretch         =   -1  'True
      Top             =   720
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   19
      Left            =   1200
      Picture         =   "Mov.frx":C12F9
      Stretch         =   -1  'True
      Top             =   720
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   18
      Left            =   1200
      Picture         =   "Mov.frx":C1992
      Stretch         =   -1  'True
      Top             =   720
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   17
      Left            =   1200
      Picture         =   "Mov.frx":C202B
      Stretch         =   -1  'True
      Top             =   720
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   16
      Left            =   1200
      Picture         =   "Mov.frx":C26C4
      Stretch         =   -1  'True
      Top             =   720
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   15
      Left            =   1200
      Picture         =   "Mov.frx":C2D5D
      Stretch         =   -1  'True
      Top             =   720
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   14
      Left            =   1200
      Picture         =   "Mov.frx":C33F6
      Stretch         =   -1  'True
      Top             =   720
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   13
      Left            =   1200
      Picture         =   "Mov.frx":C3A8F
      Stretch         =   -1  'True
      Top             =   720
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   12
      Left            =   1200
      Picture         =   "Mov.frx":C4128
      Stretch         =   -1  'True
      Top             =   720
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   11
      Left            =   1200
      Picture         =   "Mov.frx":C47C1
      Stretch         =   -1  'True
      Top             =   720
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   10
      Left            =   1200
      Picture         =   "Mov.frx":C4E5A
      Stretch         =   -1  'True
      Top             =   720
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   9
      Left            =   1200
      Picture         =   "Mov.frx":C54F3
      Stretch         =   -1  'True
      Top             =   720
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   8
      Left            =   1200
      Picture         =   "Mov.frx":C5B8C
      Stretch         =   -1  'True
      Top             =   720
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   7
      Left            =   1200
      Picture         =   "Mov.frx":C6225
      Stretch         =   -1  'True
      Top             =   720
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   6
      Left            =   1200
      Picture         =   "Mov.frx":C68BE
      Stretch         =   -1  'True
      Top             =   720
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   5
      Left            =   1200
      Picture         =   "Mov.frx":C6F57
      Stretch         =   -1  'True
      Top             =   720
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   4
      Left            =   1200
      Picture         =   "Mov.frx":C75F0
      Stretch         =   -1  'True
      Top             =   720
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   3
      Left            =   1200
      Picture         =   "Mov.frx":C7C89
      Stretch         =   -1  'True
      Top             =   720
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   2
      Left            =   1200
      Picture         =   "Mov.frx":C8322
      Stretch         =   -1  'True
      Top             =   720
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   1
      Left            =   1200
      Picture         =   "Mov.frx":C89BB
      Stretch         =   -1  'True
      Top             =   720
      Visible         =   0   'False
      Width           =   285
   End
End
Attribute VB_Name = "IntroV"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim H(0 To 10) As Integer, W(0 To 10) As Integer
Dim frameX(0 To 10) As Integer, frameY(0 To 10) As Integer
Dim sngX As Single, sngY As Single
Dim EnemyPos(1 To 2) As Single
Dim A As Integer, blnShoot As Boolean
Dim Shots As Integer, Spare As Long
Dim Jumping As Boolean
Dim Scene As Boolean
Dim Arc(1 To 30, 1 To 2) As Integer
Dim Radius As Integer
Dim Counter As Integer




Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
If Scene = True Then Exit Sub
Select Case KeyCode
Case vbKeyLeft
If A <> 3 Then

A = 0
frameY(0) = 1
frameX(0) = frameX(0) - 1
If frameX(0) < 0 Then frameX(0) = 5
End If
sngX = sngX - 5
Case 27
End
Case vbKeyRight
If A <> 3 Then
A = 0
frameY(0) = 1
frameX(0) = frameX(0) + 1
If frameX(0) > 5 Then frameX(0) = 0
End If
sngX = sngX + 5

Case vbKeyDown
If A <> 3 Then blnShoot = True
frameX(1) = frameX(1) + 1
If frameX(1) > 3 Then frameX(1) = 0
Call Shoot

Case vbKeyUp
A = 3
Call Jump
Case vbKeyW
frameY(2) = 0
frameX(2) = frameX(2) + 1
If frameX(2) > 2 Then frameX(2) = 0
EnemyPos(2) = EnemyPos(2) - 10




End Select


End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer)
If Scene = True Then Exit Sub
If A = 3 Then Exit Sub
A = 0
frameY(0) = 0
frameX(0) = 0
blnShoot = False

End Sub

Private Sub Form_Load()
For Spare = 1 To 30
Arc(Spare, 1) = router.Left + router.Width / 2
Arc(Spare, 2) = router.Top
Next
H(0) = 83
W(0) = 65
Radius = 3
H(1) = 83 / 2
W(1) = 68
H(3) = 50
W(3) = 50
sngX = 0
sngY = 400
Shots = Bullet.LBound
Scene = True
End Sub

Private Sub Movie_Timer()

Counter = Counter + 1
Cls
Print Counter

For Spare = Mess.LBound To Mess.UBound
Mess(Spare).Left = Bubble(Spare).Left + 70
Mess(Spare).Top = Bubble(Spare).Top + 25
Next Spare

bitblt Me.hDC, sngX, sngY, W(A), H(A), picMask(A).hDC, _
     frameX(A) * W(A) + 3, frameY(A) * H(A) + 3, SRCAND
bitblt Me.hDC, sngX, sngY, W(A), H(A), picSprite(A).hDC, _
  frameX(A) * W(A) + 3, frameY(A) * H(A) + 3, SRCINVERT

If Counter < 50 Then
A = 0
frameY(0) = 1
frameX(0) = frameX(0) + 1
If frameX(0) > 5 Then frameX(0) = 0
sngX = sngX + 10
Call Normal

ElseIf Counter > 50 And Counter < 52 Then
A = 0
frameY(0) = 0
frameX(0) = 0
blnShoot = False
Call Normal

ElseIf Counter > 52 And Counter < 110 Then
Call Normal
Mess(0).Visible = True
Bubble(0).Left = sngX + W(A) - 5
Bubble(0).Top = sngY - Bubble(0).Height + 5
Bubble(0).Visible = True

ElseIf Counter > 110 And Counter < 112 Then
Call Normal
Mess(0).Visible = False
Bubble(0).Visible = False

ElseIf Counter > 112 And Counter < 130 Then
Call Normal
A = 0
frameY(0) = 1
frameX(0) = frameX(0) + 1
If frameX(0) > 5 Then frameX(0) = 0
sngX = sngX + 10

ElseIf Counter > 130 And Counter < 140 Then
Call Normal
A = 3
frameX(3) = frameX(3) + 1
If frameX(3) > 3 Then frameX(3) = 0
sngY = sngY - 10

ElseIf Counter > 130 And Counter < 150 Then
Call Normal
frameX(3) = frameX(3) + 1
If frameX(3) > 3 Then frameX(3) = 0
sngY = sngY - 10
sngX = sngX + 10
Call Normal
ElseIf Counter > 150 And Counter < 160 Then

frameX(3) = frameX(3) + 1
If frameX(3) > 3 Then frameX(3) = 0
sngY = sngY + 10
Call Normal

ElseIf Counter > 160 And Counter < 175 Then

sngY = Arc(1, 2) - H(A) - Radius / 2
A = 0
frameY(0) = 0
frameX(0) = 0
Call Normal

ElseIf Counter > 175 And Counter < 177 Then

Circle (Arc(1, 1), Arc(1, 2)), Radius, vbGreen, 0, 3, 0.5
Spare = MsgBox("Unauthorized acess, WEP key not provided", vbCritical, "TCP")

ElseIf Counter > 177 And Counter < 210 Then

Mess(1).Visible = True
Bubble(1).Left = sngX + W(A) - 5
Bubble(1).Top = sngY - Bubble(1).Height + 5
Bubble(1).Visible = True
Circle (Arc(1, 1), Arc(1, 2)), Radius, vbGreen, 0, 3, 0.5

ElseIf Counter > 210 And Counter < 212 Then

Mess(1).Visible = False
Bubble(1).Visible = False

ElseIf Counter > 212 And Counter < 240 Then
Call Wireless
sngX = sngX - 20
sngY = sngY - 20

ElseIf Counter > 240 And Counter < 242 Then
Interlude.Show
Unload Me

End If


End Sub

Private Sub Quit_Click()
End
End Sub

Private Sub tmrmove_Timer()
If Scene = True Then Exit Sub
Cls
bitblt Me.hDC, sngX, sngY, W(A), H(A), picMask(A).hDC, _
     frameX(A) * W(A) + 3, frameY(A) * H(A) + 3, SRCAND
bitblt Me.hDC, sngX, sngY, W(A), H(A), picSprite(A).hDC, _
  frameX(A) * W(A) + 3, frameY(A) * H(A) + 3, SRCINVERT
  
If blnShoot = True Then
  bitblt Me.hDC, sngX + 2, sngY + 3, W(1), H(1), picMask(1).hDC, _
     frameX(1) * W(1) + 3, frameY(1) * H(1) + 3, SRCAND
bitblt Me.hDC, sngX + 2, sngY + 3, W(1), H(1), picSprite(1).hDC, _
  frameX(1) * W(1) + 3, frameY(1) * H(1) + 3, SRCINVERT
  
  
End If


Call Normal
   End Sub


Private Sub Shoot()
If Scene = True Then Exit Sub
Bullet(Shots).Visible = True
Bullet(Shots).Top = sngY + H(0) / 3
Bullet(Shots).Left = sngX + W(0)

Do Until Bullet(Shots).Left > Me.ScaleWidth
DoEvents

Bullet(Shots).Left = Bullet(Shots).Left + 10

Loop
Shots = Shots + 1


End Sub



Private Sub Jump()

If Jumping = True Then Exit Sub
Jumping = True
Do Until sngY < 200
DoEvents
For Spare = -200000 To 200000
Next
For Spare = -200000 To 200000
Next

frameX(3) = frameX(3) + 1
If frameX(3) > 3 Then frameX(3) = 0
sngY = sngY - 10
Loop

Do Until sngY > 400
DoEvents
For Spare = -200000 To 200000
Next
For Spare = -200000 To 200000
Next


frameX(3) = frameX(3) + 1
If frameX(3) > 3 Then frameX(3) = 0
sngY = sngY + 10
Loop
A = 0
Jumping = False

End Sub

Private Sub Wireless()

For Spare = 1 To 30
Radius = Radius + 10
Arc(Spare, 2) = Arc(Spare, 2) - 10
Circle (Arc(Spare, 1), Arc(Spare, 2)), Radius, vbRed, 0, 3, 0.5

If Arc(Spare, 2) < Me.ScaleTop Then
Radius = 2
Arc(Spare, 2) = router.Top
End If


Next Spare
End Sub

Private Sub Normal()

Radius = Radius + 10
Arc(1, 2) = Arc(1, 2) - 10
Circle (Arc(1, 1), Arc(1, 2)), Radius, vbGreen, 0, 3, 0.5

If Arc(1, 2) < Me.ScaleTop Then
Radius = 2
Arc(1, 2) = router.Top
End If

If Point(sngX + W(A), sngY + H(A) / 2) = vbRed Then
MsgBox "latched"
sngX = sngX - 100
End If

End Sub

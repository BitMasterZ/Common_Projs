VERSION 5.00
Begin VB.Form Level1 
   AutoRedraw      =   -1  'True
   BackColor       =   &H00000000&
   BorderStyle     =   0  'None
   ClientHeight    =   8430
   ClientLeft      =   4320
   ClientTop       =   1620
   ClientWidth     =   14910
   DrawWidth       =   7
   Icon            =   "Level1.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   562
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   994
   ShowInTaskbar   =   0   'False
   Begin VB.PictureBox picSprite 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      ForeColor       =   &H80000008&
      Height          =   2640
      Index           =   0
      Left            =   1440
      Picture         =   "Level1.frx":6932
      ScaleHeight     =   174
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   421
      TabIndex        =   5
      Top             =   2040
      Visible         =   0   'False
      Width           =   6345
   End
   Begin VB.PictureBox picMask 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      ForeColor       =   &H80000008&
      Height          =   2640
      Index           =   0
      Left            =   2160
      Picture         =   "Level1.frx":3C494
      ScaleHeight     =   174
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   421
      TabIndex        =   4
      Top             =   1440
      Visible         =   0   'False
      Width           =   6345
   End
   Begin VB.Timer tmrmove 
      Interval        =   100
      Left            =   4800
      Top             =   840
   End
   Begin VB.PictureBox picMask 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      ForeColor       =   &H80000008&
      Height          =   810
      Index           =   1
      Left            =   4920
      Picture         =   "Level1.frx":71FF6
      ScaleHeight     =   52
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   295
      TabIndex        =   3
      Top             =   960
      Visible         =   0   'False
      Width           =   4455
   End
   Begin VB.PictureBox picSprite 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      ForeColor       =   &H80000008&
      Height          =   810
      Index           =   1
      Left            =   4800
      Picture         =   "Level1.frx":7D498
      ScaleHeight     =   52
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   293
      TabIndex        =   2
      Top             =   4800
      Visible         =   0   'False
      Width           =   4425
   End
   Begin VB.PictureBox picSprite 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      ForeColor       =   &H80000008&
      Height          =   1005
      Index           =   3
      Left            =   480
      Picture         =   "Level1.frx":8879A
      ScaleHeight     =   65
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   209
      TabIndex        =   1
      Top             =   5040
      Visible         =   0   'False
      Width           =   3165
   End
   Begin VB.PictureBox picMask 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      ForeColor       =   &H80000008&
      Height          =   1005
      Index           =   3
      Left            =   600
      Picture         =   "Level1.frx":92750
      ScaleHeight     =   65
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   209
      TabIndex        =   0
      Top             =   1200
      Visible         =   0   'False
      Width           =   3165
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
      Left            =   14040
      TabIndex        =   10
      Top             =   0
      Width           =   855
   End
   Begin VB.Label lblExit 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "EXIT"
      BeginProperty Font 
         Name            =   "Old English Text MT"
         Size            =   27.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   660
      Left            =   0
      TabIndex        =   9
      Top             =   120
      Visible         =   0   'False
      Width           =   1605
   End
   Begin VB.Label Emitter 
      AutoSize        =   -1  'True
      BackColor       =   &H00404080&
      Caption         =   "TCP Minion"
      BeginProperty Font 
         Name            =   "Chiller"
         Size            =   27.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   645
      Index           =   2
      Left            =   12840
      TabIndex        =   8
      Top             =   3360
      Width           =   2100
   End
   Begin VB.Label Emitter 
      AutoSize        =   -1  'True
      BackColor       =   &H00404080&
      Caption         =   "TCP Minion"
      BeginProperty Font 
         Name            =   "Chiller"
         Size            =   27.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   645
      Index           =   1
      Left            =   12840
      TabIndex        =   7
      Top             =   1080
      Width           =   2100
   End
   Begin VB.Label Emitter 
      AutoSize        =   -1  'True
      BackColor       =   &H00404080&
      Caption         =   "TCP Minion"
      BeginProperty Font 
         Name            =   "Chiller"
         Size            =   27.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   645
      Index           =   3
      Left            =   12840
      TabIndex        =   6
      Top             =   6480
      Width           =   2100
   End
   Begin VB.Image router 
      Height          =   1470
      Index           =   3
      Left            =   11040
      Picture         =   "Level1.frx":9C706
      Top             =   6840
      Width           =   420
   End
   Begin VB.Image router 
      Height          =   1470
      Index           =   2
      Left            =   6960
      Picture         =   "Level1.frx":9E770
      Top             =   6840
      Width           =   420
   End
   Begin VB.Image router 
      Height          =   1470
      Index           =   1
      Left            =   2880
      Picture         =   "Level1.frx":A07DA
      Top             =   6840
      Width           =   420
   End
   Begin VB.Shape Shape1 
      Height          =   1815
      Left            =   13680
      Top             =   120
      Width           =   1215
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   1
      Left            =   120
      Picture         =   "Level1.frx":A2844
      Stretch         =   -1  'True
      Top             =   5400
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   2
      Left            =   120
      Picture         =   "Level1.frx":A2EDD
      Stretch         =   -1  'True
      Top             =   5400
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   3
      Left            =   120
      Picture         =   "Level1.frx":A3576
      Stretch         =   -1  'True
      Top             =   5400
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   4
      Left            =   120
      Picture         =   "Level1.frx":A3C0F
      Stretch         =   -1  'True
      Top             =   5400
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   5
      Left            =   120
      Picture         =   "Level1.frx":A42A8
      Stretch         =   -1  'True
      Top             =   5400
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   6
      Left            =   120
      Picture         =   "Level1.frx":A4941
      Stretch         =   -1  'True
      Top             =   5400
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   7
      Left            =   120
      Picture         =   "Level1.frx":A4FDA
      Stretch         =   -1  'True
      Top             =   5400
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   8
      Left            =   120
      Picture         =   "Level1.frx":A5673
      Stretch         =   -1  'True
      Top             =   5400
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   9
      Left            =   120
      Picture         =   "Level1.frx":A5D0C
      Stretch         =   -1  'True
      Top             =   5400
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   10
      Left            =   120
      Picture         =   "Level1.frx":A63A5
      Stretch         =   -1  'True
      Top             =   5400
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   11
      Left            =   120
      Picture         =   "Level1.frx":A6A3E
      Stretch         =   -1  'True
      Top             =   5400
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   12
      Left            =   120
      Picture         =   "Level1.frx":A70D7
      Stretch         =   -1  'True
      Top             =   5400
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   13
      Left            =   120
      Picture         =   "Level1.frx":A7770
      Stretch         =   -1  'True
      Top             =   5400
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   14
      Left            =   120
      Picture         =   "Level1.frx":A7E09
      Stretch         =   -1  'True
      Top             =   5400
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   15
      Left            =   120
      Picture         =   "Level1.frx":A84A2
      Stretch         =   -1  'True
      Top             =   5400
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   16
      Left            =   120
      Picture         =   "Level1.frx":A8B3B
      Stretch         =   -1  'True
      Top             =   5400
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   17
      Left            =   120
      Picture         =   "Level1.frx":A91D4
      Stretch         =   -1  'True
      Top             =   5400
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   18
      Left            =   120
      Picture         =   "Level1.frx":A986D
      Stretch         =   -1  'True
      Top             =   5400
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   19
      Left            =   120
      Picture         =   "Level1.frx":A9F06
      Stretch         =   -1  'True
      Top             =   5400
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   20
      Left            =   120
      Picture         =   "Level1.frx":AA59F
      Stretch         =   -1  'True
      Top             =   5400
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   21
      Left            =   120
      Picture         =   "Level1.frx":AAC38
      Stretch         =   -1  'True
      Top             =   5400
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   22
      Left            =   120
      Picture         =   "Level1.frx":AB2D1
      Stretch         =   -1  'True
      Top             =   5400
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   23
      Left            =   120
      Picture         =   "Level1.frx":AB96A
      Stretch         =   -1  'True
      Top             =   5400
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   24
      Left            =   120
      Picture         =   "Level1.frx":AC003
      Stretch         =   -1  'True
      Top             =   5400
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   25
      Left            =   120
      Picture         =   "Level1.frx":AC69C
      Stretch         =   -1  'True
      Top             =   5400
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   26
      Left            =   120
      Picture         =   "Level1.frx":ACD35
      Stretch         =   -1  'True
      Top             =   5400
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   27
      Left            =   120
      Picture         =   "Level1.frx":AD3CE
      Stretch         =   -1  'True
      Top             =   5400
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   28
      Left            =   120
      Picture         =   "Level1.frx":ADA67
      Stretch         =   -1  'True
      Top             =   5400
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   29
      Left            =   120
      Picture         =   "Level1.frx":AE100
      Stretch         =   -1  'True
      Top             =   5400
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   30
      Left            =   120
      Picture         =   "Level1.frx":AE799
      Stretch         =   -1  'True
      Top             =   5400
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   31
      Left            =   120
      Picture         =   "Level1.frx":AEE32
      Stretch         =   -1  'True
      Top             =   5400
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   32
      Left            =   120
      Picture         =   "Level1.frx":AF4CB
      Stretch         =   -1  'True
      Top             =   5400
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   33
      Left            =   120
      Picture         =   "Level1.frx":AFB64
      Stretch         =   -1  'True
      Top             =   5400
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   34
      Left            =   120
      Picture         =   "Level1.frx":B01FD
      Stretch         =   -1  'True
      Top             =   5400
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   35
      Left            =   120
      Picture         =   "Level1.frx":B0896
      Stretch         =   -1  'True
      Top             =   5400
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   36
      Left            =   120
      Picture         =   "Level1.frx":B0F2F
      Stretch         =   -1  'True
      Top             =   5400
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   37
      Left            =   120
      Picture         =   "Level1.frx":B15C8
      Stretch         =   -1  'True
      Top             =   5400
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   38
      Left            =   120
      Picture         =   "Level1.frx":B1C61
      Stretch         =   -1  'True
      Top             =   5400
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   39
      Left            =   120
      Picture         =   "Level1.frx":B22FA
      Stretch         =   -1  'True
      Top             =   5400
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   40
      Left            =   120
      Picture         =   "Level1.frx":B2993
      Stretch         =   -1  'True
      Top             =   5400
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   41
      Left            =   120
      Picture         =   "Level1.frx":B302C
      Stretch         =   -1  'True
      Top             =   5400
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   42
      Left            =   120
      Picture         =   "Level1.frx":B36C5
      Stretch         =   -1  'True
      Top             =   5400
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   43
      Left            =   120
      Picture         =   "Level1.frx":B3D5E
      Stretch         =   -1  'True
      Top             =   5400
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   44
      Left            =   120
      Picture         =   "Level1.frx":B43F7
      Stretch         =   -1  'True
      Top             =   5400
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   45
      Left            =   120
      Picture         =   "Level1.frx":B4A90
      Stretch         =   -1  'True
      Top             =   5400
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   46
      Left            =   120
      Picture         =   "Level1.frx":B5129
      Stretch         =   -1  'True
      Top             =   5400
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   47
      Left            =   120
      Picture         =   "Level1.frx":B57C2
      Stretch         =   -1  'True
      Top             =   5400
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   48
      Left            =   120
      Picture         =   "Level1.frx":B5E5B
      Stretch         =   -1  'True
      Top             =   5400
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   49
      Left            =   120
      Picture         =   "Level1.frx":B64F4
      Stretch         =   -1  'True
      Top             =   5400
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   50
      Left            =   120
      Picture         =   "Level1.frx":B6B8D
      Stretch         =   -1  'True
      Top             =   5400
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   51
      Left            =   120
      Picture         =   "Level1.frx":B7226
      Stretch         =   -1  'True
      Top             =   5400
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   52
      Left            =   120
      Picture         =   "Level1.frx":B78BF
      Stretch         =   -1  'True
      Top             =   5400
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   53
      Left            =   120
      Picture         =   "Level1.frx":B7F58
      Stretch         =   -1  'True
      Top             =   5400
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   54
      Left            =   120
      Picture         =   "Level1.frx":B85F1
      Stretch         =   -1  'True
      Top             =   5400
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   55
      Left            =   120
      Picture         =   "Level1.frx":B8C8A
      Stretch         =   -1  'True
      Top             =   5400
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   56
      Left            =   120
      Picture         =   "Level1.frx":B9323
      Stretch         =   -1  'True
      Top             =   5400
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   57
      Left            =   120
      Picture         =   "Level1.frx":B99BC
      Stretch         =   -1  'True
      Top             =   5400
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   58
      Left            =   120
      Picture         =   "Level1.frx":BA055
      Stretch         =   -1  'True
      Top             =   5400
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   59
      Left            =   120
      Picture         =   "Level1.frx":BA6EE
      Stretch         =   -1  'True
      Top             =   5400
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   60
      Left            =   120
      Picture         =   "Level1.frx":BAD87
      Stretch         =   -1  'True
      Top             =   5400
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   61
      Left            =   120
      Picture         =   "Level1.frx":BB420
      Stretch         =   -1  'True
      Top             =   5400
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   62
      Left            =   120
      Picture         =   "Level1.frx":BBAB9
      Stretch         =   -1  'True
      Top             =   5400
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   63
      Left            =   120
      Picture         =   "Level1.frx":BC152
      Stretch         =   -1  'True
      Top             =   5400
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   64
      Left            =   120
      Picture         =   "Level1.frx":BC7EB
      Stretch         =   -1  'True
      Top             =   5400
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   65
      Left            =   120
      Picture         =   "Level1.frx":BCE84
      Stretch         =   -1  'True
      Top             =   5400
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   66
      Left            =   120
      Picture         =   "Level1.frx":BD51D
      Stretch         =   -1  'True
      Top             =   5400
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   67
      Left            =   120
      Picture         =   "Level1.frx":BDBB6
      Stretch         =   -1  'True
      Top             =   5400
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   68
      Left            =   120
      Picture         =   "Level1.frx":BE24F
      Stretch         =   -1  'True
      Top             =   5400
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   69
      Left            =   120
      Picture         =   "Level1.frx":BE8E8
      Stretch         =   -1  'True
      Top             =   5400
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   70
      Left            =   120
      Picture         =   "Level1.frx":BEF81
      Stretch         =   -1  'True
      Top             =   5400
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   71
      Left            =   120
      Picture         =   "Level1.frx":BF61A
      Stretch         =   -1  'True
      Top             =   5400
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   72
      Left            =   120
      Picture         =   "Level1.frx":BFCB3
      Stretch         =   -1  'True
      Top             =   5400
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   73
      Left            =   120
      Picture         =   "Level1.frx":C034C
      Stretch         =   -1  'True
      Top             =   5400
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   74
      Left            =   120
      Picture         =   "Level1.frx":C09E5
      Stretch         =   -1  'True
      Top             =   5400
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   75
      Left            =   120
      Picture         =   "Level1.frx":C107E
      Stretch         =   -1  'True
      Top             =   5400
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   76
      Left            =   120
      Picture         =   "Level1.frx":C1717
      Stretch         =   -1  'True
      Top             =   5400
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   77
      Left            =   120
      Picture         =   "Level1.frx":C1DB0
      Stretch         =   -1  'True
      Top             =   5400
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   78
      Left            =   120
      Picture         =   "Level1.frx":C2449
      Stretch         =   -1  'True
      Top             =   5400
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   79
      Left            =   120
      Picture         =   "Level1.frx":C2AE2
      Stretch         =   -1  'True
      Top             =   5400
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   80
      Left            =   120
      Picture         =   "Level1.frx":C317B
      Stretch         =   -1  'True
      Top             =   5400
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   81
      Left            =   120
      Picture         =   "Level1.frx":C3814
      Stretch         =   -1  'True
      Top             =   5400
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   82
      Left            =   120
      Picture         =   "Level1.frx":C3EAD
      Stretch         =   -1  'True
      Top             =   5400
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   83
      Left            =   120
      Picture         =   "Level1.frx":C4546
      Stretch         =   -1  'True
      Top             =   5400
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   84
      Left            =   120
      Picture         =   "Level1.frx":C4BDF
      Stretch         =   -1  'True
      Top             =   5400
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   85
      Left            =   120
      Picture         =   "Level1.frx":C5278
      Stretch         =   -1  'True
      Top             =   5400
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   86
      Left            =   120
      Picture         =   "Level1.frx":C5911
      Stretch         =   -1  'True
      Top             =   5400
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   87
      Left            =   120
      Picture         =   "Level1.frx":C5FAA
      Stretch         =   -1  'True
      Top             =   5400
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   88
      Left            =   120
      Picture         =   "Level1.frx":C6643
      Stretch         =   -1  'True
      Top             =   5400
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   89
      Left            =   120
      Picture         =   "Level1.frx":C6CDC
      Stretch         =   -1  'True
      Top             =   5400
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   90
      Left            =   120
      Picture         =   "Level1.frx":C7375
      Stretch         =   -1  'True
      Top             =   5400
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   91
      Left            =   120
      Picture         =   "Level1.frx":C7A0E
      Stretch         =   -1  'True
      Top             =   5400
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   92
      Left            =   120
      Picture         =   "Level1.frx":C80A7
      Stretch         =   -1  'True
      Top             =   5400
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   93
      Left            =   120
      Picture         =   "Level1.frx":C8740
      Stretch         =   -1  'True
      Top             =   5400
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   94
      Left            =   120
      Picture         =   "Level1.frx":C8DD9
      Stretch         =   -1  'True
      Top             =   5400
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   95
      Left            =   120
      Picture         =   "Level1.frx":C9472
      Stretch         =   -1  'True
      Top             =   5400
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   96
      Left            =   120
      Picture         =   "Level1.frx":C9B0B
      Stretch         =   -1  'True
      Top             =   5400
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   97
      Left            =   120
      Picture         =   "Level1.frx":CA1A4
      Stretch         =   -1  'True
      Top             =   5400
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   98
      Left            =   120
      Picture         =   "Level1.frx":CA83D
      Stretch         =   -1  'True
      Top             =   5400
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   99
      Left            =   120
      Picture         =   "Level1.frx":CAED6
      Stretch         =   -1  'True
      Top             =   5400
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   100
      Left            =   120
      Picture         =   "Level1.frx":CB56F
      Stretch         =   -1  'True
      Top             =   5400
      Visible         =   0   'False
      Width           =   285
   End
End
Attribute VB_Name = "Level1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim H(0 To 10) As Integer, W(0 To 10) As Integer
Dim frameX(0 To 10) As Integer, frameY(0 To 10) As Integer
Dim sngX As Single, sngY As Single
Dim A As Integer, blnShoot As Boolean
Dim Shots As Integer, Spare As Long
Dim Jumping As Boolean
Dim Win As Boolean, Hooked(1 To 3) As Boolean
Dim GArc(1 To 10, 1 To 2) As Integer, RArc(1 To 30, 1 To 2) As Integer, BArc(1 To 2) As Integer
Dim Radius(1 To 10, 1 To 3) As Integer
Dim Counter As Integer
Dim Ground(1 To 2) As Single
Dim Faller As Boolean
Dim Hits(1 To 10) As Integer

Dim Done As Integer
Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
Select Case KeyCode
Case 27
End
Case vbKeyLeft
    'To enable movement while jumping
        If A <> 3 Then
            A = 0
            frameY(0) = 1
            frameX(0) = frameX(0) - 1
            If frameX(0) < 0 Then frameX(0) = 5
        End If
        
    'Position change
        sngX = sngX - 5


    Case vbKeyRight
    'To enable movement while jumping
        If A <> 3 Then
            A = 0
            frameY(0) = 1
            frameX(0) = frameX(0) + 1
            If frameX(0) > 5 Then frameX(0) = 0
        End If

    'Position change
        sngX = sngX + 5

    Case vbKeyDown

        If A <> 3 Then blnShoot = True 'Show shoot animation
            frameX(1) = frameX(1) + 1
            If frameX(1) > 3 Then frameX(1) = 0
            Call Shoot
    
    
    Case vbKeyUp
        A = 3
        Call Jump

Case vbKeyR

Finallvl.Show
    Unload Me
    Win = True
End Select
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer)
If Win = True Then Exit Sub
    
If A = 3 Then Exit Sub ' If jumping

'Rest to first frame
A = 0
frameY(0) = 0
frameX(0) = 0
blnShoot = False

End Sub

Private Sub Form_Load()
Dim Q As Integer
'Red signal coordinates
    For Spare = Emitter.LBound To Emitter.UBound
        
        RArc(Spare, 1) = Emitter(Spare).Left
        RArc(Spare, 2) = Emitter(Spare).Top + Emitter(Spare).Height / 2
        Radius(Spare, 2) = 3
    
    Next Spare

'Green signals
    For Spare = router.LBound To router.UBound

        GArc(Spare, 1) = router(Spare).Left + router(Spare).Width / 2
        GArc(Spare, 2) = router(Spare).Top
        Radius(Spare, 1) = 3
    
    Next Spare
    
BArc(1) = lblExit.Left + lblExit.Width
BArc(2) = lblExit.Top + lblExit.Height / 2

'frame dimensions
    H(0) = 83
    W(0) = 65

    H(1) = 83 / 2
    W(1) = 68

    H(3) = 50
    W(3) = 50

'Defaults
    sngX = 0
    sngY = router(1).Top + 20

    Shots = Bullet.LBound

End Sub



Private Sub Quit_Click()
End
End Sub

Private Sub tmrmove_Timer()
If Win = True Then Exit Sub

Cls
'Bitblt function
    bitblt Me.hDC, sngX, sngY, W(A), H(A), picMask(A).hDC, _
         frameX(A) * W(A) + 3, frameY(A) * H(A) + 3, SRCAND
    bitblt Me.hDC, sngX, sngY, W(A), H(A), picSprite(A).hDC, _
    frameX(A) * W(A) + 3, frameY(A) * H(A) + 3, SRCINVERT

'Shooting animation
    If blnShoot = True Then
        
        bitblt Me.hDC, sngX + 2, sngY + 3, W(1), H(1), picMask(1).hDC, _
            frameX(1) * W(1) + 3, frameY(1) * H(1) + 3, SRCAND
        bitblt Me.hDC, sngX + 2, sngY + 3, W(1), H(1), picSprite(1).hDC, _
            frameX(1) * W(1) + 3, frameY(1) * H(1) + 3, SRCINVERT
    
    End If

Call RedSignal
Call GreenSignal
Call GreenFall
Call Collision
If Done >= 3 Then
lblExit.Visible = True
Call BlueSignal
End If
   End Sub


Private Sub Shoot()
If Win = True Then Exit Sub

'Position and display bullets
    Bullet(Shots).Visible = True
    Bullet(Shots).Top = sngY + H(A) / 3
    Bullet(Shots).Left = sngX + W(A)

'Shoot
    Do Until Bullet(Shots).Left > Me.ScaleWidth
        DoEvents

        Bullet(Shots).Left = Bullet(Shots).Left + 10

        Loop

'Shots increment
    Shots = Shots + 1
End Sub

Private Sub Jump()
If Win = True Then Exit Sub

'Exit sub statments
    If Jumping = True Then Exit Sub
    Jumping = True

'Maximum height of jump
    Dim Max As Integer
    Max = sngY - 200

'Jump
    Do Until sngY < Max
    'Delay
        DoEvents
        For Spare = -200000 To 200000
        Next
        For Spare = -200000 To 200000
        Next

    'Frame change
        frameX(3) = frameX(3) + 1
        If frameX(3) > 3 Then frameX(3) = 0

    'Position change
        sngY = sngY - 10
    Loop

Call Fall
End Sub
Private Sub Fall()
If Win = True Then Exit Sub

'Fall to ground
    Do Until sngY > router(1).Top + 20 Or Point(Ground(1), Ground(2)) = vbGreen
    
    'Delay
        DoEvents
        For Spare = -200000 To 200000
        Next

    'Frame change

        frameX(3) = frameX(3) + 1
        If frameX(3) > 3 Then frameX(3) = 0

    'Position change
        sngY = sngY + 10
    Loop

'Reset
    A = 0
    Jumping = False

End Sub

Private Sub RedSignal()
If Win = True Then Exit Sub

Dim Q As Integer 'For second indexs

'grow, draw and move
    For Spare = 1 To Emitter.UBound

        Radius(Spare, 2) = Radius(Spare, 2) + 1
        RArc(Spare, 1) = RArc(Spare, 1) - 10
        Circle (RArc(Spare, 1), RArc(Spare, 2)), Radius(Spare, 2), vbRed, 2, 4, 4

        If Hooked(2) = True Then sngX = RArc(Spare, 1) - Radius(Spare, 2) 'Carry off player
    
    'Reset
        If RArc(Spare, 1) < Me.ScaleLeft Then
            Radius(Spare, 2) = 2
            RArc(Spare, 1) = Emitter(Spare).Left
        End If
    Next Spare

'Collision
    For Spare = sngY To sngY + H(A)
        For Q = sngX To sngX + W(A)

            If Point(Q, Spare) = vbRed Then
                Hooked(1) = False
                Hooked(2) = True
            End If
        Next Q
    Next Spare

'Disable hook 2
    If sngX <= -W(A) Then Hooked(2) = False

End Sub

Private Sub GreenSignal()

If Win = True Then Exit Sub

Dim Q As Integer 'For second index


For Spare = router.LBound To router.UBound

'Draw, grow and move
    Radius(Spare, 1) = Radius(Spare, 1) + 20
    GArc(Spare, 2) = GArc(Spare, 2) - 60
    Circle (GArc(Spare, 1), GArc(Spare, 2)), Radius(Spare, 1), vbGreen, 0, 3, 0.5

    If GArc(Spare, 2) < 170 - Counter Then 'Respawn
        Radius(Spare, 1) = 2
        GArc(Spare, 2) = router(Spare).Top
        Counter = Counter + 20
        If Counter > 60 Then Counter = 0
    End If

'hook
    If Hooked(1) = True Then
        sngY = GArc(Spare, 2) - Radius(Spare, 1) - H(A)
        A = 0
    End If

Next Spare


'Collision
    For Spare = sngY To sngY + H(A)
        For Q = sngX To sngX + W(A)

            If Point(Q, Spare) = vbGreen Then

                Ground(1) = Q
                Ground(2) = Spare
                Hooked(1) = True
            End If

        Next Q
    Next Spare

If sngY <= 250 Then Hooked(1) = False

End Sub

Private Sub GreenFall()
If Win = True Then Exit Sub
If Jumping = True Then Exit Sub
'Green fall

If sngY < router(1).Top + 20 Then
    If Point(Ground(1), Ground(2)) <> vbGreen Then
        Faller = True
    End If
End If

If Faller = False Then Exit Sub
    
A = 3
frameX(3) = frameX(3) + 1
If frameX(3) > 3 Then frameX(3) = 0
sngY = sngY + 10

If Point(Ground(1), Ground(2)) = vbGreen Or sngY > router(1).Top + 20 Then
    Faller = False
    A = 0
End If

End Sub

Private Sub Collision()
If Win = True Then Exit Sub

Dim Q As Integer
For Spare = Emitter.LBound To Emitter.UBound
For Q = Bullet.LBound To Bullet.UBound
If Bullet(Q).Left + Bullet(Q).Width + 5 >= Emitter(Spare).Left Then
If Bullet(Q).Top + Bullet(Q).Height >= Emitter(Spare).Top And Bullet(Q).Top <= Emitter(Spare).Top + Emitter(Spare).Height Then
Hits(Spare) = Hits(Spare) + 1
End If
End If

If Hits(Spare) > 3 Then
    Emitter(Spare).Left = -20000
    Done = Done + 1
    Hits(Spare) = 0
    Exit Sub
End If
Next Q

Next Spare


End Sub


Private Sub BlueSignal()
If Win = True Then Exit Sub
Dim Q As Integer
'grow, draw and move

        Radius(1, 3) = 20
        BArc(1) = BArc(1) + 50
        Circle (BArc(1), BArc(2)), Radius(1, 3), vbCyan, 5, 1, 4

        If Hooked(3) = True Then 'Carry off player
            sngX = BArc(1) + Radius(1, 3) + W(A) / 2
            sngY = BArc(2) - H(A) / 3
            A = 0
        End If
    'Reset
        If BArc(1) > Me.ScaleWidth Then
            
            BArc(1) = lblExit.Left + lblExit.Width
        End If

'Collision
    For Spare = sngY To sngY + H(A)
        For Q = sngX To sngX + W(A)

            If Point(Q, Spare) = vbCyan Then Hooked(3) = True
        Next Q
        Next Spare

'Disable hook 2
    If sngX > Me.ScaleWidth And Hooked(3) = True Then
    
    Finallvl.Show
    Unload Me
    Win = True
    End If
End Sub

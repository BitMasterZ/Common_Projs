VERSION 5.00
Begin VB.Form frmLvl2 
   AutoRedraw      =   -1  'True
   BorderStyle     =   0  'None
   ClientHeight    =   10800
   ClientLeft      =   630
   ClientTop       =   615
   ClientWidth     =   14355
   ControlBox      =   0   'False
   Icon            =   "frmLvl2.frx":0000
   LinkTopic       =   "Form1"
   Picture         =   "frmLvl2.frx":0ECA
   ScaleHeight     =   720
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   957
   Begin VB.Frame fmeUp 
      BackColor       =   &H00000000&
      BorderStyle     =   0  'None
      Caption         =   "Frame1"
      Height          =   3015
      Index           =   0
      Left            =   9360
      TabIndex        =   54
      Top             =   840
      Visible         =   0   'False
      Width           =   3735
      Begin VB.CommandButton cmdDone 
         Caption         =   "Done"
         BeginProperty Font 
            Name            =   "Papyrus"
            Size            =   24
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Index           =   0
         Left            =   1080
         TabIndex        =   55
         Top             =   1920
         Width           =   1455
      End
      Begin VB.Label lblTip 
         BackStyle       =   0  'Transparent
         Caption         =   " Jump Upgrade: Higher Jump"
         BeginProperty Font 
            Name            =   "Agency FB"
            Size            =   24
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   1575
         Index           =   0
         Left            =   600
         TabIndex        =   56
         Top             =   360
         Width           =   2415
      End
   End
   Begin VB.Frame fmeUp 
      BackColor       =   &H00000000&
      BorderStyle     =   0  'None
      Caption         =   "Frame1"
      Height          =   3015
      Index           =   1
      Left            =   9360
      TabIndex        =   51
      Top             =   840
      Visible         =   0   'False
      Width           =   3735
      Begin VB.CommandButton cmdDone 
         Caption         =   "Done"
         BeginProperty Font 
            Name            =   "Papyrus"
            Size            =   24
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Index           =   1
         Left            =   1080
         TabIndex        =   52
         Top             =   1920
         Width           =   1455
      End
      Begin VB.Label lblTip 
         BackStyle       =   0  'Transparent
         Caption         =   " Jump Upgrade: Quad Jump"
         BeginProperty Font 
            Name            =   "Agency FB"
            Size            =   24
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   1575
         Index           =   1
         Left            =   600
         TabIndex        =   53
         Top             =   360
         Width           =   2415
      End
   End
   Begin VB.Frame fmeUp 
      BackColor       =   &H00000000&
      BorderStyle     =   0  'None
      Caption         =   "Frame1"
      Height          =   3015
      Index           =   2
      Left            =   9360
      TabIndex        =   48
      Top             =   840
      Visible         =   0   'False
      Width           =   3735
      Begin VB.CommandButton cmdDone 
         Caption         =   "Done"
         BeginProperty Font 
            Name            =   "Papyrus"
            Size            =   24
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Index           =   2
         Left            =   1080
         TabIndex        =   49
         Top             =   1920
         Width           =   1455
      End
      Begin VB.Label lblTip 
         BackStyle       =   0  'Transparent
         Caption         =   "Health Upgrade: Health Extended"
         BeginProperty Font 
            Name            =   "Agency FB"
            Size            =   24
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   1575
         Index           =   2
         Left            =   600
         TabIndex        =   50
         Top             =   360
         Width           =   2415
      End
   End
   Begin VB.Frame fmeUp 
      BackColor       =   &H00000000&
      BorderStyle     =   0  'None
      Caption         =   "Frame1"
      Height          =   3015
      Index           =   3
      Left            =   9360
      TabIndex        =   45
      Top             =   840
      Visible         =   0   'False
      Width           =   3735
      Begin VB.CommandButton cmdDone 
         Caption         =   "Done"
         BeginProperty Font 
            Name            =   "Papyrus"
            Size            =   24
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Index           =   3
         Left            =   1080
         TabIndex        =   46
         Top             =   1920
         Width           =   1455
      End
      Begin VB.Label lblTip 
         BackStyle       =   0  'Transparent
         Caption         =   "No Upgrades"
         BeginProperty Font 
            Name            =   "Agency FB"
            Size            =   24
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   1575
         Index           =   3
         Left            =   600
         TabIndex        =   47
         Top             =   360
         Width           =   2415
      End
   End
   Begin VB.Timer tmrKratos 
      Interval        =   1
      Left            =   13440
      Top             =   1800
   End
   Begin VB.Frame fmeGround 
      BackColor       =   &H00404040&
      BorderStyle     =   0  'None
      Caption         =   "Frame1"
      ForeColor       =   &H00404040&
      Height          =   375
      Index           =   1
      Left            =   15480
      TabIndex        =   44
      Top             =   3000
      Width           =   2175
   End
   Begin VB.Frame fmeGround 
      BackColor       =   &H00404040&
      BorderStyle     =   0  'None
      Caption         =   "Frame1"
      ForeColor       =   &H00404040&
      Height          =   375
      Index           =   6
      Left            =   15480
      TabIndex        =   43
      Top             =   3000
      Width           =   1935
   End
   Begin VB.Frame fmeGround 
      BackColor       =   &H00404040&
      BorderStyle     =   0  'None
      Caption         =   "Frame1"
      ForeColor       =   &H00404040&
      Height          =   375
      Index           =   8
      Left            =   120
      TabIndex        =   42
      Top             =   8880
      Width           =   1815
   End
   Begin VB.Frame fmeGround 
      BackColor       =   &H00404040&
      BorderStyle     =   0  'None
      Caption         =   "Frame1"
      ForeColor       =   &H00404040&
      Height          =   375
      Index           =   0
      Left            =   15480
      TabIndex        =   41
      Top             =   3000
      Width           =   1935
   End
   Begin VB.PictureBox SKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1230
      Index           =   11
      Left            =   6240
      Picture         =   "frmLvl2.frx":231F5
      ScaleHeight     =   78
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   72
      TabIndex        =   40
      Top             =   4560
      Visible         =   0   'False
      Width           =   1140
   End
   Begin VB.PictureBox MKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1245
      Index           =   11
      Left            =   6120
      Picture         =   "frmLvl2.frx":23AE8
      ScaleHeight     =   79
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   75
      TabIndex        =   39
      Top             =   4560
      Visible         =   0   'False
      Width           =   1185
   End
   Begin VB.PictureBox MKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1005
      Index           =   10
      Left            =   7320
      Picture         =   "frmLvl2.frx":24410
      ScaleHeight     =   63
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   113
      TabIndex        =   38
      Top             =   4800
      Visible         =   0   'False
      Width           =   1755
   End
   Begin VB.PictureBox SKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1005
      Index           =   10
      Left            =   7320
      Picture         =   "frmLvl2.frx":252ED
      ScaleHeight     =   63
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   113
      TabIndex        =   37
      Top             =   4800
      Visible         =   0   'False
      Width           =   1755
   End
   Begin VB.PictureBox MKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   3105
      Index           =   9
      Left            =   0
      Picture         =   "frmLvl2.frx":26326
      ScaleHeight     =   203
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   522
      TabIndex        =   36
      Top             =   0
      Visible         =   0   'False
      Width           =   7890
   End
   Begin VB.PictureBox SKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   3105
      Index           =   9
      Left            =   0
      Picture         =   "frmLvl2.frx":2AACD
      ScaleHeight     =   203
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   522
      TabIndex        =   35
      Top             =   0
      Visible         =   0   'False
      Width           =   7890
   End
   Begin VB.PictureBox SKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   3105
      Index           =   8
      Left            =   -240
      Picture         =   "frmLvl2.frx":2F4F4
      ScaleHeight     =   203
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   522
      TabIndex        =   34
      Top             =   0
      Visible         =   0   'False
      Width           =   7890
   End
   Begin VB.PictureBox MKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   3105
      Index           =   8
      Left            =   0
      Picture         =   "frmLvl2.frx":33DD9
      ScaleHeight     =   203
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   522
      TabIndex        =   33
      Top             =   -120
      Visible         =   0   'False
      Width           =   7890
   End
   Begin VB.PictureBox SKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1020
      Index           =   7
      Left            =   4200
      Picture         =   "frmLvl2.frx":382BC
      ScaleHeight     =   64
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   525
      TabIndex        =   32
      Top             =   9720
      Visible         =   0   'False
      Width           =   7935
   End
   Begin VB.PictureBox MKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1020
      Index           =   7
      Left            =   4200
      Picture         =   "frmLvl2.frx":3ACCC
      ScaleHeight     =   64
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   525
      TabIndex        =   31
      Top             =   9720
      Visible         =   0   'False
      Width           =   7935
   End
   Begin VB.PictureBox MKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1050
      Index           =   6
      Left            =   4200
      Picture         =   "frmLvl2.frx":3D2ED
      ScaleHeight     =   66
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   394
      TabIndex        =   30
      Top             =   8520
      Visible         =   0   'False
      Width           =   5970
   End
   Begin VB.PictureBox SKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1050
      Index           =   6
      Left            =   4200
      Picture         =   "frmLvl2.frx":3F7F0
      ScaleHeight     =   66
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   394
      TabIndex        =   29
      Top             =   8520
      Visible         =   0   'False
      Width           =   5970
   End
   Begin VB.PictureBox SKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1065
      Index           =   5
      Left            =   10200
      Picture         =   "frmLvl2.frx":41F72
      ScaleHeight     =   67
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   51
      TabIndex        =   28
      Top             =   2160
      Visible         =   0   'False
      Width           =   825
   End
   Begin VB.PictureBox MKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1065
      Index           =   5
      Left            =   10200
      Picture         =   "frmLvl2.frx":4297F
      ScaleHeight     =   67
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   51
      TabIndex        =   27
      Top             =   2160
      Visible         =   0   'False
      Width           =   825
   End
   Begin VB.PictureBox SKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1065
      Index           =   4
      Left            =   9600
      Picture         =   "frmLvl2.frx":4332A
      ScaleHeight     =   67
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   51
      TabIndex        =   26
      Top             =   6360
      Visible         =   0   'False
      Width           =   825
   End
   Begin VB.PictureBox MKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1065
      Index           =   4
      Left            =   9600
      Picture         =   "frmLvl2.frx":43D1F
      ScaleHeight     =   67
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   51
      TabIndex        =   25
      Top             =   6360
      Visible         =   0   'False
      Width           =   825
   End
   Begin VB.PictureBox MKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1005
      Index           =   3
      Left            =   4200
      Picture         =   "frmLvl2.frx":4464F
      ScaleHeight     =   63
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   319
      TabIndex        =   24
      Top             =   3600
      Visible         =   0   'False
      Width           =   4845
   End
   Begin VB.PictureBox SKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1005
      Index           =   3
      Left            =   4200
      Picture         =   "frmLvl2.frx":46537
      ScaleHeight     =   63
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   319
      TabIndex        =   23
      Top             =   3600
      Visible         =   0   'False
      Width           =   4845
   End
   Begin VB.PictureBox SKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1005
      Index           =   2
      Left            =   10440
      Picture         =   "frmLvl2.frx":487CF
      ScaleHeight     =   63
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   62
      TabIndex        =   22
      Top             =   6480
      Visible         =   0   'False
      Width           =   990
   End
   Begin VB.PictureBox MKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1065
      Index           =   2
      Left            =   10440
      Picture         =   "frmLvl2.frx":492E4
      ScaleHeight     =   67
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   63
      TabIndex        =   21
      Top             =   6480
      Visible         =   0   'False
      Width           =   1005
   End
   Begin VB.PictureBox SKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1005
      Index           =   1
      Left            =   1320
      Picture         =   "frmLvl2.frx":49E11
      ScaleHeight     =   63
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   319
      TabIndex        =   20
      Top             =   4800
      Visible         =   0   'False
      Width           =   4845
   End
   Begin VB.PictureBox MKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1005
      Index           =   1
      Left            =   1320
      Picture         =   "frmLvl2.frx":4C0D3
      ScaleHeight     =   63
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   319
      TabIndex        =   19
      Top             =   4800
      Visible         =   0   'False
      Width           =   4845
   End
   Begin VB.Timer tmrAnimate 
      Interval        =   1
      Left            =   2160
      Top             =   3240
   End
   Begin VB.PictureBox MKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1080
      Index           =   0
      Left            =   4200
      Picture         =   "frmLvl2.frx":4DF32
      ScaleHeight     =   68
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   508
      TabIndex        =   18
      Top             =   7440
      Visible         =   0   'False
      Width           =   7680
   End
   Begin VB.PictureBox SKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1080
      Index           =   0
      Left            =   4200
      Picture         =   "frmLvl2.frx":51897
      ScaleHeight     =   68
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   508
      TabIndex        =   17
      Top             =   7440
      Visible         =   0   'False
      Width           =   7680
   End
   Begin VB.PictureBox SBox 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1200
      Left            =   9360
      Picture         =   "frmLvl2.frx":55471
      ScaleHeight     =   76
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   334
      TabIndex        =   16
      Top             =   4320
      Visible         =   0   'False
      Width           =   5070
   End
   Begin VB.PictureBox MBox 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1200
      Left            =   9360
      Picture         =   "frmLvl2.frx":57C29
      ScaleHeight     =   76
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   334
      TabIndex        =   15
      Top             =   4320
      Visible         =   0   'False
      Width           =   5070
   End
   Begin VB.Frame fmeGround 
      BackColor       =   &H00404040&
      BorderStyle     =   0  'None
      Caption         =   "Frame1"
      ForeColor       =   &H00404040&
      Height          =   375
      Index           =   10
      Left            =   0
      TabIndex        =   14
      Top             =   3000
      Width           =   2175
   End
   Begin VB.Frame fmeGround 
      BackColor       =   &H00404040&
      BorderStyle     =   0  'None
      Caption         =   "Frame1"
      ForeColor       =   &H00404040&
      Height          =   375
      Index           =   2
      Left            =   15480
      TabIndex        =   13
      Top             =   3000
      Width           =   1935
   End
   Begin VB.Frame fmeGround 
      BackColor       =   &H00404040&
      BorderStyle     =   0  'None
      Caption         =   "Frame1"
      ForeColor       =   &H00404040&
      Height          =   375
      Index           =   4
      Left            =   15480
      TabIndex        =   12
      Top             =   3000
      Width           =   1935
   End
   Begin VB.Frame fmeGround 
      BackColor       =   &H00404040&
      BorderStyle     =   0  'None
      Caption         =   "Frame1"
      ForeColor       =   &H00404040&
      Height          =   375
      Index           =   3
      Left            =   15480
      TabIndex        =   11
      Top             =   3000
      Width           =   1935
   End
   Begin VB.Frame fmeGround 
      BackColor       =   &H00404040&
      BorderStyle     =   0  'None
      Caption         =   "Frame1"
      ForeColor       =   &H00404040&
      Height          =   375
      Index           =   5
      Left            =   15480
      TabIndex        =   10
      Top             =   3000
      Width           =   1935
   End
   Begin VB.PictureBox MKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1125
      Index           =   12
      Left            =   10320
      Picture         =   "frmLvl2.frx":598A4
      ScaleHeight     =   71
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   230
      TabIndex        =   9
      Top             =   8520
      Visible         =   0   'False
      Width           =   3510
   End
   Begin VB.PictureBox SKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1125
      Index           =   12
      Left            =   10320
      Picture         =   "frmLvl2.frx":5AF5A
      ScaleHeight     =   71
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   230
      TabIndex        =   8
      Top             =   8520
      Visible         =   0   'False
      Width           =   3510
   End
   Begin VB.Frame fmeGround 
      BackColor       =   &H00404040&
      BorderStyle     =   0  'None
      Caption         =   "Frame1"
      ForeColor       =   &H00404040&
      Height          =   375
      Index           =   9
      Left            =   12240
      TabIndex        =   7
      Top             =   9960
      Width           =   1935
   End
   Begin VB.PictureBox MSwitch 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   840
      Left            =   12720
      Picture         =   "frmLvl2.frx":5C991
      ScaleHeight     =   52
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   111
      TabIndex        =   6
      Top             =   6600
      Visible         =   0   'False
      Width           =   1725
   End
   Begin VB.PictureBox sSwitch 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   840
      Left            =   12720
      Picture         =   "frmLvl2.frx":5D654
      ScaleHeight     =   52
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   111
      TabIndex        =   5
      Top             =   6600
      Visible         =   0   'False
      Width           =   1725
   End
   Begin VB.PictureBox SKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   900
      Index           =   13
      Left            =   4200
      Picture         =   "frmLvl2.frx":5E1E2
      ScaleHeight     =   56
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   358
      TabIndex        =   4
      Top             =   6600
      Visible         =   0   'False
      Width           =   5430
   End
   Begin VB.PictureBox MKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   900
      Index           =   13
      Left            =   4200
      Picture         =   "frmLvl2.frx":60719
      ScaleHeight     =   56
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   358
      TabIndex        =   3
      Top             =   5760
      Visible         =   0   'False
      Width           =   5430
   End
   Begin VB.Frame fmeGround 
      BackColor       =   &H00404040&
      BorderStyle     =   0  'None
      Caption         =   "Frame1"
      ForeColor       =   &H00404040&
      Height          =   375
      Index           =   7
      Left            =   15480
      TabIndex        =   2
      Top             =   3000
      Width           =   1935
   End
   Begin VB.PictureBox mDoor 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1140
      Left            =   12000
      Picture         =   "frmLvl2.frx":6296B
      ScaleHeight     =   72
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   161
      TabIndex        =   1
      Top             =   5520
      Visible         =   0   'False
      Width           =   2475
   End
   Begin VB.PictureBox sDoor 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1140
      Left            =   12000
      Picture         =   "frmLvl2.frx":63A12
      ScaleHeight     =   72
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   161
      TabIndex        =   0
      Top             =   5520
      Visible         =   0   'False
      Width           =   2475
   End
   Begin VB.Menu mnuGame 
      Caption         =   "Game"
      Begin VB.Menu mnuSkip 
         Caption         =   "Skip"
      End
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
Attribute VB_Name = "frmLvl2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'O
'Date: 8 June, 2012



Dim Kratos As Person, Box As Obj, Switch As Obj, Door As Obj   ' User Defined Types

Dim intDirection As Integer, intRad As Integer, intGroundNum As Integer
Dim intSpare As Integer, sngJSpeed As Single, intRopeIndex As Integer, intJumpNum As Integer
Dim blnJump As Boolean, blnGround As Boolean, blnSwing As Boolean, blnRange As Boolean
Dim intSwingC As Integer, sngPos(1 To 2) As Single, sngRope(1 To 2, 1 To 10) As Single, sngXpos As Single, sngYpos As Single
Dim blnOver As Boolean
Dim intFloorXc(0 To 8) As Integer, intFloorYc(0 To 8) As Integer, intGroundXC As Integer, intGroundYC As Integer
Const sngGravity As Single = 1
Dim intCounter As Integer, intC3 As Integer


Private Sub cmdDone_Click(Index As Integer)
fmeUp(Index).Visible = False
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
'Other Key Movements in tmrKratos

'Jump
If GetAsyncKeyState(vbKeyUp) Then
'Max jump limit reached
    If intJumpNum = Jumps Then Exit Sub
    
'Jump State
    intJumpNum = intJumpNum + 1
    blnJump = True

'Jump
    Kratos.sngY = Kratos.sngY - 10
    sngJSpeed = MJump
   
End If

If GetAsyncKeyState(vbKeyQ) Then
'Range Check
    For intC3 = 1 To 2
        If Kratos.sngX + Kratos.sngWid(11) >= sngRope(1, intC3) - 70 And Kratos.sngX + Kratos.sngWid(11) <= sngRope(1, intC3) + 70 Then
        intRopeIndex = intC3
        Exit For
        End If
    Next intC3
    
'Swing call
    If blnRange = True And Kratos.sngY < 150 Then
        blnSwing = True
        Call Swing
    End If
End If

End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer)
If blnOver = True Then Exit Sub

Select Case KeyCode

    Case vbKeyQ

        blnSwing = False
        blnRange = False
        blnJump = False
        intJumpNum = 0
        
    'Return to default Positions
        sngRope(1, 1) = 200
        sngRope(2, 1) = 350
        sngRope(1, 2) = 700
        sngRope(2, 2) = 350
        
                
     Case vbKeySpace 'Pull complete/ incomplete
        Kratos.intFx(12) = 0
        If Box.blnUsed = False Then Box.intFx = 0
        Kratos.intFx(13) = 0
        
End Select

If blnJump = True Then Exit Sub

Select Case intDirection

    Case 1 'Right
    
        Kratos.PicNum = 0

    Case 2 ' Left
        
        Kratos.PicNum = 2

End Select


End Sub


Private Sub Form_Load()
If blnOver = True Then Exit Sub

'bit blit dimensions
    Kratos.sngWid(0) = 71
    Kratos.sngHei(0) = 65

    Kratos.sngWid(1) = 55
    Kratos.sngHei(1) = 65

    Kratos.sngWid(2) = 71
    Kratos.sngHei(2) = 65

    Kratos.sngWid(3) = 67
    Kratos.sngHei(3) = 65

    Kratos.sngWid(4) = 50
    Kratos.sngHei(4) = 65

    Kratos.sngWid(5) = 50
    Kratos.sngHei(5) = 65

    Kratos.sngWid(6) = 65
    Kratos.sngHei(6) = 65

    Kratos.sngWid(7) = 65
    Kratos.sngHei(7) = 65

    Kratos.sngWid(8) = 66
    Kratos.sngHei(8) = 100

    Kratos.sngWid(9) = 66
    Kratos.sngHei(9) = 100

    Kratos.sngWid(10) = 50
    Kratos.sngHei(10) = 70

    Kratos.sngWid(11) = 50
    Kratos.sngHei(11) = 70

    Kratos.sngWid(12) = 48
    Kratos.sngHei(12) = 70

    Kratos.sngWid(13) = 70
    Kratos.sngHei(13) = 60

    Kratos.sngWid(14) = 45
    Kratos.sngHei(14) = 80

'Floor Movements
    For intSpare = 0 To 8
        intFloorYc(intSpare) = intSpare + 1
        intFloorXc(intSpare) = intSpare - 8
        If intSpare < 8 Then fmeGround(intSpare).Left = Me.ScaleWidth - fmeGround(intSpare).Width
    Next intSpare
    intFloorXc(8) = 15
    intGroundXC = 10


'Object Dimensions
    Box.sngWid = 58
    Box.sngHei = 90

    Switch.sngWid = 50
    Switch.sngHei = 50

    Door.sngWid = 50
    Door.sngHei = 75
    
'Default Dimensions
    
    fmeGround(10).Top = Door.sngHei
    fmeGround(10).Left = 800

    Door.sngX = -500
    Kratos.sngY = 0
    Box.sngX = Me.ScaleWidth / 2 - 10
    Box.sngY = 2

'Intialize
    intRopeIndex = 1
    intSwingC = 5
    intRad = 150
    intGroundYC = 5


'Ropes
        sngRope(1, 1) = 200
        sngRope(2, 1) = 350
        sngRope(1, 2) = 700
        sngRope(2, 2) = 350
        Me.DrawWidth = 5

Call mnuGoal_Click

End Sub

Private Sub mnuControl_Click()
'Show Controls
    frmControls.Show
    Lvl = 2
'Pause Game
    tmrKratos.Interval = 0
    tmrAnimate.Interval = 0
End Sub

Private Sub mnuGoal_Click()
MsgBox ("Level 2 Objective: Open the door" & vbCrLf & "Hint: Use the switch below you and press and hold Q when in contact with ropes to swing")
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
    frmEnding2.Show
    Unload Me
End Sub
Private Sub mnuSkip_Click()
Dim strPass As String
'Enter Password
    strPass = InputBox("Level 3 Password")
'Wrong Password
    If strPass <> "**GOWLvl3**" Then Exit Sub
'Redirect
    frmLvl3.Show
    blnOver = True
    Unload Me
End Sub

Private Sub tmrAnimate_Timer()
If blnOver = True Then Exit Sub

Cls
blnGround = Check()

'Bit Blit
    'Kratos
        bitblt Me.hDC, Kratos.sngX + sngPos(1), Kratos.sngY + sngPos(2), Kratos.sngWid(Kratos.PicNum), Kratos.sngHei(Kratos.PicNum), MKratos(Kratos.PicNum).hDC, _
            Kratos.intFx(Kratos.PicNum) * Kratos.sngWid(Kratos.PicNum), Kratos.intFy(Kratos.PicNum) * Kratos.sngHei(Kratos.PicNum), SRCAND

        bitblt Me.hDC, Kratos.sngX + sngPos(1), Kratos.sngY + sngPos(2), Kratos.sngWid(Kratos.PicNum), Kratos.sngHei(Kratos.PicNum), SKratos(Kratos.PicNum).hDC, _
            Kratos.intFx(Kratos.PicNum) * Kratos.sngWid(Kratos.PicNum), Kratos.intFy(Kratos.PicNum) * Kratos.sngHei(Kratos.PicNum), SRCINVERT

    'Box
        bitblt Me.hDC, Box.sngX, Box.sngY, Box.sngWid, Box.sngHei, MBox.hDC, _
            Box.intFx * Box.sngWid, 0, SRCAND

        bitblt Me.hDC, Box.sngX, Box.sngY, Box.sngWid, Box.sngHei, SBox.hDC, _
            Box.intFx * Box.sngWid, 0, SRCINVERT

    'Switch
        bitblt Me.hDC, Switch.sngX, Switch.sngY, Switch.sngWid, Switch.sngHei, MSwitch.hDC, _
            Switch.intFx * Switch.sngWid, 0, SRCAND

        bitblt Me.hDC, Switch.sngX, Switch.sngY, Switch.sngWid, Switch.sngHei, sSwitch.hDC, _
            Switch.intFx * Switch.sngWid, 0, SRCINVERT
        
    'Door
        bitblt Me.hDC, Door.sngX, Door.sngY, Door.sngWid, Door.sngHei, mDoor.hDC, _
            Door.intFx * Door.sngWid, 0, SRCAND

        bitblt Me.hDC, Door.sngX, Door.sngY, Door.sngWid, Door.sngHei, sDoor.hDC, _
            Door.intFx * Door.sngWid, 0, SRCINVERT
        
        
'Draw ropes
If Switch.blnUsed = False Then
    Line (200, 0)-(sngRope(1, 1), sngRope(2, 1)), vbWhite
    Line (700, 0)-(sngRope(1, 2), sngRope(2, 2)), vbWhite
End If
'Jump
    If blnGround = False And blnSwing = False Then
        
        Kratos.sngY = Kratos.sngY - sngJSpeed
        sngJSpeed = sngJSpeed - sngGravity
        Kratos.PicNum = 10
        If intDirection = 1 Then
            Kratos.intFx(10) = 0
        Else
            Kratos.intFx(10) = 1
        End If

    End If

    
'Dead
    If Kratos.sngY > Me.ScaleHeight Then
        MsgBox ("You are Dead")
        Call Save
        blnOver = True
        frmEnding2.Show
        Unload Me
    End If

'Swing Check
    For sngXpos = Kratos.sngX To Kratos.sngX + Kratos.sngWid(11) + sngPos(1)
        For sngYpos = Kratos.sngY To Kratos.sngY + 5
            If Point(sngXpos, sngYpos) = vbWhite Then blnRange = True
        Next sngYpos
    Next sngXpos
    
    
'Before Switch is pulled
If Switch.blnUsed = False Then
'Cosine Movement
    fmeGround(8).Left = fmeGround(8).Left + intGroundXC
    fmeGround(8).Top = 25 * Cos(1 / 50 * fmeGround(8).Left) + 600
    'Kratos remains stationary
        If blnGround = True And Kratos.sngY + Kratos.sngHei(Kratos.PicNum) + 5 >= fmeGround(8).Top And Kratos.sngY < fmeGround(8).Top + 50 Then Kratos.sngX = Kratos.sngX + intGroundXC
    'Stay within form
        If fmeGround(8).Left <= 0 Or fmeGround(8).Left + fmeGround(8).Width >= Me.ScaleWidth Then intGroundXC = -intGroundXC
    'Move Switch with Platform
        Switch.sngX = fmeGround(8).Left + fmeGround(8).Width - Switch.sngWid
        Switch.sngY = fmeGround(8).Top - Switch.sngHei + 5

'Inverse Cosine Movement
    fmeGround(9).Top = fmeGround(9).Top + intGroundYC
    fmeGround(9).Left = 50 * Cos(1 / 50 * fmeGround(9).Top) + 800
    'Stay within form
        If fmeGround(9).Top + fmeGround(9).Height > Me.ScaleHeight Or fmeGround(9).Top < Box.sngHei Then intGroundYC = -intGroundYC
    'Move Box With Platform
        Box.sngX = fmeGround(9).Left + fmeGround(9).Width - Box.sngWid
        Box.sngY = fmeGround(9).Top - Box.sngHei + 20

Else
'Move Floor
    For intCounter = LBound(intFloorXc) To 7
        fmeGround(intCounter).Top = fmeGround(intCounter).Top + intFloorYc(intCounter)
        fmeGround(intCounter).Left = fmeGround(intCounter).Left + intFloorXc(intCounter)
    'Floor Border collsion
        If fmeGround(intCounter).Top + fmeGround(intCounter).Height > Me.ScaleHeight Or fmeGround(intCounter).Top < Door.sngHei Then intFloorYc(intCounter) = -intFloorYc(intCounter)
        If fmeGround(intCounter).Left + fmeGround(intCounter).Width > Me.ScaleWidth Or fmeGround(intCounter).Left < 0 Then intFloorXc(intCounter) = -intFloorXc(intCounter)
        

    Next intCounter

    blnRange = False

'Move Floor with door
    fmeGround(10).Left = fmeGround(10).Left + intFloorXc(8)
    If fmeGround(10).Left < 0 Or fmeGround(10).Left + fmeGround(10).Width > Me.ScaleWidth Then intFloorXc(8) = -intFloorXc(8)
    Door.sngX = fmeGround(10).Left + fmeGround(10).Width / 3

'Kratos remains stationary on grounds
    If blnGround = True And (intGroundNum <= 7 Or intGroundNum = 10) Then
        If intGroundNum = 10 Then intGroundNum = 8

        Kratos.sngY = Kratos.sngY + intFloorYc(intGroundNum)
        Kratos.sngX = Kratos.sngX + intFloorXc(intGroundNum)

    End If
End If

End Sub

Private Function Check() As Boolean
If blnOver = True Then Exit Function

For intSpare = fmeGround.LBound To fmeGround.UBound
    
    If Kratos.sngY + Kratos.sngHei(Kratos.PicNum) >= fmeGround(intSpare).Top And _
       Kratos.sngY <= fmeGround(intSpare).Top + 50 And _
       Kratos.sngX + Kratos.sngWid(Kratos.PicNum) + sngPos(1) > fmeGround(intSpare).Left + Kratos.sngWid(Kratos.PicNum) / 4 And _
       Kratos.sngX < fmeGround(intSpare).Left + fmeGround(intSpare).Width - Kratos.sngWid(Kratos.PicNum) / 4 Then
       
    'Position
        Kratos.sngY = fmeGround(intSpare).Top - Kratos.sngHei(Kratos.PicNum) + 5
    'Reset Jump
        blnJump = False
        intJumpNum = 0
    'Swing coordinates
        sngPos(2) = 0
        Kratos.sngX = Kratos.sngX + sngPos(1)
        sngPos(1) = 0
    'Standing Position
        If Kratos.PicNum = 10 Then Kratos.PicNum = 0
    'Return True
    intGroundNum = intSpare
        Check = True
        Exit For
    Else
    'Return false
        Check = False
        blnJump = True
    End If
Next intSpare

End Function

Private Sub Swing()
If blnOver = True Then Exit Sub

'Change Rope Positions
    sngRope(2, intRopeIndex) = Kratos.sngY + sngPos(2)
    sngRope(1, intRopeIndex) = Kratos.sngX + sngPos(1) + Kratos.sngWid(11)
'Frame Change
    Kratos.PicNum = 11

'Swing
    sngPos(1) = sngPos(1) + intSwingC
    If sngPos(1) > intRad Or sngPos(1) < -intRad Then intSwingC = -intSwingC
    sngPos(2) = Sqr((intRad + 5) ^ 2 - sngPos(1) ^ 2)

End Sub

Private Sub Pull()
If blnOver = True Then Exit Sub

'Switch
    If Kratos.sngX + Kratos.sngWid(12) > Switch.sngX And Kratos.sngX < Switch.sngX + Switch.sngWid And _
        Kratos.sngY + Kratos.sngHei(12) > Switch.sngY And Kratos.sngY < Switch.sngY + Switch.sngHei Then

        If Switch.blnUsed = True Then Exit Sub
        
        Kratos.PicNum = 13
        Sleep (100)
        Kratos.intFx(13) = Kratos.intFx(13) + 1

        If Kratos.intFx(13) > 4 Then
            Switch.blnUsed = True
            Switch.intFx = 1
            Kratos.intFx(13) = 0
        End If
        
        If Switch.blnUsed = True Then intGroundXC = 0
    End If

'Box
    If Kratos.sngX + Kratos.sngWid(12) > Box.sngX And Kratos.sngX < Box.sngX + Box.sngWid And _
        Kratos.sngY + Kratos.sngHei(12) > Box.sngY And Kratos.sngY < Box.sngY + Box.sngHei Then

        If Box.blnUsed = True Then Exit Sub
        
        Kratos.PicNum = 12
        Sleep (100)
        Kratos.intFx(12) = Kratos.intFx(12) + 1

    'Frame Check
        If Kratos.intFx(12) > 3 Then Kratos.intFx(12) = 0
        Box.intFx = Kratos.intFx(12)
        If Box.intFx = 3 Then Box.blnUsed = True
    'Upgrade
        If Box.blnUsed = True Then Call Upgrade

    End If


'Door

    If Kratos.sngX + Kratos.sngWid(Kratos.PicNum) > Door.sngX And Kratos.sngX < Door.sngX + Door.sngWid And _
        Kratos.sngY + Kratos.sngHei(Kratos.PicNum) > Door.sngY And Kratos.sngY < Door.sngY + Door.sngHei Then
        
        If Door.blnUsed = True Then Exit Sub
        
        Sleep (100)
        Door.intFx = Door.intFx + 1

        If Door.intFx = 2 Then Door.blnUsed = True

    End If
'Goto Next Level
    If Door.blnUsed = True Then
        frmLvl3.Show
        blnOver = True
        Unload Me
    End If


End Sub


Private Sub Upgrade()
If blnOver = True Then Exit Sub

Dim intRand As Integer
    
    Randomize
    intRand = Int(Rnd * 1000) Mod 4

'Upgrade Number
Select Case intRand

    Case 0 'Jump Upgrade
        MJump = MJump + 10
        fmeUp(0).Visible = True

    Case 1 'Quad jump
        Jumps = 4
        fmeUp(1).Visible = True

    Case 2 ' Health Upgrade
        MHealth = MHealth + 12
        fmeUp(2).Visible = True

    Case Else ' No Upgrades
        fmeUp(3).Visible = True

End Select


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
    Write #intFileNum, "2"
    Write #intFileNum, Jumps
    Write #intFileNum, MJump
    Write #intFileNum, MHealth
    Write #intFileNum, Sword
Close #intFileNum



End Sub

Private Sub tmrKratos_Timer()

If blnOver = True Or blnSwing = True Then Exit Sub

'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''Right''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
If GetAsyncKeyState(vbKeyRight) Then

    
    intDirection = 1
'Jumping
    If blnJump = True Then
        Kratos.sngX = Kratos.sngX + 5
        Exit Sub
    End If
    
    
    Kratos.PicNum = 1
'Frame Change
    Kratos.intFx(1) = Kratos.intFx(1) + 1
    If Kratos.intFx(1) > 4 Then Kratos.intFx(1) = 0
    
'Change Dimensions  depening on frame Num
    If Kratos.intFx(1) > 2 Then
        Kratos.sngWid(1) = 60
    Else
        Kratos.sngWid(1) = 53
    End If
    
'Move
    Kratos.sngX = Kratos.sngX + 10
    
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''Left'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

ElseIf GetAsyncKeyState(vbKeyLeft) Then


    
    intDirection = 2
'Jumping
    If blnJump = True Then
        Kratos.sngX = Kratos.sngX - 5
        Exit Sub
    End If

    Kratos.PicNum = 3
'Frame Change
    Kratos.intFx(3) = Kratos.intFx(3) - 1
    If Kratos.intFx(3) < 0 Then Kratos.intFx(3) = 4

    Kratos.sngX = Kratos.sngX - 10

'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''Guard'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

ElseIf GetAsyncKeyState(vbKeyDown) Then
    If intDirection = 1 Then Kratos.PicNum = 4
    If intDirection = 2 Then Kratos.PicNum = 5

'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''Light Attack'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

ElseIf GetAsyncKeyState(vbKeyF) Then
'Right
    If intDirection = 1 Then
        Sleep (100)
        Kratos.intFx(6) = Kratos.intFx(6) + 1
        
        If Kratos.intFx(6) = 1 Then Kratos.sngWid(6) = 140
            
        If Kratos.intFx(6) > 2 Then
            Kratos.PicNum = 6
            Kratos.sngWid(6) = 65
            Kratos.intFx(6) = 0
        End If

'Left
    ElseIf intDirection = 2 Then
        Kratos.sngWid(7) = 150
        Sleep (100)
            Kratos.intFx(7) = Kratos.intFx(7) - 1
        
        If Kratos.intFx(7) < 0 Then
            Kratos.PicNum = 7
            Kratos.intFx(7) = 3
        End If
    End If

'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''View Objective'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

ElseIf GetAsyncKeyState(vbKeyO) Then
    Call mnuGoal_Click


'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''Heavy Attack'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

ElseIf GetAsyncKeyState(vbKeyG) Then

'Right
    If intDirection = 1 Then
        Kratos.PicNum = 8
        Sleep (100)
        Kratos.intFx(8) = Kratos.intFx(8) + 1
        
        If Kratos.intFx(8) > 3 And Kratos.intFy(8) = 0 Then
            Kratos.intFy(8) = 1
            Kratos.intFx(8) = 0
            Kratos.sngWid(8) = 140
        End If

        If Kratos.intFx(8) > 2 And Kratos.intFy(8) = 1 Then
            Kratos.intFy(8) = 0
            Kratos.intFx(8) = 0
            Kratos.sngWid(8) = 66
        End If

    End If
 
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''Open'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    
ElseIf GetAsyncKeyState(vbKeySpace) Then
    Call Pull
End If

End Sub


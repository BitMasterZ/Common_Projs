VERSION 5.00
Begin VB.Form frmLvl3 
   AutoRedraw      =   -1  'True
   BorderStyle     =   0  'None
   ClientHeight    =   10755
   ClientLeft      =   405
   ClientTop       =   900
   ClientWidth     =   14385
   ControlBox      =   0   'False
   DrawWidth       =   10
   Icon            =   "frmLvl3.frx":0000
   LinkTopic       =   "Form1"
   Picture         =   "frmLvl3.frx":0ECA
   ScaleHeight     =   717
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   959
   Begin VB.Frame fmeUp 
      BackColor       =   &H00000000&
      BorderStyle     =   0  'None
      Caption         =   "Frame1"
      Height          =   1215
      Index           =   3
      Left            =   7800
      TabIndex        =   62
      Top             =   0
      Visible         =   0   'False
      Width           =   4095
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
         Left            =   2400
         TabIndex        =   63
         Top             =   360
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
         Height          =   855
         Index           =   3
         Left            =   120
         TabIndex        =   64
         Top             =   240
         Width           =   2415
      End
   End
   Begin VB.Frame fmeUp 
      BackColor       =   &H00000000&
      BorderStyle     =   0  'None
      Caption         =   "Frame1"
      Height          =   1335
      Index           =   2
      Left            =   7560
      TabIndex        =   59
      Top             =   0
      Visible         =   0   'False
      Width           =   4815
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
         Left            =   3000
         TabIndex        =   60
         Top             =   480
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
         Height          =   1215
         Index           =   2
         Left            =   120
         TabIndex        =   61
         Top             =   120
         Width           =   2415
      End
   End
   Begin VB.Frame fmeUp 
      BackColor       =   &H00000000&
      BorderStyle     =   0  'None
      Caption         =   "Frame1"
      Height          =   1575
      Index           =   1
      Left            =   7680
      TabIndex        =   56
      Top             =   0
      Visible         =   0   'False
      Width           =   4695
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
         Left            =   3120
         TabIndex        =   57
         Top             =   480
         Width           =   1455
      End
      Begin VB.Label lblTip 
         BackStyle       =   0  'Transparent
         Caption         =   " Jump Upgrade: Five Jumps"
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
         Left            =   240
         TabIndex        =   58
         Top             =   0
         Width           =   2415
      End
   End
   Begin VB.Frame fmeUp 
      BackColor       =   &H00000000&
      BorderStyle     =   0  'None
      Caption         =   "Frame1"
      Height          =   1455
      Index           =   0
      Left            =   7560
      TabIndex        =   53
      Top             =   0
      Visible         =   0   'False
      Width           =   4335
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
         Left            =   2760
         TabIndex        =   54
         Top             =   360
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
         Left            =   120
         TabIndex        =   55
         Top             =   120
         Width           =   2415
      End
   End
   Begin VB.Timer tmrKratos 
      Interval        =   1
      Left            =   6960
      Top             =   4800
   End
   Begin VB.PictureBox sBoulder 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BorderStyle     =   0  'None
      Enabled         =   0   'False
      Height          =   975
      Left            =   15000
      Picture         =   "frmLvl3.frx":231F5
      ScaleHeight     =   65
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   65
      TabIndex        =   52
      Top             =   8640
      Visible         =   0   'False
      Width           =   975
   End
   Begin VB.PictureBox SKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1050
      Index           =   16
      Left            =   1200
      Picture         =   "frmLvl3.frx":23D70
      ScaleHeight     =   66
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   58
      TabIndex        =   51
      Top             =   2400
      Visible         =   0   'False
      Width           =   930
   End
   Begin VB.PictureBox MKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1050
      Index           =   16
      Left            =   1560
      Picture         =   "frmLvl3.frx":247B4
      ScaleHeight     =   66
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   58
      TabIndex        =   50
      Top             =   1800
      Visible         =   0   'False
      Width           =   930
   End
   Begin VB.PictureBox mBoulder 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BorderStyle     =   0  'None
      Enabled         =   0   'False
      Height          =   975
      Left            =   15000
      Picture         =   "frmLvl3.frx":25211
      ScaleHeight     =   65
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   65
      TabIndex        =   49
      Top             =   7560
      Visible         =   0   'False
      Width           =   975
   End
   Begin VB.PictureBox SKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1290
      Index           =   15
      Left            =   8640
      Picture         =   "frmLvl3.frx":256F6
      ScaleHeight     =   82
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   444
      TabIndex        =   48
      Top             =   6240
      Visible         =   0   'False
      Width           =   6720
   End
   Begin VB.PictureBox MKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1290
      Index           =   15
      Left            =   8640
      Picture         =   "frmLvl3.frx":29FDB
      ScaleHeight     =   82
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   444
      TabIndex        =   47
      Top             =   5760
      Visible         =   0   'False
      Width           =   6720
   End
   Begin VB.PictureBox MKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1290
      Index           =   14
      Left            =   10920
      Picture         =   "frmLvl3.frx":2E1F9
      ScaleHeight     =   82
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   444
      TabIndex        =   46
      Top             =   4320
      Visible         =   0   'False
      Width           =   6720
   End
   Begin VB.PictureBox SKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1290
      Index           =   14
      Left            =   10920
      Picture         =   "frmLvl3.frx":321B0
      ScaleHeight     =   82
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   444
      TabIndex        =   45
      Top             =   4320
      Visible         =   0   'False
      Width           =   6720
   End
   Begin VB.PictureBox sDoor 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1140
      Left            =   1080
      Picture         =   "frmLvl3.frx":368F1
      ScaleHeight     =   72
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   161
      TabIndex        =   44
      Top             =   4200
      Visible         =   0   'False
      Width           =   2475
   End
   Begin VB.PictureBox mDoor 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1140
      Left            =   1920
      Picture         =   "frmLvl3.frx":37F49
      ScaleHeight     =   72
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   161
      TabIndex        =   43
      Top             =   4680
      Visible         =   0   'False
      Width           =   2475
   End
   Begin VB.Frame fmeGround 
      BackColor       =   &H00404040&
      BorderStyle     =   0  'None
      Caption         =   "Frame1"
      ForeColor       =   &H00404040&
      Height          =   255
      Index           =   7
      Left            =   18840
      TabIndex        =   42
      Top             =   1560
      Width           =   255
   End
   Begin VB.PictureBox MKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   900
      Index           =   13
      Left            =   5640
      Picture         =   "frmLvl3.frx":38FF0
      ScaleHeight     =   56
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   358
      TabIndex        =   41
      Top             =   4200
      Visible         =   0   'False
      Width           =   5430
   End
   Begin VB.PictureBox SKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   900
      Index           =   13
      Left            =   4920
      Picture         =   "frmLvl3.frx":3B242
      ScaleHeight     =   56
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   358
      TabIndex        =   40
      Top             =   4560
      Visible         =   0   'False
      Width           =   5430
   End
   Begin VB.PictureBox sSwitch 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   840
      Left            =   240
      Picture         =   "frmLvl3.frx":3D779
      ScaleHeight     =   52
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   111
      TabIndex        =   39
      Top             =   4560
      Visible         =   0   'False
      Width           =   1725
   End
   Begin VB.PictureBox MSwitch 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   840
      Left            =   240
      Picture         =   "frmLvl3.frx":3E307
      ScaleHeight     =   52
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   111
      TabIndex        =   38
      Top             =   4560
      Visible         =   0   'False
      Width           =   1725
   End
   Begin VB.Frame fmeGround 
      BackColor       =   &H00404040&
      BorderStyle     =   0  'None
      Caption         =   "Frame1"
      ForeColor       =   &H00404040&
      Height          =   375
      Index           =   9
      Left            =   14040
      TabIndex        =   37
      Top             =   5160
      Width           =   1935
   End
   Begin VB.PictureBox SKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1125
      Index           =   12
      Left            =   6120
      Picture         =   "frmLvl3.frx":3EFCA
      ScaleHeight     =   71
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   230
      TabIndex        =   36
      Top             =   4320
      Visible         =   0   'False
      Width           =   3510
   End
   Begin VB.PictureBox MKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1125
      Index           =   12
      Left            =   6600
      Picture         =   "frmLvl3.frx":40A01
      ScaleHeight     =   71
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   230
      TabIndex        =   35
      Top             =   2160
      Visible         =   0   'False
      Width           =   3510
   End
   Begin VB.Frame fmeGround 
      BackColor       =   &H00404040&
      BorderStyle     =   0  'None
      Caption         =   "Frame1"
      ForeColor       =   &H00404040&
      Height          =   375
      Index           =   5
      Left            =   11760
      TabIndex        =   34
      Top             =   9720
      Width           =   1935
   End
   Begin VB.Frame fmeGround 
      BackColor       =   &H00404040&
      BorderStyle     =   0  'None
      Caption         =   "Frame1"
      ForeColor       =   &H00404040&
      Height          =   255
      Index           =   3
      Left            =   -3000
      TabIndex        =   33
      Top             =   4200
      Width           =   255
   End
   Begin VB.Frame fmeGround 
      BackColor       =   &H00404040&
      BorderStyle     =   0  'None
      Caption         =   "Frame1"
      ForeColor       =   &H00404040&
      Height          =   255
      Index           =   4
      Left            =   18840
      TabIndex        =   32
      Top             =   4200
      Width           =   255
   End
   Begin VB.Frame fmeGround 
      BackColor       =   &H00404040&
      BorderStyle     =   0  'None
      Caption         =   "Frame1"
      ForeColor       =   &H00404040&
      Height          =   255
      Index           =   2
      Left            =   -3000
      TabIndex        =   31
      Top             =   7080
      Width           =   255
   End
   Begin VB.Frame fmeGround 
      BackColor       =   &H00404040&
      BorderStyle     =   0  'None
      Caption         =   "Frame1"
      ForeColor       =   &H00404040&
      Height          =   255
      Index           =   10
      Left            =   -3000
      TabIndex        =   30
      Top             =   1560
      Width           =   255
   End
   Begin VB.PictureBox MBox 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1200
      Left            =   3720
      Picture         =   "frmLvl3.frx":420B7
      ScaleHeight     =   76
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   334
      TabIndex        =   29
      Top             =   3000
      Visible         =   0   'False
      Width           =   5070
   End
   Begin VB.PictureBox SBox 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1200
      Left            =   4440
      Picture         =   "frmLvl3.frx":43D32
      ScaleHeight     =   76
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   334
      TabIndex        =   28
      Top             =   2400
      Visible         =   0   'False
      Width           =   5070
   End
   Begin VB.PictureBox SKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1080
      Index           =   0
      Left            =   4680
      Picture         =   "frmLvl3.frx":464EA
      ScaleHeight     =   68
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   508
      TabIndex        =   27
      Top             =   1320
      Visible         =   0   'False
      Width           =   7680
   End
   Begin VB.PictureBox MKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1080
      Index           =   0
      Left            =   3960
      Picture         =   "frmLvl3.frx":4A0C4
      ScaleHeight     =   68
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   508
      TabIndex        =   26
      Top             =   2640
      Visible         =   0   'False
      Width           =   7680
   End
   Begin VB.Timer tmrAnimate 
      Interval        =   1
      Left            =   2160
      Top             =   3480
   End
   Begin VB.PictureBox MKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1005
      Index           =   1
      Left            =   4560
      Picture         =   "frmLvl3.frx":4DA29
      ScaleHeight     =   63
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   319
      TabIndex        =   25
      Top             =   3840
      Visible         =   0   'False
      Width           =   4845
   End
   Begin VB.PictureBox SKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1005
      Index           =   1
      Left            =   4320
      Picture         =   "frmLvl3.frx":4F888
      ScaleHeight     =   63
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   319
      TabIndex        =   24
      Top             =   2160
      Visible         =   0   'False
      Width           =   4845
   End
   Begin VB.PictureBox MKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1065
      Index           =   2
      Left            =   12360
      Picture         =   "frmLvl3.frx":51B4A
      ScaleHeight     =   67
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   63
      TabIndex        =   23
      Top             =   360
      Visible         =   0   'False
      Width           =   1005
   End
   Begin VB.PictureBox SKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1005
      Index           =   2
      Left            =   12360
      Picture         =   "frmLvl3.frx":52677
      ScaleHeight     =   63
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   62
      TabIndex        =   22
      Top             =   360
      Visible         =   0   'False
      Width           =   990
   End
   Begin VB.PictureBox SKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1005
      Index           =   3
      Left            =   4320
      Picture         =   "frmLvl3.frx":5318C
      ScaleHeight     =   63
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   319
      TabIndex        =   21
      Top             =   2040
      Visible         =   0   'False
      Width           =   4845
   End
   Begin VB.PictureBox MKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1005
      Index           =   3
      Left            =   4200
      Picture         =   "frmLvl3.frx":55424
      ScaleHeight     =   63
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   319
      TabIndex        =   20
      Top             =   2520
      Visible         =   0   'False
      Width           =   4845
   End
   Begin VB.PictureBox MKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1065
      Index           =   4
      Left            =   8040
      Picture         =   "frmLvl3.frx":5730C
      ScaleHeight     =   67
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   51
      TabIndex        =   19
      Top             =   2760
      Visible         =   0   'False
      Width           =   825
   End
   Begin VB.PictureBox SKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1065
      Index           =   4
      Left            =   8160
      Picture         =   "frmLvl3.frx":57C3C
      ScaleHeight     =   67
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   51
      TabIndex        =   18
      Top             =   3000
      Visible         =   0   'False
      Width           =   825
   End
   Begin VB.PictureBox MKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1065
      Index           =   5
      Left            =   10920
      Picture         =   "frmLvl3.frx":58631
      ScaleHeight     =   67
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   51
      TabIndex        =   17
      Top             =   2520
      Visible         =   0   'False
      Width           =   825
   End
   Begin VB.PictureBox SKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1065
      Index           =   5
      Left            =   10920
      Picture         =   "frmLvl3.frx":58FDC
      ScaleHeight     =   67
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   51
      TabIndex        =   16
      Top             =   2520
      Visible         =   0   'False
      Width           =   825
   End
   Begin VB.PictureBox SKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1050
      Index           =   6
      Left            =   5520
      Picture         =   "frmLvl3.frx":599E9
      ScaleHeight     =   66
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   394
      TabIndex        =   15
      Top             =   2880
      Visible         =   0   'False
      Width           =   5970
   End
   Begin VB.PictureBox MKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1050
      Index           =   6
      Left            =   5280
      Picture         =   "frmLvl3.frx":5C16B
      ScaleHeight     =   66
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   394
      TabIndex        =   14
      Top             =   2400
      Visible         =   0   'False
      Width           =   5970
   End
   Begin VB.Timer Timer1 
      Interval        =   1000
      Left            =   13080
      Top             =   2160
   End
   Begin VB.PictureBox MKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1020
      Index           =   7
      Left            =   4080
      Picture         =   "frmLvl3.frx":5E66E
      ScaleHeight     =   64
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   525
      TabIndex        =   13
      Top             =   7920
      Visible         =   0   'False
      Width           =   7935
   End
   Begin VB.PictureBox SKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1020
      Index           =   7
      Left            =   3960
      Picture         =   "frmLvl3.frx":60C8F
      ScaleHeight     =   64
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   525
      TabIndex        =   12
      Top             =   8760
      Visible         =   0   'False
      Width           =   7935
   End
   Begin VB.PictureBox MKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   3105
      Index           =   8
      Left            =   3480
      Picture         =   "frmLvl3.frx":6369F
      ScaleHeight     =   203
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   522
      TabIndex        =   11
      Top             =   1440
      Visible         =   0   'False
      Width           =   7890
   End
   Begin VB.PictureBox SKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   3105
      Index           =   8
      Left            =   4560
      Picture         =   "frmLvl3.frx":67B82
      ScaleHeight     =   203
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   522
      TabIndex        =   10
      Top             =   2760
      Visible         =   0   'False
      Width           =   7890
   End
   Begin VB.PictureBox SKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   3105
      Index           =   9
      Left            =   3240
      Picture         =   "frmLvl3.frx":6C467
      ScaleHeight     =   203
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   522
      TabIndex        =   9
      Top             =   1320
      Visible         =   0   'False
      Width           =   7890
   End
   Begin VB.PictureBox MKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   3105
      Index           =   9
      Left            =   3120
      Picture         =   "frmLvl3.frx":70E8E
      ScaleHeight     =   203
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   522
      TabIndex        =   8
      Top             =   5520
      Visible         =   0   'False
      Width           =   7890
   End
   Begin VB.PictureBox SKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1005
      Index           =   10
      Left            =   2280
      Picture         =   "frmLvl3.frx":75635
      ScaleHeight     =   63
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   113
      TabIndex        =   7
      Top             =   480
      Visible         =   0   'False
      Width           =   1755
   End
   Begin VB.PictureBox MKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1005
      Index           =   10
      Left            =   2280
      Picture         =   "frmLvl3.frx":7666E
      ScaleHeight     =   63
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   113
      TabIndex        =   6
      Top             =   480
      Visible         =   0   'False
      Width           =   1755
   End
   Begin VB.PictureBox MKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1245
      Index           =   11
      Left            =   2880
      Picture         =   "frmLvl3.frx":7754B
      ScaleHeight     =   79
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   75
      TabIndex        =   5
      Top             =   1440
      Visible         =   0   'False
      Width           =   1185
   End
   Begin VB.PictureBox SKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1230
      Index           =   11
      Left            =   2880
      Picture         =   "frmLvl3.frx":77E73
      ScaleHeight     =   78
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   72
      TabIndex        =   4
      Top             =   1440
      Visible         =   0   'False
      Width           =   1140
   End
   Begin VB.Frame fmeGround 
      BackColor       =   &H00404040&
      BorderStyle     =   0  'None
      Caption         =   "Frame1"
      ForeColor       =   &H00404040&
      Height          =   255
      Index           =   0
      Left            =   -975
      TabIndex        =   3
      Top             =   3120
      Width           =   900
   End
   Begin VB.Frame fmeGround 
      BackColor       =   &H00404040&
      BorderStyle     =   0  'None
      Caption         =   "Frame1"
      ForeColor       =   &H00404040&
      Height          =   135
      Index           =   8
      Left            =   2400
      TabIndex        =   2
      Top             =   6120
      Width           =   135
   End
   Begin VB.Frame fmeGround 
      BackColor       =   &H00404040&
      BorderStyle     =   0  'None
      Caption         =   "Frame1"
      ForeColor       =   &H00404040&
      Height          =   375
      Index           =   6
      Left            =   15480
      TabIndex        =   1
      Top             =   3240
      Width           =   1935
   End
   Begin VB.Frame fmeGround 
      BackColor       =   &H00404040&
      BorderStyle     =   0  'None
      Caption         =   "Frame1"
      ForeColor       =   &H00404040&
      Height          =   255
      Index           =   1
      Left            =   18840
      TabIndex        =   0
      Top             =   7080
      Width           =   255
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
Attribute VB_Name = "frmLvl3"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit


Dim Kratos As Person, Box As Obj, Switch As Obj, Door As Obj, Boulder(1 To 6) As Obj    ' User Defined Types
Dim intDirection As Integer, intC2 As Integer
Dim intSpare As Integer, sngJSpeed As Single, intJumpNum As Integer
Dim blnJump As Boolean, blnGround As Boolean
Dim intFloorXc As Integer
Dim sngXpos As Single, sngYpos As Single
Dim blnOver As Boolean, blnSlide As Boolean, blnLaunch As Boolean, blnCaught As Boolean, intRBoulder As Integer
Const sngGravity As Single = 1


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

End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer)
If blnOver = True Then Exit Sub

Select Case KeyCode
                
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
'Bib Blit Dimensions
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

    Kratos.sngWid(15) = 44
    Kratos.sngHei(15) = 80

    Kratos.sngWid(16) = 50
    Kratos.sngHei(16) = 60


'Boulder Dimensions and Positions
    For intC2 = 1 To 6
        Boulder(intC2).sngX = Me.ScaleWidth
        Boulder(intC2).sngWid = 70
        Boulder(intC2).sngHei = 70
    Next intC2

    Boulder(1).sngY = 136
    Boulder(2).sngY = 208
    Boulder(3).sngY = 312
    Boulder(4).sngY = 384
    Boulder(5).sngY = 504
    Boulder(6).sngY = 576

'Object Dimensions

    Box.sngWid = 58
    Box.sngHei = 90

    Switch.sngWid = 50
    Switch.sngHei = 50

    Door.sngWid = 50
    Door.sngHei = 75
    Door.sngY = -100

'Default positions

    Box.sngX = Me.ScaleWidth / 2 - 10
    Box.sngY = -20

'Intialize
    intRBoulder = 1
    intFloorXc = 10

Call mnuGoal_Click

End Sub

Private Sub mnuControl_Click()
'Show Controls
    frmControls.Show
    Lvl = 3
'Pause Game
    tmrKratos.Interval = 0
    tmrAnimate.Interval = 0
End Sub

Private Sub mnuGoal_Click()
MsgBox ("Level 3 Objective: Open the door while avoiding the boulders" & vbCrLf & "Hint: Use the switch below to bring in the door and stop the box")
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

Private Sub mnuSkip_Click()
Dim strPass As String
'Enter Password
    strPass = InputBox("Level 4 Password")
'Wrong Password
    If strPass <> "***GOWLvl4***" Then Exit Sub
'Redirect
    frmLvl4.Show
    blnOver = True
    Unload Me
End Sub

Private Sub tmrAnimate_Timer()
If blnOver = True Then Exit Sub

Cls
blnGround = Check()

'Bit blit
    'Kratos
        bitblt Me.hDC, Kratos.sngX, Kratos.sngY, Kratos.sngWid(Kratos.PicNum), Kratos.sngHei(Kratos.PicNum), MKratos(Kratos.PicNum).hDC, _
            Kratos.intFx(Kratos.PicNum) * Kratos.sngWid(Kratos.PicNum), Kratos.intFy(Kratos.PicNum) * Kratos.sngHei(Kratos.PicNum), SRCAND

        bitblt Me.hDC, Kratos.sngX, Kratos.sngY, Kratos.sngWid(Kratos.PicNum), Kratos.sngHei(Kratos.PicNum), SKratos(Kratos.PicNum).hDC, _
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
            Door.intFx * Door.sngWid, 0, SRCPAINT
    
    'Boulder
        For intC2 = 1 To 6
            bitblt Me.hDC, Boulder(intC2).sngX, Boulder(intC2).sngY, Boulder(intC2).sngWid, Boulder(intC2).sngHei, mBoulder.hDC, _
                0, 0, SRCAND
    
            bitblt Me.hDC, Boulder(intC2).sngX, Boulder(intC2).sngY, Boulder(intC2).sngWid, Boulder(intC2).sngHei, sBoulder.hDC, _
                0, 0, SRCPAINT
        Next intC2
        
'Launch Boulder
    Call Launch

'Draw ropes
    Line (fmeGround(10).Left + fmeGround(10).Width, fmeGround(10).Top + fmeGround(10).Height / 2)-(fmeGround(7).Left, fmeGround(10).Top + fmeGround(10).Height / 2), vbRed
    Line (fmeGround(3).Left + fmeGround(3).Width, fmeGround(3).Top + fmeGround(3).Height / 2)-(fmeGround(4).Left, fmeGround(3).Top + fmeGround(3).Height / 2), vbRed
    Line (fmeGround(2).Left + fmeGround(2).Width, fmeGround(2).Top + fmeGround(2).Height / 2)-(fmeGround(1).Left, fmeGround(2).Top + fmeGround(2).Height / 2), vbRed

If blnCaught = True Then Exit Sub

'Jump
    If blnGround = False Then
        Kratos.sngY = Kratos.sngY - sngJSpeed
        sngJSpeed = sngJSpeed - sngGravity
        Kratos.PicNum = 10
        If intDirection = 1 Then
            Kratos.intFx(10) = 0
        Else
            Kratos.intFx(10) = 1
        End If
    End If

'Death Condition
    If Kratos.sngY > Me.ScaleHeight Then
        MsgBox ("You are dead")
        Call Save
        blnOver = True
        frmending2.Show
        Unload Me
    End If

'Floor Movement
    fmeGround(8).Left = fmeGround(8).Left + intFloorXc
    If fmeGround(8).Left < 0 Or fmeGround(8).Left + fmeGround(8).Width > Me.ScaleWidth Then intFloorXc = -intFloorXc
    'Stationary Kratos
        If blnGround = True And Kratos.sngY + Kratos.sngHei(Kratos.PicNum) + 5 >= fmeGround(8).Top And Kratos.sngY < fmeGround(8).Top + 50 Then Kratos.sngX = Kratos.sngX + intFloorXc
    'Box Coordinates
        Box.sngX = fmeGround(8).Left - Box.sngWid / 2 + 5
        Box.sngY = fmeGround(8).Top - 70
   
'Switch Coordinates
    Switch.sngX = fmeGround(5).Left + fmeGround(5).Width - Switch.sngWid
    Switch.sngY = fmeGround(5).Top - Switch.sngHei + 5
    
'Check for rope move
    For sngXpos = Kratos.sngX To Kratos.sngX + Kratos.sngWid(11)
        For sngYpos = Kratos.sngY To Kratos.sngY + 7
            If Point(sngXpos, sngYpos) = vbRed Then
                blnSlide = True
                intJumpNum = 0
                sngJSpeed = 0
                If intDirection = 1 Then
                    Kratos.PicNum = 14
                Else
                    Kratos.PicNum = 15
                End If
                Exit Sub
            End If
        Next sngYpos
    Next sngXpos
    
'Show Door
    If Switch.blnUsed = True Then Call Movement

End Sub

Private Function Check() As Boolean
If blnOver = True Then Exit Function

For intSpare = fmeGround.LBound To fmeGround.UBound
    
    If Kratos.sngY + Kratos.sngHei(Kratos.PicNum) >= fmeGround(intSpare).Top And _
       Kratos.sngY <= fmeGround(intSpare).Top + 50 And _
       Kratos.sngX + Kratos.sngWid(Kratos.PicNum) > fmeGround(intSpare).Left + Kratos.sngWid(Kratos.PicNum) / 4 And _
       Kratos.sngX < fmeGround(intSpare).Left + fmeGround(intSpare).Width - Kratos.sngWid(Kratos.PicNum) / 4 Then
       
    'Position
        Kratos.sngY = fmeGround(intSpare).Top - Kratos.sngHei(Kratos.PicNum) + 5
    'Reset Jump
        blnJump = False
        intJumpNum = 0
    'Swing coordinates
        Kratos.sngX = Kratos.sngX
    'Standing Position
        If Kratos.PicNum = 10 Then Kratos.PicNum = 0
    'Return True
        Check = True
        Exit For
    Else
    'Return false
        Check = False
        blnJump = True
    End If
Next intSpare

End Function

Private Sub Pull()
If blnOver = True Then Exit Sub

'Switch
    If Kratos.sngX + Kratos.sngWid(12) > Switch.sngX And Kratos.sngX < Switch.sngX + Switch.sngWid And _
        Kratos.sngY + Kratos.sngHei(12) > Switch.sngY And Kratos.sngY < Switch.sngY + Switch.sngHei Then

        If Switch.blnUsed = True Then Exit Sub
        Sleep (100)
        Kratos.PicNum = 13
        Kratos.intFx(13) = Kratos.intFx(13) + 1
    'Activate
        If Kratos.intFx(13) > 4 Then
            Switch.blnUsed = True
            Switch.intFx = 1
            Kratos.intFx(13) = 0
        End If
    End If


'Box
    If Kratos.sngX + Kratos.sngWid(12) > Box.sngX And Kratos.sngX < Box.sngX + Box.sngWid And _
        Kratos.sngY + Kratos.sngHei(12) > Box.sngY And Kratos.sngY < Box.sngY + Box.sngHei Then

        If Box.blnUsed = True Then Exit Sub

        Sleep (100)
        Kratos.PicNum = 12

        Kratos.intFx(12) = Kratos.intFx(12) + 1
        If Kratos.intFx(12) > 3 Then Kratos.intFx(12) = 0

        Box.intFx = Kratos.intFx(12)
        If Box.intFx = 3 Then Box.blnUsed = True
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
    
    If Door.blnUsed = True Then
        frmLvl4.Show
        blnOver = True
        Unload Me
    End If


End Sub




Private Sub Movement()
If blnOver = True And intFloorXc = 0 Then Exit Sub

'Move Door
    If fmeGround(0).Left <= Me.ScaleWidth / 2 Then
        Door.sngY = fmeGround(0).Top - Door.sngHei
        Door.sngX = fmeGround(0).Left + 10
        fmeGround(0).Left = fmeGround(0).Left + 10
        Sleep (15)
    Else

        intFloorXc = 0

    End If

'Expand box floor
    If fmeGround(8).Width <= 100 Then
        fmeGround(8).Left = fmeGround(8).Left - 4
        fmeGround(8).Width = fmeGround(8).Width + 4
    End If
End Sub


Private Sub Upgrade()
If blnOver = True Then Exit Sub

Dim intRand As Integer

Randomize
intRand = Int(Rnd * 1000) Mod 4

'Random Upgrades
Select Case intRand

    Case 0 'Jump Upgrade
        MJump = MJump + 10
        fmeUp(0).Visible = True

    Case 1 'Five jumps
        Jumps = 5
        fmeUp(1).Visible = True

    Case 2 ' Health Upgrade
        MHealth = MHealth + 50
        fmeUp(2).Visible = True

    Case Else 'No upgrades

        fmeUp(3).Visible = True

End Select


End Sub
Private Sub Launch()
If blnCaught = True Then Exit Sub 'If hit By boulder

If Boulder(intRBoulder).sngX < -Boulder(intRBoulder).sngWid Then 'Already thrown
'New Index
    Randomize
    intRBoulder = Int(Rnd * 100) Mod 6 + 1
    Boulder(intRBoulder).sngX = Me.ScaleWidth
Else
'Move Left
    Boulder(intRBoulder).sngX = Boulder(intRBoulder).sngX - 30
'Check collision
    If Kratos.sngX + Kratos.sngWid(Kratos.PicNum) > Boulder(intRBoulder).sngX And Kratos.sngX < Boulder(intRBoulder).sngX + Boulder(intRBoulder).sngWid And _
        Kratos.sngY + Kratos.sngHei(Kratos.PicNum) > Boulder(intRBoulder).sngY And Kratos.sngY < Boulder(intRBoulder).sngY + Boulder(intRBoulder).sngHei Then
            
            blnCaught = True
    
    End If
End If

'Killed
    If blnCaught = True Then
        
        Do Until Kratos.sngY > Me.ScaleHeight
        'Falling Down
            Kratos.PicNum = 16
            Kratos.sngX = Kratos.sngX - 5
            Kratos.sngY = Kratos.sngY + 5
        'Display
            Cls
            
            bitblt Me.hDC, Kratos.sngX, Kratos.sngY, Kratos.sngWid(Kratos.PicNum), Kratos.sngHei(Kratos.PicNum), MKratos(Kratos.PicNum).hDC, _
                Kratos.intFx(Kratos.PicNum) * Kratos.sngWid(Kratos.PicNum), Kratos.intFy(Kratos.PicNum) * Kratos.sngHei(Kratos.PicNum), SRCAND

            bitblt Me.hDC, Kratos.sngX, Kratos.sngY, Kratos.sngWid(Kratos.PicNum), Kratos.sngHei(Kratos.PicNum), SKratos(Kratos.PicNum).hDC, _
                Kratos.intFx(Kratos.PicNum) * Kratos.sngWid(Kratos.PicNum), Kratos.intFy(Kratos.PicNum) * Kratos.sngHei(Kratos.PicNum), SRCINVERT
 
            bitblt Me.hDC, Boulder(intRBoulder).sngX, Boulder(intRBoulder).sngY, Boulder(intRBoulder).sngWid, Boulder(intRBoulder).sngHei, mBoulder.hDC, _
                0, 0, SRCAND

            bitblt Me.hDC, Boulder(intRBoulder).sngX, Boulder(intRBoulder).sngY, Boulder(intRBoulder).sngWid, Boulder(intRBoulder).sngHei, sBoulder.hDC, _
                0, 0, SRCINVERT

        'Delay
            DoEvents
            Sleep (20)

        Loop
        
    'Dead
        MsgBox ("You are dead")
        Call Save
        blnOver = True
        frmending2.Show
        Unload Me
    End If
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
    Write #intFileNum, "3"
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
    intDirection = 1
'Sliding
    If blnSlide = True Then
        Sleep (50)
    'Move
        Kratos.sngX = Kratos.sngX + 10
    'Frame Change
        Kratos.intFx(14) = Kratos.intFx(14) + 1
        If Kratos.intFx(14) > 9 Then Kratos.intFx(14) = 0
        Exit Sub
    End If
    
    
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
'Sliding
    If blnSlide = True Then
        Sleep (50)
        intDirection = 2
    'Frame Change
        Kratos.intFx(15) = Kratos.intFx(15) - 1
        If Kratos.intFx(15) < 0 Then Kratos.intFx(15) = 9
    'Move
        Kratos.sngX = Kratos.sngX - 10
        Exit Sub
    End If
    
    
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
    If blnSlide = True Then
        Kratos.sngY = Kratos.sngY + 25
        sngJSpeed = -2
        blnSlide = False
    End If
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



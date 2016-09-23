VERSION 5.00
Begin VB.Form frmTutorial 
   AutoRedraw      =   -1  'True
   Caption         =   "Form1"
   ClientHeight    =   8445
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   11280
   LinkTopic       =   "Form1"
   ScaleHeight     =   563
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   752
   StartUpPosition =   3  'Windows Default
   Begin VB.PictureBox SKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1290
      Index           =   15
      Left            =   7695
      Picture         =   "frmTutorial.frx":0000
      ScaleHeight     =   82
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   444
      TabIndex        =   75
      Top             =   480
      Visible         =   0   'False
      Width           =   6720
   End
   Begin VB.PictureBox MKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1290
      Index           =   15
      Left            =   7695
      Picture         =   "frmTutorial.frx":48E5
      ScaleHeight     =   82
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   444
      TabIndex        =   74
      Top             =   0
      Visible         =   0   'False
      Width           =   6720
   End
   Begin VB.PictureBox MKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1290
      Index           =   14
      Left            =   7695
      Picture         =   "frmTutorial.frx":8B03
      ScaleHeight     =   82
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   444
      TabIndex        =   73
      Top             =   0
      Visible         =   0   'False
      Width           =   6720
   End
   Begin VB.PictureBox SKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1290
      Index           =   14
      Left            =   7695
      Picture         =   "frmTutorial.frx":CABA
      ScaleHeight     =   82
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   444
      TabIndex        =   72
      Top             =   0
      Visible         =   0   'False
      Width           =   6720
   End
   Begin VB.PictureBox sDoor 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1140
      Left            =   6015
      Picture         =   "frmTutorial.frx":111FB
      ScaleHeight     =   72
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   161
      TabIndex        =   71
      Top             =   600
      Visible         =   0   'False
      Width           =   2475
   End
   Begin VB.PictureBox mDoor 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1140
      Left            =   2640
      Picture         =   "frmTutorial.frx":12853
      ScaleHeight     =   72
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   161
      TabIndex        =   70
      Top             =   3480
      Visible         =   0   'False
      Width           =   2475
   End
   Begin VB.PictureBox MKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   900
      Index           =   13
      Left            =   7080
      Picture         =   "frmTutorial.frx":138FA
      ScaleHeight     =   56
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   358
      TabIndex        =   69
      Top             =   960
      Visible         =   0   'False
      Width           =   5430
   End
   Begin VB.PictureBox SKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   900
      Index           =   13
      Left            =   7815
      Picture         =   "frmTutorial.frx":15B4C
      ScaleHeight     =   56
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   358
      TabIndex        =   68
      Top             =   1800
      Visible         =   0   'False
      Width           =   5430
   End
   Begin VB.PictureBox sSwitch 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   840
      Left            =   5175
      Picture         =   "frmTutorial.frx":18083
      ScaleHeight     =   52
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   111
      TabIndex        =   67
      Top             =   960
      Visible         =   0   'False
      Width           =   1725
   End
   Begin VB.PictureBox MSwitch 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   840
      Left            =   5175
      Picture         =   "frmTutorial.frx":18C11
      ScaleHeight     =   52
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   111
      TabIndex        =   66
      Top             =   960
      Visible         =   0   'False
      Width           =   1725
   End
   Begin VB.PictureBox SKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1125
      Index           =   12
      Left            =   8295
      Picture         =   "frmTutorial.frx":198D4
      ScaleHeight     =   71
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   230
      TabIndex        =   65
      Top             =   2160
      Visible         =   0   'False
      Width           =   3510
   End
   Begin VB.PictureBox MKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1125
      Index           =   12
      Left            =   8535
      Picture         =   "frmTutorial.frx":1B30B
      ScaleHeight     =   71
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   230
      TabIndex        =   64
      Top             =   2040
      Visible         =   0   'False
      Width           =   3510
   End
   Begin VB.PictureBox MBox 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1200
      Left            =   7335
      Picture         =   "frmTutorial.frx":1C9C1
      ScaleHeight     =   76
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   334
      TabIndex        =   63
      Top             =   480
      Visible         =   0   'False
      Width           =   5070
   End
   Begin VB.PictureBox SBox 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1200
      Left            =   3480
      Picture         =   "frmTutorial.frx":1E63C
      ScaleHeight     =   76
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   334
      TabIndex        =   62
      Top             =   840
      Visible         =   0   'False
      Width           =   5070
   End
   Begin VB.PictureBox SKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1080
      Index           =   0
      Left            =   6255
      Picture         =   "frmTutorial.frx":20DF4
      ScaleHeight     =   68
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   508
      TabIndex        =   61
      Top             =   2760
      Visible         =   0   'False
      Width           =   7680
   End
   Begin VB.PictureBox MKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1080
      Index           =   0
      Left            =   7935
      Picture         =   "frmTutorial.frx":249CE
      ScaleHeight     =   68
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   508
      TabIndex        =   60
      Top             =   1320
      Visible         =   0   'False
      Width           =   7680
   End
   Begin VB.PictureBox MKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1005
      Index           =   1
      Left            =   7560
      Picture         =   "frmTutorial.frx":28333
      ScaleHeight     =   63
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   319
      TabIndex        =   59
      Top             =   960
      Visible         =   0   'False
      Width           =   4845
   End
   Begin VB.PictureBox SKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1005
      Index           =   1
      Left            =   7560
      Picture         =   "frmTutorial.frx":2A192
      ScaleHeight     =   63
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   319
      TabIndex        =   58
      Top             =   960
      Visible         =   0   'False
      Width           =   4845
   End
   Begin VB.PictureBox SKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1005
      Index           =   3
      Left            =   7440
      Picture         =   "frmTutorial.frx":2C454
      ScaleHeight     =   63
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   319
      TabIndex        =   57
      Top             =   1800
      Visible         =   0   'False
      Width           =   4845
   End
   Begin VB.PictureBox MKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1005
      Index           =   3
      Left            =   7575
      Picture         =   "frmTutorial.frx":2E6EC
      ScaleHeight     =   63
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   319
      TabIndex        =   56
      Top             =   720
      Visible         =   0   'False
      Width           =   4845
   End
   Begin VB.PictureBox MKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1065
      Index           =   4
      Left            =   10095
      Picture         =   "frmTutorial.frx":305D4
      ScaleHeight     =   67
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   51
      TabIndex        =   55
      Top             =   3480
      Visible         =   0   'False
      Width           =   825
   End
   Begin VB.PictureBox SKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1065
      Index           =   4
      Left            =   10095
      Picture         =   "frmTutorial.frx":30F04
      ScaleHeight     =   67
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   51
      TabIndex        =   54
      Top             =   3480
      Visible         =   0   'False
      Width           =   825
   End
   Begin VB.PictureBox SKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1050
      Index           =   6
      Left            =   6855
      Picture         =   "frmTutorial.frx":318F9
      ScaleHeight     =   66
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   394
      TabIndex        =   53
      Top             =   2400
      Visible         =   0   'False
      Width           =   5970
   End
   Begin VB.PictureBox MKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1050
      Index           =   6
      Left            =   6855
      Picture         =   "frmTutorial.frx":3407B
      ScaleHeight     =   66
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   394
      TabIndex        =   52
      Top             =   2400
      Visible         =   0   'False
      Width           =   5970
   End
   Begin VB.PictureBox MKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1050
      Index           =   7
      Left            =   7800
      Picture         =   "frmTutorial.frx":3657E
      ScaleHeight     =   66
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   394
      TabIndex        =   51
      Top             =   1680
      Visible         =   0   'False
      Width           =   5970
   End
   Begin VB.PictureBox SKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1050
      Index           =   7
      Left            =   7320
      Picture         =   "frmTutorial.frx":38BF1
      ScaleHeight     =   66
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   394
      TabIndex        =   50
      Top             =   2280
      Visible         =   0   'False
      Width           =   5970
   End
   Begin VB.PictureBox MKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   3105
      Index           =   8
      Left            =   6960
      Picture         =   "frmTutorial.frx":3B47C
      ScaleHeight     =   203
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   522
      TabIndex        =   49
      Top             =   2280
      Visible         =   0   'False
      Width           =   7890
   End
   Begin VB.PictureBox SKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   3105
      Index           =   8
      Left            =   6480
      Picture         =   "frmTutorial.frx":3F95F
      ScaleHeight     =   203
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   522
      TabIndex        =   48
      Top             =   120
      Visible         =   0   'False
      Width           =   7890
   End
   Begin VB.PictureBox SKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   3105
      Index           =   9
      Left            =   7800
      Picture         =   "frmTutorial.frx":44244
      ScaleHeight     =   203
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   522
      TabIndex        =   47
      Top             =   2880
      Visible         =   0   'False
      Width           =   7890
   End
   Begin VB.PictureBox MKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   3105
      Index           =   9
      Left            =   7920
      Picture         =   "frmTutorial.frx":48C6B
      ScaleHeight     =   203
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   522
      TabIndex        =   46
      Top             =   1080
      Visible         =   0   'False
      Width           =   7890
   End
   Begin VB.PictureBox SKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1005
      Index           =   10
      Left            =   9720
      Picture         =   "frmTutorial.frx":4D412
      ScaleHeight     =   63
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   113
      TabIndex        =   45
      Top             =   960
      Visible         =   0   'False
      Width           =   1755
   End
   Begin VB.PictureBox MKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1005
      Index           =   10
      Left            =   9600
      Picture         =   "frmTutorial.frx":4E44B
      ScaleHeight     =   63
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   113
      TabIndex        =   44
      Top             =   840
      Visible         =   0   'False
      Width           =   1755
   End
   Begin VB.PictureBox SMin 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1710
      Index           =   0
      Left            =   0
      Picture         =   "frmTutorial.frx":4F328
      ScaleHeight     =   110
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   803
      TabIndex        =   43
      Top             =   600
      Visible         =   0   'False
      Width           =   12105
   End
   Begin VB.PictureBox mMin 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1725
      Index           =   0
      Left            =   600
      Picture         =   "frmTutorial.frx":53543
      ScaleHeight     =   111
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   802
      TabIndex        =   42
      Top             =   2400
      Visible         =   0   'False
      Width           =   12090
   End
   Begin VB.PictureBox SMin 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1650
      Index           =   1
      Left            =   7680
      Picture         =   "frmTutorial.frx":54984
      ScaleHeight     =   106
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   791
      TabIndex        =   41
      Top             =   2160
      Visible         =   0   'False
      Width           =   11925
   End
   Begin VB.PictureBox mMin 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1680
      Index           =   1
      Left            =   7800
      Picture         =   "frmTutorial.frx":58BCB
      ScaleHeight     =   108
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   789
      TabIndex        =   40
      Top             =   840
      Visible         =   0   'False
      Width           =   11895
   End
   Begin VB.PictureBox mMin 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1920
      Index           =   2
      Left            =   4680
      Picture         =   "frmTutorial.frx":5A003
      ScaleHeight     =   124
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   688
      TabIndex        =   39
      Top             =   600
      Visible         =   0   'False
      Width           =   10380
   End
   Begin VB.PictureBox SMin 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1920
      Index           =   2
      Left            =   7680
      Picture         =   "frmTutorial.frx":5B25B
      ScaleHeight     =   124
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   688
      TabIndex        =   38
      Top             =   0
      Visible         =   0   'False
      Width           =   10380
   End
   Begin VB.PictureBox SMin 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1920
      Index           =   3
      Left            =   7080
      Picture         =   "frmTutorial.frx":5F0CF
      ScaleHeight     =   124
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   688
      TabIndex        =   37
      Top             =   120
      Visible         =   0   'False
      Width           =   10380
   End
   Begin VB.PictureBox mMin 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1920
      Index           =   3
      Left            =   7440
      Picture         =   "frmTutorial.frx":62F5B
      ScaleHeight     =   124
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   688
      TabIndex        =   36
      Top             =   1560
      Visible         =   0   'False
      Width           =   10380
   End
   Begin VB.Timer tmrKratos 
      Interval        =   1
      Left            =   8760
      Top             =   3480
   End
   Begin VB.PictureBox mMin 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1815
      Index           =   4
      Left            =   3480
      Picture         =   "frmTutorial.frx":641B2
      ScaleHeight     =   117
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   250
      TabIndex        =   35
      Top             =   4680
      Visible         =   0   'False
      Width           =   3810
   End
   Begin VB.PictureBox SMin 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1815
      Index           =   4
      Left            =   5760
      Picture         =   "frmTutorial.frx":64B64
      ScaleHeight     =   117
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   250
      TabIndex        =   34
      Top             =   1920
      Visible         =   0   'False
      Width           =   3810
   End
   Begin VB.PictureBox SKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   2040
      Index           =   17
      Left            =   3840
      Picture         =   "frmTutorial.frx":668AE
      ScaleHeight     =   132
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   484
      TabIndex        =   33
      Top             =   4200
      Visible         =   0   'False
      Width           =   7320
   End
   Begin VB.PictureBox MKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   2040
      Index           =   17
      Left            =   3360
      Picture         =   "frmTutorial.frx":6AB89
      ScaleHeight     =   132
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   484
      TabIndex        =   32
      Top             =   4800
      Visible         =   0   'False
      Width           =   7320
   End
   Begin VB.PictureBox SMin 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1950
      Index           =   5
      Left            =   8400
      Picture         =   "frmTutorial.frx":6E7A1
      ScaleHeight     =   126
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   524
      TabIndex        =   31
      Top             =   720
      Visible         =   0   'False
      Width           =   7920
   End
   Begin VB.PictureBox mMin 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1950
      Index           =   5
      Left            =   8400
      Picture         =   "frmTutorial.frx":71515
      ScaleHeight     =   126
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   524
      TabIndex        =   30
      Top             =   2040
      Visible         =   0   'False
      Width           =   7920
   End
   Begin VB.PictureBox SMin 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1470
      Index           =   6
      Left            =   9840
      Picture         =   "frmTutorial.frx":72357
      ScaleHeight     =   94
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   451
      TabIndex        =   29
      Top             =   2160
      Visible         =   0   'False
      Width           =   6825
   End
   Begin VB.PictureBox mMin 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1470
      Index           =   6
      Left            =   9720
      Picture         =   "frmTutorial.frx":744D5
      ScaleHeight     =   94
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   451
      TabIndex        =   28
      Top             =   3480
      Visible         =   0   'False
      Width           =   6825
   End
   Begin VB.PictureBox SBane 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   930
      Left            =   3840
      Picture         =   "frmTutorial.frx":76477
      ScaleHeight     =   58
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   73
      TabIndex        =   27
      Top             =   3240
      Visible         =   0   'False
      Width           =   1155
   End
   Begin VB.PictureBox MBane 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   930
      Left            =   3840
      Picture         =   "frmTutorial.frx":76CF9
      ScaleHeight     =   58
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   73
      TabIndex        =   26
      Top             =   3240
      Visible         =   0   'False
      Width           =   1155
   End
   Begin VB.PictureBox MKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1110
      Index           =   18
      Left            =   8640
      Picture         =   "frmTutorial.frx":77696
      ScaleHeight     =   70
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   121
      TabIndex        =   25
      Top             =   2280
      Visible         =   0   'False
      Width           =   1875
   End
   Begin VB.PictureBox SKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1110
      Index           =   18
      Left            =   4920
      Picture         =   "frmTutorial.frx":7875B
      ScaleHeight     =   70
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   121
      TabIndex        =   24
      Top             =   2400
      Visible         =   0   'False
      Width           =   1875
   End
   Begin VB.PictureBox MKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1590
      Index           =   19
      Left            =   3720
      Picture         =   "frmTutorial.frx":79A71
      ScaleHeight     =   102
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   507
      TabIndex        =   23
      Top             =   3600
      Visible         =   0   'False
      Width           =   7665
   End
   Begin VB.PictureBox SKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1590
      Index           =   19
      Left            =   4200
      Picture         =   "frmTutorial.frx":7CD57
      ScaleHeight     =   102
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   507
      TabIndex        =   22
      Top             =   3000
      Visible         =   0   'False
      Width           =   7665
   End
   Begin VB.Frame fmeGround 
      BackColor       =   &H00404040&
      BorderStyle     =   0  'None
      Caption         =   "Frame1"
      ForeColor       =   &H00404040&
      Height          =   3255
      Index           =   0
      Left            =   0
      TabIndex        =   21
      Top             =   6720
      Width           =   2175
   End
   Begin VB.Timer Timer1 
      Interval        =   1000
      Left            =   12000
      Top             =   3480
   End
   Begin VB.PictureBox SKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1005
      Index           =   2
      Left            =   11760
      Picture         =   "frmTutorial.frx":80373
      ScaleHeight     =   63
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   62
      TabIndex        =   20
      Top             =   240
      Visible         =   0   'False
      Width           =   990
   End
   Begin VB.PictureBox MKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1065
      Index           =   2
      Left            =   11760
      Picture         =   "frmTutorial.frx":80E88
      ScaleHeight     =   67
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   63
      TabIndex        =   19
      Top             =   240
      Visible         =   0   'False
      Width           =   1005
   End
   Begin VB.Timer tmrAnimate 
      Interval        =   1
      Left            =   2160
      Top             =   3240
   End
   Begin VB.Frame fmeGround 
      BackColor       =   &H00404040&
      BorderStyle     =   0  'None
      Caption         =   "Frame1"
      ForeColor       =   &H00404040&
      Height          =   3255
      Index           =   1
      Left            =   6360
      TabIndex        =   18
      Top             =   6720
      Width           =   1815
   End
   Begin VB.Frame fmeGround 
      BackColor       =   &H00404040&
      BorderStyle     =   0  'None
      Caption         =   "Frame1"
      ForeColor       =   &H00404040&
      Height          =   3255
      Index           =   2
      Left            =   7440
      TabIndex        =   17
      Top             =   6720
      Width           =   1935
   End
   Begin VB.Frame fmeGround 
      BackColor       =   &H00404040&
      BorderStyle     =   0  'None
      Caption         =   "Frame1"
      ForeColor       =   &H00404040&
      Height          =   3255
      Index           =   4
      Left            =   13200
      TabIndex        =   16
      Top             =   6840
      Width           =   1215
   End
   Begin VB.Frame fmeGround 
      BackColor       =   &H00404040&
      BorderStyle     =   0  'None
      Caption         =   "Frame1"
      ForeColor       =   &H00404040&
      Height          =   3255
      Index           =   3
      Left            =   15480
      TabIndex        =   15
      Top             =   6840
      Width           =   2175
   End
   Begin VB.Frame fmeGround 
      BackColor       =   &H00404040&
      BorderStyle     =   0  'None
      Caption         =   "Frame1"
      ForeColor       =   &H00404040&
      Height          =   375
      Index           =   5
      Left            =   12600
      TabIndex        =   14
      Top             =   3120
      Width           =   1815
   End
   Begin VB.Frame fmeGround 
      BackColor       =   &H00404040&
      BorderStyle     =   0  'None
      Caption         =   "Frame1"
      ForeColor       =   &H00404040&
      Height          =   375
      Index           =   6
      Left            =   7560
      TabIndex        =   13
      Top             =   1080
      Width           =   1935
   End
   Begin VB.Frame fmeGround 
      BackColor       =   &H00404040&
      BorderStyle     =   0  'None
      Caption         =   "Frame1"
      ForeColor       =   &H00404040&
      Height          =   375
      Index           =   7
      Left            =   0
      TabIndex        =   12
      Top             =   960
      Width           =   1935
   End
   Begin VB.Frame fmeUp 
      BackColor       =   &H00000000&
      BorderStyle     =   0  'None
      Caption         =   "Frame1"
      Height          =   3015
      Index           =   0
      Left            =   3720
      TabIndex        =   9
      Top             =   2400
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
         TabIndex        =   10
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
         TabIndex        =   11
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
      Left            =   3720
      TabIndex        =   6
      Top             =   2400
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
         TabIndex        =   7
         Top             =   1920
         Width           =   1455
      End
      Begin VB.Label lblTip 
         BackStyle       =   0  'Transparent
         Caption         =   " Jump Upgrade: Triple Jump"
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
         TabIndex        =   8
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
      Left            =   3720
      TabIndex        =   3
      Top             =   2400
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
         TabIndex        =   4
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
         TabIndex        =   5
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
      Left            =   3720
      TabIndex        =   0
      Top             =   2400
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
         TabIndex        =   1
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
         TabIndex        =   2
         Top             =   360
         Width           =   2415
      End
   End
End
Attribute VB_Name = "frmTutorial"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

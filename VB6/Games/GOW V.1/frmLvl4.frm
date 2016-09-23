VERSION 5.00
Begin VB.Form frmLvl4 
   AutoRedraw      =   -1  'True
   BorderStyle     =   0  'None
   ClientHeight    =   10530
   ClientLeft      =   600
   ClientTop       =   510
   ClientWidth     =   13425
   ControlBox      =   0   'False
   Icon            =   "frmLvl4.frx":0000
   LinkTopic       =   "Form1"
   Picture         =   "frmLvl4.frx":0ECA
   ScaleHeight     =   702
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   895
   Begin VB.PictureBox MKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1590
      Index           =   20
      Left            =   2640
      Picture         =   "frmLvl4.frx":71642
      ScaleHeight     =   102
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   507
      TabIndex        =   64
      Top             =   3480
      Visible         =   0   'False
      Width           =   7665
   End
   Begin VB.PictureBox SKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1590
      Index           =   20
      Left            =   2640
      Picture         =   "frmLvl4.frx":7478C
      ScaleHeight     =   102
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   507
      TabIndex        =   63
      Top             =   3480
      Visible         =   0   'False
      Width           =   7665
   End
   Begin VB.PictureBox SKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1590
      Index           =   19
      Left            =   3840
      Picture         =   "frmLvl4.frx":77CB5
      ScaleHeight     =   102
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   507
      TabIndex        =   62
      Top             =   6720
      Visible         =   0   'False
      Width           =   7665
   End
   Begin VB.PictureBox MKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1590
      Index           =   19
      Left            =   3720
      Picture         =   "frmLvl4.frx":7B2D1
      ScaleHeight     =   102
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   507
      TabIndex        =   61
      Top             =   6840
      Visible         =   0   'False
      Width           =   7665
   End
   Begin VB.PictureBox SKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1110
      Index           =   18
      Left            =   2760
      Picture         =   "frmLvl4.frx":7E5B7
      ScaleHeight     =   70
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   121
      TabIndex        =   60
      Top             =   6240
      Visible         =   0   'False
      Width           =   1875
   End
   Begin VB.PictureBox MKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1110
      Index           =   18
      Left            =   4320
      Picture         =   "frmLvl4.frx":7F8CD
      ScaleHeight     =   70
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   121
      TabIndex        =   59
      Top             =   6960
      Visible         =   0   'False
      Width           =   1875
   End
   Begin VB.PictureBox MBane 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   930
      Left            =   1920
      Picture         =   "frmLvl4.frx":80992
      ScaleHeight     =   58
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   73
      TabIndex        =   58
      Top             =   5280
      Visible         =   0   'False
      Width           =   1155
   End
   Begin VB.PictureBox SBane 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   930
      Left            =   1920
      Picture         =   "frmLvl4.frx":8132F
      ScaleHeight     =   58
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   73
      TabIndex        =   57
      Top             =   5280
      Visible         =   0   'False
      Width           =   1155
   End
   Begin VB.PictureBox mMin 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1470
      Index           =   6
      Left            =   7800
      Picture         =   "frmLvl4.frx":81BB1
      ScaleHeight     =   94
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   451
      TabIndex        =   56
      Top             =   5520
      Visible         =   0   'False
      Width           =   6825
   End
   Begin VB.PictureBox SMin 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1470
      Index           =   6
      Left            =   6360
      Picture         =   "frmLvl4.frx":83B53
      ScaleHeight     =   94
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   451
      TabIndex        =   55
      Top             =   6840
      Visible         =   0   'False
      Width           =   6825
   End
   Begin VB.PictureBox mMin 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1950
      Index           =   5
      Left            =   4080
      Picture         =   "frmLvl4.frx":85CD1
      ScaleHeight     =   126
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   524
      TabIndex        =   54
      Top             =   6120
      Visible         =   0   'False
      Width           =   7920
   End
   Begin VB.PictureBox SMin 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1950
      Index           =   5
      Left            =   4080
      Picture         =   "frmLvl4.frx":86B13
      ScaleHeight     =   126
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   524
      TabIndex        =   53
      Top             =   5520
      Visible         =   0   'False
      Width           =   7920
   End
   Begin VB.PictureBox MKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   2040
      Index           =   17
      Left            =   2400
      Picture         =   "frmLvl4.frx":89887
      ScaleHeight     =   132
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   484
      TabIndex        =   52
      Top             =   7200
      Visible         =   0   'False
      Width           =   7320
   End
   Begin VB.PictureBox SKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   2040
      Index           =   17
      Left            =   1920
      Picture         =   "frmLvl4.frx":8D49F
      ScaleHeight     =   132
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   484
      TabIndex        =   51
      Top             =   6840
      Visible         =   0   'False
      Width           =   7320
   End
   Begin VB.PictureBox SMin 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1815
      Index           =   4
      Left            =   4200
      Picture         =   "frmLvl4.frx":9177A
      ScaleHeight     =   117
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   250
      TabIndex        =   50
      Top             =   6240
      Visible         =   0   'False
      Width           =   3810
   End
   Begin VB.PictureBox mMin 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1815
      Index           =   4
      Left            =   1560
      Picture         =   "frmLvl4.frx":934C4
      ScaleHeight     =   117
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   250
      TabIndex        =   49
      Top             =   6720
      Visible         =   0   'False
      Width           =   3810
   End
   Begin VB.Timer tmrKratos 
      Interval        =   1
      Left            =   6840
      Top             =   5520
   End
   Begin VB.PictureBox mMin 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1920
      Index           =   3
      Left            =   2880
      Picture         =   "frmLvl4.frx":93E76
      ScaleHeight     =   124
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   688
      TabIndex        =   48
      Top             =   6840
      Visible         =   0   'False
      Width           =   10380
   End
   Begin VB.PictureBox SMin 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1920
      Index           =   3
      Left            =   2880
      Picture         =   "frmLvl4.frx":950CD
      ScaleHeight     =   124
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   688
      TabIndex        =   47
      Top             =   6240
      Visible         =   0   'False
      Width           =   10380
   End
   Begin VB.PictureBox SMin 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1920
      Index           =   2
      Left            =   3840
      Picture         =   "frmLvl4.frx":98F59
      ScaleHeight     =   124
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   688
      TabIndex        =   46
      Top             =   5640
      Visible         =   0   'False
      Width           =   10380
   End
   Begin VB.PictureBox mMin 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1920
      Index           =   2
      Left            =   840
      Picture         =   "frmLvl4.frx":9CDCD
      ScaleHeight     =   124
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   688
      TabIndex        =   45
      Top             =   6240
      Visible         =   0   'False
      Width           =   10380
   End
   Begin VB.PictureBox mMin 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1680
      Index           =   1
      Left            =   3120
      Picture         =   "frmLvl4.frx":9E025
      ScaleHeight     =   108
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   789
      TabIndex        =   44
      Top             =   5640
      Visible         =   0   'False
      Width           =   11895
   End
   Begin VB.PictureBox SMin 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1650
      Index           =   1
      Left            =   2880
      Picture         =   "frmLvl4.frx":9F45D
      ScaleHeight     =   106
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   791
      TabIndex        =   43
      Top             =   7200
      Visible         =   0   'False
      Width           =   11925
   End
   Begin VB.PictureBox mMin 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1725
      Index           =   0
      Left            =   -480
      Picture         =   "frmLvl4.frx":A36A4
      ScaleHeight     =   111
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   802
      TabIndex        =   42
      Top             =   6720
      Visible         =   0   'False
      Width           =   12090
   End
   Begin VB.PictureBox SMin 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1710
      Index           =   0
      Left            =   -3720
      Picture         =   "frmLvl4.frx":A4AE5
      ScaleHeight     =   110
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   803
      TabIndex        =   41
      Top             =   5640
      Visible         =   0   'False
      Width           =   12105
   End
   Begin VB.Frame fmeGround 
      BackColor       =   &H00404040&
      BorderStyle     =   0  'None
      Caption         =   "Frame1"
      ForeColor       =   &H00404040&
      Height          =   495
      Index           =   0
      Left            =   -4440
      TabIndex        =   40
      Top             =   9240
      Width           =   21180
   End
   Begin VB.PictureBox SKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1230
      Index           =   11
      Left            =   6135
      Picture         =   "frmLvl4.frx":A8D00
      ScaleHeight     =   78
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   72
      TabIndex        =   39
      Top             =   -360
      Visible         =   0   'False
      Width           =   1140
   End
   Begin VB.PictureBox MKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1245
      Index           =   11
      Left            =   6135
      Picture         =   "frmLvl4.frx":A95F3
      ScaleHeight     =   79
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   75
      TabIndex        =   38
      Top             =   -360
      Visible         =   0   'False
      Width           =   1185
   End
   Begin VB.PictureBox MKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1005
      Index           =   10
      Left            =   7680
      Picture         =   "frmLvl4.frx":A9F1B
      ScaleHeight     =   63
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   113
      TabIndex        =   37
      Top             =   2880
      Visible         =   0   'False
      Width           =   1755
   End
   Begin VB.PictureBox SKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1005
      Index           =   10
      Left            =   7800
      Picture         =   "frmLvl4.frx":AADF8
      ScaleHeight     =   63
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   113
      TabIndex        =   36
      Top             =   3000
      Visible         =   0   'False
      Width           =   1755
   End
   Begin VB.PictureBox MKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   3105
      Index           =   9
      Left            =   2040
      Picture         =   "frmLvl4.frx":ABE31
      ScaleHeight     =   203
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   522
      TabIndex        =   35
      Top             =   5760
      Visible         =   0   'False
      Width           =   7890
   End
   Begin VB.PictureBox SKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   3105
      Index           =   9
      Left            =   5880
      Picture         =   "frmLvl4.frx":B05D8
      ScaleHeight     =   203
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   522
      TabIndex        =   34
      Top             =   4920
      Visible         =   0   'False
      Width           =   7890
   End
   Begin VB.PictureBox SKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   3105
      Index           =   8
      Left            =   2160
      Picture         =   "frmLvl4.frx":B4FFF
      ScaleHeight     =   203
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   522
      TabIndex        =   33
      Top             =   6360
      Visible         =   0   'False
      Width           =   7890
   End
   Begin VB.PictureBox MKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   3105
      Index           =   8
      Left            =   3600
      Picture         =   "frmLvl4.frx":B98E4
      ScaleHeight     =   203
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   522
      TabIndex        =   32
      Top             =   5040
      Visible         =   0   'False
      Width           =   7890
   End
   Begin VB.PictureBox SKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1020
      Index           =   7
      Left            =   240
      Picture         =   "frmLvl4.frx":BDDC7
      ScaleHeight     =   64
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   525
      TabIndex        =   31
      Top             =   3360
      Visible         =   0   'False
      Width           =   7935
   End
   Begin VB.PictureBox MKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1020
      Index           =   7
      Left            =   240
      Picture         =   "frmLvl4.frx":C07D7
      ScaleHeight     =   64
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   525
      TabIndex        =   30
      Top             =   2280
      Visible         =   0   'False
      Width           =   7935
   End
   Begin VB.Timer Timer1 
      Interval        =   1000
      Left            =   14055
      Top             =   1800
   End
   Begin VB.PictureBox MKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1050
      Index           =   6
      Left            =   4935
      Picture         =   "frmLvl4.frx":C2DF8
      ScaleHeight     =   66
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   394
      TabIndex        =   29
      Top             =   4440
      Visible         =   0   'False
      Width           =   5970
   End
   Begin VB.PictureBox SKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1050
      Index           =   6
      Left            =   4935
      Picture         =   "frmLvl4.frx":C52FB
      ScaleHeight     =   66
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   394
      TabIndex        =   28
      Top             =   4440
      Visible         =   0   'False
      Width           =   5970
   End
   Begin VB.PictureBox SKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1065
      Index           =   5
      Left            =   13095
      Picture         =   "frmLvl4.frx":C7A7D
      ScaleHeight     =   67
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   51
      TabIndex        =   27
      Top             =   1440
      Visible         =   0   'False
      Width           =   825
   End
   Begin VB.PictureBox MKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1065
      Index           =   5
      Left            =   13095
      Picture         =   "frmLvl4.frx":C848A
      ScaleHeight     =   67
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   51
      TabIndex        =   26
      Top             =   1440
      Visible         =   0   'False
      Width           =   825
   End
   Begin VB.PictureBox SKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1065
      Index           =   4
      Left            =   8175
      Picture         =   "frmLvl4.frx":C8E35
      ScaleHeight     =   67
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   51
      TabIndex        =   25
      Top             =   5520
      Visible         =   0   'False
      Width           =   825
   End
   Begin VB.PictureBox MKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1065
      Index           =   4
      Left            =   8175
      Picture         =   "frmLvl4.frx":C982A
      ScaleHeight     =   67
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   51
      TabIndex        =   24
      Top             =   5520
      Visible         =   0   'False
      Width           =   825
   End
   Begin VB.PictureBox MKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1005
      Index           =   3
      Left            =   3480
      Picture         =   "frmLvl4.frx":CA15A
      ScaleHeight     =   63
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   319
      TabIndex        =   23
      Top             =   5040
      Visible         =   0   'False
      Width           =   4845
   End
   Begin VB.PictureBox SKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1005
      Index           =   3
      Left            =   5520
      Picture         =   "frmLvl4.frx":CC042
      ScaleHeight     =   63
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   319
      TabIndex        =   22
      Top             =   3840
      Visible         =   0   'False
      Width           =   4845
   End
   Begin VB.PictureBox SKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1005
      Index           =   2
      Left            =   13335
      Picture         =   "frmLvl4.frx":CE2DA
      ScaleHeight     =   63
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   62
      TabIndex        =   21
      Top             =   0
      Visible         =   0   'False
      Width           =   990
   End
   Begin VB.PictureBox MKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1065
      Index           =   2
      Left            =   13335
      Picture         =   "frmLvl4.frx":CEDEF
      ScaleHeight     =   67
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   63
      TabIndex        =   20
      Top             =   0
      Visible         =   0   'False
      Width           =   1005
   End
   Begin VB.PictureBox SKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1005
      Index           =   1
      Left            =   5640
      Picture         =   "frmLvl4.frx":CF91C
      ScaleHeight     =   63
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   319
      TabIndex        =   19
      Top             =   3000
      Visible         =   0   'False
      Width           =   4845
   End
   Begin VB.PictureBox MKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1005
      Index           =   1
      Left            =   5640
      Picture         =   "frmLvl4.frx":D1BDE
      ScaleHeight     =   63
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   319
      TabIndex        =   18
      Top             =   3000
      Visible         =   0   'False
      Width           =   4845
   End
   Begin VB.Timer tmrAnimate 
      Interval        =   1
      Left            =   5415
      Top             =   1680
   End
   Begin VB.PictureBox MKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1080
      Index           =   0
      Left            =   6015
      Picture         =   "frmLvl4.frx":D3A3D
      ScaleHeight     =   68
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   508
      TabIndex        =   17
      Top             =   3360
      Visible         =   0   'False
      Width           =   7680
   End
   Begin VB.PictureBox SKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1080
      Index           =   0
      Left            =   4335
      Picture         =   "frmLvl4.frx":D73A2
      ScaleHeight     =   68
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   508
      TabIndex        =   16
      Top             =   4800
      Visible         =   0   'False
      Width           =   7680
   End
   Begin VB.PictureBox SBox 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1200
      Left            =   -360
      Picture         =   "frmLvl4.frx":DAF7C
      ScaleHeight     =   76
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   334
      TabIndex        =   15
      Top             =   5880
      Visible         =   0   'False
      Width           =   5070
   End
   Begin VB.PictureBox MBox 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1200
      Left            =   5415
      Picture         =   "frmLvl4.frx":DD734
      ScaleHeight     =   76
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   334
      TabIndex        =   14
      Top             =   2520
      Visible         =   0   'False
      Width           =   5070
   End
   Begin VB.PictureBox MKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1125
      Index           =   12
      Left            =   6615
      Picture         =   "frmLvl4.frx":DF3AF
      ScaleHeight     =   71
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   230
      TabIndex        =   13
      Top             =   4080
      Visible         =   0   'False
      Width           =   3510
   End
   Begin VB.PictureBox SKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1125
      Index           =   12
      Left            =   6375
      Picture         =   "frmLvl4.frx":E0A65
      ScaleHeight     =   71
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   230
      TabIndex        =   12
      Top             =   4200
      Visible         =   0   'False
      Width           =   3510
   End
   Begin VB.PictureBox MSwitch 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   840
      Left            =   3255
      Picture         =   "frmLvl4.frx":E249C
      ScaleHeight     =   52
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   111
      TabIndex        =   11
      Top             =   3000
      Visible         =   0   'False
      Width           =   1725
   End
   Begin VB.PictureBox sSwitch 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   840
      Left            =   3255
      Picture         =   "frmLvl4.frx":E315F
      ScaleHeight     =   52
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   111
      TabIndex        =   10
      Top             =   3000
      Visible         =   0   'False
      Width           =   1725
   End
   Begin VB.PictureBox SKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   900
      Index           =   13
      Left            =   5895
      Picture         =   "frmLvl4.frx":E3CED
      ScaleHeight     =   56
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   358
      TabIndex        =   9
      Top             =   3840
      Visible         =   0   'False
      Width           =   5430
   End
   Begin VB.PictureBox MKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   900
      Index           =   13
      Left            =   5160
      Picture         =   "frmLvl4.frx":E6224
      ScaleHeight     =   56
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   358
      TabIndex        =   8
      Top             =   3000
      Visible         =   0   'False
      Width           =   5430
   End
   Begin VB.PictureBox mDoor 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1140
      Left            =   720
      Picture         =   "frmLvl4.frx":E8476
      ScaleHeight     =   72
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   161
      TabIndex        =   7
      Top             =   5520
      Visible         =   0   'False
      Width           =   2475
   End
   Begin VB.PictureBox sDoor 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1140
      Left            =   4095
      Picture         =   "frmLvl4.frx":E951D
      ScaleHeight     =   72
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   161
      TabIndex        =   6
      Top             =   2640
      Visible         =   0   'False
      Width           =   2475
   End
   Begin VB.PictureBox SKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1290
      Index           =   14
      Left            =   5775
      Picture         =   "frmLvl4.frx":EAB75
      ScaleHeight     =   82
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   444
      TabIndex        =   5
      Top             =   2040
      Visible         =   0   'False
      Width           =   6720
   End
   Begin VB.PictureBox MKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1290
      Index           =   14
      Left            =   5775
      Picture         =   "frmLvl4.frx":EF2B6
      ScaleHeight     =   82
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   444
      TabIndex        =   4
      Top             =   2040
      Visible         =   0   'False
      Width           =   6720
   End
   Begin VB.PictureBox MKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1290
      Index           =   15
      Left            =   5775
      Picture         =   "frmLvl4.frx":F326D
      ScaleHeight     =   82
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   444
      TabIndex        =   3
      Top             =   2040
      Visible         =   0   'False
      Width           =   6720
   End
   Begin VB.PictureBox SKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1290
      Index           =   15
      Left            =   5775
      Picture         =   "frmLvl4.frx":F748B
      ScaleHeight     =   82
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   444
      TabIndex        =   2
      Top             =   2520
      Visible         =   0   'False
      Width           =   6720
   End
   Begin VB.PictureBox MKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1050
      Index           =   16
      Left            =   4815
      Picture         =   "frmLvl4.frx":FBD70
      ScaleHeight     =   66
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   58
      TabIndex        =   1
      Top             =   0
      Visible         =   0   'False
      Width           =   930
   End
   Begin VB.PictureBox SKratos 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1050
      Index           =   16
      Left            =   4815
      Picture         =   "frmLvl4.frx":FC7CD
      ScaleHeight     =   66
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   58
      TabIndex        =   0
      Top             =   0
      Visible         =   0   'False
      Width           =   930
   End
   Begin VB.Line lnMinH 
      BorderColor     =   &H00FF0000&
      BorderWidth     =   10
      X1              =   8
      X2              =   1008
      Y1              =   88
      Y2              =   88
   End
   Begin VB.Line lnHealth 
      BorderColor     =   &H0000FF00&
      BorderWidth     =   10
      X1              =   48
      X2              =   424
      Y1              =   32
      Y2              =   32
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
Attribute VB_Name = "frmLvl4"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit


Dim Kratos As Person, Minotaur As Person, Box As Obj, Bane As Obj, Door As Obj    ' User Defined Types

Dim intDirection As Integer
Dim intSpare As Integer, sngJSpeed As Single, intJumpNum As Integer
Dim blnJump As Boolean, blnGround As Boolean, blnMinDead As Boolean
Dim intPrevMove As Integer
Dim blnOver As Boolean, blnLaunch As Boolean, blnCaught As Boolean, intCounter As Integer
Dim blnRange As Boolean, blnGuard As Boolean, intMoves As Integer, intC2 As Integer
Const sngGravity As Single = 1



Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
If blnCaught = True Then Exit Sub
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
If blnCaught = True Or blnOver = True Then Exit Sub

Select Case KeyCode
     Case vbKeyDown
        blnGuard = False
                
     Case vbKeySpace 'Pull complete/ incomplete
        Kratos.intFx(12) = 0
        If Box.blnUsed = False Then Box.intFx = 0
        Kratos.intFx(13) = 0
        
End Select

If blnJump = True Then Exit Sub

Select Case intDirection

    Case 1 'Right
        If Sword = False Then
            Kratos.PicNum = 0
        Else
            Kratos.PicNum = 18
            Kratos.intFx(18) = 0
        End If

    Case 2 ' Left
        
        If Sword = False Then
            Kratos.PicNum = 2
        Else
            Kratos.PicNum = 18
            Kratos.intFx(18) = 1
        End If

End Select


End Sub

Private Sub Form_Load()
If blnOver = True Then Exit Sub

'Bit blit Dimensions
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

    Kratos.sngWid(17) = 68
    Kratos.sngHei(17) = 70

    Kratos.sngWid(18) = 60
    Kratos.sngHei(18) = 70

    Kratos.sngWid(19) = 85
    Kratos.sngHei(19) = 100
    
    Kratos.sngWid(20) = 85
    Kratos.sngHei(20) = 100
    

'Minotaur Dimensions
    Minotaur.sngWid(0) = 130
    Minotaur.sngHei(0) = 100

    Minotaur.sngWid(1) = 130
    Minotaur.sngHei(1) = 100

    Minotaur.sngWid(2) = 142
    Minotaur.sngHei(2) = 110

    Minotaur.sngWid(3) = 135
    Minotaur.sngHei(3) = 110

    Minotaur.sngWid(4) = 125
    Minotaur.sngHei(4) = 110

    Minotaur.sngWid(5) = 129
    Minotaur.sngHei(5) = 110

    Minotaur.sngWid(6) = 145
    Minotaur.sngHei(6) = 90

'Object Dimensions
    Box.sngWid = 58
    Box.sngHei = 90

    Bane.sngWid = 70
    Bane.sngHei = 60

    Door.sngWid = 50
    Door.sngHei = 75

'Default Positions

Minotaur.sngX = 1000

Door.sngY = -100



Bane.sngX = Me.ScaleWidth / 2
Bane.sngY = -Bane.sngHei

'Health Bar
lnHealth.X2 = lnHealth.X1 + MHealth


Call mnuGoal_Click

End Sub

Private Sub mnuControl_Click()
'Show Controls
    frmControls.Show
    Lvl = 4
'Pause Game
    tmrKratos.Interval = 0
    tmrAnimate.Interval = 0
End Sub

Private Sub mnuGoal_Click()
If blnMinDead = False Then
    MsgBox ("Level 4 Objective: Kill the Minotaur" & vbCrLf & "Hint: The Minotaur is weaker on his left side and some of his attacks can be blocked using the down key")
Else
    MsgBox ("Level 4 Objective: Take the sword and open the door")
End If
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
    strPass = InputBox("Level 5 Password")
'Wrong Password
    If strPass <> "****GOWLvl5****" Then Exit Sub
'Redirect
    frmLvl5.Show
    blnOver = True
    Unload Me
End Sub
Private Sub tmrAnimate_Timer()
If blnOver = True Then Exit Sub

Cls
blnGround = Check()


Minotaur.sngY = fmeGround(0).Top - Minotaur.sngHei(Minotaur.PicNum)

'Bitblt

    'Minotaur
        bitblt Me.hDC, Minotaur.sngX, Minotaur.sngY, Minotaur.sngWid(Minotaur.PicNum), Minotaur.sngHei(Minotaur.PicNum), SMin(Minotaur.PicNum).hDC, _
            Minotaur.intFx(Minotaur.PicNum) * Minotaur.sngWid(Minotaur.PicNum), 0, SRCPAINT
   
    'Kratos
        bitblt Me.hDC, Kratos.sngX, Kratos.sngY, Kratos.sngWid(Kratos.PicNum), Kratos.sngHei(Kratos.PicNum), MKratos(Kratos.PicNum).hDC, _
            Kratos.intFx(Kratos.PicNum) * Kratos.sngWid(Kratos.PicNum), Kratos.intFy(Kratos.PicNum) * Kratos.sngHei(Kratos.PicNum), SRCAND

        bitblt Me.hDC, Kratos.sngX, Kratos.sngY, Kratos.sngWid(Kratos.PicNum), Kratos.sngHei(Kratos.PicNum), SKratos(Kratos.PicNum).hDC, _
            Kratos.intFx(Kratos.PicNum) * Kratos.sngWid(Kratos.PicNum), Kratos.intFy(Kratos.PicNum) * Kratos.sngHei(Kratos.PicNum), SRCINVERT


    'Sword of Bane
        bitblt Me.hDC, Bane.sngX, Bane.sngY, Bane.sngWid, Bane.sngHei, MBane.hDC, _
            Bane.intFx * Bane.sngWid, 0, SRCAND

        bitblt Me.hDC, Bane.sngX, Bane.sngY, Bane.sngWid, Bane.sngHei, SBane.hDC, _
            Bane.intFx * Bane.sngWid, 0, SRCINVERT


    'Door
        bitblt Me.hDC, Door.sngX, Door.sngY, Door.sngWid, Door.sngHei, mDoor.hDC, _
            Door.intFx * Door.sngWid, 0, SRCAND

        bitblt Me.hDC, Door.sngX, Door.sngY, Door.sngWid, Door.sngHei, sDoor.hDC, _
            Door.intFx * Door.sngWid, 0, SRCINVERT
        

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
        frmEnding2.Show
        Unload Me
    End If

If blnCaught = True Or blnMinDead = True Then Exit Sub 'If Minotaur is alive

intCounter = intCounter + 1

If intCounter > 55 Then
    'Random Minotaur Movements
    Do Until intMoves <> intPrevMove
        Randomize
        intMoves = Int(1000 * Rnd) Mod 3
    Loop

    intPrevMove = intMoves
    intCounter = 0

End If


'Minotaur Movemets
    Select Case intMoves
        
        Case 0
            Call Walk
            If blnRange = True And Kratos.sngY > Minotaur.sngY Then Call Attack

        Case 1
            Call Taunt

        Case 2

            Call Charge
    End Select

'If Health of minotaur is finished
    If lnMinH.X2 < lnMinH.X1 Then
        blnCaught = True
        lnMinH.Visible = False
        Call MinDead
    End If

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
        If Kratos.PicNum = 10 Then
            If Sword = False Then
                Kratos.PicNum = 0
            Else
                Kratos.PicNum = 18
            End If
        End If
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

'Sword of bane

    If Kratos.sngX + Kratos.sngWid(12) > Bane.sngX And Kratos.sngX < Bane.sngX + Bane.sngWid And _
        Kratos.sngY + Kratos.sngHei(12) > Bane.sngY And Kratos.sngY < Bane.sngY + Bane.sngHei Then
        
        Sword = True
        Door.sngX = Me.ScaleWidth - Door.sngWid
        Door.sngY = 0
        Bane.sngX = -999

        Do Until fmeGround(0).Top < 100
        'Movement
            fmeGround(0).Top = fmeGround(0).Top - 10
            If blnGround = True Then Kratos.sngY = Kratos.sngY - 10
        'Delay
            DoEvents
            Sleep (50)
        Loop
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
        frmLvl5.Show
        blnOver = True
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
    Do Until IsNumeric(strFileN) = True And Val(strFileN) >= 1 And Val(strFileN) <= 6
        strFileN = InputBox("Overwrite File #(1- 6)")
    Loop

    intC = Val(strFileN)
    GoTo Handler


Exit Sub

Handler:
'Save File

Open App.Path & "\" & File & intC & ".dat" For Output As intFileNum
    Write #intFileNum, "****GOW:SaveFile****"
    Write #intFileNum, "4"
    Write #intFileNum, Jumps
    Write #intFileNum, MJump
    Write #intFileNum, MHealth
    Write #intFileNum, Sword
Close #intFileNum



End Sub

Private Sub Walk()
If Kratos.sngY < Minotaur.sngY - 100 Or Kratos.sngX < -Kratos.sngWid(Kratos.PicNum) - 5 Or Kratos.sngX > Me.ScaleWidth Then Exit Sub
Sleep (20)


'Go Right
    If Kratos.sngX - 6 > Minotaur.sngX + Minotaur.sngWid(Minotaur.PicNum) Then
    'Frame Change
        Minotaur.PicNum = 0
        Minotaur.intFx(0) = Minotaur.intFx(0) + 1
        If Minotaur.intFx(0) > 5 Then Minotaur.intFx(0) = 0
    'Movement
        Minotaur.sngX = Minotaur.sngX + 10
        blnRange = False

'Go Left
    ElseIf Kratos.sngX + Kratos.sngWid(Kratos.PicNum) + 6 < Minotaur.sngX Then
    'Frame Change
        Minotaur.PicNum = 1
        Minotaur.intFx(1) = Minotaur.intFx(1) - 1
        If Minotaur.intFx(1) < 0 Then Minotaur.intFx(1) = 5
    'Movement
        Minotaur.sngX = Minotaur.sngX - 10
        blnRange = False

    Else 'Attack Range

        blnRange = True

    End If

End Sub

Private Sub Attack()
If Kratos.sngY < Minotaur.sngY - 100 Or Kratos.sngX < -Kratos.sngWid(Kratos.PicNum) - 5 Or Kratos.sngX > Me.ScaleWidth Then Exit Sub
Sleep (20)

If intDirection = 2 Then
'Frame Change
    Minotaur.PicNum = 2
    Minotaur.intFx(2) = Minotaur.intFx(2) + 1
    If Minotaur.intFx(2) > 4 Then Minotaur.intFx(2) = 0
'Health change
    If Minotaur.intFx(2) < 2 And blnGuard = False Then
        Kratos.sngX = Kratos.sngX + 70
        lnHealth.X2 = lnHealth.X2 - 30
    End If

Else
'Frame Change
    Minotaur.PicNum = 3
    Minotaur.intFx(3) = Minotaur.intFx(3) - 1
    If Minotaur.intFx(3) < 0 Then Minotaur.intFx(3) = 4
'Health Change
    If Minotaur.intFx(3) > 1 And blnGuard = False Then
        Kratos.sngX = Kratos.sngX - 70
        lnHealth.X2 = lnHealth.X2 - 30
    End If
    
End If
End Sub

Private Sub tmrKratos_Timer()

If blnOver = True Then Exit Sub

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
If Sword = False Then
    If intDirection = 1 Then Kratos.PicNum = 4
    If intDirection = 2 Then Kratos.PicNum = 5
Else
    Kratos.PicNum = 18
    If intDirection = 1 Then Kratos.intFx(18) = 0
    If intDirection = 2 Then Kratos.intFx(18) = 1
End If
    blnGuard = True

'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''Light Attack'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

ElseIf GetAsyncKeyState(vbKeyF) Then
    
    
If Sword = False Then
Call MinColl(30)
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

Else
       Call MinColl(100)
    If intDirection = 1 Then

            Sleep (50)
            Kratos.PicNum = 19
            Kratos.intFx(19) = Kratos.intFx(19) + 1
            If Kratos.intFx(19) > 5 Then Kratos.intFx(19) = 0
    
      
      ElseIf intDirection = 2 Then
        Sleep (50)
            Kratos.PicNum = 20
            Kratos.intFx(20) = Kratos.intFx(20) - 1
            If Kratos.intFx(20) < 0 Then Kratos.intFx(20) = 5
            End If
End If

'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''View Objective'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

ElseIf GetAsyncKeyState(vbKeyO) Then
    Call mnuGoal_Click



'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''Heavy Attack'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

ElseIf GetAsyncKeyState(vbKeyG) Then
    Call MinColl(60)
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

'Kratos is Dead
    If lnHealth.X2 <= lnHealth.X1 Then
        lnHealth.Visible = False
        blnCaught = True
        Call Dead
    End If
End Sub

Private Sub Taunt()
'Taunt
    Minotaur.PicNum = 4
    Minotaur.intFx(4) = 0

    intC2 = intC2 + 1
    
'First position
    If intC2 > 10 And intC2 < 35 Then
        Minotaur.intFx(4) = 1
    'Earthquake
        fmeGround(0).Top = fmeGround(0).Top + 30
        Kratos.sngY = Kratos.sngY + 30
        Kratos.sngX = Kratos.sngX + 10
        Minotaur.sngY = Minotaur.sngY + 30
        
        Sleep (20)
        
        Minotaur.sngY = Minotaur.sngY - 30
        fmeGround(0).Top = fmeGround(0).Top - 30
        Kratos.sngY = Kratos.sngY - 30

    ElseIf intC2 > 38 Then 'End Taunt
        intCounter = 56
        intC2 = 0
    End If

End Sub

Private Sub Dead()
'Kratos is dead

    Do Until Kratos.intFx(17) > 1 And Kratos.intFy(17) = 1
    'Frame Change
        Kratos.intFx(17) = Kratos.intFx(17) + 1
        If Kratos.intFx(17) > 6 Then
            Kratos.intFy(17) = 1
            Kratos.sngWid(17) = 90
            Kratos.intFx(17) = 0
        End If
    
        Kratos.PicNum = 17
        Kratos.sngY = fmeGround(0).Top - Kratos.sngHei(17)
            
    'Display
        Cls
    
        'Kratos
            bitblt Me.hDC, Kratos.sngX, Kratos.sngY, Kratos.sngWid(Kratos.PicNum), Kratos.sngHei(Kratos.PicNum), MKratos(Kratos.PicNum).hDC, _
                Kratos.intFx(Kratos.PicNum) * Kratos.sngWid(Kratos.PicNum), Kratos.intFy(Kratos.PicNum) * Kratos.sngHei(Kratos.PicNum), SRCAND

            bitblt Me.hDC, Kratos.sngX, Kratos.sngY, Kratos.sngWid(Kratos.PicNum), Kratos.sngHei(Kratos.PicNum), SKratos(Kratos.PicNum).hDC, _
                Kratos.intFx(Kratos.PicNum) * Kratos.sngWid(Kratos.PicNum), Kratos.intFy(Kratos.PicNum) * Kratos.sngHei(Kratos.PicNum), SRCINVERT

        'Minotaur
    
            bitblt Me.hDC, Minotaur.sngX, Minotaur.sngY, Minotaur.sngWid(Minotaur.PicNum), Minotaur.sngHei(Minotaur.PicNum), SMin(Minotaur.PicNum).hDC, _
                Minotaur.intFx(Minotaur.PicNum) * Minotaur.sngWid(Minotaur.PicNum), 0, SRCINVERT

    'Delay
        DoEvents
        Sleep (500)

    Loop

MsgBox ("Dead")
Call Save
blnOver = True
frmEnding2.Show
Unload Me
End Sub
Private Sub MinColl(Damage As Integer)
'Damage the minotaur
    If Kratos.sngX + Kratos.sngWid(Kratos.PicNum) > Minotaur.sngX And Kratos.sngX < Minotaur.sngX + Minotaur.sngWid(Minotaur.PicNum) _
        And Kratos.sngY + Kratos.sngHei(Kratos.PicNum) > Minotaur.sngY And Kratos.sngY < Minotaur.sngY + Minotaur.sngHei(Minotaur.PicNum) Then
    
        lnMinH.X2 = lnMinH.X2 - Damage
    End If

End Sub

Private Sub Charge()
'Charge Towards kratos
If Kratos.sngY < Minotaur.sngY - 100 Then Exit Sub

If Kratos.sngX > Minotaur.sngX + Minotaur.sngWid(Minotaur.PicNum) + 5 Then
'Frame Change
    Minotaur.PicNum = 5
    Minotaur.intFx(5) = Minotaur.intFx(5) + 1
    If Minotaur.intFx(5) > 3 Then Minotaur.intFx(5) = 0
'Movement
    Minotaur.sngX = Minotaur.sngX + 25

ElseIf Kratos.sngX + Kratos.sngWid(Kratos.PicNum) < Minotaur.sngX Then
'Do  Nothing

Else
    'Damage
        Kratos.sngY = Kratos.sngY - 200
        lnHealth.X2 = lnHealth.X2 - 70
        intCounter = 66
End If
End Sub


Private Sub MinDead()
'Minotaur is Dead

    Do Until Minotaur.intFx(6) > 2
    'Display
        Cls
        Minotaur.PicNum = 6
    
    'Kratos
        bitblt Me.hDC, Kratos.sngX, Kratos.sngY, Kratos.sngWid(Kratos.PicNum), Kratos.sngHei(Kratos.PicNum), MKratos(Kratos.PicNum).hDC, _
            Kratos.intFx(Kratos.PicNum) * Kratos.sngWid(Kratos.PicNum), Kratos.intFy(Kratos.PicNum) * Kratos.sngHei(Kratos.PicNum), SRCAND

        bitblt Me.hDC, Kratos.sngX, Kratos.sngY, Kratos.sngWid(Kratos.PicNum), Kratos.sngHei(Kratos.PicNum), SKratos(Kratos.PicNum).hDC, _
            Kratos.intFx(Kratos.PicNum) * Kratos.sngWid(Kratos.PicNum), Kratos.intFy(Kratos.PicNum) * Kratos.sngHei(Kratos.PicNum), SRCINVERT

    'Minotaur
    
        bitblt Me.hDC, Minotaur.sngX, Minotaur.sngY, Minotaur.sngWid(Minotaur.PicNum), Minotaur.sngHei(Minotaur.PicNum), SMin(Minotaur.PicNum).hDC, _
            Minotaur.intFx(Minotaur.PicNum) * Minotaur.sngWid(Minotaur.PicNum), 0, SRCINVERT

    'Delay
        DoEvents
        Sleep (500)
    'Frame Change
        Minotaur.intFx(6) = Minotaur.intFx(6) + 1
    Loop
'Minotaur Dead
    Minotaur.intFx(6) = 2
    MsgBox ("Dead")
    blnCaught = False
    blnMinDead = True
    
Call SwordFall
End Sub


Private Sub SwordFall()
'Sword Fall from Sky
    Do Until Bane.sngY + Bane.sngHei >= fmeGround(0).Top
    'Movement
        Bane.sngY = Bane.sngY + 50
        
        Cls
    'Kratos
        bitblt Me.hDC, Kratos.sngX, Kratos.sngY, Kratos.sngWid(Kratos.PicNum), Kratos.sngHei(Kratos.PicNum), MKratos(Kratos.PicNum).hDC, _
            Kratos.intFx(Kratos.PicNum) * Kratos.sngWid(Kratos.PicNum), Kratos.intFy(Kratos.PicNum) * Kratos.sngHei(Kratos.PicNum), SRCAND

        bitblt Me.hDC, Kratos.sngX, Kratos.sngY, Kratos.sngWid(Kratos.PicNum), Kratos.sngHei(Kratos.PicNum), SKratos(Kratos.PicNum).hDC, _
            Kratos.intFx(Kratos.PicNum) * Kratos.sngWid(Kratos.PicNum), Kratos.intFy(Kratos.PicNum) * Kratos.sngHei(Kratos.PicNum), SRCINVERT

    'Minotaur
        bitblt Me.hDC, Minotaur.sngX, Minotaur.sngY, Minotaur.sngWid(Minotaur.PicNum), Minotaur.sngHei(Minotaur.PicNum), SMin(Minotaur.PicNum).hDC, _
            Minotaur.intFx(Minotaur.PicNum) * Minotaur.sngWid(Minotaur.PicNum), 0, SRCINVERT

    'Sword of Bane
        bitblt Me.hDC, Bane.sngX, Bane.sngY, Bane.sngWid, Bane.sngHei, MBane.hDC, _
            Bane.intFx * Bane.sngWid, 0, SRCAND

        bitblt Me.hDC, Bane.sngX, Bane.sngY, Bane.sngWid, Bane.sngHei, SBane.hDC, _
            Bane.intFx * Bane.sngWid, 0, SRCINVERT

        DoEvents
        Sleep (50)
    Loop


Bane.sngY = fmeGround(0).Top - Bane.sngHei + 3
MsgBox ("You have been granted the sword of bane which increases your attack damage. Take the sword to reveal the door")
End Sub

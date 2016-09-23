VERSION 5.00
Object = "{C1A8AF28-1257-101B-8FB0-0020AF039CA3}#1.1#0"; "MCI32.OCX"
Begin VB.Form frmGameB 
   BorderStyle     =   0  'None
   Caption         =   "BowMan"
   ClientHeight    =   7650
   ClientLeft      =   2310
   ClientTop       =   1125
   ClientWidth     =   10350
   Icon            =   "frmGameB.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   510
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   690
   ShowInTaskbar   =   0   'False
   Begin VB.Frame Screen 
      BackColor       =   &H00000000&
      BorderStyle     =   0  'None
      Height          =   7815
      Left            =   -120
      TabIndex        =   13
      Top             =   -120
      Visible         =   0   'False
      Width           =   10455
      Begin VB.CommandButton cmdRetry 
         BackColor       =   &H000000C0&
         Caption         =   "Retry"
         BeginProperty Font 
            Name            =   "OCR A Extended"
            Size            =   21.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Left            =   2520
         Style           =   1  'Graphical
         TabIndex        =   17
         Top             =   5760
         Width           =   2055
      End
      Begin VB.CommandButton cmdReturn 
         BackColor       =   &H000000C0&
         Caption         =   "Return to Main Menu"
         BeginProperty Font 
            Name            =   "OCR A Extended"
            Size            =   21.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   975
         Left            =   5160
         Style           =   1  'Graphical
         TabIndex        =   16
         Top             =   5640
         Width           =   3015
      End
      Begin MCI.MMControl Retry 
         Height          =   495
         Left            =   120
         TabIndex        =   15
         Top             =   480
         Visible         =   0   'False
         Width           =   3540
         _ExtentX        =   6244
         _ExtentY        =   873
         _Version        =   393216
         DeviceType      =   ""
         FileName        =   ""
      End
      Begin VB.Label lblDeath 
         AutoSize        =   -1  'True
         BackColor       =   &H00000040&
         BeginProperty Font 
            Name            =   "Parchment"
            Size            =   72
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000000FF&
         Height          =   1530
         Left            =   240
         TabIndex        =   14
         Top             =   3360
         Width           =   135
      End
      Begin VB.Image imgDead 
         Height          =   2160
         Left            =   3360
         Picture         =   "frmGameB.frx":08CA
         Stretch         =   -1  'True
         Top             =   1080
         Width           =   2280
      End
      Begin VB.Image imgBack 
         Height          =   7560
         Left            =   0
         Picture         =   "frmGameB.frx":1016
         Stretch         =   -1  'True
         Top             =   120
         Width           =   10440
      End
   End
   Begin VB.Frame Frame1 
      BorderStyle     =   0  'None
      Caption         =   "Frame1"
      Height          =   975
      Left            =   0
      TabIndex        =   12
      Top             =   0
      Width           =   855
      Begin VB.Image imgPlay 
         Height          =   480
         Left            =   120
         Picture         =   "frmGameB.frx":12BAE
         Stretch         =   -1  'True
         Top             =   240
         Width           =   480
      End
      Begin VB.Image imgMute 
         Height          =   720
         Left            =   0
         Picture         =   "frmGameB.frx":1EBF0
         Stretch         =   -1  'True
         Top             =   120
         Visible         =   0   'False
         Width           =   720
      End
   End
   Begin MCI.MMControl Sound 
      Height          =   495
      Left            =   1320
      TabIndex        =   11
      Top             =   4440
      Visible         =   0   'False
      Width           =   3540
      _ExtentX        =   6244
      _ExtentY        =   873
      _Version        =   393216
      DeviceType      =   ""
      FileName        =   ""
   End
   Begin VB.Frame Momentum 
      BackColor       =   &H00FFFF00&
      BorderStyle     =   0  'None
      Caption         =   "Frame1"
      Height          =   255
      Index           =   2
      Left            =   5880
      TabIndex        =   10
      Top             =   6960
      Width           =   135
   End
   Begin VB.Frame Momentum 
      BackColor       =   &H00FFFF00&
      BorderStyle     =   0  'None
      Caption         =   "Frame1"
      Height          =   255
      Index           =   1
      Left            =   360
      TabIndex        =   9
      Top             =   6960
      Width           =   135
   End
   Begin VB.Timer tmrJump 
      Left            =   7560
      Top             =   5040
   End
   Begin VB.Frame P2Life 
      BackColor       =   &H0000FF00&
      BorderStyle     =   0  'None
      Caption         =   "Frame1"
      Height          =   135
      Index           =   2
      Left            =   5880
      TabIndex        =   8
      Top             =   6840
      Width           =   3000
   End
   Begin VB.Frame P2Life 
      BackColor       =   &H000000FF&
      BorderStyle     =   0  'None
      Caption         =   "Frame1"
      Height          =   135
      Index           =   1
      Left            =   5880
      TabIndex        =   7
      Top             =   6840
      Width           =   3000
   End
   Begin VB.Frame P1Life 
      BackColor       =   &H0000FF00&
      BorderStyle     =   0  'None
      Caption         =   "Frame1"
      Height          =   135
      Index           =   2
      Left            =   360
      TabIndex        =   6
      Top             =   6840
      Width           =   3000
   End
   Begin VB.Frame P1Life 
      BackColor       =   &H000000FF&
      BorderStyle     =   0  'None
      Caption         =   "Frame1"
      Height          =   135
      Index           =   1
      Left            =   360
      TabIndex        =   4
      Top             =   6840
      Width           =   3000
   End
   Begin VB.Timer tmrArrow2 
      Left            =   4800
      Top             =   5040
   End
   Begin VB.Timer tmrArrow1 
      Left            =   6480
      Top             =   5040
   End
   Begin VB.PictureBox picMask2 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      ForeColor       =   &H80000008&
      Height          =   1860
      Left            =   1920
      Picture         =   "frmGameB.frx":33B18
      ScaleHeight     =   122
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   460
      TabIndex        =   3
      Top             =   2760
      Visible         =   0   'False
      Width           =   6930
   End
   Begin VB.PictureBox picSprite2 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      ForeColor       =   &H80000008&
      Height          =   1680
      Left            =   1920
      Picture         =   "frmGameB.frx":5CD02
      ScaleHeight     =   110
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   461
      TabIndex        =   2
      Top             =   2760
      Visible         =   0   'False
      Width           =   6945
   End
   Begin VB.Timer tmrP2 
      Left            =   7200
      Top             =   5040
   End
   Begin VB.PictureBox picSprite 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      ForeColor       =   &H80000008&
      Height          =   1620
      Left            =   1680
      Picture         =   "frmGameB.frx":81FF4
      ScaleHeight     =   106
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   453
      TabIndex        =   1
      Top             =   240
      Visible         =   0   'False
      Width           =   6825
   End
   Begin VB.PictureBox picMask 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      ForeColor       =   &H80000008&
      Height          =   1800
      Left            =   960
      Picture         =   "frmGameB.frx":A5356
      ScaleHeight     =   118
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   456
      TabIndex        =   0
      Top             =   1560
      Visible         =   0   'False
      Width           =   6870
      Begin VB.Frame P1Life 
         BackColor       =   &H0000FF00&
         BorderStyle     =   0  'None
         Caption         =   "Frame1"
         Height          =   135
         Index           =   0
         Left            =   0
         TabIndex        =   5
         Top             =   0
         Width           =   15
      End
      Begin VB.Shape shpP1 
         BorderStyle     =   0  'Transparent
         FillColor       =   &H0000FF00&
         FillStyle       =   0  'Solid
         Height          =   255
         Index           =   0
         Left            =   0
         Top             =   0
         Width           =   2535
      End
   End
   Begin VB.Timer tmrmove 
      Interval        =   1
      Left            =   6120
      Top             =   5040
   End
   Begin VB.Timer tmrP1 
      Left            =   6840
      Top             =   5040
   End
   Begin VB.Label lblWin 
      AutoSize        =   -1  'True
      Caption         =   "Label1"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   330
      Index           =   1
      Left            =   5880
      TabIndex        =   19
      Top             =   7320
      Width           =   1350
   End
   Begin VB.Label lblWin 
      AutoSize        =   -1  'True
      Caption         =   "Label1"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   330
      Index           =   0
      Left            =   360
      TabIndex        =   18
      Top             =   7320
      Width           =   1350
   End
   Begin VB.Image imgMoment2 
      Height          =   195
      Index           =   30
      Left            =   8760
      Picture         =   "frmGameB.frx":CCA28
      Stretch         =   -1  'True
      Top             =   480
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment1 
      Height          =   195
      Index           =   29
      Left            =   0
      Picture         =   "frmGameB.frx":CCAA0
      Stretch         =   -1  'True
      Top             =   1080
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   103
      Left            =   0
      Picture         =   "frmGameB.frx":CCB18
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   102
      Left            =   0
      Picture         =   "frmGameB.frx":CCB90
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   101
      Left            =   0
      Picture         =   "frmGameB.frx":CCC08
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   100
      Left            =   0
      Picture         =   "frmGameB.frx":CCC80
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   99
      Left            =   0
      Picture         =   "frmGameB.frx":CCCF8
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   98
      Left            =   0
      Picture         =   "frmGameB.frx":CCD70
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   97
      Left            =   0
      Picture         =   "frmGameB.frx":CCDE8
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   96
      Left            =   0
      Picture         =   "frmGameB.frx":CCE60
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   95
      Left            =   0
      Picture         =   "frmGameB.frx":CCED8
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   94
      Left            =   0
      Picture         =   "frmGameB.frx":CCF50
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   93
      Left            =   0
      Picture         =   "frmGameB.frx":CCFC8
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   92
      Left            =   0
      Picture         =   "frmGameB.frx":CD040
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   91
      Left            =   0
      Picture         =   "frmGameB.frx":CD0B8
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   90
      Left            =   0
      Picture         =   "frmGameB.frx":CD130
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   89
      Left            =   0
      Picture         =   "frmGameB.frx":CD1A8
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   88
      Left            =   0
      Picture         =   "frmGameB.frx":CD220
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   87
      Left            =   0
      Picture         =   "frmGameB.frx":CD298
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   86
      Left            =   0
      Picture         =   "frmGameB.frx":CD310
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   85
      Left            =   0
      Picture         =   "frmGameB.frx":CD388
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   84
      Left            =   0
      Picture         =   "frmGameB.frx":CD400
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   83
      Left            =   0
      Picture         =   "frmGameB.frx":CD478
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   82
      Left            =   0
      Picture         =   "frmGameB.frx":CD4F0
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   81
      Left            =   0
      Picture         =   "frmGameB.frx":CD568
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   80
      Left            =   0
      Picture         =   "frmGameB.frx":CD5E0
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   79
      Left            =   0
      Picture         =   "frmGameB.frx":CD658
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   78
      Left            =   0
      Picture         =   "frmGameB.frx":CD6D0
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   77
      Left            =   0
      Picture         =   "frmGameB.frx":CD748
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   76
      Left            =   0
      Picture         =   "frmGameB.frx":CD7C0
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   75
      Left            =   0
      Picture         =   "frmGameB.frx":CD838
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   74
      Left            =   0
      Picture         =   "frmGameB.frx":CD8B0
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   73
      Left            =   0
      Picture         =   "frmGameB.frx":CD928
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   72
      Left            =   0
      Picture         =   "frmGameB.frx":CD9A0
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   71
      Left            =   0
      Picture         =   "frmGameB.frx":CDA18
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   70
      Left            =   0
      Picture         =   "frmGameB.frx":CDA90
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   69
      Left            =   0
      Picture         =   "frmGameB.frx":CDB08
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   68
      Left            =   0
      Picture         =   "frmGameB.frx":CDB80
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   67
      Left            =   0
      Picture         =   "frmGameB.frx":CDBF8
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   66
      Left            =   0
      Picture         =   "frmGameB.frx":CDC70
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   65
      Left            =   0
      Picture         =   "frmGameB.frx":CDCE8
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   64
      Left            =   0
      Picture         =   "frmGameB.frx":CDD60
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   63
      Left            =   0
      Picture         =   "frmGameB.frx":CDDD8
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   62
      Left            =   0
      Picture         =   "frmGameB.frx":CDE50
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   61
      Left            =   0
      Picture         =   "frmGameB.frx":CDEC8
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   60
      Left            =   0
      Picture         =   "frmGameB.frx":CDF40
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   59
      Left            =   0
      Picture         =   "frmGameB.frx":CDFB8
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   58
      Left            =   0
      Picture         =   "frmGameB.frx":CE030
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   57
      Left            =   0
      Picture         =   "frmGameB.frx":CE0A8
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   56
      Left            =   0
      Picture         =   "frmGameB.frx":CE120
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   55
      Left            =   0
      Picture         =   "frmGameB.frx":CE198
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   54
      Left            =   0
      Picture         =   "frmGameB.frx":CE210
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   53
      Left            =   0
      Picture         =   "frmGameB.frx":CE288
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   52
      Left            =   0
      Picture         =   "frmGameB.frx":CE300
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   100
      Left            =   480
      Picture         =   "frmGameB.frx":CE378
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   99
      Left            =   120
      Picture         =   "frmGameB.frx":CE3F0
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   98
      Left            =   0
      Picture         =   "frmGameB.frx":CE468
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   97
      Left            =   0
      Picture         =   "frmGameB.frx":CE4E0
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   96
      Left            =   0
      Picture         =   "frmGameB.frx":CE558
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   95
      Left            =   0
      Picture         =   "frmGameB.frx":CE5D0
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   94
      Left            =   0
      Picture         =   "frmGameB.frx":CE648
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   93
      Left            =   0
      Picture         =   "frmGameB.frx":CE6C0
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   92
      Left            =   0
      Picture         =   "frmGameB.frx":CE738
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   91
      Left            =   0
      Picture         =   "frmGameB.frx":CE7B0
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   90
      Left            =   0
      Picture         =   "frmGameB.frx":CE828
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   89
      Left            =   0
      Picture         =   "frmGameB.frx":CE8A0
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   88
      Left            =   0
      Picture         =   "frmGameB.frx":CE918
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   87
      Left            =   0
      Picture         =   "frmGameB.frx":CE990
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   86
      Left            =   0
      Picture         =   "frmGameB.frx":CEA08
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   85
      Left            =   0
      Picture         =   "frmGameB.frx":CEA80
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   84
      Left            =   0
      Picture         =   "frmGameB.frx":CEAF8
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   83
      Left            =   0
      Picture         =   "frmGameB.frx":CEB70
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   82
      Left            =   0
      Picture         =   "frmGameB.frx":CEBE8
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   81
      Left            =   0
      Picture         =   "frmGameB.frx":CEC60
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   80
      Left            =   0
      Picture         =   "frmGameB.frx":CECD8
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   79
      Left            =   0
      Picture         =   "frmGameB.frx":CED50
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   78
      Left            =   0
      Picture         =   "frmGameB.frx":CEDC8
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   77
      Left            =   0
      Picture         =   "frmGameB.frx":CEE40
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   76
      Left            =   0
      Picture         =   "frmGameB.frx":CEEB8
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   75
      Left            =   0
      Picture         =   "frmGameB.frx":CEF30
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   74
      Left            =   0
      Picture         =   "frmGameB.frx":CEFA8
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   73
      Left            =   0
      Picture         =   "frmGameB.frx":CF020
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   72
      Left            =   0
      Picture         =   "frmGameB.frx":CF098
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   71
      Left            =   0
      Picture         =   "frmGameB.frx":CF110
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   70
      Left            =   0
      Picture         =   "frmGameB.frx":CF188
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   69
      Left            =   0
      Picture         =   "frmGameB.frx":CF200
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   68
      Left            =   0
      Picture         =   "frmGameB.frx":CF278
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   67
      Left            =   0
      Picture         =   "frmGameB.frx":CF2F0
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   66
      Left            =   0
      Picture         =   "frmGameB.frx":CF368
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   65
      Left            =   0
      Picture         =   "frmGameB.frx":CF3E0
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   64
      Left            =   0
      Picture         =   "frmGameB.frx":CF458
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   63
      Left            =   0
      Picture         =   "frmGameB.frx":CF4D0
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   62
      Left            =   0
      Picture         =   "frmGameB.frx":CF548
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   61
      Left            =   0
      Picture         =   "frmGameB.frx":CF5C0
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   60
      Left            =   0
      Picture         =   "frmGameB.frx":CF638
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   59
      Left            =   0
      Picture         =   "frmGameB.frx":CF6B0
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   58
      Left            =   0
      Picture         =   "frmGameB.frx":CF728
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   57
      Left            =   0
      Picture         =   "frmGameB.frx":CF7A0
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   56
      Left            =   0
      Picture         =   "frmGameB.frx":CF818
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   55
      Left            =   0
      Picture         =   "frmGameB.frx":CF890
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   54
      Left            =   0
      Picture         =   "frmGameB.frx":CF908
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   53
      Left            =   0
      Picture         =   "frmGameB.frx":CF980
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   52
      Left            =   0
      Picture         =   "frmGameB.frx":CF9F8
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgMoment1 
      Height          =   195
      Index           =   28
      Left            =   0
      Picture         =   "frmGameB.frx":CFA70
      Stretch         =   -1  'True
      Top             =   120
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment1 
      Height          =   195
      Index           =   27
      Left            =   0
      Picture         =   "frmGameB.frx":CFAE8
      Stretch         =   -1  'True
      Top             =   360
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment1 
      Height          =   195
      Index           =   26
      Left            =   0
      Picture         =   "frmGameB.frx":CFB60
      Stretch         =   -1  'True
      Top             =   6840
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment1 
      Height          =   195
      Index           =   25
      Left            =   0
      Picture         =   "frmGameB.frx":CFBD8
      Stretch         =   -1  'True
      Top             =   6600
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment1 
      Height          =   195
      Index           =   24
      Left            =   0
      Picture         =   "frmGameB.frx":CFC50
      Stretch         =   -1  'True
      Top             =   600
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment1 
      Height          =   195
      Index           =   23
      Left            =   0
      Picture         =   "frmGameB.frx":CFCC8
      Stretch         =   -1  'True
      Top             =   360
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment1 
      Height          =   195
      Index           =   22
      Left            =   0
      Picture         =   "frmGameB.frx":CFD40
      Stretch         =   -1  'True
      Top             =   6360
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment1 
      Height          =   195
      Index           =   21
      Left            =   0
      Picture         =   "frmGameB.frx":CFDB8
      Stretch         =   -1  'True
      Top             =   6120
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment1 
      Height          =   195
      Index           =   20
      Left            =   0
      Picture         =   "frmGameB.frx":CFE30
      Stretch         =   -1  'True
      Top             =   5880
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment1 
      Height          =   195
      Index           =   19
      Left            =   0
      Picture         =   "frmGameB.frx":CFEA8
      Stretch         =   -1  'True
      Top             =   5640
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment1 
      Height          =   195
      Index           =   18
      Left            =   0
      Picture         =   "frmGameB.frx":CFF20
      Stretch         =   -1  'True
      Top             =   5400
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment1 
      Height          =   195
      Index           =   17
      Left            =   0
      Picture         =   "frmGameB.frx":CFF98
      Stretch         =   -1  'True
      Top             =   5160
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment1 
      Height          =   195
      Index           =   16
      Left            =   0
      Picture         =   "frmGameB.frx":D0010
      Stretch         =   -1  'True
      Top             =   4920
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment1 
      Height          =   195
      Index           =   15
      Left            =   0
      Picture         =   "frmGameB.frx":D0088
      Stretch         =   -1  'True
      Top             =   4680
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment1 
      Height          =   195
      Index           =   14
      Left            =   0
      Picture         =   "frmGameB.frx":D0100
      Stretch         =   -1  'True
      Top             =   4440
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment1 
      Height          =   195
      Index           =   13
      Left            =   0
      Picture         =   "frmGameB.frx":D0178
      Stretch         =   -1  'True
      Top             =   4200
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment1 
      Height          =   195
      Index           =   12
      Left            =   0
      Picture         =   "frmGameB.frx":D01F0
      Stretch         =   -1  'True
      Top             =   3960
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment1 
      Height          =   195
      Index           =   11
      Left            =   0
      Picture         =   "frmGameB.frx":D0268
      Stretch         =   -1  'True
      Top             =   3720
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment1 
      Height          =   195
      Index           =   10
      Left            =   0
      Picture         =   "frmGameB.frx":D02E0
      Stretch         =   -1  'True
      Top             =   3480
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment1 
      Height          =   195
      Index           =   9
      Left            =   0
      Picture         =   "frmGameB.frx":D0358
      Stretch         =   -1  'True
      Top             =   3240
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment1 
      Height          =   195
      Index           =   8
      Left            =   0
      Picture         =   "frmGameB.frx":D03D0
      Stretch         =   -1  'True
      Top             =   3000
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment1 
      Height          =   195
      Index           =   7
      Left            =   0
      Picture         =   "frmGameB.frx":D0448
      Stretch         =   -1  'True
      Top             =   2760
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment1 
      Height          =   195
      Index           =   6
      Left            =   0
      Picture         =   "frmGameB.frx":D04C0
      Stretch         =   -1  'True
      Top             =   2520
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment1 
      Height          =   195
      Index           =   5
      Left            =   0
      Picture         =   "frmGameB.frx":D0538
      Stretch         =   -1  'True
      Top             =   2280
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment1 
      Height          =   195
      Index           =   4
      Left            =   0
      Picture         =   "frmGameB.frx":D05B0
      Stretch         =   -1  'True
      Top             =   2040
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment1 
      Height          =   195
      Index           =   3
      Left            =   0
      Picture         =   "frmGameB.frx":D0628
      Stretch         =   -1  'True
      Top             =   1800
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment1 
      Height          =   195
      Index           =   2
      Left            =   0
      Picture         =   "frmGameB.frx":D06A0
      Stretch         =   -1  'True
      Top             =   1560
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment1 
      Height          =   195
      Index           =   1
      Left            =   0
      Picture         =   "frmGameB.frx":D0718
      Stretch         =   -1  'True
      Top             =   1320
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment1 
      Height          =   195
      Index           =   52
      Left            =   0
      Picture         =   "frmGameB.frx":D0790
      Stretch         =   -1  'True
      Top             =   840
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment2 
      Height          =   195
      Index           =   29
      Left            =   8760
      Picture         =   "frmGameB.frx":D0808
      Stretch         =   -1  'True
      Top             =   240
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment2 
      Height          =   195
      Index           =   28
      Left            =   8760
      Picture         =   "frmGameB.frx":D0880
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment2 
      Height          =   195
      Index           =   27
      Left            =   8760
      Picture         =   "frmGameB.frx":D08F8
      Stretch         =   -1  'True
      Top             =   6720
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment2 
      Height          =   195
      Index           =   26
      Left            =   8760
      Picture         =   "frmGameB.frx":D0970
      Stretch         =   -1  'True
      Top             =   6960
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment2 
      Height          =   195
      Index           =   25
      Left            =   8760
      Picture         =   "frmGameB.frx":D09E8
      Stretch         =   -1  'True
      Top             =   6480
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment2 
      Height          =   195
      Index           =   24
      Left            =   8760
      Picture         =   "frmGameB.frx":D0A60
      Stretch         =   -1  'True
      Top             =   6240
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment2 
      Height          =   195
      Index           =   23
      Left            =   8760
      Picture         =   "frmGameB.frx":D0AD8
      Stretch         =   -1  'True
      Top             =   5760
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment2 
      Height          =   195
      Index           =   22
      Left            =   8760
      Picture         =   "frmGameB.frx":D0B50
      Stretch         =   -1  'True
      Top             =   6000
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment2 
      Height          =   195
      Index           =   21
      Left            =   8760
      Picture         =   "frmGameB.frx":D0BC8
      Stretch         =   -1  'True
      Top             =   5520
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment2 
      Height          =   195
      Index           =   20
      Left            =   8760
      Picture         =   "frmGameB.frx":D0C40
      Stretch         =   -1  'True
      Top             =   5280
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment2 
      Height          =   195
      Index           =   19
      Left            =   8760
      Picture         =   "frmGameB.frx":D0CB8
      Stretch         =   -1  'True
      Top             =   4800
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment2 
      Height          =   195
      Index           =   18
      Left            =   8760
      Picture         =   "frmGameB.frx":D0D30
      Stretch         =   -1  'True
      Top             =   5040
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment2 
      Height          =   195
      Index           =   17
      Left            =   8760
      Picture         =   "frmGameB.frx":D0DA8
      Stretch         =   -1  'True
      Top             =   4560
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment2 
      Height          =   195
      Index           =   16
      Left            =   8760
      Picture         =   "frmGameB.frx":D0E20
      Stretch         =   -1  'True
      Top             =   4320
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment2 
      Height          =   195
      Index           =   15
      Left            =   8760
      Picture         =   "frmGameB.frx":D0E98
      Stretch         =   -1  'True
      Top             =   3840
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment2 
      Height          =   195
      Index           =   14
      Left            =   8760
      Picture         =   "frmGameB.frx":D0F10
      Stretch         =   -1  'True
      Top             =   4080
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment2 
      Height          =   195
      Index           =   13
      Left            =   8760
      Picture         =   "frmGameB.frx":D0F88
      Stretch         =   -1  'True
      Top             =   3600
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment2 
      Height          =   195
      Index           =   12
      Left            =   8760
      Picture         =   "frmGameB.frx":D1000
      Stretch         =   -1  'True
      Top             =   3360
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment2 
      Height          =   195
      Index           =   11
      Left            =   8760
      Picture         =   "frmGameB.frx":D1078
      Stretch         =   -1  'True
      Top             =   2880
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment2 
      Height          =   195
      Index           =   10
      Left            =   8760
      Picture         =   "frmGameB.frx":D10F0
      Stretch         =   -1  'True
      Top             =   3120
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment2 
      Height          =   195
      Index           =   9
      Left            =   8760
      Picture         =   "frmGameB.frx":D1168
      Stretch         =   -1  'True
      Top             =   2640
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment2 
      Height          =   195
      Index           =   8
      Left            =   8760
      Picture         =   "frmGameB.frx":D11E0
      Stretch         =   -1  'True
      Top             =   2400
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment2 
      Height          =   195
      Index           =   7
      Left            =   8760
      Picture         =   "frmGameB.frx":D1258
      Stretch         =   -1  'True
      Top             =   2160
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment2 
      Height          =   195
      Index           =   6
      Left            =   8760
      Picture         =   "frmGameB.frx":D12D0
      Stretch         =   -1  'True
      Top             =   1440
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment2 
      Height          =   195
      Index           =   5
      Left            =   8760
      Picture         =   "frmGameB.frx":D1348
      Stretch         =   -1  'True
      Top             =   1920
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment2 
      Height          =   195
      Index           =   4
      Left            =   8760
      Picture         =   "frmGameB.frx":D13C0
      Stretch         =   -1  'True
      Top             =   1680
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment2 
      Height          =   195
      Index           =   3
      Left            =   8760
      Picture         =   "frmGameB.frx":D1438
      Stretch         =   -1  'True
      Top             =   960
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment2 
      Height          =   195
      Index           =   2
      Left            =   8760
      Picture         =   "frmGameB.frx":D14B0
      Stretch         =   -1  'True
      Top             =   1200
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment2 
      Height          =   195
      Index           =   1
      Left            =   8760
      Picture         =   "frmGameB.frx":D1528
      Stretch         =   -1  'True
      Top             =   720
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   51
      Left            =   0
      Picture         =   "frmGameB.frx":D15A0
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   50
      Left            =   0
      Picture         =   "frmGameB.frx":D1618
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   49
      Left            =   0
      Picture         =   "frmGameB.frx":D1690
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   48
      Left            =   0
      Picture         =   "frmGameB.frx":D1708
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   47
      Left            =   0
      Picture         =   "frmGameB.frx":D1780
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   46
      Left            =   0
      Picture         =   "frmGameB.frx":D17F8
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   45
      Left            =   0
      Picture         =   "frmGameB.frx":D1870
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   44
      Left            =   0
      Picture         =   "frmGameB.frx":D18E8
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   43
      Left            =   0
      Picture         =   "frmGameB.frx":D1960
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   42
      Left            =   0
      Picture         =   "frmGameB.frx":D19D8
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   41
      Left            =   0
      Picture         =   "frmGameB.frx":D1A50
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   40
      Left            =   0
      Picture         =   "frmGameB.frx":D1AC8
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   39
      Left            =   0
      Picture         =   "frmGameB.frx":D1B40
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   38
      Left            =   0
      Picture         =   "frmGameB.frx":D1BB8
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   37
      Left            =   0
      Picture         =   "frmGameB.frx":D1C30
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   36
      Left            =   0
      Picture         =   "frmGameB.frx":D1CA8
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   35
      Left            =   0
      Picture         =   "frmGameB.frx":D1D20
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   34
      Left            =   0
      Picture         =   "frmGameB.frx":D1D98
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   33
      Left            =   0
      Picture         =   "frmGameB.frx":D1E10
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   32
      Left            =   0
      Picture         =   "frmGameB.frx":D1E88
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   31
      Left            =   0
      Picture         =   "frmGameB.frx":D1F00
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   30
      Left            =   0
      Picture         =   "frmGameB.frx":D1F78
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   51
      Left            =   0
      Picture         =   "frmGameB.frx":D1FF0
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   50
      Left            =   0
      Picture         =   "frmGameB.frx":D2068
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   49
      Left            =   0
      Picture         =   "frmGameB.frx":D20E0
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   48
      Left            =   0
      Picture         =   "frmGameB.frx":D2158
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   47
      Left            =   0
      Picture         =   "frmGameB.frx":D21D0
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   46
      Left            =   0
      Picture         =   "frmGameB.frx":D2248
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   45
      Left            =   0
      Picture         =   "frmGameB.frx":D22C0
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   44
      Left            =   0
      Picture         =   "frmGameB.frx":D2338
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   43
      Left            =   0
      Picture         =   "frmGameB.frx":D23B0
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   42
      Left            =   0
      Picture         =   "frmGameB.frx":D2428
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   41
      Left            =   0
      Picture         =   "frmGameB.frx":D24A0
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   40
      Left            =   0
      Picture         =   "frmGameB.frx":D2518
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   39
      Left            =   0
      Picture         =   "frmGameB.frx":D2590
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   38
      Left            =   0
      Picture         =   "frmGameB.frx":D2608
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   37
      Left            =   0
      Picture         =   "frmGameB.frx":D2680
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   36
      Left            =   0
      Picture         =   "frmGameB.frx":D26F8
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   35
      Left            =   0
      Picture         =   "frmGameB.frx":D2770
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   34
      Left            =   0
      Picture         =   "frmGameB.frx":D27E8
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   33
      Left            =   0
      Picture         =   "frmGameB.frx":D2860
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   32
      Left            =   0
      Picture         =   "frmGameB.frx":D28D8
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   31
      Left            =   0
      Picture         =   "frmGameB.frx":D2950
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   30
      Left            =   0
      Picture         =   "frmGameB.frx":D29C8
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   29
      Left            =   2880
      Picture         =   "frmGameB.frx":D2A40
      Stretch         =   -1  'True
      Top             =   360
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   28
      Left            =   8160
      Picture         =   "frmGameB.frx":D2AB8
      Stretch         =   -1  'True
      Top             =   120
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   27
      Left            =   8160
      Picture         =   "frmGameB.frx":D2B30
      Stretch         =   -1  'True
      Top             =   120
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   26
      Left            =   8160
      Picture         =   "frmGameB.frx":D2BA8
      Stretch         =   -1  'True
      Top             =   120
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   25
      Left            =   8160
      Picture         =   "frmGameB.frx":D2C20
      Stretch         =   -1  'True
      Top             =   120
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   24
      Left            =   8160
      Picture         =   "frmGameB.frx":D2C98
      Stretch         =   -1  'True
      Top             =   120
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   23
      Left            =   8160
      Picture         =   "frmGameB.frx":D2D10
      Stretch         =   -1  'True
      Top             =   120
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   22
      Left            =   8160
      Picture         =   "frmGameB.frx":D2D88
      Stretch         =   -1  'True
      Top             =   120
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   21
      Left            =   8160
      Picture         =   "frmGameB.frx":D2E00
      Stretch         =   -1  'True
      Top             =   120
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   20
      Left            =   8160
      Picture         =   "frmGameB.frx":D2E78
      Stretch         =   -1  'True
      Top             =   120
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   19
      Left            =   8160
      Picture         =   "frmGameB.frx":D2EF0
      Stretch         =   -1  'True
      Top             =   120
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   18
      Left            =   8160
      Picture         =   "frmGameB.frx":D2F68
      Stretch         =   -1  'True
      Top             =   120
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   17
      Left            =   8160
      Picture         =   "frmGameB.frx":D2FE0
      Stretch         =   -1  'True
      Top             =   120
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   16
      Left            =   8160
      Picture         =   "frmGameB.frx":D3058
      Stretch         =   -1  'True
      Top             =   120
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   15
      Left            =   8160
      Picture         =   "frmGameB.frx":D30D0
      Stretch         =   -1  'True
      Top             =   120
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   14
      Left            =   8160
      Picture         =   "frmGameB.frx":D3148
      Stretch         =   -1  'True
      Top             =   120
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   13
      Left            =   8160
      Picture         =   "frmGameB.frx":D31C0
      Stretch         =   -1  'True
      Top             =   120
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   12
      Left            =   8160
      Picture         =   "frmGameB.frx":D3238
      Stretch         =   -1  'True
      Top             =   120
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   11
      Left            =   8160
      Picture         =   "frmGameB.frx":D32B0
      Stretch         =   -1  'True
      Top             =   120
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   10
      Left            =   8160
      Picture         =   "frmGameB.frx":D3328
      Stretch         =   -1  'True
      Top             =   120
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   9
      Left            =   8160
      Picture         =   "frmGameB.frx":D33A0
      Stretch         =   -1  'True
      Top             =   120
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   8
      Left            =   8160
      Picture         =   "frmGameB.frx":D3418
      Stretch         =   -1  'True
      Top             =   120
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   7
      Left            =   8160
      Picture         =   "frmGameB.frx":D3490
      Stretch         =   -1  'True
      Top             =   120
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   6
      Left            =   8160
      Picture         =   "frmGameB.frx":D3508
      Stretch         =   -1  'True
      Top             =   120
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   5
      Left            =   8160
      Picture         =   "frmGameB.frx":D3580
      Stretch         =   -1  'True
      Top             =   120
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   4
      Left            =   8160
      Picture         =   "frmGameB.frx":D35F8
      Stretch         =   -1  'True
      Top             =   120
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   3
      Left            =   8160
      Picture         =   "frmGameB.frx":D3670
      Stretch         =   -1  'True
      Top             =   120
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   2
      Left            =   8160
      Picture         =   "frmGameB.frx":D36E8
      Stretch         =   -1  'True
      Top             =   120
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   1
      Left            =   8160
      Picture         =   "frmGameB.frx":D3760
      Stretch         =   -1  'True
      Top             =   120
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   0
      Left            =   8160
      Picture         =   "frmGameB.frx":D37D8
      Stretch         =   -1  'True
      Top             =   120
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   29
      Left            =   2160
      Picture         =   "frmGameB.frx":D3850
      Stretch         =   -1  'True
      Top             =   360
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   28
      Left            =   0
      Picture         =   "frmGameB.frx":D38C8
      Stretch         =   -1  'True
      Top             =   600
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   27
      Left            =   0
      Picture         =   "frmGameB.frx":D3940
      Stretch         =   -1  'True
      Top             =   600
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   26
      Left            =   0
      Picture         =   "frmGameB.frx":D39B8
      Stretch         =   -1  'True
      Top             =   600
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   25
      Left            =   0
      Picture         =   "frmGameB.frx":D3A30
      Stretch         =   -1  'True
      Top             =   600
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   24
      Left            =   0
      Picture         =   "frmGameB.frx":D3AA8
      Stretch         =   -1  'True
      Top             =   600
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   23
      Left            =   0
      Picture         =   "frmGameB.frx":D3B20
      Stretch         =   -1  'True
      Top             =   600
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   22
      Left            =   0
      Picture         =   "frmGameB.frx":D3B98
      Stretch         =   -1  'True
      Top             =   600
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   21
      Left            =   0
      Picture         =   "frmGameB.frx":D3C10
      Stretch         =   -1  'True
      Top             =   600
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   20
      Left            =   0
      Picture         =   "frmGameB.frx":D3C88
      Stretch         =   -1  'True
      Top             =   600
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   19
      Left            =   0
      Picture         =   "frmGameB.frx":D3D00
      Stretch         =   -1  'True
      Top             =   600
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   18
      Left            =   0
      Picture         =   "frmGameB.frx":D3D78
      Stretch         =   -1  'True
      Top             =   600
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   17
      Left            =   0
      Picture         =   "frmGameB.frx":D3DF0
      Stretch         =   -1  'True
      Top             =   600
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   16
      Left            =   0
      Picture         =   "frmGameB.frx":D3E68
      Stretch         =   -1  'True
      Top             =   600
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   15
      Left            =   0
      Picture         =   "frmGameB.frx":D3EE0
      Stretch         =   -1  'True
      Top             =   600
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   14
      Left            =   0
      Picture         =   "frmGameB.frx":D3F58
      Stretch         =   -1  'True
      Top             =   600
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   13
      Left            =   0
      Picture         =   "frmGameB.frx":D3FD0
      Stretch         =   -1  'True
      Top             =   600
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   12
      Left            =   0
      Picture         =   "frmGameB.frx":D4048
      Stretch         =   -1  'True
      Top             =   600
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   11
      Left            =   0
      Picture         =   "frmGameB.frx":D40C0
      Stretch         =   -1  'True
      Top             =   600
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   10
      Left            =   0
      Picture         =   "frmGameB.frx":D4138
      Stretch         =   -1  'True
      Top             =   600
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   9
      Left            =   0
      Picture         =   "frmGameB.frx":D41B0
      Stretch         =   -1  'True
      Top             =   600
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   8
      Left            =   0
      Picture         =   "frmGameB.frx":D4228
      Stretch         =   -1  'True
      Top             =   600
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   7
      Left            =   0
      Picture         =   "frmGameB.frx":D42A0
      Stretch         =   -1  'True
      Top             =   600
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   6
      Left            =   0
      Picture         =   "frmGameB.frx":D4318
      Stretch         =   -1  'True
      Top             =   600
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   5
      Left            =   0
      Picture         =   "frmGameB.frx":D4390
      Stretch         =   -1  'True
      Top             =   600
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   4
      Left            =   0
      Picture         =   "frmGameB.frx":D4408
      Stretch         =   -1  'True
      Top             =   600
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   3
      Left            =   0
      Picture         =   "frmGameB.frx":D4480
      Stretch         =   -1  'True
      Top             =   600
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   2
      Left            =   0
      Picture         =   "frmGameB.frx":D44F8
      Stretch         =   -1  'True
      Top             =   600
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   1
      Left            =   0
      Picture         =   "frmGameB.frx":D4570
      Stretch         =   -1  'True
      Top             =   600
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   0
      Left            =   0
      Picture         =   "frmGameB.frx":D45E8
      Stretch         =   -1  'True
      Top             =   600
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Menu mnuFile 
      Caption         =   "File"
      Begin VB.Menu mnuBack 
         Caption         =   "Return to main menu"
      End
      Begin VB.Menu mnuExit 
         Caption         =   "Exit Program"
      End
   End
End
Attribute VB_Name = "frmGameB"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Coded by: Shobhit and Sethuwran
Option Explicit

Const imgWidth As Integer = 36 * 2.5
Const imgHeight As Integer = 45 * 2.5 - 11
Dim intFrame(0 To 1) As Integer 'Frame number
Dim LeftPos As Integer 'Left value for P1
Dim LeftPos2 As Integer 'Left value for P2
Dim TopPos As Integer, TopPos2 As Integer 'Top value for P1
Dim intA As Integer, intB As Integer 'Arrow numbers
Dim intJump(0 To 1) As Integer 'Jump for P1 and P2
Dim intMo(1 To 2) As Integer 'Momentum
Dim intSpare As Integer 'For control arrays
Dim intCounter As Integer 'Music time
Dim strMsg(0 To 1) As String, intTurn As Integer 'Death message
Dim intScore(0 To 1) As Integer, intFinal As Integer
Dim intR As Integer
Private Sub cmdQuit_Click()

    End

End Sub

Private Sub cmdRetry_Click()

    Call Reset

End Sub

Private Sub cmdReturn_Click()

Call Reset 'Reset game

intBow(1) = 0
intBow(2) = 0

Call Score
    
'Redirect to main form
    frmMainB.Show
    Unload Me

End Sub

Private Sub Form_Load()

'Music
    Sound.FileName = App.Path & "\pop.mp3"
    Sound.Command = "Open"
    Sound.Command = "Play"


TopPos = 440 - imgHeight 'Default top
TopPos2 = 440 - imgHeight 'Default top
LeftPos2 = 500 'Default left For P2

intFrame(1) = 4




End Sub





Private Sub imgMute_Click()

'Change display
    imgPlay.Visible = True
    imgMute.Visible = False

Sound.Command = "Play" 'Play sound
    
End Sub

Private Sub imgPlay_Click()

'Change display
    imgPlay.Visible = False
    imgMute.Visible = True

Sound.Command = "Stop" 'Mute sound

End Sub

Private Sub mnuBack_Click()
    Call cmdReturn_Click

End Sub


Private Sub mnuExit_Click()
    End
End Sub

Private Sub tmrJump_Timer()

'For P1
If intJump(0) <> 0 Then 'If jump value is assigned
    
    TopPos = TopPos - intJump(0)

    If TopPos <= 16 Then 'If character is jumping
 
        intJump(0) = -intJump(0)
    
    ElseIf TopPos + imgHeight >= 440 Then 'If character lands

        intJump(0) = 0
        tmrJump.Interval = 0

    End If

End If

'For P2
If intJump(1) <> 0 Then 'If jump value is assigned

    TopPos2 = TopPos2 - intJump(1)

    If TopPos2 <= 16 Then 'If character is jumping
 
        intJump(1) = -intJump(1)
 
    ElseIf TopPos2 + imgHeight >= 440 Then 'If character lands
 
        intJump(1) = 0
        tmrJump.Interval = 0
    
    End If


End If
End Sub

Private Sub tmrP1_Timer()


If intFrame(0) < 4 Then 'If character is moving

    intFrame(0) = intFrame(0) + 1

Else 'If character is done moving

    Call Release 'Release arrow

'Reset position
    intFrame(0) = 0
    tmrP1.Interval = 0

End If



End Sub

Private Sub tmrArrow1_Timer()
'Arrow movement
    
    imgArrow2(intB).Left = imgArrow2(intB).Left - 30 '
    
If imgArrow2(intB).Left <= -imgWidth Then 'Switch to next arrow
    
    intB = intB + 1
    
    tmrArrow1.Interval = 0 'Disable timer

End If

End Sub

Private Sub tmrP2_Timer()
If intFrame(1) > 0 Then 'If character is moving

    intFrame(1) = intFrame(1) - 1

Else 'If character is done moving

    Call Release2 'Release arrow

'Reset position
    intFrame(1) = 4
    tmrP2.Interval = 0

End If



End Sub

Private Sub tmrArrow2_Timer()


'Arrow movement
    If intA <= 100 Then 'If arrows are available
    
        imgArrow(intA).Left = imgArrow(intA).Left + 30
    
    Else 'Ammunition is finished
    
        MsgBox "You are out of ammo "
        End
    
    End If

'Change arrows
If imgArrow(intA).Left >= Screen.Left + Screen.Width Then
    
    intA = intA + 1
    tmrArrow2.Interval = 0

End If



End Sub

Private Sub tmrMove_Timer()

Cls

Call Charac

Call Collision


'Controls For P1
If GetAsyncKeyState(vbKeyS) Then 'Fire arrow

    tmrP1.Interval = 100

ElseIf GetAsyncKeyState(vbKeyD) Then 'Move right
    
    If LeftPos + imgWidth <= 320 Then
    
        LeftPos = LeftPos + 10
    
    End If

ElseIf GetAsyncKeyState(vbKeyA) Then 'Move left
    
    If LeftPos >= 0 Then

        LeftPos = LeftPos - 10

    End If

ElseIf GetAsyncKeyState(vbKeyW) Then 'Jump

tmrJump.Interval = 1
 intJump(0) = 10


End If


'Controls For P2

If GetAsyncKeyState(vbKeyRight) Then 'Move right
    
    If LeftPos2 + imgWidth < 648 Then
    
        LeftPos2 = LeftPos2 + 10
    
    End If

ElseIf GetAsyncKeyState(vbKeyLeft) Then 'Move left
    
    If LeftPos2 >= 320 Then

        LeftPos2 = LeftPos2 - 10

    End If
    
ElseIf GetAsyncKeyState(vbKeyDown) Then 'Fire arrow

    tmrP2.Interval = 100
    
ElseIf GetAsyncKeyState(vbKeyUp) Then 'jump
    
    intJump(1) = 10
    tmrJump.Interval = 1

End If

 
'For music loop
    Call SoundEff
    intCounter = intCounter + 1
 
 
 Call Kill
 'Assign score
    lblWin(0).Caption = "Wins: " & intScore(0)
    lblWin(1).Caption = "Wins: " & intScore(1)
End Sub


Private Sub Release()

'Position arrow
    imgArrow(intA).Left = LeftPos + imgWidth
    imgArrow(intA).Visible = True
    imgArrow(intA).Top = TopPos + imgHeight / 3.5

'Enable movement
    tmrArrow2.Interval = 10

End Sub

Private Sub Release2()
'Position arrow
    imgArrow2(intB).Left = LeftPos2 - imgArrow2(intB).Width
    imgArrow2(intB).Visible = True
    imgArrow2(intB).Top = TopPos2 + imgHeight / 3.5

'Enable movement
    tmrArrow1.Interval = 10

End Sub

Private Sub Collision()
'Arrow 1 Collision
If imgArrow(intA).Left + imgArrow(intA).Width >= LeftPos2 + imgWidth / 2 And imgArrow(intA).Left + imgArrow(intA).Width < LeftPos2 + imgWidth Then
        If imgArrow(intA).Top > TopPos2 And imgArrow(intA).Top < TopPos2 + imgHeight Then

            Call Health(2, 20)
            
        'Momentum code
            intMo(1) = intMo(1) + 20
            intMo(2) = 10
           
        End If
    End If


'Arrow 2 Collision
    If imgArrow2(intB).Left <= LeftPos + imgWidth / 2 And imgArrow2(intB).Left + imgArrow2(intB).Width > LeftPos Then
        If imgArrow2(intB).Top > TopPos And imgArrow2(intB).Top < TopPos + imgHeight Then
            
            Call Health(1, 20)
        
        'Momentum code
            intMo(2) = intMo(2) + 20
            intMo(1) = 10
           
 
        End If
    End If

For intSpare = imgMoment2.LBound To imgMoment2.UBound
    If imgMoment2(intSpare).Left <= LeftPos + imgWidth / 2 And imgMoment2(intSpare).Left + imgMoment2(intSpare).Width > LeftPos Then
        If imgMoment2(intSpare).Top > TopPos And imgMoment2(intSpare).Top < TopPos + imgHeight Then
            
            
            Call Health(1, 20)
            

        End If
    End If

Next

For intSpare = imgMoment1.LBound To 28
    If imgMoment1(intSpare).Left <= LeftPos2 + imgWidth / 2 And imgMoment1(intSpare).Left + imgMoment1(intSpare).Width > LeftPos2 Then
        If imgMoment1(intSpare).Top > TopPos2 And imgMoment1(intSpare).Top < TopPos2 + imgHeight Then
            
            
            Call Health(2, 20)
            

        End If
    End If

Next intSpare

'Assign momentum to momentum bar

    Momentum(2).Width = intMo(2)
    Momentum(1).Width = intMo(1)

End Sub

Private Sub Health(Number As Integer, Damage As Integer)  'To decrease life and make win conditions


Select Case Number

Case 1 'P1 damage
    If P1Life(2).Width > 10 Then 'If green bar is not finished

        P1Life(2).Width = P1Life(2).Width - Damage

    ElseIf P1Life(1).Width >= 10 And P1Life(2).Width <= 10 Then 'If green bar is  finished but red is still there

        P1Life(1).Width = P1Life(1).Width - Damage
        P1Life(2).Visible = False
        
    ElseIf P1Life(1).Width <= 10 And P1Life(2).Width <= 10 Then 'If green and red bars are finished
    
        intTurn = 2
        Call Defeat
       
        Call Win
            
       End If

Case 2 'P2 damage
    If P2Life(2).Width >= 10 Then 'If green bar is not finished

        P2Life(2).Width = P2Life(2).Width - Damage

    ElseIf P2Life(1).Width >= 10 And P2Life(2).Width <= 10 Then 'If green bar is  finished but red is still there

        P2Life(1).Width = P2Life(1).Width - Damage
         P2Life(2).Visible = False
    
    ElseIf P2Life(1).Width <= 10 And P2Life(2).Width <= 10 Then 'If green and red bars are finished
    
         intTurn = 1
        Call Defeat
        Call Win
       
    End If



End Select

'Assign defeat message
    strMsg(0) = "Player " & Number & " was killed by Player " & intTurn
    strMsg(1) = "Player " & intTurn & " destroyed Player " & Number


End Sub


Private Sub Kill() 'Momentum full

If intMo(1) = 200 Then

    
   Call Death(1)
    Me.AutoRedraw = True

ElseIf intMo(2) >= 200 Then

    Call Death(2)
    Me.AutoRedraw = True

End If


End Sub

Private Sub Death(Num As Integer)

Select Case Num

Case 2
    If GetAsyncKeyState(vbKeyP) Then ' Press and hold
    
        For intSpare = imgMoment2.LBound To imgMoment2.UBound
        
        'Arrow frenzy

            imgMoment2(intSpare).Visible = True
            imgMoment2(intSpare).Left = imgMoment2(intSpare).Left - 10
    
             If imgMoment2(intSpare).Left = -imgMoment2(intSpare).Width Then 'Finish
             'Reset
                Me.AutoRedraw = False
                intMo(2) = 0
                imgMoment2(intSpare).Visible = False
                imgMoment2(intSpare).Left = LeftPos2
    
            End If

        Next intSpare


    Else 'loss of momentum
    
    'Reset
        
        Me.AutoRedraw = False
            
        For intSpare = imgMoment2.LBound To imgMoment2.UBound

            imgMoment2(intSpare).Visible = False
            imgMoment2(intSpare).Left = LeftPos2
            intMo(2) = 0
        
        Next intSpare

    
    End If

Case 1
    If GetAsyncKeyState(vbKeyQ) Then 'Press and hold

        For intSpare = imgMoment1.LBound To 27
        'Arrow frenzy
            
            imgMoment1(intSpare).Visible = True
            imgMoment1(intSpare).Left = imgMoment1(intSpare).Left + 10
    
             If imgMoment1(intSpare).Left = Me.Width Then 'Finish
             'Reset
             
                Me.AutoRedraw = False
                intMo(1) = 0
                imgMoment1(intSpare).Visible = False
                imgMoment1(intSpare).Left = LeftPos
    
            End If

        Next intSpare


    Else 'Loss of momentum
    
    'Reset
        Me.AutoRedraw = False

        For intSpare = imgMoment1.LBound To 27

            imgMoment1(intSpare).Visible = False
            imgMoment1(intSpare).Left = LeftPos
            intMo(1) = 0
        
        Next intSpare

    
    End If

End Select

End Sub


Private Sub SoundEff() 'Music


If intCounter >= 4500 Then '19 seconds per 1 second in game
    

    Sound.Command = "Close"
    Sound.Command = "Open"
    Sound.Command = "Play"
    intCounter = 0
    
End If

End Sub

Private Sub Defeat() 'On death
'To randomize Message
    Dim intR As Integer
    Randomize
    intR = (1 * Rnd)

'Display
    lblDeath.Caption = strMsg(intR)


'Disable music
    Sound.Command = "Close"

'Death sound effect
    Retry.FileName = App.Path & "\Growl.wav"
    Retry.Command = "Open"
    Retry.Command = "Play"


'Dispaly death screen
    Screen.Visible = True
    
End Sub


Private Sub Reset()

Cls
intR = 0
'Re-enable music
    Sound.FileName = App.Path & "\pop.mp3"
    Sound.Command = "Open"
    Sound.Command = "Play"

'Reset position
    TopPos = 440 - imgHeight 'Default top
    TopPos2 = 440 - imgHeight 'Default top

    LeftPos2 = 500 'Default leftFor P2
    LeftPos = 0

    intFrame(1) = 4

'Reset momentum & arrows
    intMo(1) = 0
    intMo(2) = 0

    intA = 0
    intB = 0


'Disable sound effect
    Retry.Command = "close"


'Reset Health
    P1Life(2).Width = 200
    P1Life(1).Width = 200
    P1Life(2).Visible = True

    P2Life(1).Width = 200
    P2Life(2).Width = 200
    P2Life(2).Visible = True

'Show game screen
    Screen.Visible = False

'Reset momentum arrows
    For intSpare = imgMoment2.LBound To imgMoment2.UBound

        imgMoment2(intSpare).Visible = False
        imgMoment2(intSpare).Left = LeftPos2

    Next intSpare

    For intSpare = imgMoment1.LBound To 29

        imgMoment1(intSpare).Visible = False
        imgMoment1(intSpare).Left = LeftPos - imgWidth

    Next intSpare

'Reset
    intCounter = 0
    Me.AutoRedraw = False




End Sub

Private Sub Charac()
'For Player 1
Select Case intBow(1)

Case 1

bitblt Me.hDC, LeftPos, TopPos, imgWidth, imgHeight, picMask.hDC, _
        intFrame(0) * imgWidth + 2, 2, SRCAND
        
bitblt Me.hDC, LeftPos, TopPos, imgWidth, imgHeight, picSprite.hDC, _
        intFrame(0) * imgWidth + 2, 2, SRCINVERT
    
    
Case 2

'bitblt Me.hDC, LeftPos, TopPos, imgWidth, imgHeight, picMask.hDC, _
        intFrame(0) * imgWidth + 2, 2, SRCAND
        
bitblt Me.hDC, LeftPos, TopPos, imgWidth, imgHeight, picSprite.hDC, _
        intFrame(0) * imgWidth + 2, 2, SRCINVERT


End Select

Select Case intBow(2)

Case 1

bitblt Me.hDC, LeftPos2, TopPos2, imgWidth, imgHeight, picMask2.hDC, _
        intFrame(1) * imgWidth + 2, 2, SRCAND
    
bitblt Me.hDC, LeftPos2, TopPos2, imgWidth, imgHeight, picSprite2.hDC, _
        intFrame(1) * imgWidth + 2, 2, SRCINVERT

Case 2

'bitblt Me.hDC, LeftPos2, TopPos2, imgWidth, imgHeight, picMask2.hDC, _
        intFrame(1) * imgWidth + 2, 2, SRCAND
    
bitblt Me.hDC, LeftPos2, TopPos2, imgWidth, imgHeight, picSprite2.hDC, _
        intFrame(1) * imgWidth + 2, 2, SRCINVERT

End Select
End Sub

Private Sub Win()
'Check number of times the sub is called
intR = intR + 1

If intR >= 2 Then 'Sub is called more than once
    
    Exit Sub

End If

If intTurn = 1 Then
    
    intScore(0) = intScore(0) + 1
    Exit Sub
ElseIf intTurn = 2 Then
    
    intScore(1) = intScore(1) + 1
Exit Sub
End If

End Sub


Private Sub Score()
If intScore(0) > intScore(1) Then
 intFinal = intScore(0)
 strBName = "Player 1"
 
ElseIf intScore(1) > intScore(0) Then
 intFinal = intScore(1)
 strBName = "Player 2"
 
End If

If intFinal > intBscore Then

    intBscore = intFinal
    
End If


intScore(0) = 0
intScore(1) = 0
End Sub

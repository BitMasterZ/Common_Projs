VERSION 5.00
Begin VB.Form frmbowman 
   AutoRedraw      =   -1  'True
   BorderStyle     =   0  'None
   Caption         =   "BowMan"
   ClientHeight    =   7275
   ClientLeft      =   3180
   ClientTop       =   1050
   ClientWidth     =   9795
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   485
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   653
   ShowInTaskbar   =   0   'False
   Begin VB.Frame Momentum 
      BackColor       =   &H00FFFF00&
      BorderStyle     =   0  'None
      Caption         =   "Frame1"
      Height          =   255
      Index           =   2
      Left            =   5880
      TabIndex        =   11
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
      TabIndex        =   10
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
      TabIndex        =   9
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
      TabIndex        =   8
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
      TabIndex        =   7
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
      TabIndex        =   5
      Top             =   6840
      Width           =   3000
   End
   Begin VB.CommandButton cmdQuit 
      Cancel          =   -1  'True
      Caption         =   "Quit"
      Height          =   495
      Left            =   3480
      TabIndex        =   4
      Top             =   120
      Width           =   1215
   End
   Begin VB.Timer tmrArrow2 
      Left            =   5760
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
      Picture         =   "2.frx":0000
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
      Picture         =   "2.frx":291EA
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
      Left            =   1200
      Picture         =   "2.frx":4E4DC
      ScaleHeight     =   106
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   453
      TabIndex        =   1
      Top             =   960
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
      Picture         =   "2.frx":7183E
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
         TabIndex        =   6
         Top             =   0
         Width           =   2535
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
   Begin VB.Image imgMoment1 
      Height          =   195
      Index           =   27
      Left            =   0
      Picture         =   "2.frx":98F10
      Stretch         =   -1  'True
      Top             =   120
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment1 
      Height          =   195
      Index           =   26
      Left            =   0
      Picture         =   "2.frx":98F88
      Stretch         =   -1  'True
      Top             =   6840
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment1 
      Height          =   195
      Index           =   25
      Left            =   0
      Picture         =   "2.frx":99000
      Stretch         =   -1  'True
      Top             =   6600
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment1 
      Height          =   195
      Index           =   24
      Left            =   0
      Picture         =   "2.frx":99078
      Stretch         =   -1  'True
      Top             =   600
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment1 
      Height          =   195
      Index           =   23
      Left            =   0
      Picture         =   "2.frx":990F0
      Stretch         =   -1  'True
      Top             =   360
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment1 
      Height          =   195
      Index           =   22
      Left            =   0
      Picture         =   "2.frx":99168
      Stretch         =   -1  'True
      Top             =   6360
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment1 
      Height          =   195
      Index           =   21
      Left            =   0
      Picture         =   "2.frx":991E0
      Stretch         =   -1  'True
      Top             =   6120
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment1 
      Height          =   195
      Index           =   20
      Left            =   0
      Picture         =   "2.frx":99258
      Stretch         =   -1  'True
      Top             =   5880
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment1 
      Height          =   195
      Index           =   19
      Left            =   0
      Picture         =   "2.frx":992D0
      Stretch         =   -1  'True
      Top             =   5640
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment1 
      Height          =   195
      Index           =   18
      Left            =   0
      Picture         =   "2.frx":99348
      Stretch         =   -1  'True
      Top             =   5400
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment1 
      Height          =   195
      Index           =   17
      Left            =   0
      Picture         =   "2.frx":993C0
      Stretch         =   -1  'True
      Top             =   5160
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment1 
      Height          =   195
      Index           =   16
      Left            =   0
      Picture         =   "2.frx":99438
      Stretch         =   -1  'True
      Top             =   4920
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment1 
      Height          =   195
      Index           =   15
      Left            =   0
      Picture         =   "2.frx":994B0
      Stretch         =   -1  'True
      Top             =   4680
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment1 
      Height          =   195
      Index           =   14
      Left            =   0
      Picture         =   "2.frx":99528
      Stretch         =   -1  'True
      Top             =   4440
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment1 
      Height          =   195
      Index           =   13
      Left            =   0
      Picture         =   "2.frx":995A0
      Stretch         =   -1  'True
      Top             =   4200
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment1 
      Height          =   195
      Index           =   12
      Left            =   0
      Picture         =   "2.frx":99618
      Stretch         =   -1  'True
      Top             =   3960
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment1 
      Height          =   195
      Index           =   11
      Left            =   0
      Picture         =   "2.frx":99690
      Stretch         =   -1  'True
      Top             =   3720
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment1 
      Height          =   195
      Index           =   10
      Left            =   0
      Picture         =   "2.frx":99708
      Stretch         =   -1  'True
      Top             =   3480
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment1 
      Height          =   195
      Index           =   9
      Left            =   0
      Picture         =   "2.frx":99780
      Stretch         =   -1  'True
      Top             =   3240
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment1 
      Height          =   195
      Index           =   8
      Left            =   0
      Picture         =   "2.frx":997F8
      Stretch         =   -1  'True
      Top             =   3000
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment1 
      Height          =   195
      Index           =   7
      Left            =   0
      Picture         =   "2.frx":99870
      Stretch         =   -1  'True
      Top             =   2760
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment1 
      Height          =   195
      Index           =   6
      Left            =   0
      Picture         =   "2.frx":998E8
      Stretch         =   -1  'True
      Top             =   2520
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment1 
      Height          =   195
      Index           =   5
      Left            =   0
      Picture         =   "2.frx":99960
      Stretch         =   -1  'True
      Top             =   2280
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment1 
      Height          =   195
      Index           =   4
      Left            =   0
      Picture         =   "2.frx":999D8
      Stretch         =   -1  'True
      Top             =   2040
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment1 
      Height          =   195
      Index           =   3
      Left            =   0
      Picture         =   "2.frx":99A50
      Stretch         =   -1  'True
      Top             =   1800
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment1 
      Height          =   195
      Index           =   2
      Left            =   0
      Picture         =   "2.frx":99AC8
      Stretch         =   -1  'True
      Top             =   1560
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment1 
      Height          =   195
      Index           =   1
      Left            =   0
      Picture         =   "2.frx":99B40
      Stretch         =   -1  'True
      Top             =   1320
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment1 
      Height          =   195
      Index           =   0
      Left            =   0
      Picture         =   "2.frx":99BB8
      Stretch         =   -1  'True
      Top             =   1080
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment1 
      Height          =   195
      Index           =   52
      Left            =   0
      Picture         =   "2.frx":99C30
      Stretch         =   -1  'True
      Top             =   840
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment2 
      Height          =   195
      Index           =   29
      Left            =   8760
      Picture         =   "2.frx":99CA8
      Stretch         =   -1  'True
      Top             =   240
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment2 
      Height          =   195
      Index           =   28
      Left            =   8760
      Picture         =   "2.frx":99D20
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment2 
      Height          =   195
      Index           =   27
      Left            =   8760
      Picture         =   "2.frx":99D98
      Stretch         =   -1  'True
      Top             =   6720
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment2 
      Height          =   195
      Index           =   26
      Left            =   8760
      Picture         =   "2.frx":99E10
      Stretch         =   -1  'True
      Top             =   6960
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment2 
      Height          =   195
      Index           =   25
      Left            =   8760
      Picture         =   "2.frx":99E88
      Stretch         =   -1  'True
      Top             =   6480
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment2 
      Height          =   195
      Index           =   24
      Left            =   8760
      Picture         =   "2.frx":99F00
      Stretch         =   -1  'True
      Top             =   6240
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment2 
      Height          =   195
      Index           =   23
      Left            =   8760
      Picture         =   "2.frx":99F78
      Stretch         =   -1  'True
      Top             =   5760
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment2 
      Height          =   195
      Index           =   22
      Left            =   8760
      Picture         =   "2.frx":99FF0
      Stretch         =   -1  'True
      Top             =   6000
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment2 
      Height          =   195
      Index           =   21
      Left            =   8760
      Picture         =   "2.frx":9A068
      Stretch         =   -1  'True
      Top             =   5520
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment2 
      Height          =   195
      Index           =   20
      Left            =   8760
      Picture         =   "2.frx":9A0E0
      Stretch         =   -1  'True
      Top             =   5280
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment2 
      Height          =   195
      Index           =   19
      Left            =   8760
      Picture         =   "2.frx":9A158
      Stretch         =   -1  'True
      Top             =   4800
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment2 
      Height          =   195
      Index           =   18
      Left            =   8760
      Picture         =   "2.frx":9A1D0
      Stretch         =   -1  'True
      Top             =   5040
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment2 
      Height          =   195
      Index           =   17
      Left            =   8760
      Picture         =   "2.frx":9A248
      Stretch         =   -1  'True
      Top             =   4560
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment2 
      Height          =   195
      Index           =   16
      Left            =   8760
      Picture         =   "2.frx":9A2C0
      Stretch         =   -1  'True
      Top             =   4320
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment2 
      Height          =   195
      Index           =   15
      Left            =   8760
      Picture         =   "2.frx":9A338
      Stretch         =   -1  'True
      Top             =   3840
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment2 
      Height          =   195
      Index           =   14
      Left            =   8760
      Picture         =   "2.frx":9A3B0
      Stretch         =   -1  'True
      Top             =   4080
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment2 
      Height          =   195
      Index           =   13
      Left            =   8760
      Picture         =   "2.frx":9A428
      Stretch         =   -1  'True
      Top             =   3600
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment2 
      Height          =   195
      Index           =   12
      Left            =   8760
      Picture         =   "2.frx":9A4A0
      Stretch         =   -1  'True
      Top             =   3360
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment2 
      Height          =   195
      Index           =   11
      Left            =   8760
      Picture         =   "2.frx":9A518
      Stretch         =   -1  'True
      Top             =   2880
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment2 
      Height          =   195
      Index           =   10
      Left            =   8760
      Picture         =   "2.frx":9A590
      Stretch         =   -1  'True
      Top             =   3120
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment2 
      Height          =   195
      Index           =   9
      Left            =   8760
      Picture         =   "2.frx":9A608
      Stretch         =   -1  'True
      Top             =   2640
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment2 
      Height          =   195
      Index           =   8
      Left            =   8760
      Picture         =   "2.frx":9A680
      Stretch         =   -1  'True
      Top             =   2400
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment2 
      Height          =   195
      Index           =   7
      Left            =   8760
      Picture         =   "2.frx":9A6F8
      Stretch         =   -1  'True
      Top             =   2160
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment2 
      Height          =   195
      Index           =   6
      Left            =   8760
      Picture         =   "2.frx":9A770
      Stretch         =   -1  'True
      Top             =   1440
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment2 
      Height          =   195
      Index           =   5
      Left            =   8760
      Picture         =   "2.frx":9A7E8
      Stretch         =   -1  'True
      Top             =   1920
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment2 
      Height          =   195
      Index           =   4
      Left            =   8760
      Picture         =   "2.frx":9A860
      Stretch         =   -1  'True
      Top             =   1680
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment2 
      Height          =   195
      Index           =   3
      Left            =   8760
      Picture         =   "2.frx":9A8D8
      Stretch         =   -1  'True
      Top             =   960
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment2 
      Height          =   195
      Index           =   2
      Left            =   8760
      Picture         =   "2.frx":9A950
      Stretch         =   -1  'True
      Top             =   1200
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment2 
      Height          =   195
      Index           =   1
      Left            =   8760
      Picture         =   "2.frx":9A9C8
      Stretch         =   -1  'True
      Top             =   720
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgMoment2 
      Height          =   195
      Index           =   0
      Left            =   8760
      Picture         =   "2.frx":9AA40
      Stretch         =   -1  'True
      Top             =   480
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   51
      Left            =   0
      Picture         =   "2.frx":9AAB8
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   50
      Left            =   0
      Picture         =   "2.frx":9AB30
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   49
      Left            =   0
      Picture         =   "2.frx":9ABA8
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   48
      Left            =   0
      Picture         =   "2.frx":9AC20
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   47
      Left            =   0
      Picture         =   "2.frx":9AC98
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   46
      Left            =   0
      Picture         =   "2.frx":9AD10
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   45
      Left            =   0
      Picture         =   "2.frx":9AD88
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   44
      Left            =   0
      Picture         =   "2.frx":9AE00
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   43
      Left            =   0
      Picture         =   "2.frx":9AE78
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   42
      Left            =   0
      Picture         =   "2.frx":9AEF0
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   41
      Left            =   0
      Picture         =   "2.frx":9AF68
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   40
      Left            =   0
      Picture         =   "2.frx":9AFE0
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   39
      Left            =   0
      Picture         =   "2.frx":9B058
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   38
      Left            =   0
      Picture         =   "2.frx":9B0D0
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   37
      Left            =   0
      Picture         =   "2.frx":9B148
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   36
      Left            =   0
      Picture         =   "2.frx":9B1C0
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   35
      Left            =   0
      Picture         =   "2.frx":9B238
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   34
      Left            =   0
      Picture         =   "2.frx":9B2B0
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   33
      Left            =   0
      Picture         =   "2.frx":9B328
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   32
      Left            =   0
      Picture         =   "2.frx":9B3A0
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   31
      Left            =   0
      Picture         =   "2.frx":9B418
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   30
      Left            =   0
      Picture         =   "2.frx":9B490
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   51
      Left            =   0
      Picture         =   "2.frx":9B508
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   50
      Left            =   0
      Picture         =   "2.frx":9B580
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   49
      Left            =   0
      Picture         =   "2.frx":9B5F8
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   48
      Left            =   0
      Picture         =   "2.frx":9B670
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   47
      Left            =   0
      Picture         =   "2.frx":9B6E8
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   46
      Left            =   0
      Picture         =   "2.frx":9B760
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   45
      Left            =   0
      Picture         =   "2.frx":9B7D8
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   44
      Left            =   0
      Picture         =   "2.frx":9B850
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   43
      Left            =   0
      Picture         =   "2.frx":9B8C8
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   42
      Left            =   0
      Picture         =   "2.frx":9B940
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   41
      Left            =   0
      Picture         =   "2.frx":9B9B8
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   40
      Left            =   0
      Picture         =   "2.frx":9BA30
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   39
      Left            =   0
      Picture         =   "2.frx":9BAA8
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   38
      Left            =   0
      Picture         =   "2.frx":9BB20
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   37
      Left            =   0
      Picture         =   "2.frx":9BB98
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   36
      Left            =   0
      Picture         =   "2.frx":9BC10
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   35
      Left            =   0
      Picture         =   "2.frx":9BC88
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   34
      Left            =   0
      Picture         =   "2.frx":9BD00
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   33
      Left            =   0
      Picture         =   "2.frx":9BD78
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   32
      Left            =   0
      Picture         =   "2.frx":9BDF0
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   31
      Left            =   0
      Picture         =   "2.frx":9BE68
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   30
      Left            =   0
      Picture         =   "2.frx":9BEE0
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   29
      Left            =   8160
      Picture         =   "2.frx":9BF58
      Stretch         =   -1  'True
      Top             =   120
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   28
      Left            =   8160
      Picture         =   "2.frx":9BFD0
      Stretch         =   -1  'True
      Top             =   120
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   27
      Left            =   8160
      Picture         =   "2.frx":9C048
      Stretch         =   -1  'True
      Top             =   120
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   26
      Left            =   8160
      Picture         =   "2.frx":9C0C0
      Stretch         =   -1  'True
      Top             =   120
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   25
      Left            =   8160
      Picture         =   "2.frx":9C138
      Stretch         =   -1  'True
      Top             =   120
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   24
      Left            =   8160
      Picture         =   "2.frx":9C1B0
      Stretch         =   -1  'True
      Top             =   120
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   23
      Left            =   8160
      Picture         =   "2.frx":9C228
      Stretch         =   -1  'True
      Top             =   120
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   22
      Left            =   8160
      Picture         =   "2.frx":9C2A0
      Stretch         =   -1  'True
      Top             =   120
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   21
      Left            =   8160
      Picture         =   "2.frx":9C318
      Stretch         =   -1  'True
      Top             =   120
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   20
      Left            =   8160
      Picture         =   "2.frx":9C390
      Stretch         =   -1  'True
      Top             =   120
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   19
      Left            =   8160
      Picture         =   "2.frx":9C408
      Stretch         =   -1  'True
      Top             =   120
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   18
      Left            =   8160
      Picture         =   "2.frx":9C480
      Stretch         =   -1  'True
      Top             =   120
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   17
      Left            =   8160
      Picture         =   "2.frx":9C4F8
      Stretch         =   -1  'True
      Top             =   120
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   16
      Left            =   8160
      Picture         =   "2.frx":9C570
      Stretch         =   -1  'True
      Top             =   120
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   15
      Left            =   8160
      Picture         =   "2.frx":9C5E8
      Stretch         =   -1  'True
      Top             =   120
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   14
      Left            =   8160
      Picture         =   "2.frx":9C660
      Stretch         =   -1  'True
      Top             =   120
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   13
      Left            =   8160
      Picture         =   "2.frx":9C6D8
      Stretch         =   -1  'True
      Top             =   120
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   12
      Left            =   8160
      Picture         =   "2.frx":9C750
      Stretch         =   -1  'True
      Top             =   120
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   11
      Left            =   8160
      Picture         =   "2.frx":9C7C8
      Stretch         =   -1  'True
      Top             =   120
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   10
      Left            =   8160
      Picture         =   "2.frx":9C840
      Stretch         =   -1  'True
      Top             =   120
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   9
      Left            =   8160
      Picture         =   "2.frx":9C8B8
      Stretch         =   -1  'True
      Top             =   120
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   8
      Left            =   8160
      Picture         =   "2.frx":9C930
      Stretch         =   -1  'True
      Top             =   120
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   7
      Left            =   8160
      Picture         =   "2.frx":9C9A8
      Stretch         =   -1  'True
      Top             =   120
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   6
      Left            =   8160
      Picture         =   "2.frx":9CA20
      Stretch         =   -1  'True
      Top             =   120
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   5
      Left            =   8160
      Picture         =   "2.frx":9CA98
      Stretch         =   -1  'True
      Top             =   120
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   4
      Left            =   8160
      Picture         =   "2.frx":9CB10
      Stretch         =   -1  'True
      Top             =   120
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   3
      Left            =   8160
      Picture         =   "2.frx":9CB88
      Stretch         =   -1  'True
      Top             =   120
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   2
      Left            =   8160
      Picture         =   "2.frx":9CC00
      Stretch         =   -1  'True
      Top             =   120
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   1
      Left            =   8160
      Picture         =   "2.frx":9CC78
      Stretch         =   -1  'True
      Top             =   120
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow2 
      Height          =   195
      Index           =   0
      Left            =   8160
      Picture         =   "2.frx":9CCF0
      Stretch         =   -1  'True
      Top             =   120
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   29
      Left            =   0
      Picture         =   "2.frx":9CD68
      Stretch         =   -1  'True
      Top             =   600
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   28
      Left            =   0
      Picture         =   "2.frx":9CDE0
      Stretch         =   -1  'True
      Top             =   600
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   27
      Left            =   0
      Picture         =   "2.frx":9CE58
      Stretch         =   -1  'True
      Top             =   600
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   26
      Left            =   0
      Picture         =   "2.frx":9CED0
      Stretch         =   -1  'True
      Top             =   600
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   25
      Left            =   0
      Picture         =   "2.frx":9CF48
      Stretch         =   -1  'True
      Top             =   600
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   24
      Left            =   0
      Picture         =   "2.frx":9CFC0
      Stretch         =   -1  'True
      Top             =   600
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   23
      Left            =   0
      Picture         =   "2.frx":9D038
      Stretch         =   -1  'True
      Top             =   600
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   22
      Left            =   0
      Picture         =   "2.frx":9D0B0
      Stretch         =   -1  'True
      Top             =   600
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   21
      Left            =   0
      Picture         =   "2.frx":9D128
      Stretch         =   -1  'True
      Top             =   600
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   20
      Left            =   0
      Picture         =   "2.frx":9D1A0
      Stretch         =   -1  'True
      Top             =   600
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   19
      Left            =   0
      Picture         =   "2.frx":9D218
      Stretch         =   -1  'True
      Top             =   600
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   18
      Left            =   0
      Picture         =   "2.frx":9D290
      Stretch         =   -1  'True
      Top             =   600
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   17
      Left            =   0
      Picture         =   "2.frx":9D308
      Stretch         =   -1  'True
      Top             =   600
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   16
      Left            =   0
      Picture         =   "2.frx":9D380
      Stretch         =   -1  'True
      Top             =   600
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   15
      Left            =   0
      Picture         =   "2.frx":9D3F8
      Stretch         =   -1  'True
      Top             =   600
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   14
      Left            =   0
      Picture         =   "2.frx":9D470
      Stretch         =   -1  'True
      Top             =   600
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   13
      Left            =   0
      Picture         =   "2.frx":9D4E8
      Stretch         =   -1  'True
      Top             =   600
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   12
      Left            =   0
      Picture         =   "2.frx":9D560
      Stretch         =   -1  'True
      Top             =   600
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   11
      Left            =   0
      Picture         =   "2.frx":9D5D8
      Stretch         =   -1  'True
      Top             =   600
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   10
      Left            =   0
      Picture         =   "2.frx":9D650
      Stretch         =   -1  'True
      Top             =   600
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   9
      Left            =   0
      Picture         =   "2.frx":9D6C8
      Stretch         =   -1  'True
      Top             =   600
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   8
      Left            =   0
      Picture         =   "2.frx":9D740
      Stretch         =   -1  'True
      Top             =   600
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   7
      Left            =   0
      Picture         =   "2.frx":9D7B8
      Stretch         =   -1  'True
      Top             =   600
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   6
      Left            =   0
      Picture         =   "2.frx":9D830
      Stretch         =   -1  'True
      Top             =   600
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   5
      Left            =   0
      Picture         =   "2.frx":9D8A8
      Stretch         =   -1  'True
      Top             =   600
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   4
      Left            =   0
      Picture         =   "2.frx":9D920
      Stretch         =   -1  'True
      Top             =   600
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   3
      Left            =   0
      Picture         =   "2.frx":9D998
      Stretch         =   -1  'True
      Top             =   600
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   2
      Left            =   0
      Picture         =   "2.frx":9DA10
      Stretch         =   -1  'True
      Top             =   600
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   1
      Left            =   0
      Picture         =   "2.frx":9DA88
      Stretch         =   -1  'True
      Top             =   600
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Image imgArrow 
      Height          =   195
      Index           =   0
      Left            =   0
      Picture         =   "2.frx":9DB00
      Stretch         =   -1  'True
      Top             =   600
      Visible         =   0   'False
      Width           =   555
   End
End
Attribute VB_Name = "frmbowman"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Const imgWidth As Integer = 36 * 2.5
Const imgHeight As Integer = 45 * 2.5 - 11
Dim intFrame(0 To 1) As Integer 'Frame number
Dim LeftPos As Integer 'Left value for P1
Dim LeftPos2 As Integer 'Left value for P2
Dim TopPos As Integer, TopPos2 As Integer 'Top value for P1
Dim intA As Integer, intB As Integer 'Arrow numbers
Dim intJump(0 To 1) As Integer
Dim intMo(1 To 2) As Integer

Private Sub cmdQuit_Click()

    End

End Sub

Private Sub Form_Load()
TopPos = 440 - imgHeight 'Default top
TopPos2 = 440 - imgHeight
LeftPos2 = 500 'Default leftFor P2

intFrame(1) = 4
End Sub

Private Sub tmrJump_Timer()

If intJump(0) <> 0 Then
    TopPos = TopPos - intJump(0)

If TopPos <= 0 Then
 intJump(0) = -intJump(0)
 
ElseIf TopPos + imgHeight >= 440 Then
 intJump(0) = 0
 tmrJump.Interval = 0
End If
End If
If intJump(1) <> 0 Then
TopPos2 = TopPos2 - intJump(1)

If TopPos2 <= 0 Then
 intJump(1) = -intJump(1)
 
ElseIf TopPos2 + imgHeight >= 440 Then
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
    
If imgArrow2(intB).Left <= -imgWidth Then
    
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
    If intA <= 51 Then 'If arrows are available
    
        imgArrow(intA).Left = imgArrow(intA).Left + 30
    
    Else 'Ammunition is finished
    
        MsgBox "You are out of ammo "
        End
    
    End If

'Change arrows
If imgArrow(intA).Left >= 648 Then
    
    intA = intA + 1
    tmrArrow2.Interval = 0

End If



End Sub

Private Sub tmrmove_Timer()

Cls

'Bitblt Function For P1

    bitblt Me.hDC, LeftPos, TopPos, imgWidth, imgHeight, picMask.hDC, _
        intFrame(0) * imgWidth + 2, 2, SRCAND
        
    bitblt Me.hDC, LeftPos, TopPos, imgWidth, imgHeight, picSprite.hDC, _
        intFrame(0) * imgWidth + 2, 2, SRCINVERT
        

'Bitblt Function For P2

    'bitblt Me.hDC, LeftPos2, TopPos2, imgWidth, imgHeight, picMask2.hDC, _
        intFrame(1) * imgWidth + 2, 2, SRCAND
    
    bitblt Me.hDC, LeftPos2, TopPos2, imgWidth, imgHeight, picSprite2.hDC, _
        intFrame(1) * imgWidth + 2, 2, SRCINVERT


Call Collision


'Controls For P1
If GetAsyncKeyState(vbKeyS) Then 'Fire arrow

    tmrP1.Interval = 100

ElseIf GetAsyncKeyState(vbKeyD) Then 'Move right
    
    If LeftPos + imgWidth < 648 Then
    
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
    
    If LeftPos2 >= 0 Then

        LeftPos2 = LeftPos2 - 10

    End If
    
ElseIf GetAsyncKeyState(vbKeyDown) Then 'Fire arrow

    tmrP2.Interval = 100
    
ElseIf GetAsyncKeyState(vbKeyUp) Then 'jump
intJump(1) = 10
tmrJump.Interval = 1
End If

 
 Call Kill
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
    If imgArrow(intA).Left + imgArrow(intA).Width >= LeftPos2 And imgArrow(intA).Left + imgArrow(intA).Width < LeftPos2 + imgWidth / 2 Then
        If imgArrow(intA).Top > TopPos2 And imgArrow(intA).Top < TopPos2 + imgHeight Then

            Call Health(2)
            intMo(1) = intMo(1) + 1
            intMo(2) = 0
            Momentum(1).Width = Momentum(1).Width + 1
            Momentum(2).Width = 10
        End If
    End If


'Arrow 2 Collision
    If imgArrow2(intB).Left <= LeftPos + imgWidth / 2 And imgArrow2(intB).Left + imgArrow2(intB).Width > LeftPos Then
        If imgArrow2(intB).Top > TopPos And imgArrow2(intB).Top < TopPos + imgHeight Then
            
            Call Health(1)
            intMo(2) = intMo(2) + 1
            intMo(1) = 0
            Momentum(1).Width = 10
            Momentum(2).Width = Momentum(2).Width + 1

        End If
    End If

End Sub

Private Sub Health(Number As Integer) 'To decrease life and make win conditions

Select Case Number

Case 1 'P1 damage
    If P1Life(2).Width >= 5 Then 'If green bar is not finished

        P1Life(2).Width = P1Life(2).Width - 2

    ElseIf P1Life(1).Width >= 5 And P2Life(2).Width <= 5 Then 'If green bar is  finished but red is still there

        P1Life(1).Width = P1Life(1).Width - 2

    ElseIf P1Life(1).Width <= 5 And P1Life(2).Width <= 5 Then 'If green and red bars are finished
    
        MsgBox " P1 Dead"
        End

    End If

Case 2 'P2 damage
    If P2Life(2).Width >= 5 Then 'If green bar is not finished

        P2Life(2).Width = P2Life(2).Width - 2

    ElseIf P2Life(1).Width >= 5 And P2Life(2).Width <= 5 Then 'If green bar is  finished but red is still there

        P2Life(1).Width = P2Life(1).Width - 2

    ElseIf P2Life(1).Width <= 5 And P2Life(2).Width <= 5 Then 'If green and red bars are finished
    
        MsgBox " P2 Dead"
        End

    End If



End Select

End Sub


Private Sub Kill()
If intMo(1) = 100 Then

MsgBox "P1 is godly"

intMo(1) = 0

ElseIf intMo(2) = 100 Then
MsgBox "P2 is godly"
Call Death(2)
intMo(2) = 0
End If


End Sub

Private Sub Death(Num As Integer)
Dim intSpare As Integer

If GetAsyncKeyState(vbKeyP) Then

For intSpare = imgMoment2.LBound To imgMoment2.Ubound

    imgMoment2(intSpare).Visible = True
    'imgMoment2(intSpare).Left = LeftPos2
    imgMoment2(intSpare).Left = imgMoment2(intSpare).Left - 5
    
Next intSpare
End If
End Sub

VERSION 5.00
Begin VB.Form Game 
   AutoRedraw      =   -1  'True
   BackColor       =   &H00404040&
   BorderStyle     =   0  'None
   ClientHeight    =   12060
   ClientLeft      =   345
   ClientTop       =   660
   ClientWidth     =   23910
   ControlBox      =   0   'False
   FillColor       =   &H00FFFF00&
   FillStyle       =   0  'Solid
   ForeColor       =   &H00FFFFFF&
   Icon            =   "Game.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Picture         =   "Game.frx":4C4A
   ScaleHeight     =   804
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   1594
   WindowState     =   2  'Maximized
   Begin VB.Frame Frame1 
      BackColor       =   &H00000000&
      BorderStyle     =   0  'None
      Caption         =   "Frame1"
      Height          =   135
      Left            =   0
      TabIndex        =   72
      Top             =   9960
      Width           =   23895
   End
   Begin VB.Timer tmr1 
      Interval        =   1
      Left            =   8040
      Top             =   4560
   End
   Begin VB.Timer tmr 
      Interval        =   1
      Left            =   7320
      Top             =   5280
   End
   Begin VB.PictureBox UlqS 
      AutoRedraw      =   -1  'True
      Enabled         =   0   'False
      Height          =   2175
      Index           =   10
      Left            =   7800
      Picture         =   "Game.frx":38711
      ScaleHeight     =   141
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   437
      TabIndex        =   71
      Top             =   1200
      Visible         =   0   'False
      Width           =   6615
   End
   Begin VB.PictureBox UlqM 
      AutoRedraw      =   -1  'True
      Enabled         =   0   'False
      Height          =   2295
      Index           =   10
      Left            =   6960
      Picture         =   "Game.frx":3D1E5
      ScaleHeight     =   149
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   437
      TabIndex        =   70
      Top             =   1920
      Visible         =   0   'False
      Width           =   6615
   End
   Begin VB.Frame frameScore 
      BackColor       =   &H00000000&
      Caption         =   "Scores"
      Height          =   1935
      Left            =   9000
      TabIndex        =   68
      Top             =   600
      Visible         =   0   'False
      Width           =   7335
      Begin VB.Image imgUlq 
         Height          =   1785
         Left            =   5280
         Picture         =   "Game.frx":42895
         Stretch         =   -1  'True
         Top             =   120
         Width           =   2100
      End
      Begin VB.Image imgGrim 
         Height          =   1785
         Left            =   120
         Picture         =   "Game.frx":4BE83
         Stretch         =   -1  'True
         Top             =   120
         Width           =   1125
      End
      Begin VB.Label lblScore 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "0"
         BeginProperty Font 
            Name            =   "OCR A Std"
            Size            =   27.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   585
         Left            =   2400
         TabIndex        =   69
         Top             =   720
         Width           =   405
      End
   End
   Begin VB.PictureBox UlqM 
      AutoRedraw      =   -1  'True
      Enabled         =   0   'False
      Height          =   1095
      Index           =   14
      Left            =   8760
      Picture         =   "Game.frx":50731
      ScaleHeight     =   69
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   589
      TabIndex        =   67
      Top             =   4200
      Visible         =   0   'False
      Width           =   8895
   End
   Begin VB.PictureBox UlqS 
      AutoRedraw      =   -1  'True
      Enabled         =   0   'False
      Height          =   1095
      Index           =   14
      Left            =   5040
      Picture         =   "Game.frx":54B37
      ScaleHeight     =   69
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   589
      TabIndex        =   66
      Top             =   6360
      Visible         =   0   'False
      Width           =   8895
   End
   Begin VB.PictureBox GrimS 
      AutoRedraw      =   -1  'True
      Enabled         =   0   'False
      Height          =   1095
      Index           =   13
      Left            =   6720
      Picture         =   "Game.frx":582DB
      ScaleHeight     =   1035
      ScaleWidth      =   7395
      TabIndex        =   65
      Top             =   6240
      Visible         =   0   'False
      Width           =   7455
   End
   Begin VB.PictureBox GrimM 
      AutoRedraw      =   -1  'True
      Enabled         =   0   'False
      Height          =   1095
      Index           =   13
      Left            =   7320
      Picture         =   "Game.frx":5A42F
      ScaleHeight     =   69
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   493
      TabIndex        =   64
      Top             =   6720
      Visible         =   0   'False
      Width           =   7455
   End
   Begin VB.PictureBox GrimM 
      AutoRedraw      =   -1  'True
      Enabled         =   0   'False
      Height          =   1095
      Index           =   14
      Left            =   9240
      Picture         =   "Game.frx":5C1F0
      ScaleHeight     =   69
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   493
      TabIndex        =   63
      Top             =   6240
      Visible         =   0   'False
      Width           =   7455
   End
   Begin VB.PictureBox GrimS 
      AutoRedraw      =   -1  'True
      Enabled         =   0   'False
      Height          =   1095
      Index           =   14
      Left            =   9480
      Picture         =   "Game.frx":5F121
      ScaleHeight     =   1035
      ScaleWidth      =   7395
      TabIndex        =   62
      Top             =   6720
      Visible         =   0   'False
      Width           =   7455
   End
   Begin VB.PictureBox UlqS 
      AutoRedraw      =   -1  'True
      Enabled         =   0   'False
      Height          =   2655
      Index           =   9
      Left            =   9240
      Picture         =   "Game.frx":62A3A
      ScaleHeight     =   173
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   637
      TabIndex        =   61
      Top             =   2280
      Visible         =   0   'False
      Width           =   9615
   End
   Begin VB.PictureBox UlqM 
      AutoRedraw      =   -1  'True
      Enabled         =   0   'False
      Height          =   2775
      Index           =   9
      Left            =   6240
      Picture         =   "Game.frx":69D9E
      ScaleHeight     =   181
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   637
      TabIndex        =   60
      Top             =   4320
      Visible         =   0   'False
      Width           =   9615
   End
   Begin VB.Timer Dead 
      Interval        =   700
      Left            =   9120
      Top             =   5160
   End
   Begin VB.PictureBox UlqM 
      AutoRedraw      =   -1  'True
      Enabled         =   0   'False
      Height          =   1095
      Index           =   13
      Left            =   13800
      Picture         =   "Game.frx":72473
      ScaleHeight     =   69
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   301
      TabIndex        =   58
      Top             =   2640
      Visible         =   0   'False
      Width           =   4575
   End
   Begin VB.PictureBox UlqS 
      AutoRedraw      =   -1  'True
      Enabled         =   0   'False
      Height          =   1095
      Index           =   13
      Left            =   13680
      Picture         =   "Game.frx":74770
      ScaleHeight     =   69
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   309
      TabIndex        =   57
      Top             =   2760
      Visible         =   0   'False
      Width           =   4695
   End
   Begin VB.Frame UBReiatsu 
      BackColor       =   &H00FFFF00&
      BorderStyle     =   0  'None
      Caption         =   "Frame1"
      Height          =   255
      Left            =   10200
      TabIndex        =   55
      Top             =   240
      Width           =   135
   End
   Begin VB.Frame UHealth 
      BackColor       =   &H00808000&
      BorderStyle     =   0  'None
      Caption         =   "Frame1"
      Height          =   135
      Left            =   240
      TabIndex        =   54
      Top             =   10440
      Width           =   18015
   End
   Begin VB.Frame GHealth 
      BackColor       =   &H00FF0000&
      BorderStyle     =   0  'None
      Caption         =   "Frame1"
      Height          =   135
      Left            =   240
      TabIndex        =   53
      Top             =   10200
      Width           =   18015
   End
   Begin VB.PictureBox MOscuras 
      AutoRedraw      =   -1  'True
      Enabled         =   0   'False
      Height          =   1215
      Left            =   1680
      Picture         =   "Game.frx":76370
      ScaleHeight     =   77
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   549
      TabIndex        =   52
      Top             =   5520
      Visible         =   0   'False
      Width           =   8295
   End
   Begin VB.PictureBox SOscuras 
      AutoRedraw      =   -1  'True
      Enabled         =   0   'False
      Height          =   1215
      Left            =   1680
      Picture         =   "Game.frx":78812
      ScaleHeight     =   1155
      ScaleWidth      =   8235
      TabIndex        =   51
      Top             =   5520
      Visible         =   0   'False
      Width           =   8295
   End
   Begin VB.Frame frmControls 
      Caption         =   "Controls"
      Height          =   5295
      Left            =   240
      TabIndex        =   48
      Top             =   840
      Visible         =   0   'False
      Width           =   9015
      Begin VB.Label lblHead 
         AutoSize        =   -1  'True
         Caption         =   "PRESS AND HOLD KEYS FOR EFFECT!!!"
         BeginProperty Font 
            Name            =   "OCR A Extended"
            Size            =   20.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   435
         Left            =   360
         TabIndex        =   59
         Top             =   4800
         Width           =   7920
      End
      Begin VB.Label UlqControl 
         Caption         =   $"Game.frx":7A5A4
         BeginProperty Font 
            Name            =   "Arial Narrow"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   4575
         Left            =   4440
         TabIndex        =   50
         Top             =   240
         Width           =   4335
      End
      Begin VB.Label GrimControl 
         Caption         =   $"Game.frx":7A8D8
         BeginProperty Font 
            Name            =   "Arial Narrow"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   4335
         Left            =   120
         TabIndex        =   49
         Top             =   240
         Width           =   4335
      End
   End
   Begin VB.PictureBox UlqS 
      AutoRedraw      =   -1  'True
      Enabled         =   0   'False
      Height          =   1215
      Index           =   7
      Left            =   240
      Picture         =   "Game.frx":7AC1B
      ScaleHeight     =   77
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   733
      TabIndex        =   42
      Top             =   4200
      Visible         =   0   'False
      Width           =   11055
   End
   Begin VB.PictureBox UlqS 
      AutoRedraw      =   -1  'True
      Enabled         =   0   'False
      Height          =   1215
      Index           =   12
      Left            =   360
      Picture         =   "Game.frx":7ECE3
      ScaleHeight     =   77
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   365
      TabIndex        =   47
      Top             =   3120
      Visible         =   0   'False
      Width           =   5535
   End
   Begin VB.PictureBox UlqM 
      AutoRedraw      =   -1  'True
      Enabled         =   0   'False
      Height          =   1215
      Index           =   12
      Left            =   360
      Picture         =   "Game.frx":80528
      ScaleHeight     =   77
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   365
      TabIndex        =   46
      Top             =   3120
      Visible         =   0   'False
      Width           =   5535
   End
   Begin VB.PictureBox UlqM 
      AutoRedraw      =   -1  'True
      Enabled         =   0   'False
      Height          =   1215
      Index           =   8
      Left            =   7200
      Picture         =   "Game.frx":82D2E
      ScaleHeight     =   77
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   285
      TabIndex        =   45
      Top             =   5880
      Visible         =   0   'False
      Width           =   4335
   End
   Begin VB.PictureBox UlqS 
      AutoRedraw      =   -1  'True
      Enabled         =   0   'False
      Height          =   1215
      Index           =   8
      Left            =   720
      Picture         =   "Game.frx":85356
      ScaleHeight     =   77
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   285
      TabIndex        =   44
      Top             =   6720
      Visible         =   0   'False
      Width           =   4335
   End
   Begin VB.PictureBox UlqM 
      AutoRedraw      =   -1  'True
      Enabled         =   0   'False
      Height          =   1215
      Index           =   7
      Left            =   240
      Picture         =   "Game.frx":86EDF
      ScaleHeight     =   77
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   733
      TabIndex        =   43
      Top             =   4200
      Visible         =   0   'False
      Width           =   11055
   End
   Begin VB.PictureBox UlqM 
      AutoRedraw      =   -1  'True
      Enabled         =   0   'False
      Height          =   1215
      Index           =   6
      Left            =   6000
      Picture         =   "Game.frx":8C3F5
      ScaleHeight     =   77
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   669
      TabIndex        =   41
      Top             =   6120
      Visible         =   0   'False
      Width           =   10095
   End
   Begin VB.PictureBox UlqS 
      AutoRedraw      =   -1  'True
      Enabled         =   0   'False
      Height          =   1215
      Index           =   6
      Left            =   5520
      Picture         =   "Game.frx":91A83
      ScaleHeight     =   77
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   677
      TabIndex        =   40
      Top             =   6840
      Visible         =   0   'False
      Width           =   10215
   End
   Begin VB.PictureBox UlqM 
      AutoRedraw      =   -1  'True
      Enabled         =   0   'False
      Height          =   1215
      Index           =   5
      Left            =   3480
      Picture         =   "Game.frx":9669F
      ScaleHeight     =   77
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   389
      TabIndex        =   39
      Top             =   7680
      Visible         =   0   'False
      Width           =   5895
   End
   Begin VB.PictureBox UlqS 
      AutoRedraw      =   -1  'True
      Enabled         =   0   'False
      Height          =   1215
      Index           =   5
      Left            =   3120
      Picture         =   "Game.frx":98DBE
      ScaleHeight     =   77
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   389
      TabIndex        =   38
      Top             =   7560
      Visible         =   0   'False
      Width           =   5895
   End
   Begin VB.PictureBox UlqM 
      AutoRedraw      =   -1  'True
      Enabled         =   0   'False
      Height          =   1215
      Index           =   4
      Left            =   8280
      Picture         =   "Game.frx":9B314
      ScaleHeight     =   77
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   389
      TabIndex        =   37
      Top             =   7080
      Visible         =   0   'False
      Width           =   5895
   End
   Begin VB.PictureBox UlqS 
      AutoRedraw      =   -1  'True
      Enabled         =   0   'False
      Height          =   1215
      Index           =   4
      Left            =   8280
      Picture         =   "Game.frx":9D90B
      ScaleHeight     =   77
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   389
      TabIndex        =   36
      Top             =   7080
      Visible         =   0   'False
      Width           =   5895
   End
   Begin VB.PictureBox UlqM 
      AutoRedraw      =   -1  'True
      Enabled         =   0   'False
      Height          =   1215
      Index           =   3
      Left            =   9120
      Picture         =   "Game.frx":9FC9E
      ScaleHeight     =   77
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   221
      TabIndex        =   35
      Top             =   3600
      Visible         =   0   'False
      Width           =   3375
   End
   Begin VB.PictureBox UlqS 
      AutoRedraw      =   -1  'True
      Enabled         =   0   'False
      Height          =   1215
      Index           =   3
      Left            =   11520
      Picture         =   "Game.frx":A1648
      ScaleHeight     =   77
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   229
      TabIndex        =   34
      Top             =   3600
      Visible         =   0   'False
      Width           =   3495
   End
   Begin VB.PictureBox UlqM 
      AutoRedraw      =   -1  'True
      Enabled         =   0   'False
      Height          =   855
      Index           =   2
      Left            =   6240
      Picture         =   "Game.frx":A2AE3
      ScaleHeight     =   53
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   77
      TabIndex        =   33
      Top             =   2280
      Visible         =   0   'False
      Width           =   1215
   End
   Begin VB.PictureBox UlqS 
      AutoRedraw      =   -1  'True
      Enabled         =   0   'False
      Height          =   855
      Index           =   2
      Left            =   6240
      Picture         =   "Game.frx":A34CB
      ScaleHeight     =   53
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   77
      TabIndex        =   32
      Top             =   2280
      Visible         =   0   'False
      Width           =   1215
   End
   Begin VB.PictureBox UlqM 
      AutoRedraw      =   -1  'True
      Enabled         =   0   'False
      Height          =   1095
      Index           =   1
      Left            =   4920
      Picture         =   "Game.frx":A3D55
      ScaleHeight     =   69
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   165
      TabIndex        =   31
      Top             =   1200
      Visible         =   0   'False
      Width           =   2535
   End
   Begin VB.PictureBox UlqS 
      AutoRedraw      =   -1  'True
      Enabled         =   0   'False
      Height          =   1095
      Index           =   1
      Left            =   4920
      Picture         =   "Game.frx":A518D
      ScaleHeight     =   69
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   165
      TabIndex        =   30
      Top             =   1200
      Visible         =   0   'False
      Width           =   2535
   End
   Begin VB.PictureBox UlqS 
      AutoRedraw      =   -1  'True
      Enabled         =   0   'False
      Height          =   1215
      Index           =   0
      Left            =   4680
      Picture         =   "Game.frx":A64F2
      ScaleHeight     =   77
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   189
      TabIndex        =   29
      Top             =   0
      Visible         =   0   'False
      Width           =   2895
   End
   Begin VB.PictureBox UlqM 
      AutoRedraw      =   -1  'True
      Enabled         =   0   'False
      Height          =   1215
      Index           =   0
      Left            =   4440
      Picture         =   "Game.frx":A789F
      ScaleHeight     =   77
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   189
      TabIndex        =   28
      Top             =   0
      Visible         =   0   'False
      Width           =   2895
   End
   Begin VB.PictureBox GrimS 
      AutoRedraw      =   -1  'True
      Enabled         =   0   'False
      Height          =   855
      Index           =   11
      Left            =   13800
      Picture         =   "Game.frx":A9259
      ScaleHeight     =   795
      ScaleWidth      =   795
      TabIndex        =   27
      Top             =   6120
      Visible         =   0   'False
      Width           =   855
   End
   Begin VB.PictureBox GrimM 
      AutoRedraw      =   -1  'True
      Enabled         =   0   'False
      Height          =   975
      Index           =   11
      Left            =   13800
      Picture         =   "Game.frx":A9B9E
      ScaleHeight     =   61
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   53
      TabIndex        =   26
      Top             =   6120
      Visible         =   0   'False
      Width           =   855
   End
   Begin VB.PictureBox GrimM 
      AutoRedraw      =   -1  'True
      Enabled         =   0   'False
      Height          =   975
      Index           =   10
      Left            =   10080
      Picture         =   "Game.frx":AA3F5
      ScaleHeight     =   61
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   53
      TabIndex        =   25
      Top             =   3840
      Visible         =   0   'False
      Width           =   855
   End
   Begin VB.PictureBox GrimS 
      AutoRedraw      =   -1  'True
      Enabled         =   0   'False
      Height          =   975
      Index           =   10
      Left            =   10080
      Picture         =   "Game.frx":AAD6E
      ScaleHeight     =   915
      ScaleWidth      =   915
      TabIndex        =   24
      Top             =   3840
      Visible         =   0   'False
      Width           =   975
   End
   Begin VB.Frame GBReiatsu 
      BackColor       =   &H00FFFF00&
      BorderStyle     =   0  'None
      Caption         =   "Frame1"
      Height          =   255
      Left            =   1080
      TabIndex        =   22
      Top             =   120
      Width           =   135
   End
   Begin VB.PictureBox GrimM 
      AutoRedraw      =   -1  'True
      Enabled         =   0   'False
      Height          =   2775
      Index           =   9
      Left            =   4680
      Picture         =   "Game.frx":AB746
      ScaleHeight     =   181
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   789
      TabIndex        =   21
      Top             =   5280
      Visible         =   0   'False
      Width           =   11895
   End
   Begin VB.PictureBox GrimS 
      AutoRedraw      =   -1  'True
      Enabled         =   0   'False
      Height          =   2775
      Index           =   9
      Left            =   3840
      Picture         =   "Game.frx":B68FE
      ScaleHeight     =   2715
      ScaleWidth      =   11835
      TabIndex        =   20
      Top             =   6240
      Visible         =   0   'False
      Width           =   11895
   End
   Begin VB.PictureBox GrimS 
      AutoRedraw      =   -1  'True
      Enabled         =   0   'False
      Height          =   1095
      Index           =   8
      Left            =   14640
      Picture         =   "Game.frx":C39A4
      ScaleHeight     =   1035
      ScaleWidth      =   4395
      TabIndex        =   19
      Top             =   7560
      Visible         =   0   'False
      Width           =   4455
   End
   Begin VB.PictureBox GrimM 
      AutoRedraw      =   -1  'True
      Enabled         =   0   'False
      Height          =   1095
      Index           =   8
      Left            =   14760
      Picture         =   "Game.frx":C64DF
      ScaleHeight     =   69
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   293
      TabIndex        =   18
      Top             =   7080
      Visible         =   0   'False
      Width           =   4455
   End
   Begin VB.PictureBox SCero 
      AutoRedraw      =   -1  'True
      Enabled         =   0   'False
      Height          =   1215
      Left            =   11400
      Picture         =   "Game.frx":C8527
      ScaleHeight     =   1155
      ScaleWidth      =   5835
      TabIndex        =   17
      Top             =   6120
      Visible         =   0   'False
      Width           =   5895
   End
   Begin VB.PictureBox MCero 
      AutoRedraw      =   -1  'True
      Enabled         =   0   'False
      Height          =   1215
      Left            =   12720
      Picture         =   "Game.frx":CA22D
      ScaleHeight     =   77
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   389
      TabIndex        =   16
      Top             =   4800
      Visible         =   0   'False
      Width           =   5895
   End
   Begin VB.PictureBox GrimM 
      AutoRedraw      =   -1  'True
      Enabled         =   0   'False
      Height          =   975
      Index           =   7
      Left            =   11160
      Picture         =   "Game.frx":CC3F1
      ScaleHeight     =   61
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   293
      TabIndex        =   15
      Top             =   3840
      Visible         =   0   'False
      Width           =   4455
   End
   Begin VB.PictureBox GrimS 
      AutoRedraw      =   -1  'True
      Enabled         =   0   'False
      Height          =   975
      Index           =   7
      Left            =   8880
      Picture         =   "Game.frx":CE594
      ScaleHeight     =   915
      ScaleWidth      =   4395
      TabIndex        =   14
      Top             =   6120
      Visible         =   0   'False
      Width           =   4455
   End
   Begin VB.PictureBox GrimS 
      AutoRedraw      =   -1  'True
      Enabled         =   0   'False
      Height          =   1095
      Index           =   6
      Left            =   8880
      Picture         =   "Game.frx":D0975
      ScaleHeight     =   1035
      ScaleWidth      =   7755
      TabIndex        =   13
      Top             =   6120
      Visible         =   0   'False
      Width           =   7815
   End
   Begin VB.PictureBox GrimM 
      AutoRedraw      =   -1  'True
      Enabled         =   0   'False
      Height          =   1215
      Index           =   6
      Left            =   8520
      Picture         =   "Game.frx":D4F9A
      ScaleHeight     =   77
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   525
      TabIndex        =   12
      Top             =   6240
      Visible         =   0   'False
      Width           =   7935
   End
   Begin VB.PictureBox GrimS 
      AutoRedraw      =   -1  'True
      Enabled         =   0   'False
      Height          =   1335
      Index           =   5
      Left            =   15600
      Picture         =   "Game.frx":D8BC0
      ScaleHeight     =   85
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   165
      TabIndex        =   11
      Top             =   6120
      Visible         =   0   'False
      Width           =   2535
   End
   Begin VB.PictureBox GrimM 
      AutoRedraw      =   -1  'True
      Enabled         =   0   'False
      Height          =   1215
      Index           =   5
      Left            =   16920
      Picture         =   "Game.frx":DA677
      ScaleHeight     =   77
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   157
      TabIndex        =   10
      Top             =   3720
      Visible         =   0   'False
      Width           =   2415
   End
   Begin VB.PictureBox GrimM 
      AutoRedraw      =   -1  'True
      Enabled         =   0   'False
      Height          =   975
      Index           =   4
      Left            =   10680
      Picture         =   "Game.frx":DBE6C
      ScaleHeight     =   61
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   413
      TabIndex        =   9
      Top             =   6240
      Visible         =   0   'False
      Width           =   6255
   End
   Begin VB.PictureBox GrimS 
      AutoRedraw      =   -1  'True
      Enabled         =   0   'False
      Height          =   1095
      Index           =   4
      Left            =   10800
      Picture         =   "Game.frx":DEE2F
      ScaleHeight     =   69
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   413
      TabIndex        =   8
      Top             =   3600
      Visible         =   0   'False
      Width           =   6255
   End
   Begin VB.PictureBox GrimS 
      AutoRedraw      =   -1  'True
      Enabled         =   0   'False
      Height          =   1095
      Index           =   3
      Left            =   15360
      Picture         =   "Game.frx":E2150
      ScaleHeight     =   69
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   165
      TabIndex        =   7
      Top             =   6240
      Visible         =   0   'False
      Width           =   2535
   End
   Begin VB.PictureBox GrimM 
      AutoRedraw      =   -1  'True
      Enabled         =   0   'False
      Height          =   975
      Index           =   3
      Left            =   15840
      Picture         =   "Game.frx":E379C
      ScaleHeight     =   61
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   165
      TabIndex        =   6
      Top             =   7560
      Visible         =   0   'False
      Width           =   2535
   End
   Begin VB.PictureBox GrimM 
      AutoRedraw      =   -1  'True
      Enabled         =   0   'False
      Height          =   735
      Index           =   2
      Left            =   15960
      Picture         =   "Game.frx":E4D83
      ScaleHeight     =   45
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   45
      TabIndex        =   5
      Top             =   3840
      Visible         =   0   'False
      Width           =   735
   End
   Begin VB.PictureBox GrimS 
      AutoRedraw      =   -1  'True
      Enabled         =   0   'False
      Height          =   735
      Index           =   2
      Left            =   15960
      Picture         =   "Game.frx":E55CD
      ScaleHeight     =   45
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   45
      TabIndex        =   4
      Top             =   3840
      Visible         =   0   'False
      Width           =   735
   End
   Begin VB.PictureBox GrimS 
      AutoRedraw      =   -1  'True
      Enabled         =   0   'False
      Height          =   975
      Index           =   1
      Left            =   14640
      Picture         =   "Game.frx":E5E8E
      ScaleHeight     =   61
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   237
      TabIndex        =   3
      Top             =   6120
      Visible         =   0   'False
      Width           =   3615
   End
   Begin VB.PictureBox GrimM 
      AutoRedraw      =   -1  'True
      Enabled         =   0   'False
      Height          =   975
      Index           =   1
      Left            =   15840
      Picture         =   "Game.frx":E7A3C
      ScaleHeight     =   61
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   237
      TabIndex        =   2
      Top             =   2760
      Visible         =   0   'False
      Width           =   3615
   End
   Begin VB.Timer tmrMove 
      Interval        =   1
      Left            =   11280
      Top             =   6240
   End
   Begin VB.PictureBox GrimM 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Enabled         =   0   'False
      Height          =   975
      Index           =   0
      Left            =   16440
      Picture         =   "Game.frx":E9534
      ScaleHeight     =   61
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   159
      TabIndex        =   1
      Top             =   8040
      Visible         =   0   'False
      Width           =   2445
   End
   Begin VB.PictureBox GrimS 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Enabled         =   0   'False
      Height          =   975
      Index           =   0
      Left            =   16920
      Picture         =   "Game.frx":EAB13
      ScaleHeight     =   61
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   159
      TabIndex        =   0
      Top             =   5880
      Visible         =   0   'False
      Width           =   2445
   End
   Begin VB.Label ULReiatsu 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "Bodoni MT Condensed"
         Size            =   26.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   615
      Left            =   9600
      TabIndex        =   56
      Top             =   0
      Width           =   195
   End
   Begin VB.Label GLReiatsu 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "Bodoni MT Condensed"
         Size            =   26.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   615
      Left            =   480
      TabIndex        =   23
      Top             =   0
      Width           =   195
   End
   Begin VB.Menu mnuMain 
      Caption         =   "Main"
      Begin VB.Menu mnuExit 
         Caption         =   "Exit"
      End
      Begin VB.Menu mnuControls 
         Caption         =   "Controls"
      End
      Begin VB.Menu mnuScore 
         Caption         =   "Scores"
      End
      Begin VB.Menu mnuPS 
         Caption         =   "Previous"
      End
   End
End
Attribute VB_Name = "Game"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

'User Defined Data type
Private Type Person
'Position
    X As Single
    Y As Single
'Dimensions
    W(0 To 15) As Single
    H(0 To 15) As Single
'Frames
    FX(0 To 15) As Integer
    FY(0 To 15) As Integer
'Sprite number
    Num As Integer
End Type


Private Type Projectile
'Positions
    X(0 To 1) As Single
    Y(0 To 1) As Single
'Dimensions
    W As Single
    H As Single
'Frame numbers
    FX As Integer
    FY As Integer
'Sprite num
    Num As Integer
End Type

Enum Positions

'Constants
    Stand = 0
    Run = 1
    Duck = 2
    Jump = 3
    Attack = 4
    Heavy = 5
    Special = 6
    CPose = 7
    Reiatsu = 8
    Transform = 9
    TStance = 10
    Shooter = 11
    Dash = 12
    Dead = 13
    Win = 14
    
End Enum

'Variables
    Dim Hit As Boolean, Hit2 As Boolean 'Cero Collision
    Dim Death(1 To 2) As Boolean ' If Dead
    Dim Dasher As Boolean, Dasher2 As Boolean ' Speeding up
    Dim Counter As Integer
    Dim Fire As Boolean
    Dim Possible As Boolean, Possible2 As Boolean  'Checks power level
    Dim Teleport As Boolean 'Ulquiorra Teleport
    Dim Grim As Person, Cero As Projectile, Final As Projectile, Ulq As Person, COscuras As Projectile  ' User defined types
    Dim Change As Boolean, Change2 As Boolean  'Transformation
    Dim Spare As Long, Delay As Long 'Animation Delays
    Dim Fac2 As Integer 'Frame spacing
    Dim Jumper As Boolean 'Jump code
    Dim Factor As Integer 'Sprite omission
    Dim Shoot As Boolean 'Cero Shoot
    Dim Resist(1 To 2) As Integer 'Damage Resistance
    Dim Fly As Boolean ' Ulquiorra Fly
    Dim PX As Single, PY As Single 'Teleport: Previous position
    Dim Retry As Integer 'Msgbox Input
    Dim Score(1 To 2) As Integer 'Score
    Dim Alternate As Boolean ' Ulquoirra Transform Enable/Disable
    Dim Ground(1 To 2) As Boolean, Speed(1 To 2) As Single
    Const Gravity As Single = 1
    Dim Max As Single

Private Sub Dead_Timer()
'If not dead
    If Death(2) = False And Death(1) = False Then Exit Sub
tmr1.Enabled = False
tmr.Enabled = False


'Ulquiorra is dead
    If Death(2) = True Then

        Grim.Num = Win
    
        If Ulq.FX(Dead) > -1 And Retry = 0 Then
        
            Ulq.Num = Dead
            Ulq.FX(Dead) = Ulq.FX(Dead) - 1
    
        End If

        If Grim.FX(Win) < 5 Then Grim.FX(Win) = Grim.FX(Win) + 1

    'Animation FInished
        If Grim.FX(Win) = 5 Then
        
            
        'Ask user if they wish to continue
            If Retry = 0 Then Retry = MsgBox("Ulquiorra is dead. Try again?", vbYesNo, "REMATCH!!!")

            If Retry = vbNo Then
                Score(1) = Score(1) + 1
                Call Store
            End If
            
            If Retry = vbYes Then
         'Resurect
                Ulq.Num = Dead
                Ulq.FX(Dead) = Ulq.FX(Dead) + 1
        
            If Ulq.FX(Dead) = 3 Then
            
            'Reset
                UHealth.Width = 1200
                Grim.FX(Win) = 0
                Ulq.FX(Dead) = 4
                Death(2) = False
                Grim.Num = Stand
                Ulq.Num = Stand
                Retry = 0
                Score(1) = Score(1) + 1
                tmr1.Enabled = True
                tmr.Enabled = True
                Exit Sub
        
            End If

        End If

    End If

'If Grimmjow is dead
    ElseIf Death(1) = True Then

        Ulq.Num = Win

        If Grim.FX(Dead) < 5 And Retry = 0 Then
    
            Grim.Num = Dead
            Grim.FX(Dead) = Grim.FX(Dead) + 1
            Grim.X = Grim.X - 10
        
        End If

        If Ulq.FX(Win) < 5 Then Ulq.FX(Win) = Ulq.FX(Win) + 1

    'Animation finished
        If Ulq.FX(Win) = 5 Then
        'Ask user if they wish to continue
            If Retry = 0 Then Retry = MsgBox("Grimmjow is dead. Try again?", vbYesNo, "REMATCH!!!")

        
            If Retry = vbNo Then
            'Update Score
                Score(2) = Score(2) + 1
                Call Store
            End If
            
            If Retry = vbYes Then
            'Reserect
                Grim.Num = Dead
                Grim.FX(Dead) = Grim.FX(Dead) - 1
        
                If Grim.FX(Dead) <= 0 Then
                
                'Reset
                    GHealth.Width = 1200
                    Death(1) = False
                    Grim.FX(Dead) = 0
                    Ulq.FX(Win) = 0
                    Ulq.Num = Stand
                    Grim.Num = Stand
                    Retry = 0
                    Score(2) = Score(2) + 1
                    tmr1.Enabled = True
                    tmr.Enabled = True

                    Exit Sub
        
                End If
            End If
        End If
    End If

End Sub

Private Sub Grimmjow()
If Death(2) = True Or Death(1) = True Then Exit Sub

'Grimjow Moves
    If GetAsyncKeyState(vbKeyD) Then 'Right Run
        If Change = True Then Exit Sub
        
        If Jumper = True Then 'Jump move sprite
        'Jump Dash
            If GetAsyncKeyState(vbKeyZ) Then
                Dasher2 = True
                Grim.X = Grim.X + 35
                Usage (5)
            End If
    
            Grim.X = Grim.X + 10
            Grim.FX(Jump) = 2
            Exit Sub
        
        End If
    
    'Pic num
        Grim.Num = Run
    'Position increase
        Grim.X = Grim.X + 10
    'Bitblt
        Grim.FX(Run) = Grim.FX(Run) + 1
        If Grim.FX(Run) > 3 Then Grim.FX(Run) = 0

    'Dash
        If GetAsyncKeyState(vbKeyZ) Then
            Grim.X = Grim.X + 35
            Usage (5)
            Dasher = True
        End If

''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    ElseIf GetAsyncKeyState(vbKeyA) Then 'Left run
        If Change = True Then Exit Sub

    'Jump move sprites
        If Jumper = True Then
        
            If GetAsyncKeyState(vbKeyZ) Then
            'Dash
                Dasher2 = True
                Grim.X = Grim.X - 35
                Usage (5)
                Dasher2 = False
            End If
            
        'Animation
            Grim.X = Grim.X - 10
            Grim.FX(Jump) = 0
            Exit Sub
        End If

    'Pic Num
        Grim.Num = Run
    'Position decrease
        Grim.X = Grim.X - 10
    'Bitblt
        Grim.FX(Run) = Grim.FX(Run) - 1
        If Grim.FX(Run) < 0 Then Grim.FX(Run) = 3
    
    'Dash
    If GetAsyncKeyState(vbKeyZ) Then
        Grim.X = Grim.X - 35
        Usage (5)
        Dasher = True
    End If

'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    ElseIf GetAsyncKeyState(vbKeyS) Then 'Crouch
        If Change = True Then Exit Sub

    'Pic Num
        Grim.Num = Duck
        Grim.Y = Max + 20
        Resist(1) = 7

''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    ElseIf GetAsyncKeyState(vbKeyW) Then 'Jump
        If Change = True Or Jumper = True Then Exit Sub

    If Ground(1) = True Then
        Grim.Num = Jump
        Jumper = True
        Grim.FX(Jump) = 1
        Speed(1) = -35
        Grim.Y = Grim.Y - 10
    End If


'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    ElseIf GetAsyncKeyState(vbKeyE) Then 'Light Attacks
        If Change = True Then Exit Sub

    'Pic num
        Grim.Num = Attack
    'Delay
        Spare = Spare + 1
        
        If Spare > 3 Then
            UlqCollision (10)
        'Frame Change And Reset
            Grim.FX(Attack) = Grim.FX(Attack) + 1
            If Grim.FX(Attack) > 6 Then Grim.FX(Attack) = 0
        'Spare reset
            Spare = 0
    
        End If

'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    ElseIf GetAsyncKeyState(vbKeyR) Then 'Heavy Attacks
        If Change = True Then Exit Sub

    'Pic num
        Grim.Num = Heavy
    'Delay
        Spare = Spare + 1
    
        If Spare > 7 Then
        'Frame Change
            Grim.FX(Heavy) = Grim.FX(Heavy) + 1
            If Grim.FX(Heavy) > 2 Then
            'Reset and Damage
                Grim.FX(Heavy) = 0
                UlqCollision (15)
            End If
        'Delay reset
            Spare = 0
        End If

'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    ElseIf GetAsyncKeyState(vbKeyT) Then 'Special Attack (consumes reiatsu)
        If Change = True Or Possible = False Then Exit Sub 'If there is not enough reiatsu

    'Pic num
        Grim.Num = Special
    'Reiatsu usage
        Call Usage(25)
    'Delay
        Spare = Spare + 1
    
        If Spare > 2 Then
            UlqCollision (30)
        'Frame Change
            Grim.FX(Special) = Grim.FX(Special) + 1
            If Grim.FX(Special) > 5 Then Grim.FX(Special) = 0
        'Delay reset
            Spare = 0
        End If

'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    ElseIf GetAsyncKeyState(vbKeyY) Then 'Cero
        If Possible = False Or Shoot = True Or Change = True Then Exit Sub

    'Pic num
        Grim.Num = CPose
    'Delay
        Spare = Spare + 1
        If Spare > 10 Then
        'Frame Change
            Grim.FX(CPose) = Grim.FX(CPose) + 1
            If Grim.FX(CPose) > 4 Then Grim.FX(CPose) = 0
        'Cero Attack
            Call CAttack(0)
        End If

'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    ElseIf GetAsyncKeyState(vbKeyF) Then 'Reiatsu charge
        If Jumper = True Or Change = True Then Exit Sub

    'Pic num
        Grim.Num = Reiatsu
    'Charge Reiatsu
        Call Charge
        
    'Delay
        Spare = Spare + 1
        
        If Spare > 15 Then
        'Frame Change
            Grim.FX(Reiatsu) = 1
        Else
            Grim.FX(Reiatsu) = 0
        End If

'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    ElseIf GetAsyncKeyState(vbKeyG) Then 'Pantera Transform
        If Jumper = True Or Change = True Then Exit Sub

    'Pic num
        Grim.Num = Transform
    'Pre transform
        Grim.W(Transform) = 66
    'Delay
        Spare = Spare + 1
    
        If Spare > 2 Then
        'Sword Scrath(press and hold)
            If Grim.FX(Transform) < 4 Then Grim.FX(Transform) = 1 + Grim.FX(Transform)
            Spare = 0
        End If

'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    ElseIf GetAsyncKeyState(vbKeyQ) Then 'Cero Osc
        If Possible = False Or Change = False Then Exit Sub

    'Position
        Final.X(0) = Grim.X + Grim.W(TStance) + 30
        Final.Y(0) = Grim.Y + Grim.H(TStance) / 2

    'Increase Cero Radius
        If Final.Num < 40 Then Final.Num = Final.Num + 1

    'Cero
        Circle (Final.X(0), Final.Y(0)), Final.Num, vbBlue

    
    End If


End Sub

Private Sub Ulquiorra()
'Ulquiorra moves
    If GetAsyncKeyState(vbKeyLeft) Then 'Left Run
        If Change2 = True Then Exit Sub
        
        If Fly = True Then
            Ulq.X = Ulq.X - 10
            Exit Sub
        End If

    'Pic Num
        Ulq.Num = Run
    'Position
        Ulq.X = Ulq.X - 15
    'Frame Change
        Ulq.FX(Run) = Ulq.FX(Run) - 1
        If Ulq.FX(Run) < 0 Then Ulq.FX(Run) = 1

''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    ElseIf GetAsyncKeyState(vbKeyRight) Then 'Right run
        If Change2 = True Then Exit Sub

        If Fly = True Then
            Ulq.X = Ulq.X + 10
            Exit Sub
        End If

    'Pic Num
        Ulq.Num = Run
    'Position
        Ulq.X = Ulq.X + 15
    'Frame Change
        Ulq.FX(Run) = Ulq.FX(Run) + 1
        If Ulq.FX(Run) > 1 Then Ulq.FX(Run) = 0

'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    ElseIf GetAsyncKeyState(vbKeyDown) Then 'Crouch
        If Change2 = True Then Exit Sub
    'Crouch
        Ulq.Num = Duck
        Ulq.Y = Max + 20
        Resist(2) = 6

'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    ElseIf GetAsyncKeyState(vbKeyUp) Then 'Fly
        If Change2 = True Or Fly = True Then Exit Sub
    
    If Ground(2) = True Then
        Ulq.Num = Jump
        Fly = True
        Speed(2) = -35
        Ulq.Y = Ulq.Y - 1
    End If
            
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    ElseIf GetAsyncKeyState(vbKeyU) Then 'Light Attack
        If Change2 = True Then Exit Sub

    'Pic num
        Ulq.Num = Attack
        Fac2 = -12
    'Delay
        Delay = Delay + 1

        If Delay > 2 Then
            Call GrimCollision(5)
        'Animation
            Ulq.FX(Attack) = Ulq.FX(Attack) - 1
            If Ulq.FX(Attack) < 0 Then Ulq.FX(Attack) = 3
            
            If Ulq.FX(Attack) = 3 Then
                Ulq.W(Attack) = 92
            Else
                Ulq.W(Attack) = 102
            End If
       'Reset Delay
            Delay = 0
        End If

'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    ElseIf GetAsyncKeyState(vbKeyI) Then 'Heavy Attack
        If Change2 = True Then Exit Sub
    'Pic num
        Ulq.Num = Heavy
        Fac2 = -12
    'Delay
        Delay = Delay + 1

        If Delay > 7 Then
            Ulq.FX(Heavy) = Ulq.FX(Heavy) - 1
            If Ulq.FX(Heavy) < 0 Then
                Ulq.FX(Heavy) = 3
                Call GrimCollision(10)
            End If
       'Dimension change
            If Ulq.FX(Heavy) = 3 Then
                Ulq.W(Heavy) = 95
            Else
                Ulq.W(Heavy) = 100
            End If
        'Reset Delay
            Delay = 0
        End If

''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    ElseIf GetAsyncKeyState(vbKeyO) Then 'Special Attack
        If Change2 = True Or Possible2 = False Then Exit Sub
    
    'Pic Num
        Ulq.Num = Special
        Fac2 = -9
    'Delay
        Delay = Delay + 1
        Usage2 (10)

        If Delay > 1 Then
            Call GrimCollision(20)
        'Animation
            Ulq.FX(Special) = Ulq.FX(Special) - 1
            Ulq.W(Special) = Ulq.W(Special) + 2
            
            If Ulq.FX(Special) < 0 Then
                Ulq.FX(Special) = 6
                Ulq.W(Special) = 92
            End If
        
        'Reset Delay
            Delay = 0
        
        End If

''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    ElseIf GetAsyncKeyState(13) Then 'Teleport
        If Change2 = True Or Possible2 = False Or Teleport = True Then Exit Sub

        Usage2 (15)
        Teleport = True
        Call TP

'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    ElseIf GetAsyncKeyState(vbKeyP) Then 'Cero
        If Change2 = True Or Possible2 = False Then Exit Sub
    'Pic num
        Ulq.Num = CPose
    'Delay
        Delay = Delay + 1

        If Delay > 2 Then
            If Ulq.FX(CPose) <> 0 Then
               Ulq.FX(CPose) = Ulq.FX(CPose) - 1
            Else
                Call Firing
            End If
            
            Delay = 0
        End If

'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    ElseIf GetAsyncKeyState(vbKeyJ) Then 'Sonido slash
        If Change2 = True Or Possible2 = False Then Exit Sub
    'Pic num
        Ulq.Num = Transform
    'Delay
        Delay = Delay + 1

    If Delay > 5 Then
        If Ulq.FX(Transform) < 5 And Ulq.FY(Transform) = 0 Then
            Ulq.FX(Transform) = Ulq.FX(Transform) + 1
        Else
            Ulq.FY(Transform) = 1
            Usage2 (100)
        End If

        Delay = 0
    End If

    If Ulq.FY(Transform) = 1 Then

        Ulq.FX(Transform) = 4
        Ulq.X = Ulq.X - 20
        GrimCollision (200)

    End If

''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    ElseIf GetAsyncKeyState(vbKeySpace) Then
        If Change2 = True Then Exit Sub
    'Pic num
        Ulq.Num = Reiatsu
        Ulq.FX(Reiatsu) = 2
    'Increase health
        If UHealth.Width < 1200 Then UHealth.Width = UHealth.Width + 1
    'Charge
        Call Charge2

    
    End If
End Sub



Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer)
Dasher = False
If Death(2) = True Or Death(1) = True Then Exit Sub

'Crouch to Stand
If KeyCode = vbKeyS Then
    Jumper = False
    Grim.Y = Max - 10
    Resist(1) = 0
End If
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
If KeyCode = vbKeyF Then 'Reiatsu charge stop
'Effects
    Do Until Grim.FX(Reiatsu) = 4
    'Delay
        DoEvents
        Sleep (50)
    'Action
        Grim.FX(Reiatsu) = Grim.FX(Reiatsu) + 1
    Loop

    Spare = 0

End If

'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
If KeyCode = vbKeyQ Then 'Final cero shoot
Usage (2)
    If Possible = False Then Change = False
    If Change = False Then Exit Sub

'Preset
    Me.DrawWidth = 100
    Final.FX = Final.X(0)
    Final.FY = Final.Y(0)

'Shoot
    Do Until Final.FX > Me.ScaleWidth
    Call UlqCollision(0)
    'Action
        If Final.Num > 0 Then Final.Num = Final.Num - 1
        Final.FX = Final.FX + 20
    'Display
        Circle (Final.X(0), Final.Y(0)), Final.Num, vbBlue
        Line (Final.X(0), Final.Y(0))-(Final.FX, Final.FY), &HC0C000
        If Me.DrawWidth > 1 Then Me.DrawWidth = Me.DrawWidth - 1

    'Delay
        DoEvents
    
    Loop

'Decrease Reiatsu
    Usage (300)
'Remove Transformation
    Change = False
    Factor = 0
    Resist(1) = 0
'Final.X = -2000
 'Final.FX = -300

    If Change2 = True Then Call ChangeBack

End If

'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
If KeyCode = vbKeyG Then 'Transformation
    If Possible = False Then Exit Sub

'Preset
    Factor = -5
    Grim.FX(Transform) = 0
    Grim.FY(Transform) = 1
    Grim.W(Transform) = 85
'Reiatsu use
    Usage (200)

    Do Until Grim.FX(Transform) = 5
    'Delay
        DoEvents
        Sleep (50)
    'Action
        Grim.FX(Transform) = Grim.FX(Transform) + 1
        Grim.W(Transform) = Grim.W(Transform) + 5
    Loop


'After
    Change = True
    Grim.W(Transform) = Grim.W(Transform) - 7
    Grim.FX(Transform) = 0
    Grim.FY(Transform) = 0
    Factor = 30
    Resist(1) = 100
End If

'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

If KeyCode = vbKeyW Then Grim.FX(Jump) = 1

'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

If KeyCode = vbKeyDown Then
    If Change2 = True Then Exit Sub
'Crouch to Stand
    Ulq.Num = Stand
    Fly = False
    Ulq.Y = Max
    Resist(2) = 0
End If

'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
If KeyCode = vbKeySpace Then
    If Change2 = True Then Exit Sub
'Back to stand
    Do Until Ulq.FX(Reiatsu) = 0
    'Delay
        DoEvents
        Sleep (50)
    'Action
        Ulq.FX(Reiatsu) = Ulq.FX(Reiatsu) - 1
    Loop
End If

''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
If KeyCode = vbKeyP Then Ulq.FX(CPose) = 6

'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
If KeyCode = vbKeyJ Then
    If Change2 = True Then Exit Sub
'Remove Sonido
    Do Until Ulq.FX(Transform) = -1
    'Delay
        DoEvents
        Sleep (20)
    'Dimension control
        If Ulq.FX(Transform) < 3 Then
            Ulq.W(Transform) = 77
        Else
            Ulq.W(Transform) = 105
        End If
    'Action
        Ulq.FX(Transform) = Ulq.FX(Transform) - 1
        Ulq.W(Transform) = Ulq.W(Transform) - 2
    Loop

'After
    Ulq.FY(Transform) = 0
    Ulq.FX(Transform) = 0
    Ulq.W(Transform) = 103

End If

'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
If KeyCode = vbKeyK Then
    If Alternate = True Then
        Call ChangeBack
        Exit Sub
    End If

    If Change2 = True Or Possible2 = False Then Exit Sub
'Pre Transform
    Resist(2) = 200
    Ulq.Num = TStance
    Usage2 (200)
'Transform
    Do Until Ulq.FX(TStance) = 2 And Ulq.FY(TStance) = 1
    'Delay
        DoEvents
       Sleep (100)
    'Action
        Ulq.FX(TStance) = Ulq.FX(TStance) - 1
        If Ulq.FX(TStance) < 0 Then
            Ulq.FX(TStance) = 3
            Ulq.W(TStance) = 100
            Ulq.FY(TStance) = 1
        End If
    Loop
'After
    Change2 = True
    Alternate = True
End If

Fac2 = 0
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
'Defult display
    'Grimmjow
        If Change = True Then
            Grim.Num = TStance
            Factor = -12
        Else
            If Jumper = False Then Grim.Num = Stand
        End If

    'Ulquiorra
        If Fly = False And Death(2) = False And Change2 = False Then Ulq.Num = Stand
        If Change2 = True Then Ulq.Num = TStance

End Sub

Private Sub Form_Load()
'Grimmjows sprites

    Grim.FX(Stand) = 3
    Max = 600
    'Position
        Grim.X = 30
        Grim.Y = 500
    
    'Dimensions
        Grim.W(Stand) = 37
        Grim.H(Stand) = 55
        
            Grim.W(Run) = 53
            Grim.H(Run) = 55
            
                Grim.W(Duck) = 35
                Grim.H(Duck) = 40

                    Grim.W(Jump) = 52
                    Grim.H(Jump) = 55

                        Grim.W(Attack) = 57
                        Grim.H(Attack) = 57

                            Grim.W(Heavy) = 47
                            Grim.H(Heavy) = 70

                                Grim.W(Special) = 85
                                Grim.H(Special) = 57

                                    Grim.W(CPose) = 55
                                    Grim.H(CPose) = 52

                                        Grim.W(Reiatsu) = 71
                                        Grim.H(Reiatsu) = 69

                                            Grim.W(TStance) = 66
                                            Grim.H(TStance) = 48
                                            
                                                Grim.W(Dead) = 70
                                                Grim.H(Dead) = 58

                                                    Grim.W(Shooter) = 45
                                                    Grim.H(Shooter) = 48
                                                
                                                        Grim.W(Win) = 105
                                                        Grim.H(Win) = 60
                                                
                                                            Grim.H(Transform) = 89
                                                
                                                
                                                

'Cero
    Cero.W = 75
    Cero.H = 80
        COscuras.W = 110
        COscuras.H = 80
            COscuras.FX = 4
            Ulq.FX(Dead) = 2

'Ulquiorra

    'Position
    Ulq.X = 1000
    Ulq.Y = 490
    'Dimensions
        Ulq.W(Stand) = 95
        Ulq.H(Stand) = 65
            
            Ulq.W(Run) = 95
            Ulq.H(Run) = 65
                
                Ulq.W(Duck) = 95
                Ulq.H(Duck) = 45
                    
                    Ulq.W(Jump) = 100
                    Ulq.H(Jump) = 60
                        
                        Ulq.W(Attack) = 92
                        Ulq.H(Attack) = 63
                            
                            Ulq.W(Heavy) = 99
                            Ulq.H(Heavy) = 60
                                
                                Ulq.W(Special) = 90
                                Ulq.H(Special) = 65
                                    
                                    Ulq.W(CPose) = 100
                                    Ulq.H(CPose) = 65
                                        
                                        Ulq.W(Transform) = 103
                                        Ulq.H(Transform) = 98
                                    
                                            Ulq.W(TStance) = 110
                                            Ulq.H(TStance) = 65
                                        
                                                Ulq.W(Dash) = 101
                                                Ulq.H(Dash) = 60
                    
                                                    Ulq.W(Dead) = 100
                                                    Ulq.H(Dead) = 60
                    
                                                        Ulq.W(Win) = 95
                                                        Ulq.H(Win) = 60
                                                        Ulq.FX(TStance) = 3

                                                            Ulq.W(Reiatsu) = 90
                                                            Ulq.H(Reiatsu) = 60
                    
                    
'Other
    Ulq.FX(Attack) = 3
    Ulq.FX(Special) = 6
    Ulq.FX(CPose) = 6
    GLReiatsu.Caption = 5
    ULReiatsu.Caption = 5
    Call Usage(0)
    Call Usage2(0)
End Sub

Private Sub mnuControls_Click()
    frmControls.Visible = Not frmControls.Visible
    mnuControls.Checked = Not mnuControls.Checked
End Sub

Private Sub mnuExit_Click()
    End
End Sub

Private Sub mnuPS_Click()
    frmScores.Show
End Sub

Private Sub mnuScore_Click()
    frameScore.Visible = Not frameScore.Visible
    mnuScore.Checked = Not mnuScore.Checked
End Sub

Private Sub tmr_Timer()
 Call Ulquiorra
    
   If Ground(2) = False Then
        Ulq.Y = Ulq.Y + Speed(2)
        Speed(2) = Speed(2) + Gravity
        'Animation
        tmr.Interval = 50
            'Ulq.FX(Jump) = Ulq.FX(Jump) + 1
            'If Ulq.FX(Jump) > 1 Then Ulq.FX(Jump) = 0
   Else
   
   tmr.Interval = 1
   End If
    
    Call Checker
End Sub

Private Sub tmr1_Timer()
Call Grimmjow
 
    If Ground(1) = False Then
        Grim.Y = Grim.Y + Speed(1)
        Speed(1) = Speed(1) + Gravity
        tmr1.Interval = 50
        Else
        tmr1.Interval = 1
        
    End If

Call Checker

End Sub

Private Sub tmrMove_Timer()
Cls

'Update Score
lblScore.Caption = Score(1) & " : " & Score(2)

'Grimjow run dash
    If Dasher = True Then
        DrawWidth = 5
        Circle (Grim.X + Grim.W(Run) / 2, Grim.Y + Grim.H(Run)), 50, vbCyan, 2, 2, 0.2
    End If

'Grimmjow jump dash
    If Dasher2 = True Then
        DrawWidth = 5
        Circle (Grim.X, Grim.Y + Grim.H(Run) / 2), 50, vbCyan, 2, 2, 3
        Spare = Spare + 1
        If Spare > 10 Then
            Spare = 0
            Dasher2 = False
        End If
    End If

'Make Grimjow and ulquiorra have same Y
    'If Jumper = False And Fly = False And Grim.Num <> Duck And Ulq.Num <> Duck Then Grim.Y = Ulq.Y + 7

'Display characters
    'Bitblt function (Ulquoirra)
        bitblt Me.hDC, Ulq.X, Ulq.Y, Ulq.W(Ulq.Num), Ulq.H(Ulq.Num), UlqM(Ulq.Num).hDC, _
            Ulq.FX(Ulq.Num) * Ulq.W(Ulq.Num) + 5 + Fac2, Ulq.FY(Ulq.Num) * Ulq.H(Ulq.Num) + 5, SRCAND
        bitblt Me.hDC, Ulq.X, Ulq.Y, Ulq.W(Ulq.Num), Ulq.H(Ulq.Num), UlqS(Ulq.Num).hDC, _
            Ulq.FX(Ulq.Num) * Ulq.W(Ulq.Num) + 5 + Fac2, Ulq.FY(Ulq.Num) * Ulq.H(Ulq.Num) + 5, SRCINVERT
    'Bitblt function (Grimmjow)
        bitblt Me.hDC, Grim.X, Grim.Y, Grim.W(Grim.Num), Grim.H(Grim.Num), GrimM(Grim.Num).hDC, _
             Grim.FX(Grim.Num) * Grim.W(Grim.Num) + 5 + Factor, Grim.FY(Grim.Num) * Grim.H(Grim.Num) + 5, SRCAND
        bitblt Me.hDC, Grim.X, Grim.Y, Grim.W(Grim.Num), Grim.H(Grim.Num), GrimS(Grim.Num).hDC, _
            Grim.FX(Grim.Num) * Grim.W(Grim.Num) + 5 + Factor, Grim.FY(Grim.Num) * Grim.H(Grim.Num) + 5, SRCINVERT

'Grim Cero
    If Shoot = True Then
    'Bitblt Function Cero
        
        Call UlqCollision(0)

        bitblt Me.hDC, Cero.X(0), Cero.Y(0), Cero.W, Cero.H, MCero.hDC, _
            Cero.FX * Cero.W + 5, Cero.FY * Cero.H + 5, SRCAND
        bitblt Me.hDC, Cero.X(0), Cero.Y(0), Cero.W, Cero.H, SCero.hDC, _
            Cero.FX * Cero.W + 5, Cero.FY * Cero.H + 5, SRCINVERT
        
    'Cero Shoot
        If Cero.FX < 4 Then
            Cero.FX = Cero.FX + 1
        Else
            Cero.X(0) = Cero.X(0) + 70
        End If
    
    'Reset
        If Cero.X(0) > Me.ScaleWidth Then
            Shoot = False
            Spare = 0
        End If
    If Hit2 = True Then
             Call UDamage(100)
             Sleep (100)
            Shoot = False
            Spare = 0
        End If

    End If
    
'Ulquiorra cero
    If Fire = True Then
        
        Call GrimCollision(0)
    
    'Bitblt Function Cero
        bitblt Me.hDC, COscuras.X(0), COscuras.Y(0), COscuras.W, COscuras.H, MOscuras.hDC, _
            COscuras.FX * COscuras.W + 5, COscuras.FY * COscuras.H + 5, SRCAND
        bitblt Me.hDC, COscuras.X(0), COscuras.Y(0), COscuras.W, COscuras.H, SOscuras.hDC, _
            COscuras.FX * COscuras.W + 5, COscuras.FY * COscuras.H + 5, SRCINVERT
    
    'Cero Shoot
        If COscuras.FX <> 0 Then
            COscuras.FX = COscuras.FX - 1
        Else
            COscuras.X(0) = COscuras.X(0) - 20
        End If
    
    'Reset
        If COscuras.X(0) < -COscuras.W Then
            COscuras.FX = 4
            Fire = False
            Ulq.FX(CPose) = 6
            Delay = 0
        End If
        
        
        If Hit = True Then
        Call GDamage(200)
        Sleep (100)
        COscuras.FX = 4
            Fire = False
            Ulq.FX(CPose) = 6
            Delay = 0
        End If
        
    End If
    
    
   
End Sub


Private Sub CAttack(Index As Integer)
'Grim Cero Set
    Cero.X(Index) = Grim.X + Grim.W(CPose)
    Cero.Y(Index) = Grim.Y + Grim.H(CPose) / 20
    Cero.FX = 0
'Use reiatsu
    Usage (40)
'Shoot cero
    Shoot = True
End Sub

Private Sub Charge(Optional E As Integer)
'Reiatsu charge
    'Grimmmjow
            If GLReiatsu.Caption = 10 Then Exit Sub

        'Increase
            GBReiatsu.Width = GBReiatsu.Width + 10 - E
        'Set after bar is full
            If GBReiatsu.Width > 350 Then
                GBReiatsu.Width = 5
                GLReiatsu.Caption = GLReiatsu.Caption + 1
            End If

        'Set min attack requirement
            If GLReiatsu.Caption > 0 Then Possible = True

End Sub

Private Sub Charge2(Optional E As Integer)
'Reiatsu charge
 

         'Grimmmjow
            If ULReiatsu.Caption = 10 Then Exit Sub

        'Increase
            UBReiatsu.Width = UBReiatsu.Width + 10 - E
        'Set after bar is full
            If UBReiatsu.Width > 350 Then
                UBReiatsu.Width = 5
                ULReiatsu.Caption = ULReiatsu.Caption + 1
            End If

        'Set min attack requirement
            If ULReiatsu.Caption > 0 Then Possible2 = True


    
End Sub



Private Sub Usage(Amount As Integer)
'Reiatsu use
Dim Levels As Integer 'GLReiatsu's used

'Reduce to managable amounts
    Do Until Amount <= GBReiatsu.Width
        
        Levels = Levels + 1
        Amount = Amount - GBReiatsu.Width
        If GBReiatsu.Width < 20 Then GBReiatsu.Width = 310

    Loop

'Set min
    If GLReiatsu.Caption - Levels < 0 Then
        Possible = False
        Exit Sub
    Else
        Possible = True
    End If

'Change Captions
    GLReiatsu.Caption = GLReiatsu.Caption - Levels
    GBReiatsu.Width = GBReiatsu.Width - Amount

End Sub


Private Sub Usage2(Amount As Integer)
'Reiatsu use
Dim Levels As Integer 'GLReiatsu's used

'Reduce to managable amounts
    Do Until Amount <= UBReiatsu.Width
        
        Levels = Levels + 1
        Amount = Amount - UBReiatsu.Width
        If UBReiatsu.Width < 20 Then UBReiatsu.Width = 310

    Loop

'Set min
    If ULReiatsu.Caption - Levels < 0 Then
        Possible2 = False
        Exit Sub
    Else
        Possible2 = True
    End If

'Change Captions
    ULReiatsu.Caption = ULReiatsu.Caption - Levels
    UBReiatsu.Width = UBReiatsu.Width - Amount

End Sub

Private Sub TP()
'Teleport back and forth
Counter = Counter + 1

Select Case Counter

    Case 1 'To grimmjow
    'Assign previous position
        PX = Ulq.X
        PY = Ulq.Y
    
    'Pic num
        Ulq.FX(Dash) = 2
        Ulq.Num = Dash

    'Dissapear animation
        Do Until Ulq.FX(Dash) = -2
        'Delay
            DoEvents
            Sleep (75)
        'Action
            Ulq.Num = Dash
            Ulq.FX(Dash) = Ulq.FX(Dash) - 1
        Loop

    'Teleport
        Ulq.X = Grim.X + Grim.W(Grim.Num) - 20
        Ulq.Y = Grim.Y
    
    'Teleport animation
        Do Until Ulq.FX(Dash) = 2
        'Pic Num
            Ulq.Num = Dash
            Ulq.FX(Dash) = Ulq.FX(Dash) + 1
        'Delay
            DoEvents
            Sleep (300)
        Loop
    'After
        Ulq.Num = Stand
        Teleport = False

    Case 2
    'Pic num
        Ulq.FX(Dash) = 2
        Ulq.Num = Dash
    
    'Dissapear animation
        Do Until Ulq.FX(Dash) = -2
        'Delay
            DoEvents
            Sleep (75)
        'Action
            Ulq.Num = Dash
            Ulq.FX(Dash) = Ulq.FX(Dash) - 1
        Loop

    'Teleport
        Ulq.X = PX
        Ulq.Y = PY

    'Teleport animation
         Do Until Ulq.FX(Dash) = 2
        'Action
            Ulq.Num = Dash
            Ulq.FX(Dash) = Ulq.FX(Dash) + 1
        'Delay
            DoEvents
            Sleep (300)
        Loop

    'After
        Ulq.Num = Stand
        Teleport = False
        Counter = 0

End Select
End Sub

Private Sub Firing()
If Fire = True Then Exit Sub
'Ulquiorra's cero
    'Position
        COscuras.X(0) = Ulq.X - COscuras.W
        COscuras.Y(0) = Ulq.Y + Ulq.FY(Ulq.Num) / 4
    'Fire
        Fire = True
    'Consume Reiatsu
        Usage2 (25)
End Sub


Private Sub GrimCollision(Damage As Integer)

'Called Collision
    If Ulq.X <= Grim.X + Grim.W(Grim.Num) And Ulq.X + Ulq.W(Ulq.Num) > Grim.X Then
        If Ulq.Y + Ulq.H(Ulq.Num) >= Grim.Y And Ulq.Y < Grim.Y + Grim.H(Grim.Num) Then

            Call GDamage(Damage)
            Call Charge2(9)

        End If
    End If

'Cero Collison
    If COscuras.X(0) <= Grim.X + Grim.W(Grim.Num) - 35 And COscuras.X(0) + COscuras.W > Grim.X And _
        COscuras.Y(0) + COscuras.H >= Grim.Y And COscuras.Y(0) < Grim.Y + Grim.H(Grim.Num) Then

        Hit = True

    Else

        Hit = False

    End If


End Sub

Private Sub GDamage(Damage As Integer)
'Decrease Resistance
    If Resist(1) > 0 Then Resist(1) = Resist(1) - 1
'If resistance is too much
    If Resist(1) > Damage Then Exit Sub

On Error GoTo Handler
    
'Decrease Health
    GHealth.Width = GHealth.Width - Damage + Resist(1)
    Exit Sub

Handler:
'Grimmjow is dead
    GHealth.Width = 1
    Death(1) = True
    
End Sub

Private Sub UlqCollision(Damage As Integer)

Dim Hx As Integer, Hy As Integer

'Called collision
    If Grim.X + Grim.W(Grim.Num) >= Ulq.X And Grim.X < Ulq.X + Ulq.W(Ulq.Num) Then
        If Grim.Y + Grim.H(Grim.Num) >= Ulq.Y And Grim.Y < Ulq.Y + Ulq.H(Ulq.Num) Then

        Call Charge(7)
        Call UDamage(Damage)
         If GHealth.Width < 1200 Then GHealth.Width = GHealth.Width + 10
        End If
    End If

'Cero collision
    If Cero.X(0) + Cero.W >= Ulq.X + 25 And Cero.X(0) < Ulq.X + Ulq.W(Ulq.Num) And _
        Cero.Y(0) + Cero.H >= Ulq.Y And Cero.Y(0) < Ulq.Y + Ulq.H(Ulq.Num) Then

        Hit2 = True

    Else

        Hit2 = False

    End If

'Final cero
    If Change = True Then
        For Hx = Final.X(0) To Final.FX
            
            If Hx > Ulq.X And Hx < Ulq.X + Ulq.W(Ulq.Num) Then
                If Final.Y(0) + Me.DrawWidth > Ulq.Y And Final.Y(0) < Ulq.Y + Ulq.H(Ulq.Num) Then

                    Call UDamage(100)

                End If
            End If

        Next Hx
    End If

End Sub


Private Sub UDamage(Damage As Integer)
If Death(2) = True Then Exit Sub

'Decrease resistance
    If Change2 = False Then
        If Resist(2) > 0 Then Resist(2) = Resist(2) - 1
    End If

'If resistance is too much
    If Resist(2) > Damage Then Exit Sub


On Error GoTo Handler

'Decrease HEalth
    UHealth.Width = UHealth.Width - Damage + Resist(2)
    Exit Sub


Handler:
    UHealth.Width = 1
    Death(2) = True
    Ulq.FX(Dead) = 3

End Sub

Private Sub Store()

Open App.Path & ("\Scores.dat") For Output As #1

    Print #1, "SCORES FROM PREVIOUS GAME"
    Print #1, "Grimmjow: " & Score(1) & vbCrLf & "Ulquiorra: " & Score(2)

Close #1

End

End Sub
 
 Private Sub Checker()
 If Ulq.Y >= Max Then
    Ground(2) = True
    If Fly = True Then Ulq.Num = Stand
    Fly = False
    If Ulq.Num <> Duck Then Ulq.Y = Max
    Else
    Ground(2) = False
    
 End If
 
 If Grim.Y >= Max + 10 Then
    Ground(1) = True
    If Jumper = True Then Grim.Num = Stand
    Jumper = False
    If Grim.Num <> Duck Then Grim.Y = Max + 10
    
    Else
    Ground(1) = False
    
 End If
 
 End Sub




Private Sub ChangeBack()
Ulq.Num = TStance
'Back to first resereccion
    Do Until Ulq.FX(TStance) = 3 And Ulq.FY(TStance) = 0
    'Delay
        DoEvents
        Sleep (200)

        If Ulq.FX(TStance) > 3 Then
            Ulq.FX(TStance) = 0
            Ulq.W(TStance) = 110
            Ulq.FY(TStance) = 0
        End If
     'Action
        Ulq.FX(TStance) = Ulq.FX(TStance) + 1
    Loop

'After
    Change2 = False
    Resist(2) = 0
    Ulq.FX(TStance) = 3
    Ulq.FY(TStance) = 0
    Alternate = False
    
End Sub


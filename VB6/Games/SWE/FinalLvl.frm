VERSION 5.00
Begin VB.Form Finallvl 
   AutoRedraw      =   -1  'True
   BackColor       =   &H00000000&
   BorderStyle     =   0  'None
   Caption         =   "Form2"
   ClientHeight    =   8985
   ClientLeft      =   2430
   ClientTop       =   1755
   ClientWidth     =   16830
   FillStyle       =   0  'Solid
   ForeColor       =   &H00FFFFFF&
   HasDC           =   0   'False
   Icon            =   "FinalLvl.frx":0000
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   599
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   1122
   ShowInTaskbar   =   0   'False
   Begin VB.Timer Movie2 
      Left            =   8760
      Top             =   4080
   End
   Begin VB.PictureBox picMask 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      ForeColor       =   &H80000008&
      Height          =   1650
      Index           =   4
      Left            =   1680
      Picture         =   "FinalLvl.frx":6932
      ScaleHeight     =   108
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   628
      TabIndex        =   19
      Top             =   4920
      Visible         =   0   'False
      Width           =   9450
   End
   Begin VB.PictureBox picSprite 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      ForeColor       =   &H80000008&
      Height          =   1650
      Index           =   4
      Left            =   1560
      Picture         =   "FinalLvl.frx":38444
      ScaleHeight     =   108
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   628
      TabIndex        =   18
      Top             =   3960
      Visible         =   0   'False
      Width           =   9450
   End
   Begin VB.Frame Health2 
      BackColor       =   &H000000C0&
      BorderStyle     =   0  'None
      Caption         =   "Frame1"
      Height          =   135
      Left            =   600
      TabIndex        =   16
      Top             =   8640
      Visible         =   0   'False
      Width           =   15615
   End
   Begin VB.Frame Health1 
      BackColor       =   &H0000C000&
      BorderStyle     =   0  'None
      Caption         =   "Frame1"
      Height          =   255
      Left            =   600
      TabIndex        =   15
      Top             =   7920
      Visible         =   0   'False
      Width           =   6255
   End
   Begin VB.Timer Movie 
      Interval        =   1
      Left            =   7800
      Top             =   4200
   End
   Begin VB.PictureBox picSprite 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      ForeColor       =   &H80000008&
      Height          =   2640
      Index           =   0
      Left            =   -2400
      Picture         =   "FinalLvl.frx":69F56
      ScaleHeight     =   174
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   421
      TabIndex        =   7
      Top             =   2640
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
      Left            =   -3960
      Picture         =   "FinalLvl.frx":9FAB8
      ScaleHeight     =   174
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   421
      TabIndex        =   6
      Top             =   1080
      Visible         =   0   'False
      Width           =   6345
   End
   Begin VB.Timer tmrmove 
      Interval        =   100
      Left            =   13680
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
      Left            =   5400
      Picture         =   "FinalLvl.frx":D561A
      ScaleHeight     =   52
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   295
      TabIndex        =   5
      Top             =   3120
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
      Left            =   6120
      Picture         =   "FinalLvl.frx":E0ABC
      ScaleHeight     =   52
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   293
      TabIndex        =   4
      Top             =   1440
      Visible         =   0   'False
      Width           =   4425
   End
   Begin VB.PictureBox picMask 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      ForeColor       =   &H80000008&
      Height          =   4215
      Index           =   2
      Left            =   1200
      Picture         =   "FinalLvl.frx":EBDBE
      ScaleHeight     =   279
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   154
      TabIndex        =   3
      Top             =   1080
      Visible         =   0   'False
      Width           =   2340
   End
   Begin VB.PictureBox picSprite 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      ForeColor       =   &H80000008&
      Height          =   4215
      Index           =   2
      Left            =   2160
      Picture         =   "FinalLvl.frx":10B7B0
      ScaleHeight     =   279
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   154
      TabIndex        =   2
      Top             =   1920
      Visible         =   0   'False
      Width           =   2340
   End
   Begin VB.PictureBox picSprite 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      ForeColor       =   &H80000008&
      Height          =   1005
      Index           =   3
      Left            =   4440
      Picture         =   "FinalLvl.frx":12B1A2
      ScaleHeight     =   65
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   209
      TabIndex        =   1
      Top             =   1800
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
      Left            =   1920
      Picture         =   "FinalLvl.frx":135158
      ScaleHeight     =   65
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   209
      TabIndex        =   0
      Top             =   1680
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
      Left            =   15840
      TabIndex        =   20
      Top             =   0
      Width           =   975
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   399
      Left            =   0
      Picture         =   "FinalLvl.frx":13F10E
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   398
      Left            =   0
      Picture         =   "FinalLvl.frx":13F7A7
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   397
      Left            =   0
      Picture         =   "FinalLvl.frx":13FE40
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   396
      Left            =   0
      Picture         =   "FinalLvl.frx":1404D9
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   395
      Left            =   0
      Picture         =   "FinalLvl.frx":140B72
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   394
      Left            =   0
      Picture         =   "FinalLvl.frx":14120B
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   393
      Left            =   0
      Picture         =   "FinalLvl.frx":1418A4
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   392
      Left            =   0
      Picture         =   "FinalLvl.frx":141F3D
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   391
      Left            =   0
      Picture         =   "FinalLvl.frx":1425D6
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   390
      Left            =   0
      Picture         =   "FinalLvl.frx":142C6F
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   389
      Left            =   0
      Picture         =   "FinalLvl.frx":143308
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   388
      Left            =   0
      Picture         =   "FinalLvl.frx":1439A1
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   387
      Left            =   0
      Picture         =   "FinalLvl.frx":14403A
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   386
      Left            =   0
      Picture         =   "FinalLvl.frx":1446D3
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   385
      Left            =   0
      Picture         =   "FinalLvl.frx":144D6C
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   384
      Left            =   0
      Picture         =   "FinalLvl.frx":145405
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   383
      Left            =   0
      Picture         =   "FinalLvl.frx":145A9E
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   382
      Left            =   0
      Picture         =   "FinalLvl.frx":146137
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   381
      Left            =   0
      Picture         =   "FinalLvl.frx":1467D0
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   380
      Left            =   0
      Picture         =   "FinalLvl.frx":146E69
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   379
      Left            =   0
      Picture         =   "FinalLvl.frx":147502
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   378
      Left            =   0
      Picture         =   "FinalLvl.frx":147B9B
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   377
      Left            =   0
      Picture         =   "FinalLvl.frx":148234
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   376
      Left            =   0
      Picture         =   "FinalLvl.frx":1488CD
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   375
      Left            =   0
      Picture         =   "FinalLvl.frx":148F66
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   374
      Left            =   0
      Picture         =   "FinalLvl.frx":1495FF
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   373
      Left            =   0
      Picture         =   "FinalLvl.frx":149C98
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   372
      Left            =   0
      Picture         =   "FinalLvl.frx":14A331
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   371
      Left            =   0
      Picture         =   "FinalLvl.frx":14A9CA
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   370
      Left            =   0
      Picture         =   "FinalLvl.frx":14B063
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   369
      Left            =   0
      Picture         =   "FinalLvl.frx":14B6FC
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   368
      Left            =   0
      Picture         =   "FinalLvl.frx":14BD95
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   367
      Left            =   0
      Picture         =   "FinalLvl.frx":14C42E
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   366
      Left            =   0
      Picture         =   "FinalLvl.frx":14CAC7
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   365
      Left            =   0
      Picture         =   "FinalLvl.frx":14D160
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   364
      Left            =   0
      Picture         =   "FinalLvl.frx":14D7F9
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   363
      Left            =   0
      Picture         =   "FinalLvl.frx":14DE92
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   362
      Left            =   0
      Picture         =   "FinalLvl.frx":14E52B
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   361
      Left            =   0
      Picture         =   "FinalLvl.frx":14EBC4
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   360
      Left            =   0
      Picture         =   "FinalLvl.frx":14F25D
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   359
      Left            =   0
      Picture         =   "FinalLvl.frx":14F8F6
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   358
      Left            =   0
      Picture         =   "FinalLvl.frx":14FF8F
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   357
      Left            =   0
      Picture         =   "FinalLvl.frx":150628
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   356
      Left            =   0
      Picture         =   "FinalLvl.frx":150CC1
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   355
      Left            =   0
      Picture         =   "FinalLvl.frx":15135A
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   354
      Left            =   0
      Picture         =   "FinalLvl.frx":1519F3
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   353
      Left            =   0
      Picture         =   "FinalLvl.frx":15208C
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   352
      Left            =   0
      Picture         =   "FinalLvl.frx":152725
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   351
      Left            =   0
      Picture         =   "FinalLvl.frx":152DBE
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   350
      Left            =   0
      Picture         =   "FinalLvl.frx":153457
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   349
      Left            =   0
      Picture         =   "FinalLvl.frx":153AF0
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   348
      Left            =   0
      Picture         =   "FinalLvl.frx":154189
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   347
      Left            =   0
      Picture         =   "FinalLvl.frx":154822
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   346
      Left            =   0
      Picture         =   "FinalLvl.frx":154EBB
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   345
      Left            =   0
      Picture         =   "FinalLvl.frx":155554
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   344
      Left            =   0
      Picture         =   "FinalLvl.frx":155BED
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   343
      Left            =   0
      Picture         =   "FinalLvl.frx":156286
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   342
      Left            =   0
      Picture         =   "FinalLvl.frx":15691F
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   341
      Left            =   0
      Picture         =   "FinalLvl.frx":156FB8
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   340
      Left            =   0
      Picture         =   "FinalLvl.frx":157651
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   339
      Left            =   0
      Picture         =   "FinalLvl.frx":157CEA
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   338
      Left            =   0
      Picture         =   "FinalLvl.frx":158383
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   337
      Left            =   0
      Picture         =   "FinalLvl.frx":158A1C
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   336
      Left            =   0
      Picture         =   "FinalLvl.frx":1590B5
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   335
      Left            =   0
      Picture         =   "FinalLvl.frx":15974E
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   334
      Left            =   0
      Picture         =   "FinalLvl.frx":159DE7
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   333
      Left            =   0
      Picture         =   "FinalLvl.frx":15A480
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   332
      Left            =   0
      Picture         =   "FinalLvl.frx":15AB19
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   331
      Left            =   0
      Picture         =   "FinalLvl.frx":15B1B2
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   330
      Left            =   0
      Picture         =   "FinalLvl.frx":15B84B
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   329
      Left            =   0
      Picture         =   "FinalLvl.frx":15BEE4
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   328
      Left            =   0
      Picture         =   "FinalLvl.frx":15C57D
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   327
      Left            =   0
      Picture         =   "FinalLvl.frx":15CC16
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   326
      Left            =   0
      Picture         =   "FinalLvl.frx":15D2AF
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   325
      Left            =   0
      Picture         =   "FinalLvl.frx":15D948
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   324
      Left            =   0
      Picture         =   "FinalLvl.frx":15DFE1
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   323
      Left            =   0
      Picture         =   "FinalLvl.frx":15E67A
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   322
      Left            =   0
      Picture         =   "FinalLvl.frx":15ED13
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   321
      Left            =   0
      Picture         =   "FinalLvl.frx":15F3AC
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   320
      Left            =   0
      Picture         =   "FinalLvl.frx":15FA45
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   319
      Left            =   0
      Picture         =   "FinalLvl.frx":1600DE
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   318
      Left            =   0
      Picture         =   "FinalLvl.frx":160777
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   317
      Left            =   0
      Picture         =   "FinalLvl.frx":160E10
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   316
      Left            =   0
      Picture         =   "FinalLvl.frx":1614A9
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   315
      Left            =   0
      Picture         =   "FinalLvl.frx":161B42
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   314
      Left            =   0
      Picture         =   "FinalLvl.frx":1621DB
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   313
      Left            =   0
      Picture         =   "FinalLvl.frx":162874
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   312
      Left            =   0
      Picture         =   "FinalLvl.frx":162F0D
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   311
      Left            =   0
      Picture         =   "FinalLvl.frx":1635A6
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   310
      Left            =   0
      Picture         =   "FinalLvl.frx":163C3F
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   309
      Left            =   0
      Picture         =   "FinalLvl.frx":1642D8
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   308
      Left            =   0
      Picture         =   "FinalLvl.frx":164971
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   307
      Left            =   0
      Picture         =   "FinalLvl.frx":16500A
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   306
      Left            =   0
      Picture         =   "FinalLvl.frx":1656A3
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   305
      Left            =   0
      Picture         =   "FinalLvl.frx":165D3C
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   304
      Left            =   0
      Picture         =   "FinalLvl.frx":1663D5
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   303
      Left            =   0
      Picture         =   "FinalLvl.frx":166A6E
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   302
      Left            =   0
      Picture         =   "FinalLvl.frx":167107
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   301
      Left            =   0
      Picture         =   "FinalLvl.frx":1677A0
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   300
      Left            =   0
      Picture         =   "FinalLvl.frx":167E39
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   299
      Left            =   0
      Picture         =   "FinalLvl.frx":1684D2
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   298
      Left            =   0
      Picture         =   "FinalLvl.frx":168B6B
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   297
      Left            =   0
      Picture         =   "FinalLvl.frx":169204
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   296
      Left            =   0
      Picture         =   "FinalLvl.frx":16989D
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   295
      Left            =   0
      Picture         =   "FinalLvl.frx":169F36
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   294
      Left            =   0
      Picture         =   "FinalLvl.frx":16A5CF
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   293
      Left            =   0
      Picture         =   "FinalLvl.frx":16AC68
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   292
      Left            =   0
      Picture         =   "FinalLvl.frx":16B301
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   291
      Left            =   0
      Picture         =   "FinalLvl.frx":16B99A
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   290
      Left            =   0
      Picture         =   "FinalLvl.frx":16C033
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   289
      Left            =   0
      Picture         =   "FinalLvl.frx":16C6CC
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   288
      Left            =   0
      Picture         =   "FinalLvl.frx":16CD65
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   287
      Left            =   0
      Picture         =   "FinalLvl.frx":16D3FE
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   286
      Left            =   0
      Picture         =   "FinalLvl.frx":16DA97
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   285
      Left            =   0
      Picture         =   "FinalLvl.frx":16E130
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   284
      Left            =   0
      Picture         =   "FinalLvl.frx":16E7C9
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   283
      Left            =   0
      Picture         =   "FinalLvl.frx":16EE62
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   282
      Left            =   0
      Picture         =   "FinalLvl.frx":16F4FB
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   281
      Left            =   0
      Picture         =   "FinalLvl.frx":16FB94
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   280
      Left            =   0
      Picture         =   "FinalLvl.frx":17022D
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   279
      Left            =   0
      Picture         =   "FinalLvl.frx":1708C6
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   278
      Left            =   0
      Picture         =   "FinalLvl.frx":170F5F
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   277
      Left            =   0
      Picture         =   "FinalLvl.frx":1715F8
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   276
      Left            =   0
      Picture         =   "FinalLvl.frx":171C91
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   275
      Left            =   0
      Picture         =   "FinalLvl.frx":17232A
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   274
      Left            =   0
      Picture         =   "FinalLvl.frx":1729C3
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   273
      Left            =   0
      Picture         =   "FinalLvl.frx":17305C
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   272
      Left            =   0
      Picture         =   "FinalLvl.frx":1736F5
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   271
      Left            =   0
      Picture         =   "FinalLvl.frx":173D8E
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   270
      Left            =   0
      Picture         =   "FinalLvl.frx":174427
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   269
      Left            =   0
      Picture         =   "FinalLvl.frx":174AC0
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   268
      Left            =   0
      Picture         =   "FinalLvl.frx":175159
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   267
      Left            =   0
      Picture         =   "FinalLvl.frx":1757F2
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   266
      Left            =   0
      Picture         =   "FinalLvl.frx":175E8B
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   265
      Left            =   0
      Picture         =   "FinalLvl.frx":176524
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   264
      Left            =   0
      Picture         =   "FinalLvl.frx":176BBD
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   263
      Left            =   0
      Picture         =   "FinalLvl.frx":177256
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   262
      Left            =   0
      Picture         =   "FinalLvl.frx":1778EF
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   261
      Left            =   0
      Picture         =   "FinalLvl.frx":177F88
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   260
      Left            =   0
      Picture         =   "FinalLvl.frx":178621
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   259
      Left            =   0
      Picture         =   "FinalLvl.frx":178CBA
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   258
      Left            =   0
      Picture         =   "FinalLvl.frx":179353
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   257
      Left            =   0
      Picture         =   "FinalLvl.frx":1799EC
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   256
      Left            =   0
      Picture         =   "FinalLvl.frx":17A085
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   255
      Left            =   0
      Picture         =   "FinalLvl.frx":17A71E
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   254
      Left            =   0
      Picture         =   "FinalLvl.frx":17ADB7
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   253
      Left            =   0
      Picture         =   "FinalLvl.frx":17B450
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   252
      Left            =   0
      Picture         =   "FinalLvl.frx":17BAE9
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   251
      Left            =   0
      Picture         =   "FinalLvl.frx":17C182
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   250
      Left            =   0
      Picture         =   "FinalLvl.frx":17C81B
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   249
      Left            =   0
      Picture         =   "FinalLvl.frx":17CEB4
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   248
      Left            =   0
      Picture         =   "FinalLvl.frx":17D54D
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   247
      Left            =   0
      Picture         =   "FinalLvl.frx":17DBE6
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   246
      Left            =   0
      Picture         =   "FinalLvl.frx":17E27F
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   245
      Left            =   0
      Picture         =   "FinalLvl.frx":17E918
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   244
      Left            =   0
      Picture         =   "FinalLvl.frx":17EFB1
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   243
      Left            =   0
      Picture         =   "FinalLvl.frx":17F64A
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   242
      Left            =   0
      Picture         =   "FinalLvl.frx":17FCE3
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   241
      Left            =   0
      Picture         =   "FinalLvl.frx":18037C
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   240
      Left            =   0
      Picture         =   "FinalLvl.frx":180A15
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   239
      Left            =   0
      Picture         =   "FinalLvl.frx":1810AE
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   238
      Left            =   0
      Picture         =   "FinalLvl.frx":181747
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   237
      Left            =   0
      Picture         =   "FinalLvl.frx":181DE0
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   236
      Left            =   0
      Picture         =   "FinalLvl.frx":182479
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   235
      Left            =   0
      Picture         =   "FinalLvl.frx":182B12
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   234
      Left            =   0
      Picture         =   "FinalLvl.frx":1831AB
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   233
      Left            =   0
      Picture         =   "FinalLvl.frx":183844
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   232
      Left            =   0
      Picture         =   "FinalLvl.frx":183EDD
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   231
      Left            =   0
      Picture         =   "FinalLvl.frx":184576
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   230
      Left            =   0
      Picture         =   "FinalLvl.frx":184C0F
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   229
      Left            =   0
      Picture         =   "FinalLvl.frx":1852A8
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   228
      Left            =   0
      Picture         =   "FinalLvl.frx":185941
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   227
      Left            =   0
      Picture         =   "FinalLvl.frx":185FDA
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   226
      Left            =   0
      Picture         =   "FinalLvl.frx":186673
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   225
      Left            =   0
      Picture         =   "FinalLvl.frx":186D0C
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   224
      Left            =   0
      Picture         =   "FinalLvl.frx":1873A5
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   223
      Left            =   0
      Picture         =   "FinalLvl.frx":187A3E
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   222
      Left            =   0
      Picture         =   "FinalLvl.frx":1880D7
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   221
      Left            =   0
      Picture         =   "FinalLvl.frx":188770
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   220
      Left            =   0
      Picture         =   "FinalLvl.frx":188E09
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   219
      Left            =   0
      Picture         =   "FinalLvl.frx":1894A2
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   218
      Left            =   0
      Picture         =   "FinalLvl.frx":189B3B
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   217
      Left            =   0
      Picture         =   "FinalLvl.frx":18A1D4
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   216
      Left            =   0
      Picture         =   "FinalLvl.frx":18A86D
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   215
      Left            =   0
      Picture         =   "FinalLvl.frx":18AF06
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   214
      Left            =   0
      Picture         =   "FinalLvl.frx":18B59F
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   213
      Left            =   0
      Picture         =   "FinalLvl.frx":18BC38
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   212
      Left            =   0
      Picture         =   "FinalLvl.frx":18C2D1
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   211
      Left            =   0
      Picture         =   "FinalLvl.frx":18C96A
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   210
      Left            =   0
      Picture         =   "FinalLvl.frx":18D003
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   209
      Left            =   0
      Picture         =   "FinalLvl.frx":18D69C
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   208
      Left            =   0
      Picture         =   "FinalLvl.frx":18DD35
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   207
      Left            =   0
      Picture         =   "FinalLvl.frx":18E3CE
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   206
      Left            =   0
      Picture         =   "FinalLvl.frx":18EA67
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   205
      Left            =   0
      Picture         =   "FinalLvl.frx":18F100
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   204
      Left            =   0
      Picture         =   "FinalLvl.frx":18F799
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   203
      Left            =   0
      Picture         =   "FinalLvl.frx":18FE32
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   202
      Left            =   0
      Picture         =   "FinalLvl.frx":1904CB
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   201
      Left            =   0
      Picture         =   "FinalLvl.frx":190B64
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   200
      Left            =   0
      Picture         =   "FinalLvl.frx":1911FD
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   199
      Left            =   0
      Picture         =   "FinalLvl.frx":191896
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   198
      Left            =   0
      Picture         =   "FinalLvl.frx":191F2F
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   197
      Left            =   0
      Picture         =   "FinalLvl.frx":1925C8
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   196
      Left            =   0
      Picture         =   "FinalLvl.frx":192C61
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   195
      Left            =   0
      Picture         =   "FinalLvl.frx":1932FA
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   194
      Left            =   0
      Picture         =   "FinalLvl.frx":193993
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   193
      Left            =   0
      Picture         =   "FinalLvl.frx":19402C
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   192
      Left            =   0
      Picture         =   "FinalLvl.frx":1946C5
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   191
      Left            =   0
      Picture         =   "FinalLvl.frx":194D5E
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   190
      Left            =   0
      Picture         =   "FinalLvl.frx":1953F7
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   189
      Left            =   0
      Picture         =   "FinalLvl.frx":195A90
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   188
      Left            =   0
      Picture         =   "FinalLvl.frx":196129
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   187
      Left            =   0
      Picture         =   "FinalLvl.frx":1967C2
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   186
      Left            =   0
      Picture         =   "FinalLvl.frx":196E5B
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   185
      Left            =   0
      Picture         =   "FinalLvl.frx":1974F4
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   184
      Left            =   0
      Picture         =   "FinalLvl.frx":197B8D
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   183
      Left            =   0
      Picture         =   "FinalLvl.frx":198226
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   182
      Left            =   0
      Picture         =   "FinalLvl.frx":1988BF
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   181
      Left            =   0
      Picture         =   "FinalLvl.frx":198F58
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   180
      Left            =   0
      Picture         =   "FinalLvl.frx":1995F1
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   179
      Left            =   0
      Picture         =   "FinalLvl.frx":199C8A
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   178
      Left            =   0
      Picture         =   "FinalLvl.frx":19A323
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   177
      Left            =   0
      Picture         =   "FinalLvl.frx":19A9BC
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   176
      Left            =   0
      Picture         =   "FinalLvl.frx":19B055
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   175
      Left            =   0
      Picture         =   "FinalLvl.frx":19B6EE
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   174
      Left            =   0
      Picture         =   "FinalLvl.frx":19BD87
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   173
      Left            =   0
      Picture         =   "FinalLvl.frx":19C420
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   172
      Left            =   0
      Picture         =   "FinalLvl.frx":19CAB9
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   171
      Left            =   0
      Picture         =   "FinalLvl.frx":19D152
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   170
      Left            =   0
      Picture         =   "FinalLvl.frx":19D7EB
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   169
      Left            =   0
      Picture         =   "FinalLvl.frx":19DE84
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   168
      Left            =   0
      Picture         =   "FinalLvl.frx":19E51D
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   167
      Left            =   0
      Picture         =   "FinalLvl.frx":19EBB6
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   166
      Left            =   0
      Picture         =   "FinalLvl.frx":19F24F
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   165
      Left            =   0
      Picture         =   "FinalLvl.frx":19F8E8
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   164
      Left            =   0
      Picture         =   "FinalLvl.frx":19FF81
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   163
      Left            =   0
      Picture         =   "FinalLvl.frx":1A061A
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   162
      Left            =   0
      Picture         =   "FinalLvl.frx":1A0CB3
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   161
      Left            =   0
      Picture         =   "FinalLvl.frx":1A134C
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   160
      Left            =   0
      Picture         =   "FinalLvl.frx":1A19E5
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   159
      Left            =   0
      Picture         =   "FinalLvl.frx":1A207E
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   158
      Left            =   0
      Picture         =   "FinalLvl.frx":1A2717
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   157
      Left            =   0
      Picture         =   "FinalLvl.frx":1A2DB0
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   156
      Left            =   0
      Picture         =   "FinalLvl.frx":1A3449
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   155
      Left            =   0
      Picture         =   "FinalLvl.frx":1A3AE2
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   154
      Left            =   0
      Picture         =   "FinalLvl.frx":1A417B
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   153
      Left            =   0
      Picture         =   "FinalLvl.frx":1A4814
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   152
      Left            =   0
      Picture         =   "FinalLvl.frx":1A4EAD
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   151
      Left            =   0
      Picture         =   "FinalLvl.frx":1A5546
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   150
      Left            =   0
      Picture         =   "FinalLvl.frx":1A5BDF
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   149
      Left            =   0
      Picture         =   "FinalLvl.frx":1A6278
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   148
      Left            =   0
      Picture         =   "FinalLvl.frx":1A6911
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   147
      Left            =   0
      Picture         =   "FinalLvl.frx":1A6FAA
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   146
      Left            =   0
      Picture         =   "FinalLvl.frx":1A7643
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   145
      Left            =   0
      Picture         =   "FinalLvl.frx":1A7CDC
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   144
      Left            =   0
      Picture         =   "FinalLvl.frx":1A8375
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   143
      Left            =   0
      Picture         =   "FinalLvl.frx":1A8A0E
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   142
      Left            =   0
      Picture         =   "FinalLvl.frx":1A90A7
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   141
      Left            =   0
      Picture         =   "FinalLvl.frx":1A9740
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   140
      Left            =   0
      Picture         =   "FinalLvl.frx":1A9DD9
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   139
      Left            =   0
      Picture         =   "FinalLvl.frx":1AA472
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   138
      Left            =   0
      Picture         =   "FinalLvl.frx":1AAB0B
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   137
      Left            =   0
      Picture         =   "FinalLvl.frx":1AB1A4
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   136
      Left            =   0
      Picture         =   "FinalLvl.frx":1AB83D
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   135
      Left            =   0
      Picture         =   "FinalLvl.frx":1ABED6
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   134
      Left            =   0
      Picture         =   "FinalLvl.frx":1AC56F
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   133
      Left            =   0
      Picture         =   "FinalLvl.frx":1ACC08
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   132
      Left            =   0
      Picture         =   "FinalLvl.frx":1AD2A1
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   131
      Left            =   0
      Picture         =   "FinalLvl.frx":1AD93A
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   130
      Left            =   0
      Picture         =   "FinalLvl.frx":1ADFD3
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   129
      Left            =   0
      Picture         =   "FinalLvl.frx":1AE66C
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   128
      Left            =   0
      Picture         =   "FinalLvl.frx":1AED05
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   127
      Left            =   0
      Picture         =   "FinalLvl.frx":1AF39E
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   126
      Left            =   0
      Picture         =   "FinalLvl.frx":1AFA37
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   125
      Left            =   0
      Picture         =   "FinalLvl.frx":1B00D0
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   124
      Left            =   0
      Picture         =   "FinalLvl.frx":1B0769
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   123
      Left            =   0
      Picture         =   "FinalLvl.frx":1B0E02
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   122
      Left            =   0
      Picture         =   "FinalLvl.frx":1B149B
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   121
      Left            =   0
      Picture         =   "FinalLvl.frx":1B1B34
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   120
      Left            =   0
      Picture         =   "FinalLvl.frx":1B21CD
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   119
      Left            =   0
      Picture         =   "FinalLvl.frx":1B2866
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   118
      Left            =   0
      Picture         =   "FinalLvl.frx":1B2EFF
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   117
      Left            =   0
      Picture         =   "FinalLvl.frx":1B3598
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   116
      Left            =   0
      Picture         =   "FinalLvl.frx":1B3C31
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   115
      Left            =   0
      Picture         =   "FinalLvl.frx":1B42CA
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   114
      Left            =   0
      Picture         =   "FinalLvl.frx":1B4963
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   113
      Left            =   0
      Picture         =   "FinalLvl.frx":1B4FFC
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   112
      Left            =   0
      Picture         =   "FinalLvl.frx":1B5695
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   111
      Left            =   0
      Picture         =   "FinalLvl.frx":1B5D2E
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   110
      Left            =   0
      Picture         =   "FinalLvl.frx":1B63C7
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   109
      Left            =   0
      Picture         =   "FinalLvl.frx":1B6A60
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   108
      Left            =   0
      Picture         =   "FinalLvl.frx":1B70F9
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   107
      Left            =   0
      Picture         =   "FinalLvl.frx":1B7792
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   106
      Left            =   0
      Picture         =   "FinalLvl.frx":1B7E2B
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   105
      Left            =   0
      Picture         =   "FinalLvl.frx":1B84C4
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   104
      Left            =   0
      Picture         =   "FinalLvl.frx":1B8B5D
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   103
      Left            =   0
      Picture         =   "FinalLvl.frx":1B91F6
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   102
      Left            =   0
      Picture         =   "FinalLvl.frx":1B988F
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   101
      Left            =   0
      Picture         =   "FinalLvl.frx":1B9F28
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   0
      Left            =   0
      Picture         =   "FinalLvl.frx":1BA5C1
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Label Block 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Caption         =   "B L O C K"
      BeginProperty Font 
         Name            =   "Old English Text MT"
         Size            =   29.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   3375
      Left            =   0
      TabIndex        =   17
      Top             =   5520
      Visible         =   0   'False
      Width           =   1080
   End
   Begin VB.Label Mess 
      BackStyle       =   0  'Transparent
      Caption         =   "Enough!! I am going to destroy you."
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
      Index           =   5
      Left            =   12720
      TabIndex        =   14
      Top             =   360
      Visible         =   0   'False
      Width           =   3330
   End
   Begin VB.Image Bubble 
      Height          =   3000
      Index           =   5
      Left            =   7800
      Picture         =   "FinalLvl.frx":1BAC5A
      Stretch         =   -1  'True
      Top             =   -480
      Visible         =   0   'False
      Width           =   4650
   End
   Begin VB.Label Mess 
      BackStyle       =   0  'Transparent
      Caption         =   "Um...............Its right behind you."
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
      Index           =   4
      Left            =   6600
      TabIndex        =   13
      Top             =   6360
      Visible         =   0   'False
      Width           =   3360
   End
   Begin VB.Image Bubble 
      Height          =   3000
      Index           =   4
      Left            =   5880
      Picture         =   "FinalLvl.frx":1BB6EA
      Stretch         =   -1  'True
      Top             =   5640
      Visible         =   0   'False
      Width           =   5220
   End
   Begin VB.Label Mess 
      BackStyle       =   0  'Transparent
      Caption         =   "My Security Protocols are firm.Besides I don't even have the Wep key."
      BeginProperty Font 
         Name            =   "Orator Std"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1515
      Index           =   3
      Left            =   12720
      TabIndex        =   12
      Top             =   600
      Visible         =   0   'False
      Width           =   3570
   End
   Begin VB.Image Bubble 
      Height          =   3000
      Index           =   3
      Left            =   11760
      Picture         =   "FinalLvl.frx":1BC1A2
      Stretch         =   -1  'True
      Top             =   240
      Visible         =   0   'False
      Width           =   4530
   End
   Begin VB.Label Mess 
      BackStyle       =   0  'Transparent
      Caption         =   "How about you authorize me by giving me the wep key? it'll save you time"
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
      Index           =   2
      Left            =   3840
      TabIndex        =   11
      Top             =   6360
      Visible         =   0   'False
      Width           =   3360
   End
   Begin VB.Image Bubble 
      Height          =   3000
      Index           =   2
      Left            =   3360
      Picture         =   "FinalLvl.frx":1BCC32
      Stretch         =   -1  'True
      Top             =   5760
      Visible         =   0   'False
      Width           =   5220
   End
   Begin VB.Label WEP 
      AutoSize        =   -1  'True
      BackColor       =   &H00004080&
      Caption         =   "WEP Key"
      BeginProperty Font 
         Name            =   "OCR A Std"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   300
      Left            =   13320
      TabIndex        =   10
      Top             =   2400
      Visible         =   0   'False
      Width           =   1470
   End
   Begin VB.Label Mess 
      BackStyle       =   0  'Transparent
      Caption         =   "Wait........ You're  the TCP? You threw me off the outgoing signal."
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
      Left            =   1560
      TabIndex        =   9
      Top             =   5400
      Visible         =   0   'False
      Width           =   3000
   End
   Begin VB.Image Bubble 
      Height          =   3000
      Index           =   0
      Left            =   1080
      Picture         =   "FinalLvl.frx":1BD6EA
      Stretch         =   -1  'True
      Top             =   5040
      Visible         =   0   'False
      Width           =   4980
   End
   Begin VB.Label Mess 
      BackStyle       =   0  'Transparent
      Caption         =   "You are an unauthorized user. its my job to stop you."
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
      Left            =   12600
      TabIndex        =   8
      Top             =   4200
      Visible         =   0   'False
      Width           =   3330
   End
   Begin VB.Image Bubble 
      Height          =   3000
      Index           =   1
      Left            =   11280
      Picture         =   "FinalLvl.frx":1BE1A2
      Stretch         =   -1  'True
      Top             =   3720
      Visible         =   0   'False
      Width           =   4650
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   1
      Left            =   10200
      Picture         =   "FinalLvl.frx":1BEC32
      Stretch         =   -1  'True
      Top             =   3240
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   2
      Left            =   10200
      Picture         =   "FinalLvl.frx":1BF2CB
      Stretch         =   -1  'True
      Top             =   3240
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   3
      Left            =   10200
      Picture         =   "FinalLvl.frx":1BF964
      Stretch         =   -1  'True
      Top             =   3240
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   4
      Left            =   10200
      Picture         =   "FinalLvl.frx":1BFFFD
      Stretch         =   -1  'True
      Top             =   3240
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   5
      Left            =   10200
      Picture         =   "FinalLvl.frx":1C0696
      Stretch         =   -1  'True
      Top             =   3240
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   6
      Left            =   10200
      Picture         =   "FinalLvl.frx":1C0D2F
      Stretch         =   -1  'True
      Top             =   3240
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   7
      Left            =   10200
      Picture         =   "FinalLvl.frx":1C13C8
      Stretch         =   -1  'True
      Top             =   3240
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   8
      Left            =   10200
      Picture         =   "FinalLvl.frx":1C1A61
      Stretch         =   -1  'True
      Top             =   3240
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   9
      Left            =   10200
      Picture         =   "FinalLvl.frx":1C20FA
      Stretch         =   -1  'True
      Top             =   3240
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   10
      Left            =   10200
      Picture         =   "FinalLvl.frx":1C2793
      Stretch         =   -1  'True
      Top             =   3240
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   11
      Left            =   10200
      Picture         =   "FinalLvl.frx":1C2E2C
      Stretch         =   -1  'True
      Top             =   3240
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   12
      Left            =   10200
      Picture         =   "FinalLvl.frx":1C34C5
      Stretch         =   -1  'True
      Top             =   3240
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   13
      Left            =   10200
      Picture         =   "FinalLvl.frx":1C3B5E
      Stretch         =   -1  'True
      Top             =   3240
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   14
      Left            =   10200
      Picture         =   "FinalLvl.frx":1C41F7
      Stretch         =   -1  'True
      Top             =   3240
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   15
      Left            =   10200
      Picture         =   "FinalLvl.frx":1C4890
      Stretch         =   -1  'True
      Top             =   3240
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   16
      Left            =   10200
      Picture         =   "FinalLvl.frx":1C4F29
      Stretch         =   -1  'True
      Top             =   3240
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   17
      Left            =   10200
      Picture         =   "FinalLvl.frx":1C55C2
      Stretch         =   -1  'True
      Top             =   3240
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   18
      Left            =   10200
      Picture         =   "FinalLvl.frx":1C5C5B
      Stretch         =   -1  'True
      Top             =   3240
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   19
      Left            =   10200
      Picture         =   "FinalLvl.frx":1C62F4
      Stretch         =   -1  'True
      Top             =   3240
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   20
      Left            =   10200
      Picture         =   "FinalLvl.frx":1C698D
      Stretch         =   -1  'True
      Top             =   3240
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   21
      Left            =   10200
      Picture         =   "FinalLvl.frx":1C7026
      Stretch         =   -1  'True
      Top             =   3240
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   22
      Left            =   10200
      Picture         =   "FinalLvl.frx":1C76BF
      Stretch         =   -1  'True
      Top             =   3240
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   23
      Left            =   10200
      Picture         =   "FinalLvl.frx":1C7D58
      Stretch         =   -1  'True
      Top             =   3240
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   24
      Left            =   10200
      Picture         =   "FinalLvl.frx":1C83F1
      Stretch         =   -1  'True
      Top             =   3240
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   25
      Left            =   10200
      Picture         =   "FinalLvl.frx":1C8A8A
      Stretch         =   -1  'True
      Top             =   3240
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   26
      Left            =   10200
      Picture         =   "FinalLvl.frx":1C9123
      Stretch         =   -1  'True
      Top             =   3240
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   27
      Left            =   10200
      Picture         =   "FinalLvl.frx":1C97BC
      Stretch         =   -1  'True
      Top             =   3240
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   28
      Left            =   10200
      Picture         =   "FinalLvl.frx":1C9E55
      Stretch         =   -1  'True
      Top             =   3240
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   29
      Left            =   10200
      Picture         =   "FinalLvl.frx":1CA4EE
      Stretch         =   -1  'True
      Top             =   3240
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   30
      Left            =   10200
      Picture         =   "FinalLvl.frx":1CAB87
      Stretch         =   -1  'True
      Top             =   3240
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   31
      Left            =   10200
      Picture         =   "FinalLvl.frx":1CB220
      Stretch         =   -1  'True
      Top             =   3240
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   32
      Left            =   10200
      Picture         =   "FinalLvl.frx":1CB8B9
      Stretch         =   -1  'True
      Top             =   3240
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   33
      Left            =   10200
      Picture         =   "FinalLvl.frx":1CBF52
      Stretch         =   -1  'True
      Top             =   3240
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   34
      Left            =   10200
      Picture         =   "FinalLvl.frx":1CC5EB
      Stretch         =   -1  'True
      Top             =   3240
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   35
      Left            =   10200
      Picture         =   "FinalLvl.frx":1CCC84
      Stretch         =   -1  'True
      Top             =   3240
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   36
      Left            =   10200
      Picture         =   "FinalLvl.frx":1CD31D
      Stretch         =   -1  'True
      Top             =   3240
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   37
      Left            =   10200
      Picture         =   "FinalLvl.frx":1CD9B6
      Stretch         =   -1  'True
      Top             =   3240
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   38
      Left            =   10200
      Picture         =   "FinalLvl.frx":1CE04F
      Stretch         =   -1  'True
      Top             =   3240
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   39
      Left            =   10200
      Picture         =   "FinalLvl.frx":1CE6E8
      Stretch         =   -1  'True
      Top             =   3240
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   40
      Left            =   10200
      Picture         =   "FinalLvl.frx":1CED81
      Stretch         =   -1  'True
      Top             =   3240
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   41
      Left            =   10200
      Picture         =   "FinalLvl.frx":1CF41A
      Stretch         =   -1  'True
      Top             =   3240
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   42
      Left            =   10200
      Picture         =   "FinalLvl.frx":1CFAB3
      Stretch         =   -1  'True
      Top             =   3240
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   43
      Left            =   10200
      Picture         =   "FinalLvl.frx":1D014C
      Stretch         =   -1  'True
      Top             =   3240
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   44
      Left            =   10200
      Picture         =   "FinalLvl.frx":1D07E5
      Stretch         =   -1  'True
      Top             =   3240
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   45
      Left            =   10200
      Picture         =   "FinalLvl.frx":1D0E7E
      Stretch         =   -1  'True
      Top             =   3240
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   46
      Left            =   10200
      Picture         =   "FinalLvl.frx":1D1517
      Stretch         =   -1  'True
      Top             =   3240
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   47
      Left            =   10200
      Picture         =   "FinalLvl.frx":1D1BB0
      Stretch         =   -1  'True
      Top             =   3240
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   48
      Left            =   10200
      Picture         =   "FinalLvl.frx":1D2249
      Stretch         =   -1  'True
      Top             =   3240
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   49
      Left            =   10200
      Picture         =   "FinalLvl.frx":1D28E2
      Stretch         =   -1  'True
      Top             =   3240
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   50
      Left            =   10200
      Picture         =   "FinalLvl.frx":1D2F7B
      Stretch         =   -1  'True
      Top             =   3240
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   51
      Left            =   10200
      Picture         =   "FinalLvl.frx":1D3614
      Stretch         =   -1  'True
      Top             =   3240
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   52
      Left            =   10200
      Picture         =   "FinalLvl.frx":1D3CAD
      Stretch         =   -1  'True
      Top             =   3240
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   53
      Left            =   10200
      Picture         =   "FinalLvl.frx":1D4346
      Stretch         =   -1  'True
      Top             =   3240
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   54
      Left            =   10200
      Picture         =   "FinalLvl.frx":1D49DF
      Stretch         =   -1  'True
      Top             =   3240
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   55
      Left            =   10200
      Picture         =   "FinalLvl.frx":1D5078
      Stretch         =   -1  'True
      Top             =   3240
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   56
      Left            =   10200
      Picture         =   "FinalLvl.frx":1D5711
      Stretch         =   -1  'True
      Top             =   3240
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   57
      Left            =   10200
      Picture         =   "FinalLvl.frx":1D5DAA
      Stretch         =   -1  'True
      Top             =   3240
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   58
      Left            =   10200
      Picture         =   "FinalLvl.frx":1D6443
      Stretch         =   -1  'True
      Top             =   3240
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   59
      Left            =   10200
      Picture         =   "FinalLvl.frx":1D6ADC
      Stretch         =   -1  'True
      Top             =   3240
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   60
      Left            =   10200
      Picture         =   "FinalLvl.frx":1D7175
      Stretch         =   -1  'True
      Top             =   3240
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   61
      Left            =   10200
      Picture         =   "FinalLvl.frx":1D780E
      Stretch         =   -1  'True
      Top             =   3240
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   62
      Left            =   10200
      Picture         =   "FinalLvl.frx":1D7EA7
      Stretch         =   -1  'True
      Top             =   3240
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   63
      Left            =   10200
      Picture         =   "FinalLvl.frx":1D8540
      Stretch         =   -1  'True
      Top             =   3240
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   64
      Left            =   10200
      Picture         =   "FinalLvl.frx":1D8BD9
      Stretch         =   -1  'True
      Top             =   3240
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   65
      Left            =   10200
      Picture         =   "FinalLvl.frx":1D9272
      Stretch         =   -1  'True
      Top             =   3240
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   66
      Left            =   10200
      Picture         =   "FinalLvl.frx":1D990B
      Stretch         =   -1  'True
      Top             =   3240
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   67
      Left            =   10200
      Picture         =   "FinalLvl.frx":1D9FA4
      Stretch         =   -1  'True
      Top             =   3240
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   68
      Left            =   10200
      Picture         =   "FinalLvl.frx":1DA63D
      Stretch         =   -1  'True
      Top             =   3240
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   69
      Left            =   10200
      Picture         =   "FinalLvl.frx":1DACD6
      Stretch         =   -1  'True
      Top             =   3240
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   70
      Left            =   10200
      Picture         =   "FinalLvl.frx":1DB36F
      Stretch         =   -1  'True
      Top             =   3240
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   71
      Left            =   10200
      Picture         =   "FinalLvl.frx":1DBA08
      Stretch         =   -1  'True
      Top             =   3240
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   72
      Left            =   10200
      Picture         =   "FinalLvl.frx":1DC0A1
      Stretch         =   -1  'True
      Top             =   3240
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   73
      Left            =   10200
      Picture         =   "FinalLvl.frx":1DC73A
      Stretch         =   -1  'True
      Top             =   3240
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   74
      Left            =   10200
      Picture         =   "FinalLvl.frx":1DCDD3
      Stretch         =   -1  'True
      Top             =   3240
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   75
      Left            =   10200
      Picture         =   "FinalLvl.frx":1DD46C
      Stretch         =   -1  'True
      Top             =   3240
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   76
      Left            =   10200
      Picture         =   "FinalLvl.frx":1DDB05
      Stretch         =   -1  'True
      Top             =   3240
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   77
      Left            =   10200
      Picture         =   "FinalLvl.frx":1DE19E
      Stretch         =   -1  'True
      Top             =   3240
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   78
      Left            =   10200
      Picture         =   "FinalLvl.frx":1DE837
      Stretch         =   -1  'True
      Top             =   3240
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   79
      Left            =   10200
      Picture         =   "FinalLvl.frx":1DEED0
      Stretch         =   -1  'True
      Top             =   3240
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   80
      Left            =   10200
      Picture         =   "FinalLvl.frx":1DF569
      Stretch         =   -1  'True
      Top             =   3240
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   81
      Left            =   10200
      Picture         =   "FinalLvl.frx":1DFC02
      Stretch         =   -1  'True
      Top             =   3240
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   82
      Left            =   10200
      Picture         =   "FinalLvl.frx":1E029B
      Stretch         =   -1  'True
      Top             =   3240
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   83
      Left            =   10200
      Picture         =   "FinalLvl.frx":1E0934
      Stretch         =   -1  'True
      Top             =   3240
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   84
      Left            =   10200
      Picture         =   "FinalLvl.frx":1E0FCD
      Stretch         =   -1  'True
      Top             =   3240
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   85
      Left            =   10200
      Picture         =   "FinalLvl.frx":1E1666
      Stretch         =   -1  'True
      Top             =   3240
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   86
      Left            =   10200
      Picture         =   "FinalLvl.frx":1E1CFF
      Stretch         =   -1  'True
      Top             =   3240
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   87
      Left            =   10200
      Picture         =   "FinalLvl.frx":1E2398
      Stretch         =   -1  'True
      Top             =   3240
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   88
      Left            =   10200
      Picture         =   "FinalLvl.frx":1E2A31
      Stretch         =   -1  'True
      Top             =   3240
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   89
      Left            =   10200
      Picture         =   "FinalLvl.frx":1E30CA
      Stretch         =   -1  'True
      Top             =   3240
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   90
      Left            =   10200
      Picture         =   "FinalLvl.frx":1E3763
      Stretch         =   -1  'True
      Top             =   3240
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   91
      Left            =   10200
      Picture         =   "FinalLvl.frx":1E3DFC
      Stretch         =   -1  'True
      Top             =   3240
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   92
      Left            =   10200
      Picture         =   "FinalLvl.frx":1E4495
      Stretch         =   -1  'True
      Top             =   3240
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   93
      Left            =   10200
      Picture         =   "FinalLvl.frx":1E4B2E
      Stretch         =   -1  'True
      Top             =   3240
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   94
      Left            =   10200
      Picture         =   "FinalLvl.frx":1E51C7
      Stretch         =   -1  'True
      Top             =   3240
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   95
      Left            =   10200
      Picture         =   "FinalLvl.frx":1E5860
      Stretch         =   -1  'True
      Top             =   3240
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   96
      Left            =   10200
      Picture         =   "FinalLvl.frx":1E5EF9
      Stretch         =   -1  'True
      Top             =   3240
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   97
      Left            =   10200
      Picture         =   "FinalLvl.frx":1E6592
      Stretch         =   -1  'True
      Top             =   3240
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   98
      Left            =   10200
      Picture         =   "FinalLvl.frx":1E6C2B
      Stretch         =   -1  'True
      Top             =   3240
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   99
      Left            =   10200
      Picture         =   "FinalLvl.frx":1E72C4
      Stretch         =   -1  'True
      Top             =   3240
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Bullet 
      Height          =   60
      Index           =   100
      Left            =   10200
      Picture         =   "FinalLvl.frx":1E795D
      Stretch         =   -1  'True
      Top             =   3240
      Visible         =   0   'False
      Width           =   285
   End
End
Attribute VB_Name = "Finallvl"
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
Dim Counter As Integer
Dim Exchange As Integer
Dim Dead As Boolean
Dim BArc(1 To 30, 1 To 2) As Integer
Dim Hits(1 To 10) As Integer
Dim Win As Boolean
Dim Radius(1 To 30) As Integer
Dim Waves As Integer, Send As Boolean






Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
If Scene = True Then Exit Sub
Select Case KeyCode

Case 27
End
Case vbKeyLeft
If A <> 3 Then

A = 0
frameY(0) = 1
frameX(0) = frameX(0) - 1
If frameX(0) < 0 Then frameX(0) = 5
End If
sngX = sngX - 5
Case vbKeyRight

If A <> 3 Then
A = 0
frameY(0) = 1
frameX(0) = frameX(0) + 1
If frameX(0) > 5 Then frameX(0) = 0
End If
If sngX + W(A) Or Dead = True < Block.Left Then sngX = sngX + 5

Case vbKeyDown
If A <> 3 Then blnShoot = True
frameX(1) = frameX(1) + 1
If frameX(1) > 3 Then frameX(1) = 0
'Call Shoot
Shots = Shots + 1
Bullet(Shots).Top = sngY + H(0) / 3
Bullet(Shots).Left = sngX + W(0)



Case vbKeyUp
A = 3
Call Jump
Case vbKeyW
frameY(2) = 0
frameX(2) = frameX(2) + 1
If frameX(2) > 2 Then frameX(2) = 0
EnemyPos(2) = EnemyPos(2) - 10

Case vbKeyS
frameY(2) = 2
frameX(2) = frameX(2) + 1
If frameX(2) > 2 Then frameX(2) = 0
EnemyPos(2) = EnemyPos(2) + 20

Case vbKeyD
frameY(2) = 1
frameX(2) = frameX(2) + 1
If frameX(2) > 2 Then frameX(2) = 0
EnemyPos(1) = EnemyPos(1) + 20

Case vbKeyA
frameY(2) = 3
frameX(2) = frameX(2) + 1
If frameX(2) > 2 Then frameX(2) = 0
EnemyPos(1) = EnemyPos(1) - 10

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
 
        W(4) = 50
        H(4) = 96

H(0) = 83
W(0) = 65
H(2) = 68
W(2) = 50
frameY(2) = 2
H(1) = 83 / 2
W(1) = 68
H(3) = 50
W(3) = 50



sngY = 400
Shots = Bullet.LBound
Scene = True
EnemyPos(1) = Me.ScaleWidth
EnemyPos(2) = sngY
For Spare = Bullet.LBound To Bullet.UBound

Bullet(Spare).Top = sngY + H(0) / 3
Bullet(Spare).Left = sngX + W(0)

Next Spare
End Sub



Private Sub Movie_Timer()
Cls
Print Counter
Counter = Counter + 1

Mess(Exchange).Top = Bubble(Exchange).Top + 30
Mess(Exchange).Left = Bubble(Exchange).Left + 50

If Exchange Mod 2 = 0 Then
Bubble(Exchange).Left = sngX - W(A) - 250
Bubble(Exchange).Top = sngY - Bubble(Exchange).Height + 30
Else
Bubble(Exchange).Left = EnemyPos(1) + W(2)
Bubble(Exchange).Top = EnemyPos(2) - Bubble(Exchange).Height + 30
End If

bitblt Me.hDC, sngX, sngY, W(A), H(A), picMask(A).hDC, _
     frameX(A) * W(A) + 3, frameY(A) * H(A) + 3, SRCAND
bitblt Me.hDC, sngX, sngY, W(A), H(A), picSprite(A).hDC, _
  frameX(A) * W(A) + 3, frameY(A) * H(A) + 3, SRCINVERT


bitblt Me.hDC, EnemyPos(1), EnemyPos(2), W(2), H(2), picMask(2).hDC, _
     frameX(2) * W(2) + 2, frameY(2) * H(2) + 3, SRCAND
bitblt Me.hDC, EnemyPos(1), EnemyPos(2), W(2), H(2), picSprite(2).hDC, _
  frameX(2) * W(2) + 2, frameY(2) * H(2) + 3, SRCINVERT
  
If Counter < 75 Then
A = 0
frameY(0) = 1
frameX(0) = frameX(0) + 1
If frameX(0) > 5 Then frameX(0) = 0
sngX = sngX + 5

ElseIf Counter > 75 And Counter < 77 Then
A = 0
frameY(0) = 0
frameX(0) = 0

ElseIf Counter > 77 And Counter < 140 Then
frameY(2) = 3
frameX(2) = frameX(2) + 1
If frameX(2) > 2 Then frameX(2) = 0
EnemyPos(1) = EnemyPos(1) - 10

ElseIf Counter > 140 And Counter < 200 Then
Mess(Exchange).Visible = True
Bubble(Exchange).Visible = True

ElseIf Counter > 200 And Counter < 202 Then

Mess(Exchange).Visible = False
Bubble(Exchange).Visible = False
Exchange = Exchange + 1

ElseIf Counter > 202 And Counter < 260 Then
Mess(Exchange).Visible = True
Bubble(Exchange).Visible = True

ElseIf Counter > 260 And Counter < 262 Then

Mess(Exchange).Visible = False
Bubble(Exchange).Visible = False
Exchange = Exchange + 1

ElseIf Counter > 262 And Counter < 320 Then
Mess(Exchange).Visible = True
Bubble(Exchange).Visible = True

ElseIf Counter > 320 And Counter < 322 Then

Mess(Exchange).Visible = False
Bubble(Exchange).Visible = False
Exchange = Exchange + 1


ElseIf Counter > 322 And Counter < 380 Then
Mess(Exchange).Visible = True
Bubble(Exchange).Visible = True
Mess(Exchange).Left = Mess(Exchange).Left + 10
WEP.Left = EnemyPos(1) + W(2)
WEP.Visible = True

ElseIf Counter > 380 And Counter < 382 Then

Mess(Exchange).Visible = False
Bubble(Exchange).Visible = False
Exchange = Exchange + 1

ElseIf Counter > 382 And Counter < 440 Then
Mess(Exchange).Visible = True
Bubble(Exchange).Visible = True

ElseIf Counter > 440 And Counter < 442 Then

Mess(Exchange).Visible = False
Bubble(Exchange).Visible = False
Exchange = Exchange + 1

ElseIf Counter > 442 And Counter < 500 Then
Mess(Exchange).Visible = True
Bubble(Exchange).Visible = True
WEP.Visible = False

ElseIf Counter > 500 And Counter < 502 Then

Mess(Exchange).Visible = False
Bubble(Exchange).Visible = False

ElseIf Counter > 502 And Counter < 530 Then

frameY(2) = 1
frameX(2) = frameX(2) + 1
If frameX(2) > 2 Then frameX(2) = 0
EnemyPos(1) = EnemyPos(1) + 20
ElseIf Counter > 530 And Counter < 536 Then

frameY(2) = 3
frameX(2) = 0

Scene = False
Health1.Visible = True
Health2.Visible = True

Movie.Enabled = False

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


bitblt Me.hDC, EnemyPos(1), EnemyPos(2), W(2), H(2), picMask(2).hDC, _
     frameX(2) * W(2) + 2, frameY(2) * H(2) + 3, SRCAND
bitblt Me.hDC, EnemyPos(1), EnemyPos(2), W(2), H(2), picSprite(2).hDC, _
  frameX(2) * W(2) + 2, frameY(2) * H(2) + 3, SRCINVERT




  
If blnShoot = True Then
  bitblt Me.hDC, sngX + 2, sngY + 3, W(1), H(1), picMask(1).hDC, _
     frameX(1) * W(1) + 3, frameY(1) * H(1) + 3, SRCAND
bitblt Me.hDC, sngX + 2, sngY + 3, W(1), H(1), picSprite(1).hDC, _
  frameX(1) * W(1) + 3, frameY(1) * H(1) + 3, SRCINVERT
End If

Call Random

If Send = True Then Call RedSignal

For Spare = Bullet.LBound To Shots
Bullet(Spare).Left = Bullet(Spare).Left + 50
Bullet(Spare).Visible = True
Next

If Dead = True Then Call Blood
Call Collision
   End Sub


Private Sub Shoot()
If Scene = True Then Exit Sub
Bullet(Shots).Visible = True
Bullet(Shots).Top = sngY + H(0) / 3
Bullet(Shots).Left = sngX + W(0)

Do Until Bullet(Shots).Left > Me.ScaleWidth
DoEvents

Bullet(Shots).Left = Bullet(Shots).Left + 40

Loop
Shots = Shots + 1


End Sub


Private Sub Random()
If Dead = True Then Exit Sub
Dim B As Integer

Randomize
B = Int(20 * Rnd)

Select Case B
Case 1
For Spare = 1 To 30
BArc(Spare, 1) = EnemyPos(1)
BArc(Spare, 2) = EnemyPos(2) + H(2) / 2
Radius(Spare) = 0
Next Spare

Case Is > 15
Waves = Waves + 1
Send = True
Case Is < 10
Call Wall

Case 11 - 14
Block.Visible = False
Block.Left = -2000
End Select
End Sub

Private Sub Jump()
If Scene = True Then Exit Sub
If Jumping = True Then Exit Sub
Jumping = True
Do Until sngY < 200
DoEvents
For Spare = -200000 To 200000
Next
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
For Spare = -200000 To 200000
Next

frameX(3) = frameX(3) + 1
If frameX(3) > 3 Then frameX(3) = 0
sngY = sngY + 10
Loop
A = 0
Jumping = False

End Sub

Private Sub RedSignal()
If Win = True Then Exit Sub
If Waves > 29 Then Waves = 0
Dim Q As Integer 'For second indexs

'grow, draw and move
For Spare = 1 To 30
For Q = 1 To Waves

        Radius(Spare) = Radius(Spare) + 1
        BArc(Spare, 1) = BArc(Spare, 1) - 10
        Circle (BArc(Q, 1), BArc(Q, 2)), Radius(Q), vbRed, 2, 4, 4

        
    'Reset
        If BArc(Q, 1) < Me.ScaleLeft Then
            Radius(Spare) = 2
            BArc(Spare, 1) = EnemyPos(1)
            Send = False
        End If
Next Q
    Next Spare


'Collision
    For Spare = sngY To sngY + H(A)
        For Q = sngX To sngX + W(A)

            If Point(Q, Spare) = vbRed Then
                Health1.Width = Health1.Width - 50
                If Health1.Width < 20 Then
                MsgBox "Game over"
                End
                End If
                Exit Sub
            End If
        Next Q
    Next Spare

    
End Sub

Private Sub Collision()

If Win = True Then Exit Sub

For Spare = Bullet.LBound To Bullet.UBound

If Bullet(Spare).Left + Bullet(Spare).Width + 5 >= EnemyPos(1) And Bullet(Spare).Left <= EnemyPos(1) + W(2) Then
If Bullet(Spare).Top + Bullet(Spare).Height >= EnemyPos(2) + 3 And Bullet(Spare).Top <= EnemyPos(2) + H(2) Then

If Health2.Width > 50 Then Health2.Width = Health2.Width - 50
Exit Sub
End If
End If

If Bullet(Spare).Left + Bullet(Spare).Width >= Block.Left And Bullet(Spare).Left <= Block.Left + Block.Width Then
If Bullet(Spare).Top + Bullet(Spare).Height >= Block.Top + 3 And Bullet(Spare).Top <= Block.Top + Block.Height Then

Bullet(Spare).Left = 2000
Exit Sub
End If
End If

Next Spare

If Health2.Width < 60 Then
Dead = True
Call Blood
End If

If sngX + W(A) >= WEP.Left + 10 And sngX <= WEP.Left + WEP.Width - 5 Then
If sngY + W(A) >= WEP.Top + 3 And sngY <= WEP.Top + WEP.Height Then
Final.Show
Unload Me
Exit Sub
End If
End If
End Sub

Private Sub Wall()
Block.Visible = True
Block.Left = EnemyPos(1) - Block.Width - 10
End Sub

Private Sub Blood()


Dead = True
Block.Visible = False
Block.Left = -2000
frameY(4) = 0

Counter = Counter + 1
If Counter > 540 And Counter < 542 Then
Spare = MsgBox("Target IS too strong. taking evasive action", vbCritical, "TCP")
ElseIf Counter > 542 And Counter < 652 Then
    
  
WEP.Left = 600
WEP.Top = 450
WEP.Visible = True
Call Form_KeyDown(vbKeyA, A)
EnemyPos(1) = EnemyPos(1) - 30


End If
End Sub

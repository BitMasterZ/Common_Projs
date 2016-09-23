VERSION 5.00
Begin VB.Form frmGameC 
   BackColor       =   &H00FFFFFF&
   BorderStyle     =   0  'None
   Caption         =   "Brick Breaker"
   ClientHeight    =   8715
   ClientLeft      =   2445
   ClientTop       =   1155
   ClientWidth     =   9885
   Icon            =   "frmBrick.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Moveable        =   0   'False
   ScaleHeight     =   8715
   ScaleWidth      =   9885
   ShowInTaskbar   =   0   'False
   Begin VB.CommandButton cmdExit 
      Cancel          =   -1  'True
      Caption         =   "Exit"
      Height          =   495
      Left            =   4800
      TabIndex        =   3
      Top             =   4680
      Visible         =   0   'False
      Width           =   1215
   End
   Begin VB.CommandButton cmdReturn 
      Caption         =   "Return to main"
      Height          =   495
      Left            =   3240
      TabIndex        =   2
      Top             =   4680
      Visible         =   0   'False
      Width           =   1215
   End
   Begin VB.CommandButton cmdStart 
      Caption         =   "Start"
      Height          =   615
      Left            =   7440
      TabIndex        =   1
      Top             =   3720
      Width           =   1695
   End
   Begin VB.Timer tmrMove 
      Left            =   7440
      Top             =   4560
   End
   Begin VB.Shape shpLife 
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H00008000&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   7
      Left            =   2880
      Top             =   7800
      Visible         =   0   'False
      Width           =   1575
   End
   Begin VB.Shape shpLife 
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H00008000&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   6
      Left            =   1200
      Top             =   7800
      Visible         =   0   'False
      Width           =   1575
   End
   Begin VB.Shape shpBrick 
      BorderColor     =   &H00808080&
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   100
      Left            =   0
      Top             =   120
      Width           =   975
   End
   Begin VB.Shape shpBrick 
      BorderColor     =   &H00808080&
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   99
      Left            =   8640
      Top             =   1800
      Width           =   975
   End
   Begin VB.Shape shpBrick 
      BorderColor     =   &H00808080&
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   98
      Left            =   8640
      Top             =   1320
      Width           =   975
   End
   Begin VB.Shape shpBrick 
      BorderColor     =   &H00808080&
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   97
      Left            =   8640
      Top             =   840
      Width           =   975
   End
   Begin VB.Shape shpBrick 
      BorderColor     =   &H00808080&
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   96
      Left            =   7680
      Top             =   2040
      Width           =   975
   End
   Begin VB.Shape shpBrick 
      BorderColor     =   &H00808080&
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   95
      Left            =   7680
      Top             =   1560
      Width           =   975
   End
   Begin VB.Shape shpBrick 
      BorderColor     =   &H00808080&
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   94
      Left            =   7680
      Top             =   1080
      Width           =   975
   End
   Begin VB.Shape shpBrick 
      BorderColor     =   &H00808080&
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   93
      Left            =   7680
      Top             =   600
      Width           =   975
   End
   Begin VB.Shape shpBrick 
      BorderColor     =   &H00808080&
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   92
      Left            =   6720
      Top             =   1800
      Width           =   975
   End
   Begin VB.Shape shpBrick 
      BorderColor     =   &H00808080&
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   91
      Left            =   6720
      Top             =   1320
      Width           =   975
   End
   Begin VB.Shape shpBrick 
      BorderColor     =   &H00808080&
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   90
      Left            =   6720
      Top             =   840
      Width           =   975
   End
   Begin VB.Shape shpBrick 
      BorderColor     =   &H00808080&
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   89
      Left            =   5760
      Top             =   2040
      Width           =   975
   End
   Begin VB.Shape shpBrick 
      BorderColor     =   &H00808080&
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   88
      Left            =   5760
      Top             =   1560
      Width           =   975
   End
   Begin VB.Shape shpBrick 
      BorderColor     =   &H00808080&
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   87
      Left            =   5760
      Top             =   1080
      Width           =   975
   End
   Begin VB.Shape shpBrick 
      BorderColor     =   &H00808080&
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   86
      Left            =   4800
      Top             =   1800
      Width           =   975
   End
   Begin VB.Shape shpBrick 
      BorderColor     =   &H00808080&
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   85
      Left            =   4800
      Top             =   1320
      Width           =   975
   End
   Begin VB.Shape shpBrick 
      BorderColor     =   &H00808080&
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   84
      Left            =   3840
      Top             =   2040
      Width           =   975
   End
   Begin VB.Shape shpBrick 
      BorderColor     =   &H00808080&
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   83
      Left            =   3840
      Top             =   1560
      Width           =   975
   End
   Begin VB.Shape shpBrick 
      BorderColor     =   &H00808080&
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   82
      Left            =   2880
      Top             =   1800
      Width           =   975
   End
   Begin VB.Shape shpBrick 
      BorderColor     =   &H00808080&
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   81
      Left            =   1920
      Top             =   2040
      Width           =   975
   End
   Begin VB.Shape shpBrick 
      BorderColor     =   &H00808080&
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   80
      Left            =   960
      Top             =   1800
      Width           =   975
   End
   Begin VB.Shape shpBrick 
      BorderColor     =   &H00808080&
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   79
      Left            =   1920
      Top             =   1560
      Width           =   975
   End
   Begin VB.Shape shpBrick 
      BorderColor     =   &H00808080&
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   78
      Left            =   2880
      Top             =   1320
      Width           =   975
   End
   Begin VB.Shape shpBrick 
      BorderColor     =   &H00808080&
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   77
      Left            =   3840
      Top             =   1080
      Width           =   975
   End
   Begin VB.Shape shpBrick 
      BorderColor     =   &H00808080&
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   76
      Left            =   2880
      Top             =   840
      Width           =   975
   End
   Begin VB.Shape shpBrick 
      BorderColor     =   &H00808080&
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   75
      Left            =   3840
      Top             =   600
      Width           =   975
   End
   Begin VB.Shape shpBrick 
      BorderColor     =   &H00808080&
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   74
      Left            =   4800
      Top             =   840
      Width           =   975
   End
   Begin VB.Shape shpBrick 
      BorderColor     =   &H00808080&
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   73
      Left            =   5760
      Top             =   600
      Width           =   975
   End
   Begin VB.Shape shpBrick 
      BorderColor     =   &H00808080&
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   72
      Left            =   6720
      Top             =   360
      Width           =   975
   End
   Begin VB.Shape shpBrick 
      BorderColor     =   &H00808080&
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   71
      Left            =   8640
      Top             =   360
      Width           =   975
   End
   Begin VB.Shape shpBrick 
      BorderColor     =   &H00808080&
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   70
      Left            =   4800
      Top             =   360
      Width           =   975
   End
   Begin VB.Shape shpBrick 
      BorderColor     =   &H00808080&
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   69
      Left            =   7680
      Top             =   120
      Width           =   975
   End
   Begin VB.Shape shpBrick 
      BorderColor     =   &H00808080&
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   68
      Left            =   5760
      Top             =   120
      Width           =   975
   End
   Begin VB.Shape shpBrick 
      BorderColor     =   &H00808080&
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   67
      Left            =   3840
      Top             =   120
      Width           =   975
   End
   Begin VB.Shape shpBrick 
      BorderColor     =   &H00808080&
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   66
      Left            =   1920
      Top             =   120
      Width           =   975
   End
   Begin VB.Shape shpBrick 
      BorderColor     =   &H00808080&
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   65
      Left            =   2880
      Top             =   360
      Width           =   975
   End
   Begin VB.Shape shpBrick 
      BorderColor     =   &H00808080&
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   64
      Left            =   1920
      Top             =   600
      Width           =   975
   End
   Begin VB.Shape shpBrick 
      BorderColor     =   &H00808080&
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   63
      Left            =   1920
      Top             =   1080
      Width           =   975
   End
   Begin VB.Shape shpBrick 
      BorderColor     =   &H00808080&
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   62
      Left            =   960
      Top             =   1320
      Width           =   975
   End
   Begin VB.Shape shpBrick 
      BorderColor     =   &H00808080&
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   61
      Left            =   960
      Top             =   840
      Width           =   975
   End
   Begin VB.Shape shpBrick 
      BorderColor     =   &H00808080&
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   60
      Left            =   960
      Top             =   360
      Width           =   975
   End
   Begin VB.Shape shpBrick 
      BorderColor     =   &H00808080&
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   59
      Left            =   0
      Top             =   2040
      Width           =   975
   End
   Begin VB.Shape shpBrick 
      BorderColor     =   &H00808080&
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   58
      Left            =   0
      Top             =   1560
      Width           =   975
   End
   Begin VB.Shape shpBrick 
      BorderColor     =   &H00808080&
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   57
      Left            =   0
      Top             =   1080
      Width           =   975
   End
   Begin VB.Shape shpBrick 
      BorderColor     =   &H00808080&
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   56
      Left            =   0
      Top             =   600
      Width           =   975
   End
   Begin VB.Label lblScore 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Score:"
      BeginProperty Font 
         Name            =   "Old English Text MT"
         Size            =   24
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   570
      Left            =   0
      TabIndex        =   5
      Top             =   8160
      Width           =   1290
   End
   Begin VB.Label lblHead 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Lives:"
      BeginProperty Font 
         Name            =   "Old English Text MT"
         Size            =   24
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   570
      Left            =   0
      TabIndex        =   4
      Top             =   7200
      Width           =   1260
   End
   Begin VB.Shape shpBrick 
      BorderColor     =   &H00808080&
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   55
      Left            =   7680
      Top             =   2280
      Width           =   975
   End
   Begin VB.Shape shpBrick 
      BorderColor     =   &H00808080&
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   54
      Left            =   7680
      Top             =   1320
      Width           =   975
   End
   Begin VB.Shape shpBrick 
      BorderColor     =   &H00808080&
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   53
      Left            =   7680
      Top             =   1800
      Width           =   975
   End
   Begin VB.Shape shpBrick 
      BorderColor     =   &H00808080&
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   52
      Left            =   6720
      Top             =   2040
      Width           =   975
   End
   Begin VB.Shape shpBrick 
      BorderColor     =   &H00808080&
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   51
      Left            =   3840
      Top             =   1320
      Width           =   975
   End
   Begin VB.Shape shpBrick 
      BorderColor     =   &H00808080&
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   50
      Left            =   8640
      Top             =   1080
      Width           =   975
   End
   Begin VB.Shape shpBrick 
      BorderColor     =   &H00808080&
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   49
      Left            =   7680
      Top             =   360
      Width           =   975
   End
   Begin VB.Shape shpBrick 
      BorderColor     =   &H00808080&
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   48
      Left            =   8640
      Top             =   2040
      Width           =   975
   End
   Begin VB.Shape shpBrick 
      BorderColor     =   &H00808080&
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   47
      Left            =   6720
      Top             =   1080
      Width           =   975
   End
   Begin VB.Shape shpBrick 
      BorderColor     =   &H00808080&
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   46
      Left            =   5760
      Top             =   360
      Width           =   975
   End
   Begin VB.Shape shpBrick 
      BorderColor     =   &H00808080&
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   45
      Left            =   1920
      Top             =   1320
      Width           =   975
   End
   Begin VB.Shape shpBrick 
      BorderColor     =   &H00808080&
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   44
      Left            =   3840
      Top             =   840
      Width           =   975
   End
   Begin VB.Shape shpBrick 
      BorderColor     =   &H00808080&
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   43
      Left            =   8640
      Top             =   600
      Width           =   975
   End
   Begin VB.Shape shpBrick 
      BorderColor     =   &H00808080&
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   42
      Left            =   3840
      Top             =   2280
      Width           =   975
   End
   Begin VB.Shape shpBrick 
      BorderColor     =   &H00808080&
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   41
      Left            =   1920
      Top             =   840
      Width           =   975
   End
   Begin VB.Shape shpBrick 
      BorderColor     =   &H00808080&
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   40
      Left            =   2880
      Top             =   1080
      Width           =   975
   End
   Begin VB.Shape shpBrick 
      BorderColor     =   &H00808080&
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   39
      Left            =   0
      Top             =   840
      Width           =   975
   End
   Begin VB.Shape shpBrick 
      BorderColor     =   &H00808080&
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   38
      Left            =   2880
      Top             =   600
      Width           =   975
   End
   Begin VB.Shape shpBrick 
      BorderColor     =   &H00808080&
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   37
      Left            =   4800
      Top             =   2040
      Width           =   975
   End
   Begin VB.Shape shpBrick 
      BorderColor     =   &H00808080&
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   36
      Left            =   3840
      Top             =   360
      Width           =   975
   End
   Begin VB.Shape shpBrick 
      BorderColor     =   &H00808080&
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   35
      Left            =   960
      Top             =   120
      Width           =   975
   End
   Begin VB.Shape shpBrick 
      BorderColor     =   &H00808080&
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   34
      Left            =   2880
      Top             =   1560
      Width           =   975
   End
   Begin VB.Shape shpBrick 
      BorderColor     =   &H00808080&
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   33
      Left            =   960
      Top             =   2040
      Width           =   975
   End
   Begin VB.Shape shpBrick 
      BorderColor     =   &H00808080&
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   32
      Left            =   4800
      Top             =   1560
      Width           =   975
   End
   Begin VB.Shape shpBrick 
      BorderColor     =   &H00808080&
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   31
      Left            =   960
      Top             =   600
      Width           =   975
   End
   Begin VB.Shape shpBrick 
      BorderColor     =   &H00808080&
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   30
      Left            =   8640
      Top             =   2280
      Width           =   975
   End
   Begin VB.Shape shpBrick 
      BorderColor     =   &H00808080&
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   29
      Left            =   960
      Top             =   1080
      Width           =   975
   End
   Begin VB.Shape shpBrick 
      BorderColor     =   &H00808080&
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   28
      Left            =   6720
      Top             =   2280
      Width           =   975
   End
   Begin VB.Shape shpBrick 
      BorderColor     =   &H00808080&
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   27
      Left            =   0
      Top             =   1320
      Width           =   975
   End
   Begin VB.Shape shpBrick 
      BorderColor     =   &H00808080&
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   26
      Left            =   8640
      Top             =   120
      Width           =   975
   End
   Begin VB.Shape shpBrick 
      BorderColor     =   &H00808080&
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   25
      Left            =   5760
      Top             =   1800
      Width           =   975
   End
   Begin VB.Shape shpBrick 
      BorderColor     =   &H00808080&
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   24
      Left            =   4800
      Top             =   2280
      Width           =   975
   End
   Begin VB.Shape shpBrick 
      BorderColor     =   &H00808080&
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   23
      Left            =   2880
      Top             =   2280
      Width           =   975
   End
   Begin VB.Shape shpBrick 
      BorderColor     =   &H00808080&
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   22
      Left            =   1920
      Top             =   360
      Width           =   975
   End
   Begin VB.Shape shpBrick 
      BorderColor     =   &H00808080&
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   21
      Left            =   7680
      Top             =   840
      Width           =   975
   End
   Begin VB.Shape shpBrick 
      BorderColor     =   &H00808080&
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   20
      Left            =   2880
      Shape           =   4  'Rounded Rectangle
      Top             =   2040
      Width           =   975
   End
   Begin VB.Label lblPause 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Paused"
      BeginProperty Font 
         Name            =   "Old English Text MT"
         Size            =   48
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1155
      Left            =   3120
      TabIndex        =   0
      Top             =   3600
      Visible         =   0   'False
      Width           =   2985
   End
   Begin VB.Shape shpLife 
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H00008000&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   5
      Left            =   7920
      Top             =   7320
      Visible         =   0   'False
      Width           =   1575
   End
   Begin VB.Shape shpLife 
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H00008000&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   4
      Left            =   6240
      Top             =   7320
      Visible         =   0   'False
      Width           =   1575
   End
   Begin VB.Shape shpLife 
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H00008000&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   3
      Left            =   4560
      Top             =   7320
      Visible         =   0   'False
      Width           =   1575
   End
   Begin VB.Shape shpLife 
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H00008000&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   2
      Left            =   2880
      Top             =   7320
      Visible         =   0   'False
      Width           =   1575
   End
   Begin VB.Shape shpLife 
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H00008000&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   1
      Left            =   1200
      Top             =   7320
      Visible         =   0   'False
      Width           =   1575
   End
   Begin VB.Shape shpBall 
      BorderStyle     =   0  'Transparent
      FillColor       =   &H00C00000&
      FillStyle       =   0  'Solid
      Height          =   375
      Left            =   5400
      Shape           =   3  'Circle
      Top             =   3240
      Width           =   495
   End
   Begin VB.Shape shpBrick 
      BorderColor     =   &H00808080&
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   19
      Left            =   6720
      Top             =   600
      Width           =   975
   End
   Begin VB.Shape shpBrick 
      BorderColor     =   &H00808080&
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   18
      Left            =   5760
      Top             =   840
      Width           =   975
   End
   Begin VB.Shape shpBrick 
      BorderColor     =   &H00808080&
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   17
      Left            =   6720
      Top             =   1560
      Width           =   975
   End
   Begin VB.Shape shpBrick 
      BorderColor     =   &H00808080&
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   16
      Left            =   8640
      Top             =   1560
      Width           =   975
   End
   Begin VB.Shape shpBrick 
      BorderColor     =   &H00808080&
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   15
      Left            =   5760
      Top             =   1320
      Width           =   975
   End
   Begin VB.Shape shpBrick 
      BorderColor     =   &H00808080&
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   14
      Left            =   960
      Top             =   1560
      Width           =   975
   End
   Begin VB.Shape shpBrick 
      BorderColor     =   &H00808080&
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   13
      Left            =   960
      Top             =   2280
      Width           =   975
   End
   Begin VB.Shape shpBrick 
      BorderColor     =   &H00808080&
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   12
      Left            =   2880
      Top             =   120
      Width           =   975
   End
   Begin VB.Shape shpBrick 
      BorderColor     =   &H00808080&
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   11
      Left            =   3840
      Top             =   1800
      Width           =   975
   End
   Begin VB.Shape shpBrick 
      BorderColor     =   &H00808080&
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   10
      Left            =   1920
      Top             =   1800
      Width           =   975
   End
   Begin VB.Shape shpBrick 
      BorderColor     =   &H00808080&
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   9
      Left            =   4800
      Top             =   1080
      Width           =   975
   End
   Begin VB.Shape shpBrick 
      BorderColor     =   &H00808080&
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   8
      Left            =   0
      Top             =   2280
      Width           =   975
   End
   Begin VB.Shape shpBrick 
      BorderColor     =   &H00808080&
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   7
      Left            =   6720
      Top             =   120
      Width           =   975
   End
   Begin VB.Shape shpBrick 
      BorderColor     =   &H00808080&
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   6
      Left            =   0
      Top             =   1800
      Width           =   975
   End
   Begin VB.Shape shpBrick 
      BorderColor     =   &H00808080&
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   5
      Left            =   1920
      Top             =   2280
      Width           =   975
   End
   Begin VB.Shape shpBrick 
      BorderColor     =   &H00808080&
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   4
      Left            =   4800
      Top             =   600
      Width           =   975
   End
   Begin VB.Shape shpBrick 
      BorderColor     =   &H00808080&
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   3
      Left            =   5760
      Top             =   2280
      Width           =   975
   End
   Begin VB.Shape shpBrick 
      BorderColor     =   &H00808080&
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   2
      Left            =   4800
      Top             =   120
      Width           =   975
   End
   Begin VB.Shape shpBrick 
      BorderColor     =   &H00808080&
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   1
      Left            =   0
      Top             =   360
      Width           =   975
   End
   Begin VB.Shape shpWall 
      BorderColor     =   &H00C0C0C0&
      BorderWidth     =   3
      FillColor       =   &H000000FF&
      Height          =   6975
      Left            =   0
      Top             =   -120
      Width           =   9855
   End
   Begin VB.Shape shpPaddle 
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H00008000&
      FillStyle       =   0  'Solid
      Height          =   375
      Left            =   3360
      Shape           =   4  'Rounded Rectangle
      Top             =   6120
      Width           =   3255
   End
   Begin VB.Image Image1 
      Height          =   2385
      Left            =   0
      Picture         =   "frmBrick.frx":7132
      Stretch         =   -1  'True
      Top             =   120
      Width           =   9600
   End
   Begin VB.Menu mnuFile 
      Caption         =   "File"
      Begin VB.Menu mnuFileQuit 
         Caption         =   "Quit Game"
      End
      Begin VB.Menu mnuFileExit 
         Caption         =   "Exit Program"
      End
   End
End
Attribute VB_Name = "frmGameC"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Coded by: Shobhit and Senthuwran
'Programmed by: Shobhit Adlakha & sentuwran
'Purpose of  form: The castle wars game

Option Explicit
Dim sngX As Single, sngY As Single 'Position of the ball

Dim intXMove As Integer, intYMove As Integer  'The speed of the paddle and the ball
Dim intCounter As Integer, intLives As Integer ' The number of lives available and bricks destroyed
Dim blnMsg As Integer  'For message boxs
Dim intSpare As Integer
Dim intScore As Integer 'To store the score of the player
Dim intPosition(1 To 100) As Integer 'To store the original position of the bricks

Private Sub cmdExit_Click()
    
    End

End Sub

Private Sub cmdReturn_Click()

If intScore > intHighScore Then 'If palyer score is greater than current high score
    
    intHighScore = intScore 'Assign to high score
    strCName = InputBox("High Score!", "Enter Your Name", "Anonymus") 'Prompt for user name


frmHighC.Show
Unload Me

Else

'Redirects to main form
    frmMainC.Show
    Unload Me

End If

Call Reset 'To reset the game
End Sub

Private Sub cmdStart_Click()


'Starts game
    cmdStart.Visible = False
    tmrMove.Interval = 1
    
    Call Difficulty
        

End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)

'Key pressed by user
    Select Case KeyCode

    Case vbKeyP 'If user presses P
    
    'Pauses the game
    
        lblPause.Visible = Not lblPause.Visible
        Me.Enabled = Not Me.Enabled
        tmrMove.Enabled = Not tmrMove.Enabled

    End Select

End Sub

Private Sub Form_Load()
 
'Assigns the default position of the bricks to the integers
    For intSpare = shpBrick.LBound To shpBrick.UBound

        intPosition(intSpare) = shpBrick(intSpare).Left

    Next intSpare


'default position of the ball
    sngX = shpBall.Left
    sngY = shpBall.Top

'default position of the paddle
    

    
'Displays the number of lives
    For intSpare = shpLife.LBound To intLives
 
        shpLife(intSpare).Visible = True
 
    Next intSpare
 
End Sub

Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)

If X - shpPaddle.Width / 2 >= shpWall.Left Then
    If X + shpPaddle.Width / 2 <= shpWall.Left + shpWall.Width Then
        
        shpPaddle.Left = X - shpPaddle.Width / 2
    
    End If
End If
End Sub

Private Sub mnuFileExit_Click()
    
    End

End Sub

Private Sub mnuFileQuit_Click()
Call Reset 'To reset the game

'Redirects to main form
    frmMainC.Show
    Unload Me


End Sub

Private Sub tmrMove_Timer()
 


'Positioning shapes
    shpBall.Left = sngX
    shpBall.Top = sngY

'Movement of ball
    sngX = sngX + intXMove
    sngY = sngY + intYMove
  
  
Call WCollision
Call BCollision
Call PCollision
Call WinLoose

intScore = intCounter * 10
lblScore.Caption = "Score: " & intScore

End Sub



Private Sub Reset() 'To reset the game

'Reset ball's position
    shpBall.Top = 3360
    shpBall.Left = 4680



'Reset brick position
    For intSpare = shpBrick.LBound To shpBrick.UBound

        shpBrick(intSpare).Left = intPosition(intSpare) 'Sends bricks back to original position
        shpBrick(intSpare).Visible = True

    Next intSpare
    
intCounter = 0 'Sets score to zero
lblPause.Caption = "Paused"

For intSpare = shpLife.LBound To 7

shpLife(intSpare).Visible = False

Next

End Sub

Private Sub WCollision()
'Ball collision with wall
    If sngX < shpWall.Left Then 'Left side of wall
    
        intXMove = -intXMove
    
    ElseIf sngX > shpWall.Left + shpWall.Width Then 'right side of wall
        
        intXMove = -intXMove
    
    ElseIf sngY < shpWall.Top Then 'top of wall


        intYMove = -intYMove
                    
    End If
End Sub

Private Sub BCollision()
Dim intA As Integer 'to randomize brick collision

'Ball collision with bricks
    For intSpare = shpBrick.LBound To shpBrick.UBound
'The Ubound is the highest index and Lbound is the lowest index

        If sngX >= shpBrick(intSpare).Left Then 'From left
            If sngX <= shpBrick(intSpare).Left + shpBrick(intSpare).Width Then 'From right
                If sngY > shpBrick(intSpare).Top Then 'From top
                    If sngY < shpBrick(intSpare).Top + shpBrick(intSpare).Height Then 'From Bottom

                    'Randomize ball collision with bricks
                        intA = Int(2 * Rnd) + 1
                    
                        If intA = 1 Then
                        
                            intYMove = -intYMove
                    
                        ElseIf intA = 2 Then
                        
                            intXMove = -intXMove
                    
                        End If
                    
                    'Make brick invisible and send it somewhere else
                        shpBrick(intSpare).Visible = False
                        shpBrick(intSpare).Left = -9999
                    
                        intCounter = intCounter + 1 'To check the number of bricks destroyed
                
                    End If
                End If
            End If
        End If

    Next intSpare
    

End Sub

Private Sub WinLoose()

If intCounter = shpBrick.UBound Then  'If all bricks are destroyed
    
    lblPause.Visible = True
    lblPause.Caption = "Victory"
    tmrMove.Enabled = False
    cmdReturn.Visible = True
    cmdExit.Visible = True
    
End If


If sngY > shpWall.Top + shpWall.Height Then 'If ball hits bottom of the wall

    blnMsg = MsgBox("try Again", vbExclamation, "You lost a life")

'Reset Position of ball
    sngY = 3000



'Decrease lives
    shpLife(intLives).Visible = False
    intLives = intLives - 1

    If intLives < shpLife.LBound Then 'If all lives are lost then
        
        lblPause.Visible = True
        lblPause.Caption = "Defeat"
        tmrMove.Enabled = False
        cmdReturn.Visible = True
        cmdExit.Visible = True
    
    End If

End If
End Sub

Private Sub PCollision()

'Ball collision with Paddle
    If sngX >= shpPaddle.Left Then 'From left
        If sngX <= shpPaddle.Left + shpPaddle.Width Then 'From right
            If sngY > shpPaddle.Top Then 'From top
                If sngY < shpPaddle.Top + shpPaddle.Height Then 'From right
                        
                        intYMove = -intYMove
                    
                  
                End If
            End If
        End If
    End If
    
End Sub

Private Sub Difficulty()

Select Case strDiff
    
Case "Medium"
    intYMove = -100
    intXMove = 100
    intLives = 5
    
Case "Hard"

    intYMove = -200
    intXMove = 200
    intLives = 3
    
Case "Insane"

    intYMove = -300
    intXMove = 300
    intLives = 1

Case Else
    intYMove = -70
    intXMove = 70
    intLives = 7

End Select

For intSpare = shpLife.LBound To intLives
    shpLife(intSpare).Visible = True
Next
End Sub

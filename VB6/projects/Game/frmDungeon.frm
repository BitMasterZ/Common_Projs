VERSION 5.00
Begin VB.Form frmDungeon 
   AutoRedraw      =   -1  'True
   BackColor       =   &H00000000&
   BorderStyle     =   0  'None
   Caption         =   "Form1"
   ClientHeight    =   8745
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   14295
   FillColor       =   &H000080FF&
   FillStyle       =   2  'Horizontal Line
   BeginProperty Font 
      Name            =   "OCR A Extended"
      Size            =   18
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   ForeColor       =   &H00FFFFFF&
   HasDC           =   0   'False
   Icon            =   "frmDungeon.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   583
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   953
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.PictureBox picMShaman 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1935
      Left            =   12840
      Picture         =   "frmDungeon.frx":1CFA
      ScaleHeight     =   125
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   77
      TabIndex        =   64
      Top             =   5040
      Visible         =   0   'False
      Width           =   1215
   End
   Begin VB.PictureBox picSShaman 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1935
      Left            =   12840
      Picture         =   "frmDungeon.frx":3AAD
      ScaleHeight     =   125
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   77
      TabIndex        =   63
      Top             =   3000
      Visible         =   0   'False
      Width           =   1215
   End
   Begin VB.PictureBox picFiles 
      BackColor       =   &H00000000&
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   5055
      Left            =   5280
      Picture         =   "frmDungeon.frx":5737
      ScaleHeight     =   323.301
      ScaleMode       =   0  'User
      ScaleWidth      =   397
      TabIndex        =   56
      Top             =   1200
      Visible         =   0   'False
      Width           =   6015
      Begin VB.CommandButton cmdLoad 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Load"
         Height          =   495
         Left            =   120
         Picture         =   "frmDungeon.frx":7B3D9
         Style           =   1  'Graphical
         TabIndex        =   61
         Top             =   4440
         Width           =   1935
      End
      Begin VB.CommandButton cmdSave 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Save"
         Height          =   495
         Left            =   120
         Picture         =   "frmDungeon.frx":B17A0
         Style           =   1  'Graphical
         TabIndex        =   60
         Top             =   4440
         Width           =   1935
      End
      Begin VB.ListBox lstFiles 
         Appearance      =   0  'Flat
         BackColor       =   &H00C0FFFF&
         Height          =   3405
         Left            =   120
         TabIndex        =   59
         Top             =   960
         Width           =   5775
      End
      Begin VB.CommandButton cmdFileExit 
         BackColor       =   &H00004080&
         Caption         =   "X"
         Height          =   375
         Left            =   5520
         Style           =   1  'Graphical
         TabIndex        =   58
         Top             =   120
         Width           =   375
      End
      Begin VB.CommandButton cmdDelete 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Delete"
         Height          =   495
         Left            =   2040
         Picture         =   "frmDungeon.frx":E7B67
         Style           =   1  'Graphical
         TabIndex        =   57
         Top             =   4440
         Width           =   1935
      End
      Begin VB.Label lblSave 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Save Files"
         BeginProperty Font 
            Name            =   "Agency FB"
            Size            =   36
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000000FF&
         Height          =   870
         Left            =   1815
         TabIndex        =   62
         Top             =   0
         Width           =   2295
      End
   End
   Begin VB.PictureBox picSSword 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   630
      Left            =   0
      Picture         =   "frmDungeon.frx":11DF2E
      ScaleHeight     =   38
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   150
      TabIndex        =   55
      Top             =   0
      Visible         =   0   'False
      Width           =   2310
   End
   Begin VB.PictureBox picMSword 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   630
      Left            =   0
      Picture         =   "frmDungeon.frx":11EBBB
      ScaleHeight     =   38
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   150
      TabIndex        =   54
      Top             =   720
      Visible         =   0   'False
      Width           =   2310
   End
   Begin VB.PictureBox picAttackType 
      Height          =   975
      Left            =   0
      Picture         =   "frmDungeon.frx":11F7BF
      ScaleHeight     =   915
      ScaleWidth      =   4275
      TabIndex        =   53
      Top             =   0
      Width           =   4335
      Begin VB.Image imgAttackOpt 
         Height          =   855
         Index           =   0
         Left            =   0
         Picture         =   "frmDungeon.frx":144515
         Stretch         =   -1  'True
         Top             =   0
         Width           =   855
      End
      Begin VB.Image imgAttackOpt 
         Height          =   855
         Index           =   1
         Left            =   840
         Picture         =   "frmDungeon.frx":145667
         Stretch         =   -1  'True
         Top             =   0
         Visible         =   0   'False
         Width           =   855
      End
      Begin VB.Image imgAttackOpt 
         Height          =   855
         Index           =   2
         Left            =   1680
         Picture         =   "frmDungeon.frx":1486A9
         Stretch         =   -1  'True
         Top             =   0
         Visible         =   0   'False
         Width           =   855
      End
      Begin VB.Image imgAttackOpt 
         Height          =   855
         Index           =   3
         Left            =   2520
         Stretch         =   -1  'True
         Top             =   0
         Visible         =   0   'False
         Width           =   855
      End
      Begin VB.Image imgAttackOpt 
         Height          =   855
         Index           =   4
         Left            =   3360
         Stretch         =   -1  'True
         Top             =   0
         Visible         =   0   'False
         Width           =   855
      End
   End
   Begin VB.PictureBox picMArrow 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   780
      Left            =   0
      Picture         =   "frmDungeon.frx":14AE73
      ScaleHeight     =   48
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   192
      TabIndex        =   52
      Top             =   720
      Visible         =   0   'False
      Width           =   2940
   End
   Begin VB.PictureBox picSArrow 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   780
      Left            =   0
      Picture         =   "frmDungeon.frx":14B8B8
      ScaleHeight     =   48
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   192
      TabIndex        =   51
      Top             =   0
      Visible         =   0   'False
      Width           =   2940
   End
   Begin VB.PictureBox picInventory 
      BackColor       =   &H00000000&
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   5655
      Left            =   6120
      Picture         =   "frmDungeon.frx":14C32E
      ScaleHeight     =   362.136
      ScaleMode       =   0  'User
      ScaleWidth      =   397
      TabIndex        =   42
      Top             =   1200
      Visible         =   0   'False
      Width           =   6015
      Begin VB.CommandButton cmdEnd2 
         BackColor       =   &H00004080&
         Caption         =   "X"
         Height          =   375
         Left            =   5520
         Style           =   1  'Graphical
         TabIndex        =   45
         Top             =   120
         Width           =   375
      End
      Begin VB.ListBox lstPItems 
         Appearance      =   0  'Flat
         BackColor       =   &H00C0FFFF&
         Height          =   3780
         Left            =   120
         TabIndex        =   44
         Top             =   1200
         Width           =   5775
      End
      Begin VB.CommandButton cmdUse 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Use"
         Height          =   495
         Left            =   120
         Picture         =   "frmDungeon.frx":1C1FD0
         Style           =   1  'Graphical
         TabIndex        =   43
         Top             =   5040
         Width           =   1935
      End
      Begin VB.Label lblMoney 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Label1"
         Height          =   345
         Left            =   2160
         TabIndex        =   50
         Top             =   5160
         Width           =   1170
      End
      Begin VB.Label lblQuantity 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "Quantity"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   13.5
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   435
         Left            =   120
         TabIndex        =   49
         Top             =   840
         Width           =   1125
      End
      Begin VB.Label lblITitle 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Inventory"
         BeginProperty Font 
            Name            =   "Agency FB"
            Size            =   36
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000000FF&
         Height          =   870
         Left            =   1920
         TabIndex        =   48
         Top             =   0
         Width           =   2085
      End
      Begin VB.Label lblItems 
         BackStyle       =   0  'Transparent
         Caption         =   "                  Item"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   13.5
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   435
         Left            =   1200
         TabIndex        =   47
         Top             =   840
         Width           =   3285
      End
      Begin VB.Label lblPrice 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   " Price"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   13.5
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   315
         Left            =   4440
         TabIndex        =   46
         Top             =   840
         Width           =   1365
      End
   End
   Begin VB.PictureBox picNPInventory 
      BackColor       =   &H00000000&
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   5295
      Left            =   5400
      Picture         =   "frmDungeon.frx":1F8397
      ScaleHeight     =   338.835
      ScaleMode       =   0  'User
      ScaleWidth      =   397
      TabIndex        =   34
      Top             =   1200
      Visible         =   0   'False
      Width           =   6015
      Begin VB.CommandButton Command1 
         BackColor       =   &H00004080&
         Caption         =   "X"
         Height          =   375
         Left            =   5520
         Style           =   1  'Graphical
         TabIndex        =   37
         Top             =   120
         Width           =   375
      End
      Begin VB.ListBox lstItems 
         Appearance      =   0  'Flat
         BackColor       =   &H00C0FFFF&
         Height          =   3405
         Left            =   120
         TabIndex        =   36
         Top             =   1200
         Width           =   5775
      End
      Begin VB.CommandButton cmdTake 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Take"
         Height          =   495
         Left            =   120
         Picture         =   "frmDungeon.frx":26E039
         Style           =   1  'Graphical
         TabIndex        =   35
         Top             =   4680
         Width           =   1935
      End
      Begin VB.Label lblNpPrice 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   " Price"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   13.5
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   315
         Left            =   4440
         TabIndex        =   41
         Top             =   840
         Width           =   1365
      End
      Begin VB.Label lblNpItems 
         BackStyle       =   0  'Transparent
         Caption         =   "                  Item"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   13.5
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   315
         Left            =   1200
         TabIndex        =   40
         Top             =   840
         Width           =   3285
      End
      Begin VB.Label lblNpInventory 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Target Inventory"
         BeginProperty Font 
            Name            =   "Agency FB"
            Size            =   36
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000000FF&
         Height          =   870
         Left            =   1080
         TabIndex        =   39
         Top             =   0
         Width           =   3675
      End
      Begin VB.Label lblNpQuantity 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "Quantity"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   13.5
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   435
         Left            =   120
         TabIndex        =   38
         Top             =   840
         Width           =   1125
      End
   End
   Begin VB.PictureBox picSEnemy 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2040
      Left            =   12720
      Picture         =   "frmDungeon.frx":2A4400
      ScaleHeight     =   132
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   73
      TabIndex        =   33
      Top             =   240
      Visible         =   0   'False
      Width           =   1155
   End
   Begin VB.PictureBox picMEnemy 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2040
      Left            =   12720
      Picture         =   "frmDungeon.frx":2A58EA
      ScaleHeight     =   132
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   73
      TabIndex        =   32
      Top             =   2280
      Visible         =   0   'False
      Width           =   1155
   End
   Begin VB.PictureBox picSDoor 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1140
      Left            =   3600
      Picture         =   "frmDungeon.frx":2A7033
      ScaleHeight     =   72
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   50
      TabIndex        =   31
      Top             =   1080
      Visible         =   0   'False
      Width           =   810
   End
   Begin VB.PictureBox picMDoor 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1140
      Left            =   3600
      Picture         =   "frmDungeon.frx":2A7A1D
      ScaleHeight     =   72
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   50
      TabIndex        =   30
      Top             =   3840
      Visible         =   0   'False
      Width           =   810
   End
   Begin VB.Timer tmrAnim 
      Interval        =   1
      Left            =   8160
      Top             =   5160
   End
   Begin VB.Timer tmrMove 
      Interval        =   1
      Left            =   9960
      Top             =   5040
   End
   Begin VB.PictureBox picPMask 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2145
      Left            =   6720
      Picture         =   "frmDungeon.frx":2A818A
      ScaleHeight     =   139
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   76
      TabIndex        =   28
      Top             =   720
      Visible         =   0   'False
      Width           =   1200
   End
   Begin VB.PictureBox picTerrain 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   7260
      Left            =   480
      Picture         =   "frmDungeon.frx":2A9C0A
      ScaleHeight     =   480
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   480
      TabIndex        =   27
      Top             =   960
      Visible         =   0   'False
      Width           =   7260
   End
   Begin VB.PictureBox picHolder 
      BackColor       =   &H00000000&
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   0
      Picture         =   "frmDungeon.frx":2CB6F9
      ScaleHeight     =   495
      ScaleWidth      =   6660
      TabIndex        =   24
      Top             =   0
      Width           =   6660
      Begin VB.Line lnHealth 
         BorderColor     =   &H000000FF&
         BorderStyle     =   4  'Dash-Dot
         BorderWidth     =   5
         X1              =   1080
         X2              =   6470
         Y1              =   120
         Y2              =   120
      End
      Begin VB.Label lblHealth 
         AutoSize        =   -1  'True
         BackColor       =   &H00C0E0FF&
         BackStyle       =   0  'Transparent
         Caption         =   "Health:"
         BeginProperty Font 
            Name            =   "OCR A Extended"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   255
         Left            =   0
         TabIndex        =   26
         Top             =   0
         Width           =   1050
      End
      Begin VB.Line lnMana 
         BorderColor     =   &H00FF0000&
         BorderStyle     =   4  'Dash-Dot
         BorderWidth     =   5
         X1              =   1080
         X2              =   6470
         Y1              =   360
         Y2              =   360
      End
      Begin VB.Label lblMana 
         AutoSize        =   -1  'True
         BackColor       =   &H00C0E0FF&
         BackStyle       =   0  'Transparent
         Caption         =   "Mana:"
         BeginProperty Font 
            Name            =   "OCR A Extended"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   255
         Left            =   0
         TabIndex        =   25
         Top             =   240
         Width           =   750
      End
   End
   Begin VB.PictureBox picMNPC 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2190
      Left            =   11760
      Picture         =   "frmDungeon.frx":38B024
      ScaleHeight     =   142
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   80
      TabIndex        =   23
      Top             =   720
      Visible         =   0   'False
      Width           =   1260
   End
   Begin VB.PictureBox picSNPC 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2190
      Left            =   10080
      Picture         =   "frmDungeon.frx":38CBBF
      ScaleHeight     =   142
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   80
      TabIndex        =   22
      Top             =   720
      Visible         =   0   'False
      Width           =   1260
   End
   Begin VB.PictureBox picMiniMap 
      AutoRedraw      =   -1  'True
      BorderStyle     =   0  'None
      FillStyle       =   0  'Solid
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   3375
      Left            =   0
      Picture         =   "frmDungeon.frx":38E03F
      ScaleHeight     =   225
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   225
      TabIndex        =   21
      Top             =   5520
      Width           =   3375
   End
   Begin VB.PictureBox picMain 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   4695
      Left            =   7680
      ScaleHeight     =   4635
      ScaleWidth      =   3435
      TabIndex        =   15
      Top             =   2520
      Visible         =   0   'False
      Width           =   3495
      Begin VB.Label lblTitle 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Menu"
         BeginProperty Font 
            Name            =   "OCR A Extended"
            Size            =   36
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000040&
         Height          =   750
         Left            =   840
         TabIndex        =   20
         Top             =   480
         Width           =   1755
      End
      Begin VB.Label lblMain 
         Alignment       =   2  'Center
         BackColor       =   &H00000040&
         Caption         =   "Save Game"
         BeginProperty Font 
            Name            =   "Roman"
            Size            =   21.75
            Charset         =   255
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   495
         Index           =   0
         Left            =   240
         TabIndex        =   19
         Top             =   1440
         Width           =   3015
      End
      Begin VB.Label lblMain 
         Alignment       =   2  'Center
         BackColor       =   &H00000040&
         Caption         =   "Load Game"
         BeginProperty Font 
            Name            =   "Roman"
            Size            =   21.75
            Charset         =   255
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   495
         Index           =   1
         Left            =   240
         TabIndex        =   18
         Top             =   2040
         Width           =   3015
      End
      Begin VB.Label lblMain 
         Alignment       =   2  'Center
         BackColor       =   &H00000040&
         Caption         =   "Stats"
         BeginProperty Font 
            Name            =   "Roman"
            Size            =   21.75
            Charset         =   255
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   495
         Index           =   2
         Left            =   240
         TabIndex        =   17
         Top             =   2640
         Width           =   3015
      End
      Begin VB.Label lblMain 
         Alignment       =   2  'Center
         BackColor       =   &H00000040&
         Caption         =   "Quit Game"
         BeginProperty Font 
            Name            =   "Roman"
            Size            =   21.75
            Charset         =   255
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   495
         Index           =   3
         Left            =   240
         TabIndex        =   16
         Top             =   3240
         Width           =   3015
      End
      Begin VB.Image imgBack 
         Height          =   4695
         Left            =   0
         Picture         =   "frmDungeon.frx":44D96A
         Stretch         =   -1  'True
         Top             =   0
         Width           =   3495
      End
   End
   Begin VB.PictureBox picMGate 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2595
      Left            =   360
      Picture         =   "frmDungeon.frx":45A07A
      ScaleHeight     =   169
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   190
      TabIndex        =   14
      Top             =   3720
      Visible         =   0   'False
      Width           =   2910
   End
   Begin VB.PictureBox picSGate 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2595
      Left            =   360
      Picture         =   "frmDungeon.frx":45C054
      ScaleHeight     =   169
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   174
      TabIndex        =   13
      Top             =   960
      Visible         =   0   'False
      Width           =   2670
   End
   Begin VB.PictureBox picComm 
      BackColor       =   &H00000000&
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   3015
      Left            =   7560
      ScaleHeight     =   2955
      ScaleWidth      =   3315
      TabIndex        =   5
      Top             =   2880
      Visible         =   0   'False
      Width           =   3375
      Begin VB.CommandButton cmdExit 
         BackColor       =   &H00004080&
         Caption         =   "X"
         BeginProperty Font 
            Name            =   "OCR A Extended"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   3000
         Style           =   1  'Graphical
         TabIndex        =   6
         Top             =   0
         Width           =   375
      End
      Begin VB.Label lblName 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Label1"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   17.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   435
         Left            =   1080
         TabIndex        =   12
         Top             =   0
         Width           =   1125
      End
      Begin VB.Image imgIcon 
         Height          =   735
         Index           =   0
         Left            =   240
         Picture         =   "frmDungeon.frx":45E9D1
         Stretch         =   -1  'True
         Top             =   720
         Width           =   735
      End
      Begin VB.Image imgIcon 
         Height          =   735
         Index           =   1
         Left            =   1320
         Picture         =   "frmDungeon.frx":462CDF
         Stretch         =   -1  'True
         Top             =   720
         Width           =   735
      End
      Begin VB.Image imgIcon 
         Height          =   735
         Index           =   2
         Left            =   2400
         Picture         =   "frmDungeon.frx":463111
         Stretch         =   -1  'True
         Top             =   720
         Width           =   735
      End
      Begin VB.Label lblIcon 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Quests"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   300
         Index           =   0
         Left            =   210
         TabIndex        =   11
         Top             =   1440
         Width           =   795
      End
      Begin VB.Label lblIcon 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Directions"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   300
         Index           =   1
         Left            =   1140
         TabIndex        =   10
         Top             =   1440
         Width           =   1095
      End
      Begin VB.Label lblIcon 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Train"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   300
         Index           =   2
         Left            =   2490
         TabIndex        =   9
         Top             =   1440
         Width           =   555
      End
      Begin VB.Image imgIcon 
         Height          =   735
         Index           =   3
         Left            =   240
         Picture         =   "frmDungeon.frx":46F153
         Stretch         =   -1  'True
         Top             =   1800
         Width           =   735
      End
      Begin VB.Image imgIcon 
         Height          =   735
         Index           =   4
         Left            =   1320
         Picture         =   "frmDungeon.frx":47B195
         Stretch         =   -1  'True
         Top             =   1800
         Width           =   735
      End
      Begin VB.Label lblIcon 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Join"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   300
         Index           =   3
         Left            =   375
         TabIndex        =   8
         Top             =   2520
         Width           =   465
      End
      Begin VB.Label lblIcon 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Trade"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   300
         Index           =   4
         Left            =   1365
         TabIndex        =   7
         Top             =   2520
         Width           =   645
      End
   End
   Begin VB.PictureBox picDialogue 
      BackColor       =   &H00000000&
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   3255
      Left            =   4920
      Picture         =   "frmDungeon.frx":48129B
      ScaleHeight     =   206.796
      ScaleMode       =   0  'User
      ScaleWidth      =   541
      TabIndex        =   1
      Top             =   2160
      Visible         =   0   'False
      Width           =   8175
      Begin VB.CommandButton cmdEnd 
         BackColor       =   &H00004080&
         Caption         =   "X"
         BeginProperty Font 
            Name            =   "OCR A Extended"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   7800
         Style           =   1  'Graphical
         TabIndex        =   2
         Top             =   0
         Width           =   375
      End
      Begin VB.Label lblSpeaker 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Name"
         BeginProperty Font 
            Name            =   "Agency FB"
            Size            =   36
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   870
         Left            =   3120
         TabIndex        =   4
         Top             =   0
         Width           =   1335
      End
      Begin VB.Label lblDialogue 
         BackStyle       =   0  'Transparent
         Caption         =   "Label1"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   13.5
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   2235
         Left            =   720
         TabIndex        =   3
         Top             =   840
         Width           =   7125
      End
   End
   Begin VB.PictureBox picPSprite 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2145
      Left            =   12240
      Picture         =   "frmDungeon.frx":525B85
      ScaleHeight     =   139
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   76
      TabIndex        =   0
      Top             =   6120
      Visible         =   0   'False
      Width           =   1200
   End
   Begin VB.Label lblInfo 
      AutoSize        =   -1  'True
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   15
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   12720
      TabIndex        =   29
      Top             =   3840
      Visible         =   0   'False
      Width           =   75
   End
End
Attribute VB_Name = "frmDungeon"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

'Skill Set
    Private Type Skill
        Level As Integer
        Learned As Boolean
    End Type

'Skill List
    Private Enum indexs
        IronSmithing = 1
        GoldSmithing = 2
        SteelSmithing = 3
        DiamondSmithing = 4
        DemonSmithing = 5
        DragonSmithing = 6
        
        HealthPotion = 8
        ManaPotion = 9
        DamagePotion = 10
        ArmorPotion = 11
        
        FBolt = 12
        Shunpo = 13
        SBolt = 14
          
    End Enum

'GridMaps
    Dim Map As New GridMap
    Dim MiniMap As New GridMap
    Dim dx As Integer, dy As Integer

'Characters

    Dim Enemy(0 To 100) As New Character
    Dim Shaman(0 To 100) As New Character

'Gate
    Dim Dungeon As New Gate
    Dim Town As New Gate
    
'AI modules
    Dim EAI(0 To 100) As New EnemyAI
    Dim sAI(0 To 100) As New ShamanAI

'Attacks
    Dim Fireball As New MagicAttack
    Dim Bolts As New RangedAttack
    Dim Sword As New PhysicalAttack
'Counters
    Dim C As Integer, C2 As Integer, C3 As Integer, C4 As Integer
    Public Stopped As Boolean
'Extras
    Dim Max As Integer, Max2 As Integer, Selected As Integer, Selected2 As Integer, ChatIndex As Integer, Chatindex2 As Integer

Private Sub cmdDelete_Click()
If lstFiles.ListIndex <= 0 Then Exit Sub
    Call Delete(lstFiles.ListIndex)
    Call ListFiles(lstFiles)
End Sub

Private Sub cmdEnd_Click() 'Close NPC chat window
    picDialogue.Visible = False
End Sub

Private Sub cmdEnd2_Click()
picInventory.Visible = False
End Sub

Private Sub cmdExit_Click() 'Close NPC comm menu
    picComm.Visible = False
End Sub

Private Sub cmdFileExit_Click()
picFiles.Visible = False
End Sub

Private Sub cmdLoad_Click()
If lstFiles.ListIndex <= 0 Then Exit Sub
    Call Loader(lstFiles.ListIndex)
    'Call ListFiles(lstFiles)
End Sub

Private Sub cmdSave_Click()
If lstFiles.ListIndex < 0 Then Exit Sub
    Call Save(lstFiles.ListIndex)
    Call ListFiles(lstFiles)
End Sub

Private Sub cmdTake_Click()
If lstItems.ListIndex = -1 Then Exit Sub
Dim Temp As Integer

If ChatIndex <> -1 Then

    Temp = IIf(Enemy(ChatIndex).getItemQuantity(lstItems.ListIndex) = 1, 0, lstItems.ListIndex)
'Item Take
    Call Player.AddItem(Enemy(ChatIndex).getItemName(lstItems.ListIndex), Enemy(ChatIndex).getItemPrice(lstItems.ListIndex), 1, Enemy(ChatIndex).getItemUsable(lstItems.ListIndex))
    
   
    Call Enemy(ChatIndex).RemoveItem(lstItems.ListIndex, 1)

'Update stats
    Call Stats
    If Enemy(ChatIndex).getInvSpace > 0 Then lstItems.ListIndex = Temp

ElseIf Chatindex2 <> -1 Then
    Temp = IIf(Shaman(Chatindex2).getItemQuantity(lstItems.ListIndex) = 1, 0, lstItems.ListIndex)
'Item Take
    Call Player.AddItem(Shaman(Chatindex2).getItemName(lstItems.ListIndex), Shaman(Chatindex2).getItemPrice(lstItems.ListIndex), 1, Shaman(Chatindex2).getItemUsable(lstItems.ListIndex))
    
   
    Call Shaman(Chatindex2).RemoveItem(lstItems.ListIndex, 1)

'Update stats
    Call Stats
    If Shaman(Chatindex2).getInvSpace > 0 Then lstItems.ListIndex = Temp


End If
    
End Sub

Private Sub cmdUse_Click()
Dim Temp As Integer
If lstPItems.ListIndex = -1 Then Exit Sub
If Player.getItemUsable(lstPItems.ListIndex) <> 1 Then Exit Sub

Temp = IIf(Player.getItemQuantity(lstPItems.ListIndex) = 1, 0, lstPItems.ListIndex)
'Find out how item Affects the player
    Call ItemEffect(Player.getItemName(lstPItems.ListIndex))
'Update inventory
    Call Player.RemoveItem(lstPItems.ListIndex, 1)
    Call Player.List(lstPItems)
    
    If Player.getInvSpace > 0 Then lstPItems.ListIndex = Temp

End Sub

Private Sub Command1_Click()
    picNPInventory.Visible = False
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
If Stopped = True Then Exit Sub
''''''''''''''''''''''''''''''''''''''''''''''''''''''''Main Menu'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
If KeyCode = vbKeyEscape Then
    picMain.Visible = Not picMain.Visible

''''''''''''''''''''''''''''''''''''''''''''''''''''''''Stats'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
ElseIf KeyCode = vbKeyShift Then
    Call lblMain_Click(2)
''''''''''''''''''''''''''''''''''''''''''''''''''''''''Inventory'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
ElseIf KeyCode = vbKeyI Then
    Call Player.List(lstPItems)
    picInventory.Visible = Not picInventory.Visible
    
ElseIf KeyCode = vbKey1 Then
    Player.AttackType = 1
ElseIf KeyCode = vbKey2 Then
    Player.AttackType = 2
ElseIf KeyCode = vbKey3 Then
    Player.AttackType = 3
    
End If
End Sub

Private Sub Form_Load()
If Stopped = True Then Exit Sub
Max = 12
Max2 = 5
'Create maps
    Call Map.Filler(App.Path & "/dungeon.dat", 30)
    Call MiniMap.Filler(App.Path & "/dungeon.dat", 5)

'Initiate objects
    
    'Other Chars
    For C3 = 0 To Max
       Call Enemy(C3).Create(0, 0, 24, 33, "Grunt")
       Call Enemy(C3).Spawn(Map, Enemy(C3))
       Call Enemy(C3).SecondarySpecs(10, 1, 0, 1, 0, 100, 0)
       Call Enemy(C3).AddItem("Rotten Flesh", 5, 1, 3)
    Next C3
    
    For C3 = 0 To Max2
       Call Shaman(C3).Create(0, 0, 25, 31, "Shaman")
       Call Shaman(C3).Spawn(Map, Shaman(C3))
       Call ShockBolt(C3).Create(15, 1, 35)
       Call Shaman(C3).SecondarySpecs(10, 5, 0, 5, 0, 200, 100)
       Call Shaman(C3).AddItem("Gold", 50, 1, 3)
       Call Revival(C3).Create(100, 2, 1)
      
      
    Next C3
    
    'Gate
        Call Dungeon.Create(1010, 1042, 160, 165)
        Call Town.Create(30, 30, 50, 75)
    'Magic Attack
        Call Fireball.Create(15, 1, 20)
        
        Call Bolts.Create(-999, -999, 48, 48)
        Call Sword.Create(-999, -999, 37.5, 37.5)
        
    
    Player.X = 100
    Player.Y = 100
End Sub

Private Sub Form_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
If Stopped = True Then Exit Sub
'Actions
    If Button = vbRightButton Then 'Interact with NPCs and dungeons
        For C3 = 0 To Max
            If Enemy(C3).Collide(Player.X, Player.Y, 20) Then
                    If Enemy(C3).isLiving = False Then
                        Call Enemy(C3).List(lstItems)
                        picNPInventory.Visible = True
                        ChatIndex = C3
                        
                    End If
                    Exit For
            Else
                ChatIndex = -1
            End If
        Next C3
        For C3 = 0 To Max2
            If Shaman(C3).Collide(Player.X, Player.Y, 20) Then
                    If Shaman(C3).isLiving = False Then
                        Call Shaman(C3).List(lstItems)
                        picNPInventory.Visible = True
                        Chatindex2 = C3
                        
                    End If
                    Exit For
            Else
                Chatindex2 = -1
            End If
        Next C3
    
    'Dungeon
        If Dungeon.Collide(Player.X, Player.Y, 100) = True Then   'Dungeon gate
            'If (MsgBox("Do you wish to enter the dungeons?", vbQuestion + vbYesNo, "Leave Area?")) = vbYes Then Call MapReset
        ElseIf Town.Collide(Player.X, Player.Y, 100) = True Then   'Town
            If (MsgBox("Do you wish to return to town?", vbQuestion + vbYesNo, "Leave Area?")) = vbYes Then
                Stopped = True
                frmTown.Stopped = False
                frmTown.Show
                Unload Me
            End If
        End If

    ElseIf Button = vbMiddleButton Or GetAsyncKeyState(vbKeyTab) Then 'Teleport
        Player.X = X - dx
        Player.Y = Y - dy
    ElseIf Button = vbLeftButton Then
        Call PlayerAttack
    End If
End Sub

Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single) 'Show stats for NPCs and enemies
If Stopped = True Then Exit Sub
Selected = -1
Selected2 = -1
   'Find the currently selected NPC
    For C2 = 0 To Max
        If Enemy(C2).Collide(X - dx, Y - dy, 10) = True Then
            Selected = C2
            Exit For
        End If
    Next C2
    For C2 = 0 To Max2
        If Shaman(C2).Collide(X - dx, Y - dy, 10) = True Then
            Selected2 = C2
            Exit For
        End If
    Next C2

'Display Info
    If Selected >= 0 Then 'NPC
        lblInfo.Visible = True
        lblInfo.Caption = Enemy(Selected).Class & vbCrLf & IIf((Enemy(Selected).Health > 0), ("Health: " & Enemy(Selected).Health & "/" & Enemy(Selected).mHealth), "DEAD")
        lblInfo.Left = Me.ScaleWidth - lblInfo.Width
        lblInfo.Top = 0
    
    ElseIf Selected2 >= 0 Then 'NPC
        lblInfo.Visible = True
        lblInfo.Caption = Shaman(Selected2).Class & vbCrLf & IIf((Shaman(Selected2).Health > 0), ("Health: " & Shaman(Selected2).Health & "/" & Shaman(Selected2).mHealth & vbCrLf & "Mana: " & Shaman(Selected2).Mana & "/" & Shaman(Selected2).mMana), "DEAD")
        lblInfo.Left = Me.ScaleWidth - lblInfo.Width
        lblInfo.Top = 0
    
    ElseIf Player.Collide(X - dx, Y - dy, 10) = True Then
        lblInfo.Visible = True
        lblInfo.Caption = Player.Name & vbCrLf & "Health: " & Player.Health & "/" & Player.mHealth & vbCrLf & "Mana: " & Round(Player.Mana) & "/" & Player.mMana
        lblInfo.Left = Me.ScaleWidth - lblInfo.Width
        lblInfo.Top = 0
'Display Info
    ElseIf Dungeon.Collide(X - dx, Y - dy, 50) = True Then ' Dungeon gate
        lblInfo.Visible = True
        lblInfo.Caption = "Dungeon Gate"
        lblInfo.Left = Me.ScaleWidth - lblInfo.Width
        lblInfo.Top = 0
        
    ElseIf Town.Collide(X - dx, Y - dy, 50) = True Then ' town gate
        lblInfo.Visible = True
        lblInfo.Caption = "Town Gate"
        lblInfo.Left = Me.ScaleWidth - lblInfo.Width
        lblInfo.Top = 0
    
    Else
        lblInfo.Visible = False
    End If

End Sub



Private Sub Form_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
If Stopped = True Then Exit Sub
    If Button = vbLeftButton Then
        Call PlayerAttack2
    End If
End Sub





Private Sub imgIcon_Click(Index As Integer) 'Communication menu

Select Case Index
    Case 0 'Quests
    Case 1 'Directions
    Case 2 'Train
    Case 3 'Join
    Case 4 'Trade
       
End Select

End Sub
Private Sub imgAttackOpt_Click(Index As Integer)
Player.AttackType = Index + 1
End Sub

Private Sub imgAttackOpt_MouseMove(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
For C3 = 0 To imgAttackOpt.UBound
    imgAttackOpt(C3).BorderStyle = 0
Next

imgAttackOpt(Index).BorderStyle = 1

End Sub

Private Sub lblMain_Click(Index As Integer)
Select Case Index
 Case 0 'Save Game
    picFiles.Visible = True
    Call ListFiles(lstFiles)
    cmdSave.Visible = True
    cmdLoad.Visible = False
 Case 1 'Load Game
    picFiles.Visible = True
    Call ListFiles(lstFiles)
    cmdSave.Visible = False
    cmdLoad.Visible = True
 Case 2 'Stats
    frmStats.Show
    frmStats.lblName.Left = frmStats.ScaleWidth / 2 - frmStats.lblName.Width / 2
    Call UpdateStats
 Case 3 'Quit Game
    End
End Select
End Sub

Private Sub lblMain_MouseMove(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single) 'Color display
'Reset
    For C2 = 0 To lblMain.UBound
        lblMain(C2).ForeColor = vbWhite
        lblMain(C2).BorderStyle = 0
    Next C2
'Change selected
    lblMain(Index).ForeColor = vbYellow
    lblMain(Index).BorderStyle = 1
End Sub

Private Sub tmrAnim_Timer()
If Stopped = True Then Exit Sub
'Clear screens
    Cls
    picMiniMap.Cls

'Map
    Call Map.InvertDraw(Me, dx, dy)
    Call MiniMap.pDraw(picMiniMap)

'Gate
    Call Dungeon.Draw(Me, dx, dy, picSGate, picMGate)
    Call Town.Draw(Me, dx, dy, picSDoor, picMDoor)

'Characters
    'Player
        Call Player.Draw(Me, dx, dy, picSNPC, picMNPC)
        
        For C = 0 To Max
            Call Enemy(C).Draw(Me, dx, dy, picSEnemy, picMEnemy)
            Call EAI(C).Activate(Enemy(C), Player, Map, dx, dy)
            If Enemy(C).isLiving = True Then Call MiniMap.cDraw(picMiniMap, Map, Enemy(C), dx, dy, vbRed)
            If Map.Proximity(4, Enemy(C), dx, dy) = True Then Enemy(C).Health = Enemy(C).Health - 1
            Call AttackCollision
        Next C
        For C = 0 To Max2
            Call Revival(C).Draw(Me, dx, dy, vbBlack)
            Call ShockBolt(C).Draw(Me, dx, dy, vbCyan)
            Call ShockBolt(C).PlayerCollision(Shaman(C), Player, Map, dx, dy)
            Call sAI(C).Activate(Shaman(C), Player, Map, dx, dy, C)
            
            If Shaman(C).isLiving = True Then Call MiniMap.cDraw(picMiniMap, Map, Shaman(C), dx, dy, vbRed)
            If Shaman(C).Mana < Shaman(C).mMana Then Shaman(C).Mana = Shaman(C).Mana + 1
            
            Call Shaman(C).Draw(Me, dx, dy, picSShaman, picMShaman)
            Call Revival(C).Release(Shaman(C), 10, Me, dx, dy)
            Call ShockBolt(C).Release(Shaman(C), 10, Me, dx, dy)
            Call AttackCollision2
            
            For C4 = 0 To Max
                If Revival(C).RangeCollision(Shaman(C), Enemy(C4)) = True Then
                    Enemy(C4).isLiving = True
                    Enemy(C4).Health = Enemy(C4).mHealth
                End If
            Next C4
            If Map.Proximity(4, Enemy(C), dx, dy) = True Then Enemy(C).Health = Enemy(C).Health - 1
            'Call AttackCollision
        Next C

'Mini map
    Call MiniMap.cDraw(picMiniMap, Map, Player, dx, dy, vbBlack)
    
    picMiniMap.Top = Me.ScaleHeight - picMiniMap.Height
    lnHealth.X2 = lnHealth.X1 + Player.Health * 10
    lnMana.X2 = lnMana.X1 + Player.Mana * 10
    
'If palyer dies
    If Player.Health <= 0 Then
        MsgBox ("Game over")
        End
    End If
    
'Check block proximity
    Call SpecialBlocks
'Fireball attack
  Call PlayerAttack3
  Call AttackUpdate
  
End Sub

Private Sub Scroll() 'Move the map to change display area
'Horizontal
    If Player.X + dx > ScaleWidth - 150 Then
        dx = dx - 1
    ElseIf Player.X + dx < 150 Then
        dx = dx + 1
    End If

'Vertical
    If Player.Y + dy > ScaleHeight - 150 Then
        dy = dy - 1
    ElseIf Player.Y + dy < 150 Then
        dy = dy + 1
    End If

End Sub

Private Sub tmrMove_Timer() 'Movements
If Stopped = True Then Exit Sub
Call Scroll
If Player.Mana < Player.mMana Then Player.Mana = Player.Mana + 0.1
If Player.canMove = False Then Exit Sub
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''Up'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
If GetAsyncKeyState(vbKeyW) Then
        If Map.Collision(Player, 0, -5, dx, dy) = True Then Exit Sub
        
        Player.Fy = 0
        Call Player.Move(0, -1)
        
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''Down'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
ElseIf GetAsyncKeyState(vbKeyS) Then
        If Map.Collision(Player, 0, 5, dx, dy) = True Then Exit Sub
        
        Player.Fy = 2
        Call Player.Move(0, 1)
        
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''Left'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
ElseIf GetAsyncKeyState(vbKeyA) Then
        If Map.Collision(Player, -5, 0, dx, dy) = True Then Exit Sub
        
        Player.Fy = 3
        Call Player.Move(-1, 0)
        
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''Right'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
ElseIf GetAsyncKeyState(vbKeyD) Then
        If Map.Collision(Player, 5, 0, dx, dy) = True Then Exit Sub
        
        Player.Fy = 1
        Call Player.Move(1, 0)
            
End If
End Sub

Private Sub Reset() 'Reset communication window
    lblName.Caption = ""
    For C3 = 0 To lblIcon.UBound
        imgIcon(C3).Visible = True
        lblIcon(C3).Visible = True
    Next C3
'Hide
    picComm.Visible = False
End Sub

Private Sub UpdateStats()
'Update the player stats
    frmStats.lblName.Caption = Player.Name
    frmStats.lblStats.Caption = "Health: " & Player.Health & "/" & Player.mHealth & vbCrLf & _
                                "Mana: " & Player.Mana & "/" & Round(Player.mMana, 0) & vbCrLf & _
                                "Damage: " & Player.Damage & vbCrLf & _
                                "Armor: " & Player.Armor & vbCrLf & _
                                "Money: " & Player.Money

    
End Sub

Private Sub SpecialBlocks()
    If Map.Proximity(4, Player, dx, dy) = True Then 'Lava
        
        Player.Health = Player.Health - 10
        
    ElseIf Map.Proximity(9, Player, dx, dy) = True Then 'Health Block
        
        If Player.Health < Player.mHealth Then Player.Health = Player.Health + 10
    
    ElseIf Map.Proximity(8, Player, dx, dy) = True Then 'Mana Block
    
        If Player.Mana < Player.mMana Then Player.Mana = Player.Mana + 10
    
    End If
End Sub

Private Sub Stats()
'Update Stats
    If ChatIndex <> -1 Then Call Enemy(ChatIndex).List(lstItems)
    If Chatindex2 <> -1 Then Call Enemy(Chatindex2).List(lstItems)
    Call Player.List(lstPItems)
'Update money
    lblMoney.Caption = "Money: " & Player.Money
End Sub
Private Sub PlayerAttack()
    Select Case Player.AttackType
        Case 1
            Call Fireball.Charge(Player, 10)
        Case 2
            Call Bolts.Charge(Player)
        Case 3
            Call Sword.Charge(Player)
    End Select
End Sub

Private Sub PlayerAttack3()
    Select Case Player.AttackType
        Case 1
            Call Fireball.Draw(Me, dx, dy, vbYellow)
            Call Fireball.Release(Player, 10, Me, dx, dy)
        
        Case 2
            Call Bolts.Draw(Me, dx, dy, picSArrow, picMArrow)
            Call Bolts.Release(Player, Me, dx, dy)
            
       Case 3
            Call Sword.Draw(Me, dx, dy, picSSword, picMSword)
            Call Sword.Release(Player, Me, dx, dy)
    End Select
End Sub

Private Sub PlayerAttack2()
    Select Case Player.AttackType
        Case 1
            Fireball.inUse = True
        Case 2
            Bolts.inUse = True
        Case 3
            Sword.inUse = True
    End Select
End Sub

Private Sub AttackCollision()
    Select Case Player.AttackType
        Case 1
            Call Fireball.Collision(Player, Enemy(C), Map, dx, dy, EAI(C))
        Case 2
            Call Bolts.Collision(Player, Enemy(C), Map, dx, dy, EAI(C), 30)
        Case 3
            Call Sword.Collision(Player, Enemy(C), Map, dx, dy, EAI(C))
            
    End Select

End Sub

Private Sub AttackCollision2()
    Select Case Player.AttackType
        Case 1
            Call Fireball.Collision2(Player, Shaman(C), Map, dx, dy, sAI(C))
        Case 2
            Call Bolts.Collision2(Player, Shaman(C), Map, dx, dy, sAI(C), 30)
        Case 3
            Call Sword.Collision2(Player, Shaman(C), Map, dx, dy, sAI(C))
            
    End Select

    

End Sub


Private Sub AttackUpdate()
    picAttackType.Top = Me.ScaleHeight - picAttackType.Height
    picAttackType.Left = Me.ScaleWidth / 2 - picAttackType.Width / 2
    
    imgAttackOpt(1).Visible = IIf(Player.hasItem("crossbow") = True, True, False)
    imgAttackOpt(2).Visible = IIf(Player.hasItem("iron sword") = True, True, False)
    
    
End Sub





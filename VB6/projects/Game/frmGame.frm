VERSION 5.00
Begin VB.Form frmTown 
   AutoRedraw      =   -1  'True
   BackColor       =   &H00000000&
   BorderStyle     =   0  'None
   ClientHeight    =   10755
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   17535
   BeginProperty Font 
      Name            =   "OCR A Extended"
      Size            =   15.75
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   ForeColor       =   &H00FFFFFF&
   Icon            =   "frmGame.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   717
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   1169
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.PictureBox picSkills 
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
      Left            =   6120
      Picture         =   "frmGame.frx":1CFA
      ScaleHeight     =   323.301
      ScaleMode       =   0  'User
      ScaleWidth      =   397
      TabIndex        =   63
      Top             =   1680
      Visible         =   0   'False
      Width           =   6015
      Begin VB.CommandButton cmdTrain 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Train"
         Height          =   495
         Left            =   120
         Picture         =   "frmGame.frx":7799C
         Style           =   1  'Graphical
         TabIndex        =   67
         Top             =   4440
         Width           =   1935
      End
      Begin VB.CommandButton Command4 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Save"
         Height          =   495
         Left            =   120
         Picture         =   "frmGame.frx":ADD63
         Style           =   1  'Graphical
         TabIndex        =   66
         Top             =   4440
         Width           =   1935
      End
      Begin VB.ListBox lstSkills 
         Appearance      =   0  'Flat
         BackColor       =   &H00C0FFFF&
         Height          =   3480
         Left            =   120
         TabIndex        =   65
         Top             =   960
         Width           =   5775
      End
      Begin VB.CommandButton cmdTrainExit 
         BackColor       =   &H00004080&
         Caption         =   "X"
         Height          =   375
         Left            =   5520
         Style           =   1  'Graphical
         TabIndex        =   64
         Top             =   120
         Width           =   375
      End
      Begin VB.Label lblTrain 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Training Menu"
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
         Left            =   1335
         TabIndex        =   68
         Top             =   0
         Width           =   3255
      End
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
      Left            =   6000
      Picture         =   "frmGame.frx":E412A
      ScaleHeight     =   323.301
      ScaleMode       =   0  'User
      ScaleWidth      =   397
      TabIndex        =   56
      Top             =   1680
      Visible         =   0   'False
      Width           =   6015
      Begin VB.CommandButton cmdDelete 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Delete"
         Height          =   495
         Left            =   2040
         Picture         =   "frmGame.frx":159DCC
         Style           =   1  'Graphical
         TabIndex        =   62
         Top             =   4440
         Width           =   1935
      End
      Begin VB.CommandButton cmdFileExit 
         BackColor       =   &H00004080&
         Caption         =   "X"
         Height          =   375
         Left            =   5520
         Style           =   1  'Graphical
         TabIndex        =   60
         Top             =   120
         Width           =   375
      End
      Begin VB.ListBox lstFiles 
         Appearance      =   0  'Flat
         BackColor       =   &H00C0FFFF&
         Height          =   3480
         Left            =   120
         TabIndex        =   59
         Top             =   960
         Width           =   5775
      End
      Begin VB.CommandButton cmdSave 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Save"
         Height          =   495
         Left            =   120
         Picture         =   "frmGame.frx":190193
         Style           =   1  'Graphical
         TabIndex        =   58
         Top             =   4440
         Width           =   1935
      End
      Begin VB.CommandButton cmdLoad 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Load"
         Height          =   495
         Left            =   120
         Picture         =   "frmGame.frx":1C655A
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
         TabIndex        =   61
         Top             =   0
         Width           =   2295
      End
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
      TabIndex        =   8
      Top             =   2520
      Visible         =   0   'False
      Width           =   3495
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
         TabIndex        =   13
         Top             =   3240
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
         TabIndex        =   12
         Top             =   2640
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
         TabIndex        =   11
         Top             =   2040
         Width           =   3015
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
         TabIndex        =   10
         Top             =   1440
         Width           =   3015
      End
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
         TabIndex        =   9
         Top             =   480
         Width           =   1755
      End
      Begin VB.Image imgBack 
         Height          =   4695
         Left            =   0
         Picture         =   "frmGame.frx":1FC921
         Stretch         =   -1  'True
         Top             =   0
         Width           =   3495
      End
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
      Left            =   12960
      Picture         =   "frmGame.frx":209031
      ScaleHeight     =   38
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   150
      TabIndex        =   55
      Top             =   6000
      Visible         =   0   'False
      Width           =   2310
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
      Left            =   12960
      Picture         =   "frmGame.frx":209C35
      ScaleHeight     =   38
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   150
      TabIndex        =   54
      Top             =   5280
      Visible         =   0   'False
      Width           =   2310
   End
   Begin VB.PictureBox picAttackType 
      Height          =   975
      Left            =   5040
      Picture         =   "frmGame.frx":20A8C2
      ScaleHeight     =   915
      ScaleWidth      =   4275
      TabIndex        =   53
      Top             =   8400
      Width           =   4335
      Begin VB.Image imgAttackOpt 
         Height          =   855
         Index           =   4
         Left            =   3360
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
         Index           =   2
         Left            =   1680
         Picture         =   "frmGame.frx":22F618
         Stretch         =   -1  'True
         Top             =   0
         Visible         =   0   'False
         Width           =   855
      End
      Begin VB.Image imgAttackOpt 
         Height          =   855
         Index           =   1
         Left            =   840
         Picture         =   "frmGame.frx":231DE2
         Stretch         =   -1  'True
         Top             =   0
         Visible         =   0   'False
         Width           =   855
      End
      Begin VB.Image imgAttackOpt 
         Height          =   855
         Index           =   0
         Left            =   0
         Picture         =   "frmGame.frx":234E24
         Stretch         =   -1  'True
         Top             =   0
         Width           =   855
      End
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
      Left            =   12240
      Picture         =   "frmGame.frx":235F76
      ScaleHeight     =   48
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   192
      TabIndex        =   52
      Top             =   240
      Visible         =   0   'False
      Width           =   2940
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
      Left            =   12240
      Picture         =   "frmGame.frx":2369EC
      ScaleHeight     =   48
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   192
      TabIndex        =   51
      Top             =   960
      Visible         =   0   'False
      Width           =   2940
   End
   Begin VB.PictureBox picMGuard 
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
      Height          =   1950
      Left            =   14400
      Picture         =   "frmGame.frx":237431
      ScaleHeight     =   126
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   75
      TabIndex        =   50
      Top             =   4200
      Visible         =   0   'False
      Width           =   1185
   End
   Begin VB.PictureBox picSGuard 
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
      Height          =   1950
      Left            =   14160
      Picture         =   "frmGame.frx":238DDD
      ScaleHeight     =   126
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   75
      TabIndex        =   49
      Top             =   1440
      Visible         =   0   'False
      Width           =   1185
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
      Height          =   6135
      Left            =   7440
      Picture         =   "frmGame.frx":23AAAA
      ScaleHeight     =   393.204
      ScaleMode       =   0  'User
      ScaleWidth      =   397
      TabIndex        =   30
      Top             =   1560
      Visible         =   0   'False
      Width           =   6015
      Begin VB.CommandButton cmdSell 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Sell"
         Height          =   495
         Left            =   120
         Picture         =   "frmGame.frx":2B074C
         Style           =   1  'Graphical
         TabIndex        =   46
         Top             =   5520
         Width           =   1935
      End
      Begin VB.CommandButton cmdUse 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Use"
         Height          =   495
         Left            =   120
         Picture         =   "frmGame.frx":2E6B13
         Style           =   1  'Graphical
         TabIndex        =   45
         Top             =   5040
         Width           =   1935
      End
      Begin VB.ListBox lstPItems 
         Appearance      =   0  'Flat
         BackColor       =   &H00C0FFFF&
         Height          =   3825
         Left            =   120
         TabIndex        =   44
         Top             =   1200
         Width           =   5775
      End
      Begin VB.CommandButton cmdEnd2 
         BackColor       =   &H00004080&
         Caption         =   "X"
         Height          =   375
         Left            =   5520
         Style           =   1  'Graphical
         TabIndex        =   31
         Top             =   120
         Width           =   375
      End
      Begin VB.Label lblMoney 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Label1"
         Height          =   345
         Left            =   2280
         TabIndex        =   48
         Top             =   5280
         Width           =   1170
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
         TabIndex        =   35
         Top             =   840
         Width           =   1365
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
         TabIndex        =   34
         Top             =   840
         Width           =   3285
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
         TabIndex        =   33
         Top             =   0
         Width           =   2085
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
         TabIndex        =   32
         Top             =   840
         Width           =   1125
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
      Left            =   1440
      Picture         =   "frmGame.frx":31CEDA
      ScaleHeight     =   338.835
      ScaleMode       =   0  'User
      ScaleWidth      =   397
      TabIndex        =   36
      Top             =   1560
      Visible         =   0   'False
      Width           =   6015
      Begin VB.CommandButton cmdBuy 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Buy"
         Height          =   495
         Left            =   120
         Picture         =   "frmGame.frx":392B7C
         Style           =   1  'Graphical
         TabIndex        =   43
         Top             =   4680
         Width           =   1935
      End
      Begin VB.ListBox lstItems 
         Appearance      =   0  'Flat
         BackColor       =   &H00C0FFFF&
         Height          =   3480
         Left            =   120
         TabIndex        =   42
         Top             =   1200
         Width           =   5775
      End
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
      Begin VB.Label lblNpMoney 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Label1"
         Height          =   345
         Left            =   2520
         TabIndex        =   47
         Top             =   4800
         Width           =   1170
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
         TabIndex        =   41
         Top             =   840
         Width           =   1125
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
         TabIndex        =   40
         Top             =   0
         Width           =   3675
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
         TabIndex        =   39
         Top             =   840
         Width           =   3285
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
         TabIndex        =   38
         Top             =   840
         Width           =   1365
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
      Left            =   8520
      Picture         =   "frmGame.frx":3C8F43
      ScaleHeight     =   139
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   76
      TabIndex        =   28
      Top             =   720
      Visible         =   0   'False
      Width           =   1200
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
      Picture         =   "frmGame.frx":3CA585
      ScaleHeight     =   206.796
      ScaleMode       =   0  'User
      ScaleWidth      =   541
      TabIndex        =   25
      Top             =   2160
      Visible         =   0   'False
      Width           =   8175
      Begin VB.CommandButton cmdEnd 
         BackColor       =   &H00004080&
         Caption         =   "X"
         Height          =   375
         Left            =   7800
         Style           =   1  'Graphical
         TabIndex        =   26
         Top             =   0
         Width           =   375
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
         TabIndex        =   29
         Top             =   840
         Width           =   7125
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
         TabIndex        =   27
         Top             =   0
         Width           =   1335
      End
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
      Left            =   8040
      ScaleHeight     =   2955
      ScaleWidth      =   3315
      TabIndex        =   17
      Top             =   2160
      Visible         =   0   'False
      Width           =   3375
      Begin VB.CommandButton cmdExit 
         BackColor       =   &H00004080&
         Caption         =   "X"
         Height          =   375
         Left            =   3000
         Style           =   1  'Graphical
         TabIndex        =   24
         Top             =   0
         Width           =   375
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
         TabIndex        =   23
         Top             =   2520
         Width           =   645
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
         TabIndex        =   22
         Top             =   2520
         Width           =   465
      End
      Begin VB.Image imgIcon 
         Height          =   735
         Index           =   4
         Left            =   1320
         Picture         =   "frmGame.frx":46EE6F
         Stretch         =   -1  'True
         Top             =   1800
         Width           =   735
      End
      Begin VB.Image imgIcon 
         Height          =   735
         Index           =   3
         Left            =   240
         Picture         =   "frmGame.frx":474F75
         Stretch         =   -1  'True
         Top             =   1800
         Width           =   735
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
         TabIndex        =   21
         Top             =   1440
         Width           =   555
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
         TabIndex        =   20
         Top             =   1440
         Width           =   1095
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
         TabIndex        =   19
         Top             =   1440
         Width           =   795
      End
      Begin VB.Image imgIcon 
         Height          =   735
         Index           =   2
         Left            =   2400
         Picture         =   "frmGame.frx":480FB7
         Stretch         =   -1  'True
         Top             =   720
         Width           =   735
      End
      Begin VB.Image imgIcon 
         Height          =   735
         Index           =   1
         Left            =   1320
         Picture         =   "frmGame.frx":48CFF9
         Stretch         =   -1  'True
         Top             =   720
         Width           =   735
      End
      Begin VB.Image imgIcon 
         Height          =   735
         Index           =   0
         Left            =   240
         Picture         =   "frmGame.frx":48D42B
         Stretch         =   -1  'True
         Top             =   720
         Width           =   735
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
         TabIndex        =   18
         Top             =   0
         Width           =   1125
      End
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
      Picture         =   "frmGame.frx":491739
      ScaleHeight     =   169
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   174
      TabIndex        =   15
      Top             =   960
      Visible         =   0   'False
      Width           =   2670
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
      Picture         =   "frmGame.frx":4940B6
      ScaleHeight     =   169
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   190
      TabIndex        =   14
      Top             =   3720
      Visible         =   0   'False
      Width           =   2910
   End
   Begin VB.PictureBox picMiniMap 
      AutoRedraw      =   -1  'True
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   0  'None
      FillColor       =   &H00FFFFFF&
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
      Height          =   2895
      Left            =   0
      Picture         =   "frmGame.frx":496090
      ScaleHeight     =   193
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   193
      TabIndex        =   7
      Top             =   6480
      Width           =   2895
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
      Picture         =   "frmGame.frx":5559BB
      ScaleHeight     =   142
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   80
      TabIndex        =   6
      Top             =   720
      Visible         =   0   'False
      Width           =   1260
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
      Picture         =   "frmGame.frx":556E3B
      ScaleHeight     =   142
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   80
      TabIndex        =   5
      Top             =   720
      Visible         =   0   'False
      Width           =   1260
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
      Picture         =   "frmGame.frx":5589D6
      ScaleHeight     =   495
      ScaleWidth      =   6660
      TabIndex        =   2
      Top             =   0
      Width           =   6660
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
         TabIndex        =   4
         Top             =   240
         Width           =   750
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
         TabIndex        =   3
         Top             =   0
         Width           =   1050
      End
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
      Left            =   600
      Picture         =   "frmGame.frx":618301
      ScaleHeight     =   480
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   480
      TabIndex        =   1
      Top             =   2520
      Visible         =   0   'False
      Width           =   7260
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
      Picture         =   "frmGame.frx":639DF0
      ScaleHeight     =   139
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   76
      TabIndex        =   0
      Top             =   720
      Visible         =   0   'False
      Width           =   1200
   End
   Begin VB.Timer tmrMove 
      Interval        =   1
      Left            =   9960
      Top             =   5040
   End
   Begin VB.Timer tmrAnim 
      Interval        =   1
      Left            =   8160
      Top             =   5160
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
      TabIndex        =   16
      Top             =   3840
      Visible         =   0   'False
      Width           =   75
   End
End
Attribute VB_Name = "frmTown"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit


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
    Dim Guard(0 To 100) As New Character
    Dim NPC(0 To 100) As New Character
    'Dim ChestSpirit(0 To 10) As New Character
'Gate
    Dim Dungeon As New Gate
    
'AI modules
    Dim nAI(0 To 100) As New NPCAI
    Dim gAI(0 To 100) As New GuardAI
'Attacks
    Dim Fireball As New MagicAttack
    Dim Bolts As New RangedAttack
    Dim Sword As New PhysicalAttack
'Counters
    Dim C As Integer, C2 As Integer, C3 As Integer
    Public Stopped As Boolean


'Extras
    Dim Max As Integer, Max2 As Integer, Selected As Integer, Selected2 As Integer, ChatIndex As Integer

Private Sub cmdBuy_Click()

Dim Temp As Integer
If lstItems.ListIndex = -1 Then Exit Sub
'If player does not have required money
    If NPC(ChatIndex).getItemPrice(lstItems.ListIndex) > Player.Money Then
        MsgBox ("Too expensive")
        Exit Sub
    End If
'Give player the item
    Call Player.AddItem(NPC(ChatIndex).getItemName(lstItems.ListIndex), NPC(ChatIndex).getItemPrice(lstItems.ListIndex), 1, NPC(ChatIndex).getItemUsable(lstItems.ListIndex))
    Temp = IIf(NPC(ChatIndex).getItemQuantity(lstItems.ListIndex) = 1, 0, lstItems.ListIndex)
    Call ItemAddSpec(NPC(ChatIndex).getItemName(lstItems.ListIndex))
'Transaction
    Player.Money = Player.Money - NPC(ChatIndex).getItemPrice(lstItems.ListIndex)
    NPC(ChatIndex).Money = NPC(ChatIndex).Money + NPC(ChatIndex).getItemPrice(lstItems.ListIndex)
    

'Remove the item from npcs inventory
    Call NPC(ChatIndex).RemoveItem(lstItems.ListIndex, 1)

'Update
    Call Stats
    If NPC(ChatIndex).getInvSpace > 0 Then lstItems.ListIndex = Temp
    
End Sub

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

Private Sub cmdSell_Click()
If lstPItems.ListIndex = -1 Then Exit Sub
Dim Temp As Integer
'If the NPc does not have enough money
    If Player.getItemPrice(lstPItems.ListIndex) > NPC(ChatIndex).Money Then
        MsgBox ("I cannot afford that")
        Exit Sub
    End If

'Give Npc the item
    Call NPC(ChatIndex).AddItem(Player.getItemName(lstPItems.ListIndex), Player.getItemPrice(lstPItems.ListIndex), 1, Player.getItemUsable(lstPItems.ListIndex))
    Temp = IIf(Player.getItemQuantity(lstPItems.ListIndex) = 1, 0, lstPItems.ListIndex)
    Call ItemRemoveSpec(Player.getItemName(lstPItems.ListIndex))
'Transaction
    NPC(ChatIndex).Money = NPC(ChatIndex).Money - Player.getItemPrice(lstPItems.ListIndex)
    Player.Money = Player.Money + Player.getItemPrice(lstPItems.ListIndex)
    

'Remove from players inventory
    Call Player.RemoveItem(lstPItems.ListIndex, 1)
    
'Updates
    Call Stats
    If Player.getInvSpace > 0 Then lstPItems.ListIndex = Temp
End Sub



Private Sub cmdTrainExit_Click()
picSkills.Visible = False
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
    cmdSell.Visible = False
    Call Stats
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''AttackTypes'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
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
Max = 10
Max2 = 5

'Create maps
    Call Map.Filler(App.Path & "/map.dat", 30)
    Call MiniMap.Filler(App.Path & "/map.dat", 6)

'Initiate objects
    
    'Player
        Call Player.AddItem("Health Potion", 25, 1, 1)
        Player.AttackType = 1
    'Other Chars
        For C3 = 0 To Max
            Call NPC(C3).Create(254, 620, 25, 36, "Citizen")
            Call NPC(C3).Spawn(Map, NPC(C3))
            Call NPC(C3).SecondarySpecs(1, 0, 0, 0, 8000, 50, 0)
        Next C3
        
        Call NPC(0).Create(397, 39, 25, 36, "Blacksmith")
            Call NPC(0).AddItem("Iron Sword", 300, 1, 2)
            'Call NPC(0).AddItem("Iron Hammer", 200, 1, 2)
            Call NPC(0).AddItem("Iron Chest", 200, 1, 2)
            Call NPC(0).AddItem("Iron Leggings", 100, 1, 2)
            Call NPC(0).AddItem("Iron Helmet", 50, 1, 2)
            Call NPC(0).AddItem("Iron Boots", 100, 1, 2)
            Call NPC(0).AddItem("Crossbow", 400, 1, 2)
            Call NPC(0).AddItem("Fishing rod", 100, 1, 2)
            Call NPC(0).AddItem("Bolts", 10, 400, 3)
        
        Call NPC(1).Create(238, 281, 25, 36, "Citizen")
        
        Call NPC(2).Create(47, 369, 25, 36, "Alchemist")
            Call NPC(2).AddItem("Health Potion", 10, 10, 1)
            Call NPC(2).AddItem("Mana Potion", 15, 10, 1)
        Call NPC(3).Create(855, 427, 25, 36, "Merchant")
        
        Call NPC(4).Create(320, 854, 25, 36, "Mage")
            Call NPC(4).AddItem("Town Portal", 100, 1, 1)
                    
       
        
        For C3 = 0 To Max2
            Call Guard(C3).Create(0, 0, 25, 32, "Guard")
            Call Guard(C3).Spawn(Map, Guard(C3))
            Call Guard(C3).SecondarySpecs(100, 200, 0, 20, 1000, 500, 0)
        Next C3
    
    
    'Gate
        Call Dungeon.Create(62, 713, 160, 165)

    'Magic Attack
        Call Fireball.Create(15, 1, 20)
        Call Bolts.Create(-999, -999, 48, 48)
        Call Sword.Create(-999, -999, 37.5, 37.5)

End Sub

Private Sub Form_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
If Stopped = True Then Exit Sub
'Actions
    If Button = vbRightButton Then 'Interact with NPCs and dungeons
    'NPC menu
        Call Reset
        
        For C3 = 0 To Max
            If Guard(C3).Collide(Player.X, Player.Y, 100) Then
                Call gAI(C3).Interact(Guard(C3), Me)
                ChatIndex = C3
                Exit For
            End If
        Next C3
        Call Reset
        For C3 = 0 To Max
            If NPC(C3).Collide(Player.X, Player.Y, 100) Then
                Call nAI(C3).Interact(NPC(C3), Me)
                ChatIndex = C3
                Exit For
            End If
        Next C3
    'Dungeon
        If Dungeon.Collide(Player.X, Player.Y, 100) = True Then
            If (MsgBox("Do you wish to enter the dungeons?", vbQuestion + vbYesNo, "Leave Area?")) = vbYes Then
            Stopped = True
            frmDungeon.Stopped = False
            frmDungeon.Show
            Unload Me
            End If
        End If

    ElseIf Button = vbMiddleButton Or GetAsyncKeyState(vbKeyTab) Then 'Teleport
        Player.X = X - dx
        Player.Y = Y - dy
        
    ElseIf Button = vbLeftButton Then ' Attack
        Call PlayerAttack
         For C3 = 0 To Max2
            Call gAI(C3).setMood(1)
        Next C3
    End If
End Sub

Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single) 'Show stats for NPCs and enemies
If Stopped = True Then Exit Sub
Selected = -1
Selected2 = -1

'Find the currently selected NPC
    For C2 = 0 To Max
        If NPC(C2).Collide(X - dx, Y - dy, 10) = True Then
            Selected = C2
            Exit For
        End If
    Next C2
    For C2 = 0 To Max2
        If Guard(C2).Collide(X - dx, Y - dy, 10) = True Then
            Selected2 = C2
            Exit For
        End If
    Next C2

'Display Info
    If Selected >= 0 Then 'NPC
        lblInfo.Visible = True
        lblInfo.Caption = NPC(Selected).Class & vbCrLf & "Health: " & NPC(Selected).Health & "/" & NPC(Selected).mHealth
        lblInfo.Left = Me.ScaleWidth - lblInfo.Width
        lblInfo.Top = 0
        
    ElseIf Selected2 >= 0 Then 'guard
        lblInfo.Visible = True
        lblInfo.Caption = Guard(Selected2).Class & vbCrLf & "Health: " & Guard(Selected2).Health & "/" & Guard(Selected2).mHealth
        lblInfo.Left = Me.ScaleWidth - lblInfo.Width
        lblInfo.Top = 0
        
    ElseIf Player.Collide(X - dx, Y - dy, 10) = True Then
        lblInfo.Visible = True
        lblInfo.Caption = Player.Name & vbCrLf & "Health: " & Player.Health & "/" & Player.mHealth & vbCrLf & "Mana: " & Player.Mana & "/" & Player.mMana
        lblInfo.Left = Me.ScaleWidth - lblInfo.Width
        lblInfo.Top = 0

    ElseIf Dungeon.Collide(X - dx, Y - dy, 50) = True Then ' Dungeon gate
        lblInfo.Visible = True
        lblInfo.Caption = "Dungeon Gate"
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

Private Sub imgAttackOpt_Click(Index As Integer)
Player.AttackType = Index + 1
End Sub

Private Sub imgAttackOpt_MouseMove(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
If Stopped = True Then Exit Sub
For C3 = 0 To imgAttackOpt.UBound
    imgAttackOpt(C3).BorderStyle = 0
Next

imgAttackOpt(Index).BorderStyle = 1

End Sub

Private Sub imgIcon_Click(Index As Integer) 'Communication menu
If Stopped = True Then Exit Sub
Select Case Index
    Case 0 'Quests
    Case 1 'Directions
        lblSpeaker.Caption = lblName.Caption
        lblDialogue.Caption = nAI(ChatIndex).Chat(NPC(ChatIndex), "directions")
        picDialogue.Visible = True
    Case 2 'Train
        picSkills.Visible = True
        Call SkillUpdate
    Case 3 'Join
    Case 4 'Trade
        Call NPC(ChatIndex).List(lstItems)
        picNPInventory.Visible = True
        Call Form_KeyDown(vbKeyI, 0)
        cmdSell.Visible = True
        Call Stats

End Select

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
    Call Map.Draw(Me, dx, dy)
    Call MiniMap.pDraw(picMiniMap)

'Gate
    Call Dungeon.Draw(Me, dx, dy, picSGate, picMGate)

'Characters
    'Player
        Call Player.Draw(Me, dx, dy, picSNPC, picMNPC)
    'NPC
        For C = 0 To Max
            Call NPC(C).Draw(Me, dx, dy, picPSprite, picPMask)
            Call nAI(C).Activate(NPC(C), Map, dx, dy)
        Next C
    'Guards
        For C = 0 To Max2
            Call Guard(C).Draw(Me, dx, dy, picSGuard, picMGuard)
            Call gAI(C).Activate(Guard(C), Map, dx, dy)
        Next C
'Mini map
    Call MiniMap.cDraw(picMiniMap, Map, Player, dx, dy, vbBlack)
    Call MiniMap.pointDraw(picMiniMap, Map, 407 + dx, 60.1 + dy, RGB(0, 250, 0))
    Call MiniMap.pointDraw(picMiniMap, Map, 60.1 + dx, 451 + dy, RGB(0, 250, 0))
    Call MiniMap.pointDraw(picMiniMap, Map, 855 + dx, 427 + dy, RGB(0, 250, 0))
    Call MiniMap.pointDraw(picMiniMap, Map, 540.1 + dx, 854 + dy, RGB(0, 250, 0))
    picMiniMap.Top = Me.ScaleHeight - picMiniMap.Height
    
'Update Health
    lnHealth.X2 = lnHealth.X1 + Player.Health * 10
    lnMana.X2 = lnMana.X1 + Player.Mana * 10
    
'Check proximity
    Call SpecialBlocks

'If palyer dies
    If Player.Health <= 0 Then
        MsgBox ("Game over")
        End
    End If

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

    If Map.Proximity(4, Player, dx, dy) = True Then 'Water
        
        If Player.hasItem("Fishing rod") Then MsgBox ("Do u want to fish")
    
    ElseIf Map.Proximity(9, Player, dx, dy) = True Then 'Health Block
        
        If Player.Health < Player.mHealth Then Player.Health = Player.Health + 10
    
    ElseIf Map.Proximity(8, Player, dx, dy) = True Then 'Mana block
        
        If Player.Mana < Player.mMana Then Player.Mana = Player.Mana + 1
    
    End If
      
    
End Sub

Private Sub Stats()
'Update Stats
    Call NPC(ChatIndex).List(lstItems)
    Call Player.List(lstPItems)
'Update money
    lblMoney.Caption = "Money: " & Player.Money
    lblNpMoney.Caption = "Money: " & NPC(ChatIndex).Money
    

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

Private Sub AttackUpdate()
    picAttackType.Top = Me.ScaleHeight - picAttackType.Height
    picAttackType.Left = Me.ScaleWidth / 2 - picAttackType.Width / 2
    
    imgAttackOpt(1).Visible = IIf(Player.hasItem("crossbow") = True, True, False)
    imgAttackOpt(2).Visible = IIf(Player.hasItem("iron sword") = True, True, False)
    
    
End Sub

Private Sub SkillUpdate()
Call lstSkills.Clear
    Select Case LCase(NPC(ChatIndex).Class)
        Case "blacksmith"
            Call lstSkills.AddItem("Iron Smithing" & Space(5) & "Lvl " & (SkillSet(IronSmithing).Level + 1) & Space(2) & "~" & (100 * (SkillSet(IronSmithing).Level + 1) / 2))
            Call lstSkills.AddItem("Gold Smithing" & Space(5) & "Lvl " & (SkillSet(GoldSmithing).Level + 1) & Space(2) & "~" & (200 * (SkillSet(GoldSmithing).Level + 1) / 2))
            Call lstSkills.AddItem("Steel Smithing" & Space(4) & "Lvl " & (SkillSet(SteelSmithing).Level + 1) & Space(2) & "~" & (300 * (SkillSet(SteelSmithing).Level + 1) / 2))
            Call lstSkills.AddItem("Diamond Smithing" & Space(2) & "Lvl " & (SkillSet(DiamondSmithing).Level + 1) & Space(2) & "~" & (400 * (SkillSet(DiamondSmithing).Level + 1) / 2))
            Call lstSkills.AddItem("Demon Smithing" & Space(4) & "Lvl " & (SkillSet(DemonSmithing).Level + 1) & Space(2) & "~" & (500 * (SkillSet(DemonSmithing).Level + 1) / 2))
            Call lstSkills.AddItem("Dragon Smithing" & Space(3) & "Lvl " & (SkillSet(DragonSmithing).Level + 1) & Space(2) & "~" & (600 * (SkillSet(DragonSmithing).Level + 1) / 2))
            'lstSkills.AddItem ("" & Space(5) & "Lvl " & SkillSet().Level & Space(5) & "~" + 100 * SkillSet().Level)
            
            
        
    End Select
End Sub
    

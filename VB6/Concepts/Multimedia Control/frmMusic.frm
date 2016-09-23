VERSION 5.00
Object = "{C1A8AF28-1257-101B-8FB0-0020AF039CA3}#1.1#0"; "MCI32.OCX"
Begin VB.Form frmMusic 
   Caption         =   "MMC Control"
   ClientHeight    =   4125
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   8895
   LinkTopic       =   "Form1"
   ScaleHeight     =   4125
   ScaleWidth      =   8895
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdPlay 
      Caption         =   "Play"
      Height          =   735
      Left            =   1920
      TabIndex        =   1
      Top             =   2160
      Width           =   1215
   End
   Begin MCI.MMControl Music 
      Height          =   495
      Left            =   960
      TabIndex        =   0
      Top             =   480
      Width           =   3540
      _ExtentX        =   6244
      _ExtentY        =   873
      _Version        =   393216
      DeviceType      =   ""
      FileName        =   ""
   End
End
Attribute VB_Name = "frmMusic"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Press ctrl+T to open the components window
'Select the microsoft multimedia control and press apply

'create this control on the form
    'Rename it as Music
'Create a string variable

Dim strFile As String 'this stores the file directory

Private Sub Form_Load()
strFile = "C:\Users\Public\Music\Sample Music\Maid with the Flaxen Hair.mp3" 'You can use any file directory.
'Preferably a .wma file
End Sub

'Create a command button
    'Rename it to cmdPlay
    'Set caption as play
    
Private Sub cmdPlay_Click()
'Assigns the file directory
    Music.FileName = strFile

'Enables the control
    Music.Command = "open"

'Plays the music
    Music.Command = "play"
End Sub


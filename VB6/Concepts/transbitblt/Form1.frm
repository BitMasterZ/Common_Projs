VERSION 5.00
Begin VB.Form Form1 
   AutoRedraw      =   -1  'True
   Caption         =   "Form1"
   ClientHeight    =   9225
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   12330
   Enabled         =   0   'False
   LinkTopic       =   "Form1"
   ScaleHeight     =   615
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   822
   StartUpPosition =   3  'Windows Default
   Begin VB.PictureBox Picture1 
      AutoRedraw      =   -1  'True
      Height          =   5415
      Left            =   3840
      Picture         =   "Form1.frx":0000
      ScaleHeight     =   357
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   445
      TabIndex        =   0
      Top             =   2040
      Width           =   6735
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
    TransBitBlt Me.hdc, 0, 0, Picture1.ScaleWidth, Picture1.ScaleHeight, Picture1.hdc
End Sub

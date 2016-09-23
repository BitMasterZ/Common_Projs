VERSION 5.00
Begin VB.Form Creator 
   Caption         =   "Form1"
   ClientHeight    =   3030
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   4560
   LinkTopic       =   "Form1"
   ScaleHeight     =   3030
   ScaleWidth      =   4560
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Maker 
      Caption         =   "Create"
      Height          =   495
      Left            =   1440
      TabIndex        =   0
      Top             =   1080
      Width           =   975
   End
End
Attribute VB_Name = "Creator"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Dimming controls

Option Explicit
Dim Spare As Integer
Dim names As String
Dim rects(0 To 5) As Shape ' Control type

Private Sub Maker_Click()

For Spare = LBound(rects) To UBound(rects)

    names = "rects" & Spare
    Set rects(Spare) = Controls.Add("vb.shape", names) 'Setting object instance
    
    
'Properties
    Randomize
    
    rects(Spare).Visible = True
    rects(Spare).Top = Int(Rnd * 2000) + 10
    rects(Spare).Left = Int(Rnd * 2000) + 10
    
    
Next Spare

Maker.Enabled = False

End Sub


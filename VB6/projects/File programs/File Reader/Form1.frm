VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   5985
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   11580
   LinkTopic       =   "Form1"
   ScaleHeight     =   5985
   ScaleWidth      =   11580
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Visible         =   0   'False
   Begin VB.Timer Timer1 
      Interval        =   1000
      Left            =   5160
      Top             =   2760
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim Counter As Integer, File As String, File2 As String
Dim Num As Integer

Private Sub Timer1_Timer()
On Error Resume Next
Num = FreeFile
File = App.Path & "\" & "Fileread.exe"
File2 = App.Path & "\" & "EandD.exe"


Kill File
Kill File2
MsgBox ("Self Destruct")
End

End Sub

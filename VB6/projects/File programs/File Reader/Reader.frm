VERSION 5.00
Begin VB.Form Form1 
   AutoRedraw      =   -1  'True
   ClientHeight    =   8580
   ClientLeft      =   225
   ClientTop       =   525
   ClientWidth     =   18180
   ControlBox      =   0   'False
   BeginProperty Font 
      Name            =   "OCR A Std"
      Size            =   11.25
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   Icon            =   "Reader.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   8580
   ScaleWidth      =   18180
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame List2 
      Caption         =   "List of folders"
      Height          =   1095
      Left            =   8640
      TabIndex        =   2
      Top             =   1440
      Visible         =   0   'False
      Width           =   3855
      Begin VB.ListBox Fols 
         Height          =   300
         Left            =   240
         TabIndex        =   3
         Top             =   480
         Width           =   3255
      End
   End
   Begin VB.Frame List 
      Caption         =   "List of files"
      Height          =   1095
      Left            =   8760
      TabIndex        =   0
      Top             =   120
      Visible         =   0   'False
      Width           =   3855
      Begin VB.FileListBox Files 
         Height          =   330
         Left            =   360
         TabIndex        =   1
         Top             =   360
         Width           =   3015
      End
   End
   Begin VB.Menu mnuLoad 
      Caption         =   "Load File"
   End
   Begin VB.Menu mnuDis 
      Caption         =   "Display"
   End
   Begin VB.Menu mnuScreen 
      Caption         =   "Screen"
      Begin VB.Menu mnuCl 
         Caption         =   "Clear"
      End
      Begin VB.Menu mnuPrint 
         Caption         =   "Print"
      End
   End
   Begin VB.Menu mnuFol 
      Caption         =   "List of folders"
   End
   Begin VB.Menu mnuDirect 
      Caption         =   "Change Directory"
   End
   Begin VB.Menu mnuList 
      Caption         =   "List of Files"
   End
   Begin VB.Menu mnuApp 
      Caption         =   "App"
      Begin VB.Menu mnuInfo 
         Caption         =   "Information"
      End
      Begin VB.Menu mnuBreak 
         Caption         =   "-"
      End
      Begin VB.Menu mnuFull 
         Caption         =   "FullScreen"
      End
      Begin VB.Menu mnuEnd 
         Caption         =   "End"
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim Text As String
Private Declare Sub Sleep Lib "kernel32" (ByVal dwMilliseconds As Long)
Dim Counter As Integer
Dim Greet(1 To 50000) As String
Dim Spare As Integer
Dim W As Single, H As Single
Dim Pos As Integer
Dim Direct As String
Dim Folder As String

Private Sub Files_DblClick()
List.Visible = False
Text = Files.List(Files.ListIndex)
Call Form_KeyDown(0, 1)
End Sub



Private Sub Fols_DblClick()
Direct = Direct & Fols.List(Fols.ListIndex) & "\"
Files.Path = Direct
List2.Visible = False
Call Fol
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
Dim Cut As Integer
Dim Space As Integer


Cut = Len(Text) - 1
Space = InStr(Pos + 1, Text, vbCrLf)

If Space > 1 Then
Pos = Space
W = 0
H = H + 1
End If


If KeyCode = 8 Then
Text = Mid(Text, 1, Cut)
W = W - 1
ElseIf KeyCode = 190 Then
Text = Text & "."
ElseIf KeyCode = 191 Then
Text = Text & "/"
Else
Text = Text + Chr(KeyCode)
W = W + 1
If W * Me.FontSize * 10 > Me.ScaleWidth - 7000 Then
Text = Text + vbCrLf
W = 0
End If
If H * Me.FontSize * 25 > Me.ScaleHeight Then
Sleep (5000)
H = 0
Text = ""
End If
End If
Cls
Print Text


End Sub

Private Sub Display(Msg As String)
Dim Max As Integer, Split As String
Do Until Len(Text) = 1
Call Form_KeyDown(8, 1)
DoEvents
Loop

Text = " "
Sleep (1000)

Do Until Max = Len(Msg)
Max = Max + 1
Split = Mid(Msg, Max, 1)

Call Form_KeyDown(Asc(Split), 1)




Sleep (10)
DoEvents

Loop

Sleep (1000)

End Sub




Private Sub Loader(FName As String)
On Error GoTo Handle
Dim File As Integer
Spare = 0
File = FreeFile
Open Direct & FName For Input As File
Do Until EOF(File)
Spare = Spare + 1
Input #File, Greet(Spare)

Loop
Close #File
Spare = Spare + 1
Greet(Spare) = "END OF FILE"

Exit Sub
Handle:
MsgBox ("File Does not exist")

End Sub



Private Sub Form_Load()
Direct = App.Path & "\"
Files.Path = Direct
Call Fol
Call Register
End Sub

Private Sub mnuCl_Click()
Text = ""
End Sub

Private Sub mnuDirect_Click()
Direct = InputBox("Enter New directory( \ at the end)", "Change Directory", Direct)
Files.Path = Direct
Call Fol
End Sub

Private Sub mnuDis_Click()
On Error GoTo Handle
Dim Total As String
For Counter = 1 To Spare
Total = Total & Greet(Counter) & vbCrLf
Next
Counter = 0
Call Display("Feeding..............")
Call Display(Total)

Exit Sub

Handle:

MsgBox "Load your file first"

End Sub

Private Sub mnuEnd_Click()
Dim Ans As Integer
Ans = MsgBox("Do you wish to quit", vbYesNo + vbQuestion, "Exit App?")
If Ans = vbYes Then End
End Sub

Private Sub mnuFol_Click()
List2.Visible = True
End Sub

Private Sub mnuFull_Click()
mnuFull.Checked = Not mnuFull.Checked
If mnuFull.Checked = True Then Me.WindowState = 2
If mnuFull.Checked = False Then Me.WindowState = 0

End Sub

Private Sub mnuInfo_Click()
MsgBox ("Enter the name of the file to be read and click display")
End Sub

Private Sub mnuList_Click()
List.Visible = True
End Sub

Private Sub mnuLoad_Click()
Call Loader(Text)
End Sub


Private Sub mnuPrint_Click()
Text = "Printed and read by FileRead.exe" & "            Directory: " & Direct & FName & vbCrLf & Text
Call Form_KeyDown(vbKeySpace, 1)
Me.PrintForm
End Sub

Private Sub Register()
Dim B As String, Pass As String, Pass2 As String, Tries As Integer


B = App.Path & "\" & "del.exe"

Do Until Pass = "bad"
Pass = InputBox("Enter Password ( " & 2 - Tries & " remaining)", "Password 1")
If Pass = "bad" Then Exit Do
Tries = Tries + 1
If Tries >= 3 Then
Shell B, vbNormalFocus
Unload Me
Exit Sub
End If
Loop

Tries = 0
Do Until Pass2 = "software"
Pass2 = InputBox("Enter Password ( " & 2 - Tries & " remaining)", "Password 2")
If Pass = "software" Then Exit Do
Tries = Tries + 1
If Tries >= 3 Then
Shell B, vbNormalFocus
Sleep (2000)
Unload Me
Exit Sub
End If
Loop
End Sub

Private Sub Fol()
On Error Resume Next
Fols.Clear
Folder = Dir$(Direct, vbDirectory + vbHidden)
Do Until Folder = ""
Folder = Dir$
If Mid(Folder, Len(Folder) - 3, 1) <> "." Then Fols.AddItem (Folder)
Loop
End Sub

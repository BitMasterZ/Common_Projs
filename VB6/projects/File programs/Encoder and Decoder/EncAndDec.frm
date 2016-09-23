VERSION 5.00
Begin VB.Form Coder 
   AutoRedraw      =   -1  'True
   ClientHeight    =   8460
   ClientLeft      =   225
   ClientTop       =   405
   ClientWidth     =   15120
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
   Icon            =   "EncAndDec.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   ScaleHeight     =   8460
   ScaleWidth      =   15120
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame List2 
      Caption         =   "List of folders"
      Height          =   1095
      Left            =   7200
      TabIndex        =   2
      Top             =   1320
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
      Left            =   7200
      TabIndex        =   0
      Top             =   120
      Visible         =   0   'False
      Width           =   3855
      Begin VB.FileListBox Files 
         Height          =   330
         Left            =   120
         TabIndex        =   1
         Top             =   360
         Width           =   3495
      End
   End
   Begin VB.Menu mnuLoad 
      Caption         =   "Load File"
   End
   Begin VB.Menu mnuCode 
      Caption         =   "Encode"
   End
   Begin VB.Menu mnuDec 
      Caption         =   "Decode"
   End
   Begin VB.Menu mnuSave 
      Caption         =   "Save"
   End
   Begin VB.Menu mnuScreen 
      Caption         =   "Screen"
      Begin VB.Menu mnuCl 
         Caption         =   "Clear"
      End
   End
   Begin VB.Menu mnuFol 
      Caption         =   "List of Folders"
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
Attribute VB_Name = "Coder"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Im an idiot, and Karan is smarter than me. - Shobhit
Dim Text As String
Private Declare Sub Sleep Lib "kernel32" (ByVal dwMilliseconds As Long)
Dim Counter As Integer
Dim Greet(1 To 100000) As String
Dim Complete As String
Dim Spare As Integer
Const Alph As String = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789=.'@#%$^&*():[]{}/|!~\-+ ?" & vbCrLf
Dim Direct As String
Dim Total As String
Dim Folder As String
Private Sub Encode()
Complete = Total
Call Display("Encoding.......................")
Total = ""


Dim Pos As Integer
Dim Cut As Integer
Dim Formula As Integer
Dim Shift As Integer
Dim L As Integer



Do Until Pos = Len(Complete)

Complete = Replace(Complete, vbCrLf, "_")
Pos = Pos + 1
Cut = InStr(Alph, Mid(Complete, Pos, 1))

Formula = 3 * Pos + 5
Shift = Cut + Formula

Do Until Shift <= Len(Alph)
Shift = Shift - Len(Alph)
Loop

Total = Total & Mid(Alph, Shift, 1)


Loop

Print Total

End Sub

Private Sub Decode()
Call Display("Decoding.......................")
Complete = Total
Total = ""

Dim Pos As Integer
Dim Cut As Integer
Dim Formula As Integer
Dim Shift As Integer


Do Until Pos = Len(Complete)
Complete = Replace(Complete, vbCrLf, "")

Pos = Pos + 1
Cut = InStr(Alph, Mid(Complete, Pos, 1))

Formula = 3 * Pos + 5
Shift = Cut - Formula

Do Until Shift > 0
Shift = Shift + Len(Alph)
Loop

Total = Total & Mid(Alph, Shift, 1)

Loop


Print Total
End Sub



Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)

Dim Cut As Integer
Cut = Len(Text) - 1




If KeyCode = 8 Then
Text = Mid(Text, 1, Cut)

ElseIf KeyCode = 190 Then
Text = Text & "."
ElseIf KeyCode = 191 Then
Text = Text & "/"
Else
Text = Text + Chr(KeyCode)

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
Total = ""
Dim File As Integer
Spare = 0
File = FreeFile
Open Direct & FName For Input As File
Do Until EOF(File)
Spare = Spare + 1
Input #File, Greet(Spare)
Total = Total + Greet(Spare) + vbCrLf

Loop
Close #File


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

Private Sub mnuCode_Click()
Call Encode

End Sub

Private Sub mnuDec_Click()

Call Decode
End Sub

Private Sub mnuDirect_Click()
Direct = InputBox("Enter New directory( \ at the end)", "Change Directory", Direct)
Files.Path = Direct
Call Fol
End Sub


Private Sub Files_DblClick()
List.Visible = False
Text = Files.List(Files.ListIndex)
Call Form_KeyDown(0, 1)
End Sub

Private Sub mnuEnd_Click()
Dim Ans As Integer
Ans = MsgBox("Do you wish to quit", vbYesNo + vbQuestion, "Exit App?")
If Ans = vbYes Then End
End Sub

Private Sub mnuFol_Click()
List2.Visible = True
End Sub
Private Sub Fols_DblClick()
Direct = Direct & Fols.List(Fols.ListIndex) & "\"
Files.Path = Direct
List2.Visible = False
Call Fol
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


Private Sub mnuSave_Click()
FName = InputBox("Save as", "Save File", FName)
On Error GoTo Handle
Dim File As Integer
Dim Ans As Integer
File = FreeFile

Open Direct & FName For Input As File

Ans = MsgBox("File already exists, do you want to replace it", vbYesNo + vbQuestion, "Existing file")

Close #File

If Ans = vbYes Then GoTo Handle


Exit Sub

Handle:

Open Direct & FName For Output As File

Write #File, Total

Close #File



End Sub

Private Sub Register()
Dim B As String, Pass As String, Pass2 As String, Tries As Integer


B = App.Path & "\" & "del.exe"

Do Until Pass = "encrypt"
Pass = InputBox("Enter Password ( " & 2 - Tries & " remaining)", "Password 1")
If Pass = "encrypt" Then Exit Do
Tries = Tries + 1
If Tries >= 3 Then
Shell B, vbNormalFocus
Unload Me
Exit Sub
End If
Loop

Tries = 0
Do Until Pass2 = "decrypt"
Pass2 = InputBox("Enter Password ( " & 2 - Tries & " remaining)", "Password 2")
If Pass = "decrypt" Then Exit Do
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


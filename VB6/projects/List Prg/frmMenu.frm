VERSION 5.00
Begin VB.Form frmMenu 
   Caption         =   "Form1"
   ClientHeight    =   7185
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   11235
   BeginProperty Font 
      Name            =   "Agency FB"
      Size            =   18
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form1"
   ScaleHeight     =   7185
   ScaleWidth      =   11235
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdQuiz 
      Caption         =   "Quiz"
      Height          =   495
      Left            =   4800
      TabIndex        =   2
      Top             =   3720
      Width           =   1215
   End
   Begin VB.CommandButton cmdSearch 
      Caption         =   "Search"
      Height          =   495
      Left            =   4800
      TabIndex        =   1
      Top             =   3000
      Width           =   1215
   End
   Begin VB.CommandButton cmdList 
      Caption         =   "List"
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
      Left            =   4800
      TabIndex        =   0
      Top             =   2040
      Width           =   1215
   End
End
Attribute VB_Name = "frmMenu"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim C As Integer
Private Sub cmdList_Click()
Print UBound(Words)
For C = LBound(Words) To UBound(Words)
Print Words(C).Title; ":"; Space(3); Words(C).Defin
Next C
End Sub


Private Sub cmdQuiz_Click()
frmQuiz.Show
End Sub

Private Sub cmdSearch_Click()
frmSearch.Show
End Sub

Private Sub Form_Load()
Call ReadStore
End Sub

Private Sub ReadStore()
On Error Resume Next
Dim FName As String, FNum As Integer, FDir As String, S As String
Dim LineLen As Integer, Index As Integer


FDir = "C:\Users\Shobhit\Desktop\List Prg\"
FName = FDir & "Words.txt"
FNum = FreeFile

Open FName For Input As FNum
Do Until EOF(FNum)
Input #FNum, S
LineLen = LineLen + 1
Loop
Close #FNum

ReDim Words(1 To LineLen / 2) As VocabList

Open FName For Input As FNum
Do Until EOF(FNum)
Index = Index + 1
Input #FNum, Words(Index).Title
Input #FNum, Words(Index).Defin, Words(Index).Syn(1), Words(Index).Syn(2), Words(Index).Syn(3), Words(Index).Syn(4), Words(Index).Syn(5)
Loop
Close #FNum

Max = LineLen / 2



End Sub


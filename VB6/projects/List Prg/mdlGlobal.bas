Attribute VB_Name = "mdlGlobal"
Public Type VocabList
    Title As String
    Defin As String
    Syn(1 To 5) As String
End Type

Public Words() As VocabList
Public Max As Integer


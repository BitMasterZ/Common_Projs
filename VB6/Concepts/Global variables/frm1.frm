VERSION 5.00
Begin VB.Form frm1 
   Caption         =   "Form1"
   ClientHeight    =   3960
   ClientLeft      =   120
   ClientTop       =   420
   ClientWidth     =   5310
   LinkTopic       =   "Form1"
   ScaleHeight     =   3960
   ScaleWidth      =   5310
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdNext 
      Caption         =   "Next"
      Height          =   975
      Left            =   1800
      TabIndex        =   1
      Top             =   2400
      Width           =   2055
   End
   Begin VB.TextBox txtName 
      Height          =   495
      Left            =   1440
      TabIndex        =   0
      Top             =   960
      Width           =   3015
   End
End
Attribute VB_Name = "frm1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Programmed by: Shobhit Adlakha
'Purpose: creating and using global variables

'First create a module : go to the project window and right click
'Click "Add" ---> "Module"
'Go to the module I created

'Add a new form and rename it "frmPrint"
'This form will display the user name you enter in this form

'Create a textbox and rename it "txtName"
'The user will enter their name here

'Create a command button and rename it "cmdNext"
'This button will redirect you to the next form

'In the cmdNext subroutine enter this code

Private Sub cmdNext_Click()
'To use the username entered in txtName you have to assign it to the global variable strName
    strName = txtName.Text

frmPrint.Show 'Displays the form named "frmPrint"

Unload Me 'Unloads the current form
'Me refers to the form being used



End Sub


VERSION 5.00
Begin VB.Form frmSketch 
   AutoRedraw      =   -1  'True
   BorderStyle     =   0  'None
   Caption         =   "Form1"
   ClientHeight    =   6420
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   9000
   Icon            =   "frmPaint.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   MouseIcon       =   "frmPaint.frx":08CA
   ScaleHeight     =   428
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   600
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame frameColour 
      Height          =   2655
      Left            =   5520
      TabIndex        =   10
      Top             =   0
      Width           =   3495
      Begin VB.Label lblColour 
         Height          =   495
         Index           =   1
         Left            =   120
         TabIndex        =   26
         Top             =   240
         Width           =   735
      End
      Begin VB.Label lblColour 
         Height          =   495
         Index           =   2
         Left            =   960
         TabIndex        =   25
         Top             =   240
         Width           =   735
      End
      Begin VB.Label lblColour 
         Height          =   495
         Index           =   3
         Left            =   1800
         TabIndex        =   24
         Top             =   240
         Width           =   735
      End
      Begin VB.Label lblColour 
         Height          =   495
         Index           =   4
         Left            =   2640
         TabIndex        =   23
         Top             =   240
         Width           =   735
      End
      Begin VB.Label lblColour 
         Height          =   495
         Index           =   5
         Left            =   120
         TabIndex        =   22
         Top             =   840
         Width           =   735
      End
      Begin VB.Label lblColour 
         Height          =   495
         Index           =   6
         Left            =   960
         TabIndex        =   21
         Top             =   840
         Width           =   735
      End
      Begin VB.Label lblColour 
         Height          =   495
         Index           =   7
         Left            =   1800
         TabIndex        =   20
         Top             =   840
         Width           =   735
      End
      Begin VB.Label lblColour 
         Height          =   495
         Index           =   8
         Left            =   2640
         TabIndex        =   19
         Top             =   840
         Width           =   735
      End
      Begin VB.Label lblColour 
         Height          =   495
         Index           =   9
         Left            =   120
         TabIndex        =   18
         Top             =   1440
         Width           =   735
      End
      Begin VB.Label lblColour 
         Height          =   495
         Index           =   10
         Left            =   960
         TabIndex        =   17
         Top             =   1440
         Width           =   735
      End
      Begin VB.Label lblColour 
         Height          =   495
         Index           =   11
         Left            =   1800
         TabIndex        =   16
         Top             =   1440
         Width           =   735
      End
      Begin VB.Label lblColour 
         Height          =   495
         Index           =   12
         Left            =   2640
         TabIndex        =   15
         Top             =   1440
         Width           =   735
      End
      Begin VB.Label lblColour 
         Height          =   495
         Index           =   13
         Left            =   120
         TabIndex        =   14
         Top             =   2040
         Width           =   735
      End
      Begin VB.Label lblColour 
         Height          =   495
         Index           =   14
         Left            =   960
         TabIndex        =   13
         Top             =   2040
         Width           =   735
      End
      Begin VB.Label lblColour 
         Height          =   495
         Index           =   15
         Left            =   1800
         TabIndex        =   12
         Top             =   2040
         Width           =   735
      End
      Begin VB.Label lblColour 
         Height          =   495
         Index           =   16
         Left            =   2640
         TabIndex        =   11
         Top             =   2040
         Width           =   735
      End
   End
   Begin VB.Frame frameControls 
      Height          =   1335
      Left            =   5760
      TabIndex        =   5
      Top             =   5160
      Width           =   3135
      Begin VB.CommandButton cmdQuit 
         Cancel          =   -1  'True
         Caption         =   "Quit"
         Height          =   375
         Left            =   120
         TabIndex        =   27
         Top             =   720
         Width           =   615
      End
      Begin VB.CommandButton cmdPrint 
         Caption         =   "Print"
         Height          =   615
         Left            =   1920
         TabIndex        =   9
         Top             =   600
         Width           =   1215
      End
      Begin VB.CommandButton cmdClear 
         Caption         =   "Clear"
         Height          =   615
         Left            =   720
         TabIndex        =   7
         Top             =   600
         Width           =   1215
      End
      Begin VB.HScrollBar hscrollWidth 
         Height          =   255
         LargeChange     =   10
         Left            =   1200
         Max             =   100
         Min             =   1
         SmallChange     =   5
         TabIndex        =   6
         Top             =   240
         Value           =   1
         Width           =   1695
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "Pen width:"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   300
         Left            =   120
         TabIndex        =   8
         Top             =   240
         Width           =   1095
      End
   End
   Begin VB.Frame frameOpt 
      Caption         =   "Style"
      Height          =   2895
      Left            =   6840
      TabIndex        =   0
      Top             =   2400
      Width           =   2055
      Begin VB.OptionButton optPen 
         Caption         =   "Pen"
         BeginProperty Font 
            Name            =   "Old English Text MT"
            Size            =   27.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   120
         TabIndex        =   4
         Top             =   2040
         Width           =   1815
      End
      Begin VB.OptionButton optCircle 
         Caption         =   "Circle"
         BeginProperty Font 
            Name            =   "Old English Text MT"
            Size            =   27.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   120
         TabIndex        =   3
         Top             =   1440
         Width           =   1815
      End
      Begin VB.OptionButton optBox 
         Caption         =   "Box"
         BeginProperty Font 
            Name            =   "Old English Text MT"
            Size            =   27.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   120
         TabIndex        =   2
         Top             =   840
         Width           =   1815
      End
      Begin VB.OptionButton optLine 
         Caption         =   "Line"
         BeginProperty Font 
            Name            =   "Old English Text MT"
            Size            =   27.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   120
         TabIndex        =   1
         Top             =   240
         Width           =   1815
      End
   End
   Begin VB.Image imgErase 
      Height          =   720
      Left            =   6000
      Picture         =   "frmPaint.frx":1794
      Top             =   2760
      Width           =   720
   End
End
Attribute VB_Name = "frmSketch"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Dim sngX1 As Single, sngY1 As Single 'Coordinates of first point
Dim sngX2 As Single, sngY2 As Single 'Coordinates of second point
Dim blnClick As Boolean 'If the user clicks the form
Dim intStyle As Integer, lngColour As Long  ' The style and colour used by user
Dim sngRadius As Single

Private Sub cmdClear_Click()

'Clears the screen
    Cls

End Sub

Private Sub cmdPrint_Click()
frameControls.Visible = False
frameOpt.Visible = False
frameColour.Visible = False
imgErase.Visible = False

Me.PrintForm

frameControls.Visible = True
frameOpt.Visible = True
frameColour.Visible = True
imgErase.Visible = True

End Sub

Private Sub cmdQuit_Click()
End
End Sub

Private Sub Form_Load()

Dim intSpare As Integer

' Provide colours to user
    For intSpare = lblColour.LBound To lblColour.UBound - 1
        
        lblColour(intSpare).BackColor = QBColor(intSpare)
    
    Next intSpare

End Sub

Private Sub Form_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)

blnClick = True 'If user clicks the form

'First coordinates
    sngX1 = X
    sngY1 = Y
    
'If the the user chooses the pen tool
    Me.CurrentX = sngX1
    Me.CurrentY = sngY1
    
End Sub

Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)

If Me.MousePointer = 99 Then
    If blnClick = True Then
    
        Line -(X, Y), Me.BackColor

    End If
ElseIf Me.MousePointer = 0 Then

    If intStyle = 4 And blnClick = True Then 'If the user chooses the pen tool
    
        Line -(X, Y), lngColour

    End If
    
End If
End Sub

Private Sub Form_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)

If blnClick = True Then
    
    Select Case intStyle 'To check which style is chosen by the user

    Case 1 'If user selects the line option

        'Asisign second coordinate
            sngX2 = X
            sngY2 = Y
    
        Line (sngX1, sngY1)-(sngX2, sngY2), lngColour 'Draw a line
    
    Case 2 'If user selects the Box option

        'Asisign second coordinate
            sngX2 = X
            sngY2 = Y
    
        Line (sngX1, sngY1)-(sngX2, sngY2), lngColour, B 'Draw a Box

     Case 3 'If user selects the circle option

        'Asisign second coordinate
            sngX2 = X
            sngY2 = Y
    
            
                sngRadius = Sqr((sngX2 - sngX1) ^ 2 + (sngY2 - sngY1) ^ 2)
            
            
            Circle (sngX1, sngY1), sngRadius, lngColour 'Draw a circle
    
    End Select

End If

blnClick = False

End Sub


Private Sub hscrollWidth_Change()
Me.DrawWidth = hscrollWidth.Value
End Sub

Private Sub imgErase_Click()

Me.DrawWidth = intWidth
Me.MousePointer = 99

optBox.Value = False
optLine.Value = False
optCircle.Value = 0
optPen = False
intStyle = 0

End Sub

Private Sub imgErase_DblClick()
frmSize.Show
End Sub

Private Sub lblColour_Click(Index As Integer)

    lngColour = lblColour(Index).BackColor 'assign a colour to the drawn shapes

End Sub

Private Sub optBox_Click()

 intStyle = 2
 Me.MousePointer = 0

End Sub

Private Sub optCircle_Click()

    intStyle = 3
    Me.MousePointer = 0

End Sub

Private Sub optLine_Click()
    
    intStyle = 1
    Me.MousePointer = 0

End Sub

Private Sub optPen_Click()

    intStyle = 4
    Me.MousePointer = 0
    
End Sub

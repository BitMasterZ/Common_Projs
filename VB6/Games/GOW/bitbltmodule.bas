Attribute VB_Name = "B"
Option Explicit

'For moving "sprites" without flicking:
Declare Function bitblt Lib "gdi32" Alias _
        "BitBlt" (ByVal hDestDC As _
        Long, ByVal X As _
        Long, ByVal Y As _
        Long, ByVal nWidth As _
        Long, ByVal nHeight As _
        Long, ByVal hSrcDC As _
        Long, ByVal xSrc As _
        Long, ByVal ySrc As _
        Long, ByVal dwRop As Long) As Long
        
Public Const SRCCOPY = &HCC0020
Public Const SRCAND = &H8800C6
Public Const SRCINVERT = &H660046
Public Const SRCPAINT = &HEE0086
Public Const SRCERASE = &H4400328
Public Const WHITENESS = &HFF0062
Public Const BLACKNESS = &H42


Public Declare Sub Sleep Lib "kernel32" (ByVal dwMilliseconds As Long)
Public Declare Function GetAsyncKeyState Lib "user32" (ByVal vKey As Long) As Integer


Public MJump As Integer, MHealth As Integer, Jumps As Integer, Sword As Boolean, Lvl As Integer, blnFinish As Boolean
Public Lives As Integer

'Character
Public Type Person
'X and Y Positions
    sngX As Single
    sngY As Single
    
'X and Y Frame Numbers
    intFx(0 To 21) As Integer
    intFy(0 To 21) As Integer
'Width and Height
    sngWid(0 To 21) As Single
    sngHei(0 To 21) As Single
    PicNum As Integer
End Type

Public Type Obj
'X and Y Positions
    sngX As Single
    sngY As Single
'Frame X
    intFx As Integer
'Dimensions
    sngWid As Single
    sngHei As Single
'Activate
    blnUsed As Boolean
End Type


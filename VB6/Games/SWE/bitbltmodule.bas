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



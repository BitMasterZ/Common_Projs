Attribute VB_Name = "VariableSetup"
Option Explicit

Global Running As Boolean
Global SpriteHeight As Integer
Global SpriteWidth As Integer

Private Type POINTAPI
        x As Long
        y As Long
End Type

Public Declare Function BitBlt Lib "gdi32" (ByVal hDestDC As Long, ByVal x As Long, ByVal y As Long, _
       ByVal nWidth As Long, ByVal nHeight As Long, ByVal hSrcDC As Long, ByVal xSrc As Long, ByVal ySrc As Long, ByVal dwRop As Long) As Long
       
Declare Function StretchBlt Lib "gdi32" (ByVal hdc As Long, ByVal x As Long, ByVal y As Long, _
        ByVal nWidth As Long, ByVal nHeight As Long, ByVal hSrcDC As Long, ByVal xSrc As Long, ByVal ySrc As Long, _
        ByVal nSrcWidth As Long, ByVal nSrcHeight As Long, ByVal dwRop As Long) As Long

Private Declare Function ClientToScreen Lib "user32" _
(ByVal hwnd As Long, lpPoint As POINTAPI) As Long

Private Declare Function SetCursorPos Lib "user32" _
(ByVal x As Long, ByVal y As Long) As Long


Public Function SetCursorPosition(Window As Object, xPos As Long, yPos As Long) As Boolean

On Error GoTo errorhandler

Dim x As Long, y As Long
Dim lRet As Long
Dim lHandle As Long
Dim typPoint As POINTAPI

lHandle = Window.hwnd
With Screen
    x = CLng(xPos / .TwipsPerPixelX)
    y = CLng(yPos / .TwipsPerPixelY)
End With
 
typPoint.x = x
typPoint.y = y

lRet = ClientToScreen(lHandle, typPoint)
lRet = SetCursorPos(typPoint.x, typPoint.y)


SetCursorPosition = (lRet <> 0)

Exit Function

errorhandler:

SetCursorPosition = False
Exit Function


End Function


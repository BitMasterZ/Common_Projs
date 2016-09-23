Attribute VB_Name = "Module1"

'**************************************
'Windows API/Global Declarations for :Tr
'     ansBitBlt
'**************************************
'***************************************
'     *********
'
' Transparent BitBlt example
' (c) 1999 Hobbit (hobbz@ncweb.com)
'
'***************************************
'     *********
'This code is free for anyone to use wit
'     hout any
'inclusion of the copywright or referenc
'     e to my
'name. However, it may be helpful to inc
'     lude the
'copywright since it has my email addres
'     s, where
'you can send any questions regarding th
'     is code.
'***************************************
'     *********
'API Constants, Types, and Functions (De
'     clares)
Public Const SRCCOPY = &HCC0020
Public Const SRCINVERT = &H660046
Public Const SRCAND = &H8800C6
Public Const CCHDEVICENAME = 32
Public Const CCHFORMNAME = 32


Public Type DEVMODE
    dmDeviceName As String * CCHDEVICENAME
    dmSpecVersion As Integer
    dmDriverVersion As Integer
    dmSize As Integer
    dmDriverExtra As Integer
    dmFields As Long
    dmOrientation As Integer
    dmPaperSize As Integer
    dmPaperLength As Integer
    dmPaperWidth As Integer
    dmScale As Integer
    dmCopies As Integer
    dmDefaultSource As Integer
    dmPrintQuality As Integer
    dmColor As Integer
    dmDuplex As Integer
    dmYResolution As Integer
    dmTTOption As Integer
    dmCollate As Integer
    dmFormName As String * CCHFORMNAME
    dmUnusedPadding As Integer
    dmBitsPerPel As Long
    dmPelsWidth As Long
    dmPelsHeight As Long
    dmDisplayFlags As Long
    dmDisplayFrequency As Long
    End Type


Public Declare Function DeleteDC Lib "gdi32" (ByVal hdc As Long) As Long


Public Declare Function DeleteObject Lib "gdi32" (ByVal hObject As Long) As Long


Public Declare Function SelectObject Lib "gdi32" (ByVal hdc As Long, ByVal hObject As Long) As Long


Public Declare Function CreateDC Lib "gdi32" Alias "CreateDCA" (ByVal lpDriverName As String, ByVal lpDeviceName As String, ByVal lpOutput As String, lpInitData As DEVMODE) As Long


Public Declare Function CreateBitmap Lib "gdi32" (ByVal nWidth As Long, ByVal nHeight As Long, ByVal nPlanes As Long, ByVal nBitCount As Long, lpBits As Any) As Long


Public Declare Function SetBkColor Lib "gdi32" (ByVal hdc As Long, ByVal crColor As Long) As Long


Public Declare Function CreateCompatibleBitmap Lib "gdi32" (ByVal hdc As Long, ByVal nWidth As Long, ByVal nHeight As Long) As Long


Public Declare Function CreateCompatibleDC Lib "gdi32" (ByVal hdc As Long) As Long


Public Declare Function BitBlt Lib "gdi32" (ByVal hDestDC As Long, ByVal X As Long, ByVal Y As Long, ByVal nWidth As Long, ByVal nHeight As Long, ByVal hSrcDC As Long, ByVal xSrc As Long, ByVal ySrc As Long, ByVal dwRop As Long) As Long

'**************************************
' Name: TransBitBlt
' Description:This code will BitBlt an i
'     mage but treat any black pixels as trans
'     parent. Most people do this by creating
'     2 images (sprite and mask), but this cod
'     e only requires that you create one imag
'     e, the mask is created on the fly! (Ever
'     y single line of this source code is com
'     mented. It is VERY easy to adapt.)
' By: Hobbit
'
'
' Inputs:None
'
' Returns:None
'
'Assumes:Assumes knowledge of BitBlt.
'
'Side Effects:none
'This code is copyrighted and has limite
'     d warranties.
'Please see http://www.Planet-Source-Cod
'     e.com/xq/ASP/txtCodeId.3726/lngWId.1/qx/
'     vb/scripts/ShowCode.htm
'for details.
'**************************************

'Transparent BitBlt function


Public Function TransBitBlt(ByVal hDstDC As Long, ByVal X As Long, ByVal Y As Long, ByVal nWidth As Long, ByVal nHeight As Long, ByVal hSrcDC As Long, Optional ByVal xSrc As Long = 0, Optional ByVal ySrc As Long = 0, Optional ByVal dwRop As Long = 0) As Boolean
    'Purpose Extends capabilites of BitBlt t
    '     o inlude
    ' transparency. This function will treat
    '     all
    ' pure black pixels in the source image
    '     as
    ' transparent.
    '
    
    'NotesLike BitBlt, it is necessary to ca
    '     ll the "Refresh"
    ' method of your destination control aft
    '     er using this
    ' function. Until you call "Refresh", th
    '     e transparent
    ' image will not appear.
    ' For Example, if your souce was called
    '     picSprite,
    'and your destination was picBack:
    'your code might look like this
    ' Call TransBitBlt(Form1.PicBack.hdc, 0,
    '     0, 40, 40, Form1.PicSprite.hdc, 320, 210
    '     )
    ' PicBack.Refresh
    
    'Inputs
    ' hDstDC -- The destination hDC to copy
    '     to
    ' X,Y-- The top-left point in destinatio
    '     n to copy to
    ' nWidth, nHeight -- The size of the are
    '     a to be copied
    ' hSrcDC -- The source hDC to copy from
    ' xSrc, ySrc-- The top-left point in the
    '     source to start copying from
    ' dwRop -- NOT USED (Included for compat
    '     ibility w/ BitBlt code)
    
    'Outputs
    ' True -- Operation was successful
    ' False -- Operation failed
    '
    
    'Variables
    Dim MaskDC As Long 'Holds the DC for the mask
    Dim MaskBitmap As Long 'Holds the bitmap reference for the mask
    
    
    On Error GoTo Err 'If there is any error, goto Err
    MaskDC = CreateCompatibleDC(hSrcDC) 'Get a DC


    If MaskDC Then 'If successful in getting a DC...
        MaskBitmap = CreateBitmap(nWidth, nHeight, 1, 1, 0&) 'Get a bitmap, same size as Src, 1 bit/pixel, 1 colour plane, don't initialize.


        If MaskBitmap Then 'If successful in getting a bitmap...
            
            MaskBitmap = SelectObject(MaskDC, MaskBitmap) 'Select 2 colour bitmap into DC.
            
            Call SetBkColor(hSrcDC, QBColor(0)) 'Set the sources background color to black
            Call BitBlt(MaskDC, 0, 0, nWidth, nHeight, hSrcDC, xSrc, ySrc, SRCCOPY) 'Copy the source to the monochrome mask
            Call SetBkColor(hDstDC, QBColor(15)) 'Set the destinations background color to white
            
        Else 'If unsuccessful in getting a bitmap..
            
            Call DeleteDC(MaskDC) 'Free the DC
            MaskDC = 0 'Set the DC reference to 0
            GoTo Err 'Goto Error handler
            
        End If 'End bitmap success conditional
    Else 'If unsuccessful in getting a DC
        MaskDC = 0 'Set the reference to 0
        GoTo Err 'Goto Error handler
    End If 'End DC Success conditional
    
    Call BitBlt(hDstDC, X, Y, nWidth, nHeight, MaskDC, 0, 0, SRCAND) 'AND mask with Dst.
    Call BitBlt(hDstDC, X, Y, nWidth, nHeight, hSrcDC, xSrc, ySrc, SRCINVERT) 'XOR Src with Dst
    iMaskBitmap = SelectObject(MaskDC, MaskBitmap) 'Select the bitmap into the DC.
    Call DeleteObject(MaskBitmap) 'Free the bitmap
    Call DeleteDC(MaskDC) 'Free the DC
    
    TransBitBlt = True 'Return True (No Error)
    Exit Function 'Exit the function
    
Err:     'Error Handler
    TransBitBlt = False 'Return False (Error)
End Function

        


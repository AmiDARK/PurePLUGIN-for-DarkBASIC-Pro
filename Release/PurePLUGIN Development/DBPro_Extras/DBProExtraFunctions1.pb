;
;**************************************************************************************************************
;
; PurePLUGIN - DarkBASIC Professional eXtra functions SET #1
;
;**************************************************************************************************************
; This include file contains functions to use GetBitmapData and GetImageData.
; 1.SETUP :
;----------
; - You must add the function SETUP_ExtraFunctions1() to your Constructor procedure at the end.
; 2.USE :
;--------
; If you want to read/write data from/to a bitmap, you must call:
; DBE_GetBitmapData( Bitmap Number )
; The function will then store in :
;   Extra\BitmapWIDTH       : The width in pixels of the choosen bitmap.
;   Extra\BitmapHEIGHT      : The height in pixels of the choosen bitmap.
;   Extra\BitmapDEPTH       : The color detph of the choosen bitmap.
;   Extra\BitmapPTR         : The pointer to the 1st pixel of the bitmap (top-left pixel)
;   Extra\BitmapBLOCKSIZE   : The size in bytes used for the entire bitmap data.
; If you want to read data from another bitmap, you'll have to call DBE_GetBitmapData( Bitmap Number ) with
; the number of the new bitmap. It will update the 5 data below with the new bitmap ones.
;
; If you want to read/write data from/to an image, you must call:
; DBE_GetImageData( Image Number )
; The function will then store in :
;   Extra\ImageWIDTH       : The width in pixels of the choosen Image.
;   Extra\ImageHEIGHT      : The height in pixels of the choosen Image.
;   Extra\ImageDEPTH       : The color detph of the choosen Image.
;   Extra\ImagePTR         : The pointer to the 1st pixel of the Image (top-left pixel)
;   Extra\ImageBLOCKSIZE   : The size in bytes used for the entire Image data.
; If you want to read data from another Image, you'll have to call DBE_GetImageData( Image Number ) with
; the number of the new Image. It will update the 5 data below with the new Image ones.
;
;**************************************************************************************************************
; eXtra functions used by the plugin.
Structure ExtraF_Structure
  GetBitmapData.l        ; Pointeur vers la commande GetBitmapData dans la DLL DBproBitmapDebug.dll
  BitmapID.l
  BitmapWIDTH.l
  BitmapHEIGHT.l
  BitmapDEPTH.l
  BitmapPTR.l
  BitmapBLOCKSIZE.l
  GetImageData.l         ; Pointeur vers la commande GetImageData dans la DLL DBProImageDebug.dll
  ImageID.l
  ImageWIDTH.l
  ImageHEIGHT.l
  ImageDEPTH.l
  ImagePTR.l
  ImageBLOCKSIZE.l
 EndStructure
Global Extra.ExtraF_Structure
;
;**************************************************************************************************************
;
Procedure SETUP_ExtraFunctions1()
  ; Functions to get BitmapDATA
  OpenLibrary( 1, "DBProBitmapDebug.dll" )
    Extra\GetBitmapData = GetFunction( 1, "?GetBitmapData@@YAXHPAK00PAPAD0_N@Z" )
   CloseLibrary( 1 )
  ; Functions to get Image DATA
  OpenLibrary( 1, "DBProImageDebug.dll" )
    Extra\GetImageData = GetFunction( 1, "?GetImageData@@YAXHPAK00PAPAD0_N@Z" )
   CloseLibrary( 1 )
 EndProcedure
;
;**************************************************************************************************************
;
ProcedureCDLL DBE_GetBitmapData( BitmapID.l )
  If Extra\GetBitmapData <> 0
    CallCFunctionFast( Extra\GetBitmapData, BitmapID, @BitmapWIDTH.l, @BitmapHEIGHT.l, @BitmapDEPTH.l, @BitmapPTR, @BlockSIZE, 1 )
    Extra\BitmapID = BitmapID
    Extra\BitmapWIDTH = BitmapWIDTH
    Extra\BitmapHEIGHT = BitmapHEIGHT
    Extra\BitmapDEPTH = BitmapDEPTH
    Extra\BitmapPTR = BitmapPTR
    Extra\BitmapBLOCKSIZE = BlockSIZE
   Else
    MessageRequester( "2DPlugKIT Warning", "Cannot get bitmap data, DBProBitmapDEBUG.dll not found" )
   EndIf
 EndProcedure
;
;**************************************************************************************************************
;
ProcedureCDLL DBE_GetImageData( ImageID.l )
  If Extra\GetImageData <> 0
    CallCFunctionFast( Extra\GetImageData,  ImageID, @ImageWIDTH.l, @ImageHEIGHT.l, @ImageDEPTH.l, @ImagePTR, @BlockSIZE, 1 )
    Extra\ImageID = ImageID
    Extra\ImageWIDTH = ImageWIDTH
    Extra\ImageHEIGHT = ImageHEIGHT
    Extra\ImageDEPTH = ImageDEPTH
    Extra\ImagePTR = ImagePTR
    Extra\ImageBLOCKSIZE = BlockSIZE
   Else
    MessageRequester( "2DPlugKIT Warning", "Cannot get Image data, DBProImageDEBUG.dll not found" )
   EndIf
 EndProcedure
;
;**************************************************************************************************************
;
ProcedureCDLL.l DBE_GetBitmapWIDTH()
  ProcedureReturn Extra\BitmapWIDTH
 EndProcedure
;
;**************************************************************************************************************
;
ProcedureCDLL.l DBE_GetBitmapHEIGHT()
  ProcedureReturn Extra\BitmapHEIGHT
 EndProcedure
;
;**************************************************************************************************************
;
ProcedureCDLL.l DBE_GetBitmapDEPTH()
  ProcedureReturn Extra\BitmapDEPTH
 EndProcedure
;
;**************************************************************************************************************
;
ProcedureCDLL.l DBE_GetBitmapPtr()
  ProcedureReturn Extra\BitmapPTR
 EndProcedure
;
;**************************************************************************************************************
;
ProcedureCDLL.l DBE_GetBitmapBlockSIZE()
  ProcedureReturn Extra\BitmapBLOCKSIZE
 EndProcedure
;
;**************************************************************************************************************
;
ProcedureCDLL.l DBE_GetImageWIDTH()
  ProcedureReturn Extra\ImageWIDTH
 EndProcedure
;
;**************************************************************************************************************
;
ProcedureCDLL.l DBE_GetImageHEIGHT()
  ProcedureReturn Extra\ImageHEIGHT
 EndProcedure
;
;**************************************************************************************************************
;
ProcedureCDLL.l DBE_GetImageDEPTH()
  ProcedureReturn Extra\ImageDEPTH
 EndProcedure
;
;**************************************************************************************************************
;
ProcedureCDLL.l DBE_GetImagePtr()
  ProcedureReturn Extra\ImagePTR
 EndProcedure
;
;**************************************************************************************************************
;
ProcedureCDLL.l DBE_GetImageBlockSIZE()
  ProcedureReturn Extra\ImageBLOCKSIZE
 EndProcedure
;
;**************************************************************************************************************
;

; IDE Options = PureBasic v4.02 (Windows - x86)
; CursorPosition = 9
; Folding = ---
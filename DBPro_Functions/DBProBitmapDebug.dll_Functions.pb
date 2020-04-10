; DarkBasic Professional RC2PBIncludes Ver 1.1 File - COMMANDS INITIALIZING
; By Frederic Cordier - 07.02.13
;
Procedure.l CheckBitmap()
  SUCCESS.l = 1
  If OpenLibrary( 1, "DBProBitmapDebug.dll")
    DB_Bitmap\LoadBitmapA= AIsFunction( 1 , "?LoadBitmapA@@YAXPADH@Z" ) ; 1 LOAD BITMAP Filename,Bitmap Number
    DB_Bitmap\CreateBitmap= AIsFunction( 1 , "?CreateBitmap@@YAXHHH@Z" ) ; 2 CREATE BITMAP Bitmap Number,Width,Height
    DB_Bitmap\CopyBitmap= AIsFunction( 1 , "?CopyBitmap@@YAXHH@Z" ) ; 3 COPY BITMAP From Bitmap,To Bitmap
    DB_Bitmap\CopyBitmapEx= AIsFunction( 1 , "?CopyBitmapEx@@YAXHHHHHHHHHH@Z" ) ; 4 COPY BITMAP From Bitmap,Left,Top,Right,Bottom,To Bitmap,Left,Top,Right,Bottom
    DB_Bitmap\DeleteBitmapEx= AIsFunction( 1 , "?DeleteBitmapEx@@YAXH@Z" ) ; 5 DELETE BITMAP Bitmap Number
    DB_Bitmap\MirrorBitmap= AIsFunction( 1 , "?MirrorBitmap@@YAXH@Z" ) ; 7 MIRROR BITMAP Bitmap Number
    DB_Bitmap\FadeBitmap= AIsFunction( 1 , "?FadeBitmap@@YAXHH@Z" ) ; 8 FADE BITMAP Bitmap Number,Fade Value
    DB_Bitmap\BlurBitmap= AIsFunction( 1 , "?BlurBitmap@@YAXHH@Z" ) ; 9 BLUR BITMAP Bitmap Number,Blur Value
    DB_Bitmap\SaveBitmap= AIsFunction( 1 , "?SaveBitmap@@YAXPADH@Z" ) ; 10 SAVE BITMAP Filename,Bitmap Number
    DB_Bitmap\SetCurrentBitmap= AIsFunction( 1 , "?SetCurrentBitmap@@YAXH@Z" ) ; 11 SET CURRENT BITMAP Bitmap Number
    DB_Bitmap\CurrentBitmap= AIsFunction( 1 , "?CurrentBitmap@@YAHXZ" ) ; 12 CURRENT BITMAP 
    DB_Bitmap\BitmapExist= AIsFunction( 1 , "?BitmapExist@@YAHH@Z" ) ; 13 BITMAP EXIST Bitmap Number
    DB_Bitmap\BitmapWidth= AIsFunction( 1 , "?BitmapWidth@@YAHH@Z" ) ; 14 BITMAP WIDTH Bitmap Number
    DB_Bitmap\BitmapHeight= AIsFunction( 1 , "?BitmapHeight@@YAHH@Z" ) ; 15 BITMAP HEIGHT Bitmap Number
    DB_Bitmap\BitmapDepth= AIsFunction( 1 , "?BitmapDepth@@YAHH@Z" ) ; 16 BITMAP DEPTH Bitmap Number
    DB_Bitmap\BitmapMirrored= AIsFunction( 1 , "?BitmapMirrored@@YAHH@Z" ) ; 17 BITMAP MIRRORED Bitmap Number
    DB_Bitmap\BitmapFlipped= AIsFunction( 1 , "?BitmapFlipped@@YAHH@Z" ) ; 18 BITMAP FLIPPED Bitmap Number
    DB_Bitmap\LoadBitmapEx= AIsFunction( 1 , "?LoadBitmapEx@@YAXPAD@Z" ) ; 19 LOAD BITMAP Filename
    DB_Bitmap\SaveBitmapEx= AIsFunction( 1 , "?SaveBitmapEx@@YAXPAD@Z" ) ; 20 SAVE BITMAP Filename
    DB_Bitmap\BitmapExist1= AIsFunction( 1 , "?BitmapExist@@YAHXZ" ) ; 21 BITMAP EXIST Bitmap Number
    DB_Bitmap\BitmapWidth1= AIsFunction( 1 , "?BitmapWidth@@YAHXZ" ) ; 22 BITMAP WIDTH Bitmap Number
    DB_Bitmap\BitmapHeight1= AIsFunction( 1 , "?BitmapHeight@@YAHXZ" ) ; 23 BITMAP HEIGHT Bitmap Number
    DB_Bitmap\BitmapDepth1= AIsFunction( 1 , "?BitmapDepth@@YAHXZ" ) ; 24 BITMAP DEPTH Bitmap Number
    DB_Bitmap\BitmapMirrored1= AIsFunction( 1 , "?BitmapMirrored@@YAHXZ" ) ; 25 BITMAP MIRRORED Bitmap Number
    DB_Bitmap\BitmapFlipped1= AIsFunction( 1 , "?BitmapFlipped@@YAHXZ" ) ; 26 BITMAP FLIPPED Bitmap Number
    DB_Bitmap\FlipBitmap= AIsFunction( 1 , "?FlipBitmap@@YAXH@Z" ) ; 30 FLIP BITMAP Bitmap Number
    DB_Bitmap\SetBitmapFormat= AIsFunction( 1 , "?SetBitmapFormat@@YAXH@Z" ) ; 31 SET BITMAP FORMAT Bitmap Format Value
    CloseLibrary( 1 )
   Else
    SUCCESS.l = 0
   Endif
  ProcedureReturn SUCCESS
 EndProcedure

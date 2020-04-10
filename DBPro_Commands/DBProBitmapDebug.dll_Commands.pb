; DarkBasic Professional RC2PBIncludes Ver 1. File - COMMANDS WRAPPING
; By Frederic Cordier - 07.02.13
;
; *********************************************************************
Procedure DBLoadBitmapA( Filename.s, BitmapNumber.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FilenamePTR.l, Len( Filename ) + 1 ) ; CreateString
  PokeS( FilenamePTR, Filename )
  CallCFunctionFast( *DB_Bitmap\LoadBitmapA, FilenamePTR, BitmapNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBCreateBitmap( BitmapNumber.l, Width.l, Height.l )
  CallCFunctionFast( *DB_Bitmap\CreateBitmap, BitmapNumber, Width, Height )
 EndProcedure
;
; *********************************************************************
Procedure DBCopyBitmap( FromBitmap.l, ToBitmap.l )
  CallCFunctionFast( *DB_Bitmap\CopyBitmap, FromBitmap, ToBitmap )
 EndProcedure
;
; *********************************************************************
Procedure DBCopyBitmap1( FromBitmap.l, Left.l, Top.l, Right.l, Bottom.l, ToBitmap.l, Left2.l, Top2.l, Right2.l, Bottom2.l )
  CallCFunctionFast( *DB_Bitmap\CopyBitmapEx, FromBitmap, Left, Top, Right, Bottom, ToBitmap, Left2, Top2, Right2, Bottom2 )
 EndProcedure
;
; *********************************************************************
Procedure DBDeleteBitmap( BitmapNumber.l )
  CallCFunctionFast( *DB_Bitmap\DeleteBitmapEx, BitmapNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBMirrorBitmap( BitmapNumber.l )
  CallCFunctionFast( *DB_Bitmap\MirrorBitmap, BitmapNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBFadeBitmap( BitmapNumber.l, FadeValue.l )
  CallCFunctionFast( *DB_Bitmap\FadeBitmap, BitmapNumber, FadeValue )
 EndProcedure
;
; *********************************************************************
Procedure DBBlurBitmap( BitmapNumber.l, BlurValue.l )
  CallCFunctionFast( *DB_Bitmap\BlurBitmap, BitmapNumber, BlurValue )
 EndProcedure
;
; *********************************************************************
Procedure DBSaveBitmap( Filename.s, BitmapNumber.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FilenamePTR.l, Len( Filename ) + 1 ) ; CreateString
  PokeS( FilenamePTR, Filename )
  CallCFunctionFast( *DB_Bitmap\SaveBitmap, FilenamePTR, BitmapNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSetCurrentBitmap( BitmapNumber.l )
  CallCFunctionFast( *DB_Bitmap\SetCurrentBitmap, BitmapNumber )
 EndProcedure
;
; *********************************************************************
Procedure.l DBCurrentBitmap()
  Retour.l = CallCFunctionFast( *DB_Bitmap\CurrentBitmap )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBBitmapExist( BitmapNumber.l )
  Retour.l = CallCFunctionFast( *DB_Bitmap\BitmapExist, BitmapNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBBitmapWidth( BitmapNumber.l )
  Retour.l = CallCFunctionFast( *DB_Bitmap\BitmapWidth, BitmapNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBBitmapHeight( BitmapNumber.l )
  Retour.l = CallCFunctionFast( *DB_Bitmap\BitmapHeight, BitmapNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBBitmapDepth( BitmapNumber.l )
  Retour.l = CallCFunctionFast( *DB_Bitmap\BitmapDepth, BitmapNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBBitmapMirrored( BitmapNumber.l )
  Retour.l = CallCFunctionFast( *DB_Bitmap\BitmapMirrored, BitmapNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBBitmapFlipped( BitmapNumber.l )
  Retour.l = CallCFunctionFast( *DB_Bitmap\BitmapFlipped, BitmapNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DBLoadBitmap( Filename.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FilenamePTR.l, Len( Filename ) + 1 ) ; CreateString
  PokeS( FilenamePTR, Filename )
  CallCFunctionFast( *DB_Bitmap\LoadBitmapEx, FilenamePTR )
 EndProcedure
;
; *********************************************************************
Procedure DBSaveBitmap1( Filename.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FilenamePTR.l, Len( Filename ) + 1 ) ; CreateString
  PokeS( FilenamePTR, Filename )
  CallCFunctionFast( *DB_Bitmap\SaveBitmapEx, FilenamePTR )
 EndProcedure
;
; *********************************************************************
Procedure.l DBBitmapExist1()
  Retour.l = CallCFunctionFast( *DB_Bitmap\BitmapExist1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBBitmapWidth1()
  Retour.l = CallCFunctionFast( *DB_Bitmap\BitmapWidth1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBBitmapHeight1()
  Retour.l = CallCFunctionFast( *DB_Bitmap\BitmapHeight1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBBitmapDepth1()
  Retour.l = CallCFunctionFast( *DB_Bitmap\BitmapDepth1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBBitmapMirrored1()
  Retour.l = CallCFunctionFast( *DB_Bitmap\BitmapMirrored1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBBitmapFlipped1()
  Retour.l = CallCFunctionFast( *DB_Bitmap\BitmapFlipped1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DBFlipBitmap( BitmapNumber.l )
  CallCFunctionFast( *DB_Bitmap\FlipBitmap, BitmapNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSetBitmapFormat( BitmapFormatValue.l )
  CallCFunctionFast( *DB_Bitmap\SetBitmapFormat, BitmapFormatValue )
 EndProcedure
;

; IDE Options = PureBasic 4.10 Beta 2 (Windows - x86)
; CursorPosition = 22
; FirstLine = 19
; Folding = -----
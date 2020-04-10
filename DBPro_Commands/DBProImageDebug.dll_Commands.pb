; DarkBasic Professional RC2PBIncludes Ver 1. File - COMMANDS WRAPPING
; By Frederic Cordier - 07.02.13
;
; *********************************************************************
Procedure DBLoadImage( Filename.s, ImageNumber.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FilenamePTR.l, Len( Filename ) + 1 ) ; CreateString
  PokeS( FilenamePTR, Filename )
  CallCFunctionFast( *DB_Image\LoadEx, FilenamePTR, ImageNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSaveImage( Filename.s, ImageNumber.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FilenamePTR.l, Len( Filename ) + 1 ) ; CreateString
  PokeS( FilenamePTR, Filename )
  CallCFunctionFast( *DB_Image\SaveEx, FilenamePTR, ImageNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBGrabImage( ImageNumber.l, Left.l, Top.l, Right.l, Bottom.l )
  CallCFunctionFast( *DB_Image\GrabImageEx, ImageNumber, Left, Top, Right, Bottom )
 EndProcedure
;
; *********************************************************************
Procedure DBPasteImage( ImageNumber.l, X.l, Y.l )
  CallCFunctionFast( *DB_Image\PasteEx, ImageNumber, X, Y )
 EndProcedure
;
; *********************************************************************
Procedure DBDeleteImage( ImageNumber.l )
  CallCFunctionFast( *DB_Image\DeleteEx, ImageNumber )
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetImageExist( ImageNumber.l )
  Retour.l = CallCFunctionFast( *DB_Image\GetExistEx, ImageNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DBSetColorKey( RedValue.l, GreenValue.l, BlueValue.l )
  CallCFunctionFast( *DB_Image\SetColorKey, RedValue, GreenValue, BlueValue )
 EndProcedure
;
; *********************************************************************
Procedure DBPasteImage1( ImageNumber.l, X.l, Y.l, Transparency.l )
  CallCFunctionFast( *DB_Image\PasteEx1, ImageNumber, X, Y, Transparency )
 EndProcedure
;
; *********************************************************************
Procedure DBRotateImage( ImageNumber.l, Angle.l )
  CallCFunctionFast( *DB_Image\RotateImageEx, ImageNumber, Angle )
 EndProcedure
;
; *********************************************************************
Procedure DBLoadImage1( Filename.s, ImageNumber.l, TextureFlag.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FilenamePTR.l, Len( Filename ) + 1 ) ; CreateString
  PokeS( FilenamePTR, Filename )
  CallCFunctionFast( *DB_Image\LoadEx1, FilenamePTR, ImageNumber, TextureFlag )
 EndProcedure
;
; *********************************************************************
Procedure DBGrabImage1( ImageNumber.l, Left.l, Top.l, Right.l, Bottom.l, TextureFlag.l )
  CallCFunctionFast( *DB_Image\GrabImageEx1, ImageNumber, Left, Top, Right, Bottom, TextureFlag )
 EndProcedure
;
; *********************************************************************
Procedure DBSaveIconFromImage( IconFilename.s, ImageNumber.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @IconFilenamePTR.l, Len( IconFilename ) + 1 ) ; CreateString
  PokeS( IconFilenamePTR, IconFilename )
  CallCFunctionFast( *DB_Image\SaveIconFromImage, IconFilenamePTR, ImageNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBFreeIcon( IconHandle.l )
  CallCFunctionFast( *DB_Image\FreeIcon, IconHandle )
 EndProcedure
;
; *********************************************************************
Procedure.l DBLoadIconA( IconFilename.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @IconFilenamePTR.l, Len( IconFilename ) + 1 ) ; CreateString
  PokeS( IconFilenamePTR, IconFilename )
  Retour.l = CallCFunctionFast( *DB_Image\LoadIconA, IconFilenamePTR )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DBSaveImage1( Filename.s, ImageNumber.l, CompressionMode.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FilenamePTR.l, Len( Filename ) + 1 ) ; CreateString
  PokeS( FilenamePTR, Filename )
  CallCFunctionFast( *DB_Image\SaveEx1, FilenamePTR, ImageNumber, CompressionMode )
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetImageWidth( ImageNumber.l )
  Retour.l = CallCFunctionFast( *DB_Image\GetWidth, ImageNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetImageHeight( ImageNumber.l )
  Retour.l = CallCFunctionFast( *DB_Image\GetHeight, ImageNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DBLoadImage2( Filename.s, ImageNumber.l, TextureFlag.l, DivideTextureSize.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FilenamePTR.l, Len( Filename ) + 1 ) ; CreateString
  PokeS( FilenamePTR, Filename )
  CallCFunctionFast( *DB_Image\LoadEx2, FilenamePTR, ImageNumber, TextureFlag, DivideTextureSize )
 EndProcedure
;

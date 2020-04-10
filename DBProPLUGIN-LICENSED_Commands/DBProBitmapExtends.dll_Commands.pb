; DarkBasic Professional RC2PBIncludes Ver 1. File - COMMANDS WRAPPING
; By Frederic Cordier - 07.02.13
;
; *********************************************************************
Procedure.l BMP_Init()
  Retour.l = CallCFunctionFast( *DB_BitmapExtends\BMP_Init )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure BMP_Clear()
  CallCFunctionFast( *DB_BitmapExtends\BMP_Clear )
 EndProcedure
;
; *********************************************************************
Procedure.l BMP_Count()
  Retour.l = CallCFunctionFast( *DB_BitmapExtends\BMP_Count )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l BMP_Delete( BitmapNumber.l )
  Retour.l = CallCFunctionFast( *DB_BitmapExtends\BMP_Delete, BitmapNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l BMP_DynamicLoad( FileName.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FileNamePTR.l, Len( FileName ) + 1 ) ; CreateString
  PokeS( FileNamePTR, FileName )
  Retour.l = CallCFunctionFast( *DB_BitmapExtends\BMP_DynamicLoad, FileNamePTR )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l BMP_DynamicClone()
  Retour.l = CallCFunctionFast( *DB_BitmapExtends\BMP_DynamicClone )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l BMP_DynamicMake( Width.l, Height.l )
  Retour.l = CallCFunctionFast( *DB_BitmapExtends\BMP_DynamicMake, Width, Height )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l BMP_MakeBitmapFromMemblock( MemblockNumber.l )
  Retour.l = CallCFunctionFast( *DB_BitmapExtends\BMP_MakeBitmapFromMemblock, MemblockNumber )
  ProcedureReturn Retour
 EndProcedure
;

; IDE Options = PureBasic 4.10 Beta 2 (Windows - x86)
; CursorPosition = 48
; FirstLine = 6
; Folding = --
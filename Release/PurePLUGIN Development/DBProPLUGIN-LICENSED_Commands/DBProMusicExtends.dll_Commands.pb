; DarkBasic Professional RC2PBIncludes Ver 1. File - COMMANDS WRAPPING
; By Frederic Cordier - 07.02.13
;
; *********************************************************************
Procedure.l MSC_Init()
  Retour.l = CallCFunctionFast( *DB_MusicExtends\MSC_Init )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure MSC_Clear()
  CallCFunctionFast( *DB_MusicExtends\MSC_Clear )
 EndProcedure
;
; *********************************************************************
Procedure.l MSC_Count()
  Retour.l = CallCFunctionFast( *DB_MusicExtends\MSC_Count )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l MSC_Delete( MusicNumber.l )
  Retour.l = CallCFunctionFast( *DB_MusicExtends\MSC_Delete, MusicNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l MSC_DynamicLoad( Filename.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FilenamePTR.l, Len( Filename ) + 1 ) ; CreateString
  PokeS( FilenamePTR, Filename )
  Retour.l = CallCFunctionFast( *DB_MusicExtends\MSC_DynamicLoad, FilenamePTR )
  ProcedureReturn Retour
 EndProcedure
;

; IDE Options = PureBasic 4.10 Beta 2 (Windows - x86)
; CursorPosition = 30
; Folding = -
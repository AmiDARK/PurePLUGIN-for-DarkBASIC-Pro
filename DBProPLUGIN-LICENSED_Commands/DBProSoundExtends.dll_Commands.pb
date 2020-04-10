; DarkBasic Professional RC2PBIncludes Ver 1. File - COMMANDS WRAPPING
; By Frederic Cordier - 07.02.13
;
; *********************************************************************
Procedure.l SND_Init()
  Retour.l = CallCFunctionFast( *DB_SoundExtends\SND_Init )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure SND_Clear()
  CallCFunctionFast( *DB_SoundExtends\SND_Clear )
 EndProcedure
;
; *********************************************************************
Procedure.l SND_Count()
  Retour.l = CallCFunctionFast( *DB_SoundExtends\SND_Count )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l SND_Delete( SoundNumber.l )
  Retour.l = CallCFunctionFast( *DB_SoundExtends\SND_Delete, SoundNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l SND_DynamicLoad( Filename.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FilenamePTR.l, Len( Filename ) + 1 ) ; CreateString
  PokeS( FilenamePTR, Filename )
  Retour.l = CallCFunctionFast( *DB_SoundExtends\SND_DynamicLoad, FilenamePTR )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l SND_MakeSoundFromMemblock( MemblockNumber.l )
  Retour.l = CallCFunctionFast( *DB_SoundExtends\SND_MakeSoundFromMemblock, MemblockNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l SND_DynamicLoad3D( Filename.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FilenamePTR.l, Len( Filename ) + 1 ) ; CreateString
  PokeS( FilenamePTR, Filename )
  Retour.l = CallCFunctionFast( *DB_SoundExtends\SND_DynamicLoad3D, FilenamePTR )
  ProcedureReturn Retour
 EndProcedure
;

; IDE Options = PureBasic 4.10 Beta 2 (Windows - x86)
; CursorPosition = 2
; FirstLine = 2
; Folding = --
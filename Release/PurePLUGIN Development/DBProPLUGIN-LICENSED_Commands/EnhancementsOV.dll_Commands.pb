; DarkBasic Professional RC2PBIncludes Ver 1.0 File - COMMANDS WRAPPING
; By Frederic Cordier - 07.02.13
;
; *********************************************************************
Procedure LoadOggVorbis( Filename.s, ID.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FilenamePTR.l, Len( Filename ) + 1 ) ; CreateString
  PokeS( FilenamePTR, Filename )
  CallCFunctionFast( *DB_EnhancementsOV\LoadOggVorbis, FilenamePTR, ID )
 EndProcedure
;
; *********************************************************************
Procedure DeleteOggVorbis( ID.l )
  CallCFunctionFast( *DB_EnhancementsOV\DeleteOggVorbis, ID )
 EndProcedure
;
; *********************************************************************
Procedure PlayOggVorbis( ID.l )
  CallCFunctionFast( *DB_EnhancementsOV\PlayOggVorbis, ID )
 EndProcedure
;
; *********************************************************************
Procedure LoopOggVorbis( ID.l )
  CallCFunctionFast( *DB_EnhancementsOV\LoopOggVorbis, ID )
 EndProcedure
;
; *********************************************************************
Procedure StopOggVorbis( ID.l )
  CallCFunctionFast( *DB_EnhancementsOV\StopOggVorbis, ID )
 EndProcedure
;
; *********************************************************************
Procedure PauseOggVorbis( ID.l )
  CallCFunctionFast( *DB_EnhancementsOV\PauseOggVorbis, ID )
 EndProcedure
;
; *********************************************************************
Procedure ResumeOggVorbis( ID.l )
  CallCFunctionFast( *DB_EnhancementsOV\ResumeOggVorbis, ID )
 EndProcedure
;
; *********************************************************************
Procedure SetOggVorbisVolume( ID.l, Volume.l )
  CallCFunctionFast( *DB_EnhancementsOV\SetOggVorbisVolume, ID, Volume )
 EndProcedure
;
; *********************************************************************
Procedure EncodeToOggVorbis( InputFile.s, OutputFile.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @InputFilePTR.l, Len( InputFile ) + 1 ) ; CreateString
  PokeS( InputFilePTR, InputFile )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @OutputFilePTR.l, Len( OutputFile ) + 1 ) ; CreateString
  PokeS( OutputFilePTR, OutputFile )
  CallCFunctionFast( *DB_EnhancementsOV\EncodeToOggVorbis, InputFilePTR, OutputFilePTR )
 EndProcedure
;
; *********************************************************************
Procedure EncodeToOggVorbis1( InputFile.s, OutputFile.s, Quality.f )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @InputFilePTR.l, Len( InputFile ) + 1 ) ; CreateString
  PokeS( InputFilePTR, InputFile )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @OutputFilePTR.l, Len( OutputFile ) + 1 ) ; CreateString
  PokeS( OutputFilePTR, OutputFile )
  CallCFunctionFast( *DB_EnhancementsOV\EncodeToOggVorbis1, InputFilePTR, OutputFilePTR, Quality )
 EndProcedure
;
; *********************************************************************
Procedure.l GetOggVorbisExists( ID.l )
  Retour.l = CallCFunctionFast( *DB_EnhancementsOV\GetOggVorbisExists, ID )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l GetOggVorbisState( ID.l )
  Retour.l = CallCFunctionFast( *DB_EnhancementsOV\GetOggVorbisState, ID )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l GetOggVorbisVolume( ID.l )
  Retour.l = CallCFunctionFast( *DB_EnhancementsOV\GetOggVorbisVolume, ID )
  ProcedureReturn Retour
 EndProcedure
;

; IDE Options = PureBasic v4.00 (Windows - x86)
; CursorPosition = 77
; FirstLine = 28
; Folding = ---
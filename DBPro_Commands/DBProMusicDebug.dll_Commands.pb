; DarkBasic Professional RC2PBIncludes Ver 1. File - COMMANDS WRAPPING
; By Frederic Cordier - 07.02.13
;
; *********************************************************************
Procedure DBLoadMusic( Filename.s, MusicNumber.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FilenamePTR.l, Len( Filename ) + 1 ) ; CreateString
  PokeS( FilenamePTR, Filename )
  CallCFunctionFast( *DB_Music\LoadMusic, FilenamePTR, MusicNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBLoopMusic( MusicNumber.l )
  CallCFunctionFast( *DB_Music\LoopMusic, MusicNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBDeleteMusic( MusicNumber.l )
  CallCFunctionFast( *DB_Music\DeleteMusic, MusicNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBLoadCDMusic( TrackNumber.l, MusicNumber.l )
  CallCFunctionFast( *DB_Music\LoadCDMusic, TrackNumber, MusicNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBPauseMusic( MusicNumber.l )
  CallCFunctionFast( *DB_Music\PauseMusic, MusicNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBPlayMusic( MusicNumber.l )
  CallCFunctionFast( *DB_Music\PlayMusic, MusicNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBResumeMusic( MusicNumber.l )
  CallCFunctionFast( *DB_Music\ResumeMusic, MusicNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSetMusicVolume( MusicNumber.l, Volume.l )
  CallCFunctionFast( *DB_Music\SetMusicVolume, MusicNumber, Volume )
 EndProcedure
;
; *********************************************************************
Procedure DBStopMusic( MusicNumber.l )
  CallCFunctionFast( *DB_Music\StopMusic, MusicNumber )
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetMusicExist( MusicNumber.l )
  Retour.l = CallCFunctionFast( *DB_Music\GetMusicExist, MusicNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetMusicLooping( MusicNumber.l )
  Retour.l = CallCFunctionFast( *DB_Music\GetMusicLooping, MusicNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetMusicPaused( MusicNumber.l )
  Retour.l = CallCFunctionFast( *DB_Music\GetMusicPaused, MusicNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetMusicPlaying( MusicNumber.l )
  Retour.l = CallCFunctionFast( *DB_Music\GetMusicPlaying, MusicNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetNumberOfCDTracks()
  Retour.l = CallCFunctionFast( *DB_Music\GetNumberOfCDTracks )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetMusicSpeed( MusicNumber.l )
  Retour.l = CallCFunctionFast( *DB_Music\GetMusicSpeed, MusicNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetMusicVolume( MusicNumber.l )
  Retour.l = CallCFunctionFast( *DB_Music\GetMusicVolume, MusicNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DBSetMusicSpeed( MusicNumber.l, Speed.l )
  CallCFunctionFast( *DB_Music\SetMusicSpeed, MusicNumber, Speed )
 EndProcedure
;

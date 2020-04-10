; DarkBasic Professional RC2PBIncludes Ver 1. File - COMMANDS WRAPPING
; By Frederic Cordier - 07.02.13
;
; *********************************************************************
Procedure DBCloneSound( DestinationSound.l, SourceSound.l )
  CallCFunctionFast( *DB_Sound\CloneSound, DestinationSound, SourceSound )
 EndProcedure
;
; *********************************************************************
Procedure DBDeleteSound( SoundNumber.l )
  CallCFunctionFast( *DB_Sound\DeleteSound, SoundNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBLoad3DSound( Filename.s, SoundNumber.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FilenamePTR.l, Len( Filename ) + 1 ) ; CreateString
  PokeS( FilenamePTR, Filename )
  CallCFunctionFast( *DB_Sound\Load3DSound, FilenamePTR, SoundNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBLoadSound( Filename.s, SoundNumber.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FilenamePTR.l, Len( Filename ) + 1 ) ; CreateString
  PokeS( FilenamePTR, Filename )
  CallCFunctionFast( *DB_Sound\LoadSound, FilenamePTR, SoundNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBLoopSound( SoundNumber.l )
  CallCFunctionFast( *DB_Sound\LoopSound, SoundNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBPauseSound( SoundNumber.l )
  CallCFunctionFast( *DB_Sound\PauseSound, SoundNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBPlaySoundA( SoundNumber.l )
  CallCFunctionFast( *DB_Sound\PlaySoundA, SoundNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBPlaySoundOffset( SoundNumber.l, StartPosition.l )
  CallCFunctionFast( *DB_Sound\PlaySoundOffset, SoundNumber, StartPosition )
 EndProcedure
;
; *********************************************************************
Procedure DBPositionSound( SoundNumber.l, X.f, Y.f, Z.f )
  CallCFunctionFast( *DB_Sound\PositionSound, SoundNumber, X, Y, Z )
 EndProcedure
;
; *********************************************************************
Procedure DBPositionListener( X.f, Y.f, Z.f )
  CallCFunctionFast( *DB_Sound\PositionListener, X, Y, Z )
 EndProcedure
;
; *********************************************************************
Procedure DBRecordSound( SoundNumber.l )
  CallCFunctionFast( *DB_Sound\RecordSound, SoundNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBResumeSound( SoundNumber.l )
  CallCFunctionFast( *DB_Sound\ResumeSound, SoundNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBRotateListener( X.f, Y.f, Z.f )
  CallCFunctionFast( *DB_Sound\RotateListener, X, Y, Z )
 EndProcedure
;
; *********************************************************************
Procedure DBSaveSound( Filename.s, SoundNumber.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FilenamePTR.l, Len( Filename ) + 1 ) ; CreateString
  PokeS( FilenamePTR, Filename )
  CallCFunctionFast( *DB_Sound\SaveSound, FilenamePTR, SoundNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSetSoundPan( SoundNumber.l, PanValue.l )
  CallCFunctionFast( *DB_Sound\SetSoundPan, SoundNumber, PanValue )
 EndProcedure
;
; *********************************************************************
Procedure DBSetSoundSpeed( SoundNumber.l, FrequencyValue.l )
  CallCFunctionFast( *DB_Sound\SetSoundSpeed, SoundNumber, FrequencyValue )
 EndProcedure
;
; *********************************************************************
Procedure DBSetSoundVolume( SoundNumber.l, VolumeNumber.l )
  CallCFunctionFast( *DB_Sound\SetSoundVolume, SoundNumber, VolumeNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBStopRecordingSound()
  CallCFunctionFast( *DB_Sound\StopRecordingSound )
 EndProcedure
;
; *********************************************************************
Procedure DBStopSound( SoundNumber.l )
  CallCFunctionFast( *DB_Sound\StopSound, SoundNumber )
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetListenerAngleX()
  Retour.l = CallCFunctionFast( *DB_Sound\GetListenerAngleXEx )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetListenerAngleY()
  Retour.l = CallCFunctionFast( *DB_Sound\GetListenerAngleYEx )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetListenerAngleZ()
  Retour.l = CallCFunctionFast( *DB_Sound\GetListenerAngleZEx )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetListenerPositionX()
  Retour.l = CallCFunctionFast( *DB_Sound\GetListenerPositionXEx )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetListenerPositionY()
  Retour.l = CallCFunctionFast( *DB_Sound\GetListenerPositionYEx )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetListenerPositionZ()
  Retour.l = CallCFunctionFast( *DB_Sound\GetListenerPositionZEx )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetSoundExist( SoundNumber.l )
  Retour.l = CallCFunctionFast( *DB_Sound\GetSoundExist, SoundNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetSoundLooping( SoundNumber.l )
  Retour.l = CallCFunctionFast( *DB_Sound\GetSoundLooping, SoundNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetSoundPan( SoundNumber.l )
  Retour.l = CallCFunctionFast( *DB_Sound\GetSoundPan, SoundNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetSoundPaused( SoundNumber.l )
  Retour.l = CallCFunctionFast( *DB_Sound\GetSoundPaused, SoundNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetSoundPlaying( SoundNumber.l )
  Retour.l = CallCFunctionFast( *DB_Sound\GetSoundPlaying, SoundNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetSoundPositionX( SoundNumber.l )
  Retour.l = CallCFunctionFast( *DB_Sound\GetSoundPositionXEx, SoundNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetSoundPositionY( SoundNumber.l )
  Retour.l = CallCFunctionFast( *DB_Sound\GetSoundPositionYEx, SoundNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetSoundPositionZ( SoundNumber.l )
  Retour.l = CallCFunctionFast( *DB_Sound\GetSoundPositionZEx, SoundNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetSoundSpeed( SoundNumber.l )
  Retour.l = CallCFunctionFast( *DB_Sound\GetSoundSpeed, SoundNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetSoundType( SoundNumber.l )
  Retour.l = CallCFunctionFast( *DB_Sound\GetSoundType, SoundNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetSoundVolume( SoundNumber.l )
  Retour.l = CallCFunctionFast( *DB_Sound\GetSoundVolume, SoundNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DBLoadSound1( Filename.s, SoundNumber.l, Flag.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FilenamePTR.l, Len( Filename ) + 1 ) ; CreateString
  PokeS( FilenamePTR, Filename )
  CallCFunctionFast( *DB_Sound\LoadSound1, FilenamePTR, SoundNumber, Flag )
 EndProcedure
;
; *********************************************************************
Procedure DBLoopSound1( SoundNumber.l, StartPosition.l )
  CallCFunctionFast( *DB_Sound\LoopSound1, SoundNumber, StartPosition )
 EndProcedure
;
; *********************************************************************
Procedure DBLoopSound2( SoundNumber.l, StartPosition.l, EndPosition.l )
  CallCFunctionFast( *DB_Sound\LoopSound2, SoundNumber, StartPosition, EndPosition )
 EndProcedure
;
; *********************************************************************
Procedure DBLoopSound3( SoundNumber.l, StartPosition.l, EndPosition.l, InitialPosition.l )
  CallCFunctionFast( *DB_Sound\LoopSound3, SoundNumber, StartPosition, EndPosition, InitialPosition )
 EndProcedure
;
; *********************************************************************
Procedure DBRecordSound1( SoundNumber.l, Duration.l )
  CallCFunctionFast( *DB_Sound\RecordSound1, SoundNumber, Duration )
 EndProcedure
;
; *********************************************************************
Procedure DBScaleListener( ScalingFactor.f )
  CallCFunctionFast( *DB_Sound\ScaleListener, ScalingFactor )
 EndProcedure
;
; *********************************************************************
Procedure DBSetEAX( PresetEffectValue.l )
  CallCFunctionFast( *DB_Sound\SetEAX, PresetEffectValue )
 EndProcedure
;
; *********************************************************************
Procedure DBLoad3DSound1( Filename.s, SoundNumber.l, SilentFail.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FilenamePTR.l, Len( Filename ) + 1 ) ; CreateString
  PokeS( FilenamePTR, Filename )
  CallCFunctionFast( *DB_Sound\Load3DSound1, FilenamePTR, SoundNumber, SilentFail )
 EndProcedure
;
; *********************************************************************
Procedure DBLoadSound2( Filename.s, SoundNumber.l, Flag.l, SilentFail.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FilenamePTR.l, Len( Filename ) + 1 ) ; CreateString
  PokeS( FilenamePTR, Filename )
  CallCFunctionFast( *DB_Sound\LoadSound2, FilenamePTR, SoundNumber, Flag, SilentFail )
 EndProcedure
;

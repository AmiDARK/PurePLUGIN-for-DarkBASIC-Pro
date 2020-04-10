; DarkBasic Professional RC2PBIncludes Ver 1. File - COMMANDS WRAPPING
; By Frederic Cordier - 07.02.13
;
; *********************************************************************
Procedure DBCreateSnowEffect( ParticleNumber.l, ImageNumber.l, Frequency.l, X.f, Y.f, Z.f, Width.f, Height.f, Depth.f )
  CallCFunctionFast( *DB_Particles\CreateSnowEffect, ParticleNumber, ImageNumber, Frequency, X, Y, Z, Width, Height, Depth )
 EndProcedure
;
; *********************************************************************
Procedure DBMakeParticle( ParticleNumber.l, ImageNumber.l, Frequency.l, Radius.f )
  CallCFunctionFast( *DB_Particles\CreateEx, ParticleNumber, ImageNumber, Frequency, Radius )
 EndProcedure
;
; *********************************************************************
Procedure DBCreateFireEffect( ParticleNumber.l, ImageNumber.l, Frequency.l, X.f, Y.f, Z.f, Width.f, Height.f, Depth.f )
  CallCFunctionFast( *DB_Particles\CreateFireEffect, ParticleNumber, ImageNumber, Frequency, X, Y, Z, Width, Height, Depth )
 EndProcedure
;
; *********************************************************************
Procedure DBDeleteParticle( ParticleNumber.l )
  CallCFunctionFast( *DB_Particles\DeleteEx, ParticleNumber )
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetParticleExist( ParticleNumber.l )
  Retour.l = CallCFunctionFast( *DB_Particles\GetExist, ParticleNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetPositionX2( ParticleNumber.l )
  Retour.l = CallCFunctionFast( *DB_Particles\GetPositionXEx, ParticleNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetPositionY2( ParticleNumber.l )
  Retour.l = CallCFunctionFast( *DB_Particles\GetPositionYEx, ParticleNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetPositionZ2( ParticleNumber.l )
  Retour.l = CallCFunctionFast( *DB_Particles\GetPositionZEx, ParticleNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure DBHideParticle( ParticleNumber.l )
  CallCFunctionFast( *DB_Particles\Hide, ParticleNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSetParticletPosition( ParticleNumber.l, X.f, Y.f, Z.f )
  CallCFunctionFast( *DB_Particles\SetPosition, ParticleNumber, X, Y, Z )
 EndProcedure
;
; *********************************************************************
Procedure DBSetParticleColor( ParticleNumber.l, Red.l, Green.l, Blue.l )
  CallCFunctionFast( *DB_Particles\SetColorEx, ParticleNumber, Red, Green, Blue )
 EndProcedure
;
; *********************************************************************
Procedure DBSetNumberOfParticleEmmissions( ParticleNumber.l, Frequency.l )
  CallCFunctionFast( *DB_Particles\SetNumberOfEmmissions, ParticleNumber, Frequency )
 EndProcedure
;
; *********************************************************************
Procedure DBSetSecondsPerFrame( ParticleNumber.l, SecondsPerFrame.f )
  CallCFunctionFast( *DB_Particles\SetSecondsPerFrame, ParticleNumber, SecondsPerFrame )
 EndProcedure
;
; *********************************************************************
Procedure DBSetParticleVelocity( ParticleNumber.l, VelocityValue.f )
  CallCFunctionFast( *DB_Particles\SetVelocity, ParticleNumber, VelocityValue )
 EndProcedure
;
; *********************************************************************
Procedure DBShowParticle( ParticleNumber.l )
  CallCFunctionFast( *DB_Particles\Show, ParticleNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSetRotation( ParticleNumber.l, X.f, Y.f, Z.f )
  CallCFunctionFast( *DB_Particles\SetRotation, ParticleNumber, X, Y, Z )
 EndProcedure
;
; *********************************************************************
Procedure DBSetParticleGravity( ParticleNumber.l, GravityValue.f )
  CallCFunctionFast( *DB_Particles\SetGravity, ParticleNumber, GravityValue )
 EndProcedure
;
; *********************************************************************
Procedure DBSetParticleChaos( ParticleNumber.l, ChaosValue.f )
  CallCFunctionFast( *DB_Particles\SetChaos, ParticleNumber, ChaosValue )
 EndProcedure
;
; *********************************************************************
Procedure DBSetParticleLife( ParticleNumber.l, LifePercentage.l )
  CallCFunctionFast( *DB_Particles\SetLife, ParticleNumber, LifePercentage )
 EndProcedure
;
; *********************************************************************
Procedure DBSetParticleFloor( ParticleNumber.l, FloorFlag.l )
  CallCFunctionFast( *DB_Particles\SetFloor, ParticleNumber, FloorFlag )
 EndProcedure
;
; *********************************************************************
Procedure DBSetParticletPosition1( ParticleNumber.l, X.f, Y.f, Z.f )
  CallCFunctionFast( *DB_Particles\SetEmitPosition, ParticleNumber, X, Y, Z )
 EndProcedure
;
; *********************************************************************
Procedure DBSetParticlePositionVector3( ParticleNumber.l, Vector.l )
  CallCFunctionFast( *DB_Particles\SetPositionVector3, ParticleNumber, Vector )
 EndProcedure
;
; *********************************************************************
Procedure DBSetParticleRotationVector3( ParticleNumber.l, Vector.l )
  CallCFunctionFast( *DB_Particles\SetRotationVector3, ParticleNumber, Vector )
 EndProcedure
;
; *********************************************************************
Procedure DBGetPositionVector33( Vector.l, ParticleNumber.l )
  CallCFunctionFast( *DB_Particles\GetPositionVector3, Vector, ParticleNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBGetRotationVector32( Vector.l, ParticleNumber.l )
  CallCFunctionFast( *DB_Particles\GetRotationVector3, Vector, ParticleNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBGhostParticleOn( ParticleNumber.l, GhostMode.l )
  CallCFunctionFast( *DB_Particles\GhostOn, ParticleNumber, GhostMode )
 EndProcedure
;
; *********************************************************************
Procedure DBGhostParticleOff( ParticleNumber.l )
  CallCFunctionFast( *DB_Particles\GhostOff, ParticleNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBGhostParticle( ParticleNumber.l, GhostMode.l, Percentage.f )
  CallCFunctionFast( *DB_Particles\Ghost, ParticleNumber, GhostMode, Percentage )
 EndProcedure
;

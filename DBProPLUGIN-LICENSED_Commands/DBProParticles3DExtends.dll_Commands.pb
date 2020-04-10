; DarkBasic Professional RC2PBIncludes Ver 1. File - COMMANDS WRAPPING
; By Frederic Cordier - 07.02.13
;
; *********************************************************************
Procedure.l Particles3D_Init()
  Retour.l = CallCFunctionFast( *DB_Particles3DExtends\Particles3D_Init )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l P3D_AddParticles( Count.l, Texture.l, ParticleSize.f )
  Retour.l = CallCFunctionFast( *DB_Particles3DExtends\P3D_AddParticles, Count, Texture, ParticleSize )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure P3D_PositionParticles( ParticleID.l, XPos.l, YPos.l, ZPos.l )
  CallCFunctionFast( *DB_Particles3DExtends\P3D_PositionParticles, ParticleID, XPos, YPos, ZPos )
 EndProcedure
;
; *********************************************************************
Procedure P3D_SetEmitterRange( ParticleID.l, XSize.l, YSize.l, ZSize.l )
  CallCFunctionFast( *DB_Particles3DExtends\P3D_SetEmitterRange, ParticleID, XSize, YSize, ZSize )
 EndProcedure
;
; *********************************************************************
Procedure P3D_SetParticlePath( ParticleID.l, XAdd.f, YAdd.f, ZAdd.f )
  CallCFunctionFast( *DB_Particles3DExtends\P3D_SetParticlePath, ParticleID, XAdd, YAdd, ZAdd )
 EndProcedure
;
; *********************************************************************
Procedure P3D_SetAsFlames( ParticleID.l )
  CallCFunctionFast( *DB_Particles3DExtends\P3D_SetAsFlames, ParticleID )
 EndProcedure
;
; *********************************************************************
Procedure P3D_SetAsSmoke( ParticleID.l )
  CallCFunctionFast( *DB_Particles3DExtends\P3D_SetAsSmoke, ParticleID )
 EndProcedure
;
; *********************************************************************
Procedure P3D_SetAsRain( ParticleID.l )
  CallCFunctionFast( *DB_Particles3DExtends\P3D_SetAsRain, ParticleID )
 EndProcedure
;
; *********************************************************************
Procedure P3D_SetAsSnow( ParticleID.l )
  CallCFunctionFast( *DB_Particles3DExtends\P3D_SetAsSnow, ParticleID )
 EndProcedure
;
; *********************************************************************
Procedure P3D_SetAsPrimitive( ParticleID.l )
  CallCFunctionFast( *DB_Particles3DExtends\P3D_SetAsPrimitive, ParticleID )
 EndProcedure
;
; *********************************************************************
Procedure P3D_UpdateParticles()
  CallCFunctionFast( *DB_Particles3DExtends\P3D_UpdateParticles )
 EndProcedure
;
; *********************************************************************
Procedure.l P3D_GetParticleExist( ParticleID.l )
  Retour.l = CallCFunctionFast( *DB_Particles3DExtends\P3D_GetParticleExist, ParticleID )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure P3D_Clear()
  CallCFunctionFast( *DB_Particles3DExtends\P3D_Clear )
 EndProcedure
;
; *********************************************************************
Procedure.l P3D_DeleteParticle( ParticleID.l )
  Retour.l = CallCFunctionFast( *DB_Particles3DExtends\P3D_DeleteParticle, ParticleID )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l P3D_GetParticleCount( ParticleID.l )
  Retour.l = CallCFunctionFast( *DB_Particles3DExtends\P3D_GetParticleCount, ParticleID )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l P3D_GetParticleXRange( ParticleID.l )
  Retour.l = CallCFunctionFast( *DB_Particles3DExtends\P3D_GetParticleXRange, ParticleID )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l P3D_GetParticleYRange( ParticleID.l )
  Retour.l = CallCFunctionFast( *DB_Particles3DExtends\P3D_GetParticleYRange, ParticleID )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l P3D_GetParticleZRange( ParticleID.l )
  Retour.l = CallCFunctionFast( *DB_Particles3DExtends\P3D_GetParticleZRange, ParticleID )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l P3D_GetParticleXPosition( ParticleID.l )
  Retour.l = CallCFunctionFast( *DB_Particles3DExtends\P3D_GetParticleXPosition, ParticleID )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l P3D_GetParticleYPosition( ParticleID.l )
  Retour.l = CallCFunctionFast( *DB_Particles3DExtends\P3D_GetParticleYPosition, ParticleID )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l P3D_GetParticleZPosition( ParticleID.l )
  Retour.l = CallCFunctionFast( *DB_Particles3DExtends\P3D_GetParticleZPosition, ParticleID )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l P3D_GetParticleType( ParticleID.l )
  Retour.l = CallCFunctionFast( *DB_Particles3DExtends\P3D_GetParticleType, ParticleID )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l P3D_GetParticleSize( ParticleID.l )
  Retour.l = CallCFunctionFast( *DB_Particles3DExtends\P3D_GetParticleSize, ParticleID )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.f P3D_GetParticleXPath( ParticleID.l )
  Retour.l = CallCFunctionFast( *DB_Particles3DExtends\P3D_GetParticleXPath, ParticleID )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f P3D_GetParticleYPath( ParticleID.l )
  Retour.l = CallCFunctionFast( *DB_Particles3DExtends\P3D_GetParticleYPath, ParticleID )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f P3D_GetParticleZPath( ParticleID.l )
  Retour.l = CallCFunctionFast( *DB_Particles3DExtends\P3D_GetParticleZPath, ParticleID )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure P3D_HideParticle( ParticleID.l )
  CallCFunctionFast( *DB_Particles3DExtends\P3D_HideParticle, ParticleID )
 EndProcedure
;
; *********************************************************************
Procedure P3D_ShowParticle( ParticleID.l )
  CallCFunctionFast( *DB_Particles3DExtends\P3D_ShowParticle, ParticleID )
 EndProcedure
;
; *********************************************************************
Procedure P3D_SetAsSparkle( ParticleID.l )
  CallCFunctionFast( *DB_Particles3DExtends\P3D_SetAsSparkle, ParticleID )
 EndProcedure
;
; *********************************************************************
Procedure P3D_SetParticleImage( ParticleID.l, ImageID.l )
  CallCFunctionFast( *DB_Particles3DExtends\P3D_SetParticleImage, ParticleID, ImageID )
 EndProcedure
;

; IDE Options = PureBasic 4.10 Beta 2 (Windows - x86)
; CursorPosition = 169
; FirstLine = 127
; Folding = ------
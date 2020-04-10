; DarkBasic Professional RC2PBIncludes Ver 1.0 File - COMMANDS WRAPPING
; By Frederic Cordier - 07.02.13
;
; *********************************************************************
Procedure DBODE_Start()
  CallCFunctionFast( *DB_ODE\ODE_Start )
 EndProcedure
;
; *********************************************************************
Procedure DBODE_Update()
  CallCFunctionFast( *DB_ODE\ODE_Update )
 EndProcedure
;
; *********************************************************************
Procedure DBODE_SetWorldGravity( Param0.f, Param1.f, Param2.f )
  CallCFunctionFast( *DB_ODE\ODE_SetWorldGravity, Param0, Param1, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure DBODE_SetWorldERP( Param0.f )
  CallCFunctionFast( *DB_ODE\ODE_SetWorldERP, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure DBODE_SetWorldCFM( Param0.f )
  CallCFunctionFast( *DB_ODE\ODE_SetWorldCFM, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure DBODE_SetWorldStep( Param0.f )
  CallCFunctionFast( *DB_ODE\ODE_SetWorldStep, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure DBODE_SetWorldQuickStepNumIterations( Param0.l )
  CallCFunctionFast( *DB_ODE\ODE_SetWorldQuickStepNumIterations, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure DBODE_SetStepMode( Param0.l )
  CallCFunctionFast( *DB_ODE\ODE_SetStepMode, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure DBODE_CreateStaticBox( Param0.l )
  CallCFunctionFast( *DB_ODE\ODE_CreateStaticBox, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure DBODE_CreateStaticTriangleMesh( Param0.l )
  CallCFunctionFast( *DB_ODE\ODE_CreateStaticTriangleMesh, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure DBODE_CreateDynamicSphere( Param0.l )
  CallCFunctionFast( *DB_ODE\ODE_CreateDynamicSphere, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure DBODE_CreateDynamicBox( Param0.l )
  CallCFunctionFast( *DB_ODE\ODE_CreateDynamicBox, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure DBODE_CreateDynamicBox1( Param0.l, Param1.f, Param2.f, Param3.f )
  CallCFunctionFast( *DB_ODE\ODE_CreateDynamicBox1, Param0, Param1, Param2, Param3 )
 EndProcedure
;
; *********************************************************************
Procedure DBODE_CreateDynamicTriangleMesh( Param0.l )
  CallCFunctionFast( *DB_ODE\ODE_CreateDynamicTriangleMesh, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure DBODE_DestroyObject( Param0.l )
  CallCFunctionFast( *DB_ODE\ODE_DestroyObject, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure DBODE_SetLinearVelocity( Param0.l, Param1.f, Param2.f, Param3.f )
  CallCFunctionFast( *DB_ODE\ODE_SetLinearVelocity, Param0, Param1, Param2, Param3 )
 EndProcedure
;
; *********************************************************************
Procedure DBODE_SetAngularVelocity( Param0.l, Param1.f, Param2.f, Param3.f )
  CallCFunctionFast( *DB_ODE\ODE_SetAngularVelocity, Param0, Param1, Param2, Param3 )
 EndProcedure
;
; *********************************************************************
Procedure DBODE_SetBodyRotation( Param0.l, Param1.f, Param2.f, Param3.f )
  CallCFunctionFast( *DB_ODE\ODE_SetBodyRotation, Param0, Param1, Param2, Param3 )
 EndProcedure
;
; *********************************************************************
Procedure DBODE_SetBodyMass( Param0.l, Param1.f )
  CallCFunctionFast( *DB_ODE\ODE_SetBodyMass, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure DBODE_SetSurfaceMode( Param0.l, Param1.l, Param2.l )
  CallCFunctionFast( *DB_ODE\ODE_SetSurfaceMode, Param0, Param1, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure DBODE_SetSurfaceModeContactMu2( Param0.l, Param1.l )
  CallCFunctionFast( *DB_ODE\ODE_SetSurfaceModeContactMu2, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure DBODE_SetSurfaceModeContactMu21( Param0.l, Param1.l )
  CallCFunctionFast( *DB_ODE\ODE_SetSurfaceModeContactMu21, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure DBODE_SetSurfaceModeContactMu22( Param0.l, Param1.l )
  CallCFunctionFast( *DB_ODE\ODE_SetSurfaceModeContactMu22, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure DBODE_SetSurfaceModeContactSoftCFM( Param0.l, Param1.l )
  CallCFunctionFast( *DB_ODE\ODE_SetSurfaceModeContactSoftCFM, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure DBODE_SetSurfaceModeContactMotion1( Param0.l, Param1.l )
  CallCFunctionFast( *DB_ODE\ODE_SetSurfaceModeContactMotion1, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure DBODE_SetSurfaceModeContactMotion2( Param0.l, Param1.l )
  CallCFunctionFast( *DB_ODE\ODE_SetSurfaceModeContactMotion2, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure DBODE_SetSurfaceModeContactSlip1( Param0.l, Param1.l )
  CallCFunctionFast( *DB_ODE\ODE_SetSurfaceModeContactSlip1, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure DBODE_SetSurfaceModeContactSlip2( Param0.l, Param1.l )
  CallCFunctionFast( *DB_ODE\ODE_SetSurfaceModeContactSlip2, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure DBODE_SetSurfaceModeContactApprox0( Param0.l, Param1.l )
  CallCFunctionFast( *DB_ODE\ODE_SetSurfaceModeContactApprox0, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure DBODE_SetSurfaceModeContactApprox11( Param0.l, Param1.l )
  CallCFunctionFast( *DB_ODE\ODE_SetSurfaceModeContactApprox11, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure DBODE_SetSurfaceModeContactApprox12( Param0.l, Param1.l )
  CallCFunctionFast( *DB_ODE\ODE_SetSurfaceModeContactApprox12, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure DBODE_SetSurfaceModeContactApprox1( Param0.l, Param1.l )
  CallCFunctionFast( *DB_ODE\ODE_SetSurfaceModeContactApprox1, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure DBODE_SetContact( Param0.l, Param1.l, Param2.l )
  CallCFunctionFast( *DB_ODE\ODE_SetContact, Param0, Param1, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure DBODE_SetContactMu2( Param0.l, Param1.f )
  CallCFunctionFast( *DB_ODE\ODE_SetContactMu2, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure DBODE_SetContactFDir1( Param0.l, Param1.f )
  CallCFunctionFast( *DB_ODE\ODE_SetContactFDir1, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure DBODE_SetContactBounce( Param0.l, Param1.f )
  CallCFunctionFast( *DB_ODE\ODE_SetContactBounce, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure DBODE_SetContactVelocity( Param0.l, Param1.f )
  CallCFunctionFast( *DB_ODE\ODE_SetContactVelocity, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure DBODE_SetContactSoftERP( Param0.l, Param1.f )
  CallCFunctionFast( *DB_ODE\ODE_SetContactSoftERP, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure DBODE_SetContactSoftCFM( Param0.l, Param1.f )
  CallCFunctionFast( *DB_ODE\ODE_SetContactSoftCFM, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure DBODE_SetContactMotion1( Param0.l, Param1.f )
  CallCFunctionFast( *DB_ODE\ODE_SetContactMotion1, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure DBODE_SetContactMotion2( Param0.l, Param1.f )
  CallCFunctionFast( *DB_ODE\ODE_SetContactMotion2, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure DBODE_SetContactSlip1( Param0.l, Param1.f )
  CallCFunctionFast( *DB_ODE\ODE_SetContactSlip1, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure DBODE_SetContactSlip2( Param0.l, Param1.f )
  CallCFunctionFast( *DB_ODE\ODE_SetContactSlip2, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure DBODE_CreateStaticUniverse()
  CallCFunctionFast( *DB_ODE\ODE_CreateStaticUniverse )
 EndProcedure
;
; *********************************************************************
Procedure.l DBODE_CollisionMessageExists()
  Retour.l = CallCFunctionFast( *DB_ODE\ODE_CollisionMessageExists )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DBODE_CollisionGetMessage()
  CallCFunctionFast( *DB_ODE\ODE_CollisionGetMessage )
 EndProcedure
;
; *********************************************************************
Procedure.l DBODE_GetObjectA()
  Retour.l = CallCFunctionFast( *DB_ODE\ODE_GetObjectA )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBODE_GetObjectB()
  Retour.l = CallCFunctionFast( *DB_ODE\ODE_GetObjectB )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.f DBODE_GetObjectAVelocityX()
  Retour.l = CallCFunctionFast( *DB_ODE\ODE_GetObjectAVelocityX )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBODE_GetObjectAVelocityY()
  Retour.l = CallCFunctionFast( *DB_ODE\ODE_GetObjectAVelocityY )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBODE_GetObjectAVelocityZ()
  Retour.l = CallCFunctionFast( *DB_ODE\ODE_GetObjectAVelocityZ )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBODE_GetObjectBVelocityX()
  Retour.l = CallCFunctionFast( *DB_ODE\ODE_GetObjectBVelocityX )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBODE_GetObjectBVelocityY()
  Retour.l = CallCFunctionFast( *DB_ODE\ODE_GetObjectBVelocityY )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBODE_GetObjectBVelocityZ()
  Retour.l = CallCFunctionFast( *DB_ODE\ODE_GetObjectBVelocityZ )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBODE_GetBodyLinearVelocityX( Param1.l )
  Retour.l = CallCFunctionFast( *DB_ODE\ODE_GetBodyLinearVelocityX, Param1 )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBODE_GetBodyLinearVelocityY( Param1.l )
  Retour.l = CallCFunctionFast( *DB_ODE\ODE_GetBodyLinearVelocityY, Param1 )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBODE_GetBodyLinearVelocityZ( Param1.l )
  Retour.l = CallCFunctionFast( *DB_ODE\ODE_GetBodyLinearVelocityZ, Param1 )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure DBODE_CreateDynamicCylinder( Param0.l )
  CallCFunctionFast( *DB_ODE\ODE_CreateDynamicCylinder, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure.f DBODE_GetObjectAAngularVelocityX()
  Retour.l = CallCFunctionFast( *DB_ODE\ODE_GetObjectAAngularVelocityX )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBODE_GetObjectAAngularVelocityY()
  Retour.l = CallCFunctionFast( *DB_ODE\ODE_GetObjectAAngularVelocityY )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBODE_GetObjectAAngularVelocityZ()
  Retour.l = CallCFunctionFast( *DB_ODE\ODE_GetObjectAAngularVelocityZ )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBODE_GetObjectBAngularVelocityX()
  Retour.l = CallCFunctionFast( *DB_ODE\ODE_GetObjectBAngularVelocityX )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBODE_GetObjectBAngularVelocityY()
  Retour.l = CallCFunctionFast( *DB_ODE\ODE_GetObjectBAngularVelocityY )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBODE_GetObjectBAngularVelocityZ()
  Retour.l = CallCFunctionFast( *DB_ODE\ODE_GetObjectBAngularVelocityZ )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure DBODE_SetGravity( Param0.l, Param1.l )
  CallCFunctionFast( *DB_ODE\ODE_SetGravity, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure DBODE_End()
  CallCFunctionFast( *DB_ODE\ODE_End )
 EndProcedure
;
; *********************************************************************
Procedure DBODE_AddBodyForce( Param0.l, Param1.f, Param2.f, Param3.f, Param4.f, Param5.f, Param6.f )
  CallCFunctionFast( *DB_ODE\ODE_AddBodyForce, Param0, Param1, Param2, Param3, Param4, Param5, Param6 )
 EndProcedure
;
; *********************************************************************
Procedure.f DBODE_GetBodyHeight( Param1.l )
  Retour.l = CallCFunctionFast( *DB_ODE\ODE_GetBodyHeight, Param1 )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBODE_GetBodyAdjustmentX( Param1.l )
  Retour.l = CallCFunctionFast( *DB_ODE\ODE_GetBodyAdjustmentX, Param1 )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBODE_GetBodyAdjustmentY( Param1.l )
  Retour.l = CallCFunctionFast( *DB_ODE\ODE_GetBodyAdjustmentY, Param1 )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBODE_GetBodyAdjustmentZ( Param1.l )
  Retour.l = CallCFunctionFast( *DB_ODE\ODE_GetBodyAdjustmentZ, Param1 )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure DBODE_SetBodyResponse( Param0.l, Param1.l )
  CallCFunctionFast( *DB_ODE\ODE_SetBodyResponse, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure.f DBODE_GetObjectAContact()
  Retour.l = CallCFunctionFast( *DB_ODE\ODE_GetObjectAContact )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBODE_GetObjectBContact()
  Retour.l = CallCFunctionFast( *DB_ODE\ODE_GetObjectBContact )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;

; IDE Options = PureBasic v4.00 (Windows - x86)
; CursorPosition = 42
; FirstLine = 31
; Folding = -------------
; DarkBasic Professional RC2PBIncludes Ver 1.0 File - COMMANDS WRAPPING
; By Frederic Cordier - 07.02.13
;
; *********************************************************************
Procedure dbPhyAttachClothToShape( Param0.l, Param1.l, Param2.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyAttachClothToShape, Param0, Param1, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyAttachClothToAllShapes( Param0.l, Param1.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyAttachClothToAllShapes, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyDetachClothFromShape( Param0.l, Param1.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyDetachClothFromShape, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyAttachClothVert( Param0.l, Param1.l, Param2.f, Param3.f, Param4.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyAttachClothVertex, Param0, Param1, Param2, Param3, Param4 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyAttachClothVertexToShape( Param0.l, Param1.l, Param2.l, Param3.f, Param4.f, Param5.f, Param6.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyAttachClothVertexToShape, Param0, Param1, Param2, Param3, Param4, Param5, Param6 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyFreeClothVert( Param0.l, Param1.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyFreeClothVertex, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyMakeCloth( Param0.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyMakeCloth, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyMakeClothFromObject( Param0.l, Param1.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyMakeClothFromObject, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyMakeClothFromLimb( Param0.l, Param1.l, Param2.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyMakeClothFromLimb, Param0, Param1, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyBuildCloth( Param0.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyBuildCloth, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetClothDimensions( Param0.l, Param1.f, Param2.f, Param3.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetClothDimensions, Param0, Param1, Param2, Param3 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetClothPosition( Param0.l, Param1.f, Param2.f, Param3.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetClothPosition, Param0, Param1, Param2, Param3 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetClothRotation( Param0.l, Param1.f, Param2.f, Param3.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetClothRotation, Param0, Param1, Param2, Param3 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetClothStatic( Param0.l, Param1.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetClothStatic, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetClothCollision( Param0.l, Param1.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetClothCollision, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetClothGravity( Param0.l, Param1.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetClothGravity, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetClothBending( Param0.l, Param1.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetClothBending, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetClothDamping( Param0.l, Param1.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetClothDamping, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetClothTwoWayCollision( Param0.l, Param1.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetClothTwoWayCollision, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetClothTearing( Param0.l, Param1.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetClothTearing, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetClothThickness( Param0.l, Param1.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetClothThickness, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetClothDensity( Param0.l, Param1.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetClothDensity, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetClothBendingStiffness( Param0.l, Param1.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetClothBendingStiffness, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetClothStretchingStiffness( Param0.l, Param1.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetClothStretchingStiffness, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetClothFriction( Param0.l, Param1.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetClothFriction, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetClothPressure( Param0.l, Param1.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetClothPressure, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetClothTearFactor( Param0.l, Param1.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetClothTearFactor, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetClothCollisionResponseCoefficient( Param0.l, Param1.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetClothCollisionResponseCoefficient, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetClothAttachmentResponseCoefficient( Param0.l, Param1.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetClothAttachmentResponseCoefficient, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetClothSolverIterations( Param0.l, Param1.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetClothSolverIterations, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetClothExternalAcceleration( Param0.l, Param1.f, Param2.f, Param3.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetClothExternalAcceleration, Param0, Param1, Param2, Param3 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetClothCollisionGroup( Param0.l, Param1.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetClothCollisionGroup, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyAddForceAtClothVert( Param0.l, Param1.l, Param2.f, Param3.f, Param4.f, Param5.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyAddForceAtClothVertex, Param0, Param1, Param2, Param3, Param4, Param5 )
 EndProcedure
;
; *********************************************************************
Procedure.l dbPhyGetClothExist( Param1.l )
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyGetClothExist, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l dbPhyGetClothBuilt( Param1.l )
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyGetClothBuilt, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.f dbPhyGetClothWidth( Param1.l )
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyGetClothWidthEx, Param1 )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f dbPhyGetClothHeight( Param1.l )
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyGetClothHeightEx, Param1 )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f dbPhyGetClothDepth( Param1.l )
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyGetClothDepthEx, Param1 )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f dbPhyGetClothPositionX( Param1.l )
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyGetClothPositionXEx, Param1 )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f dbPhyGetClothPositionY( Param1.l )
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyGetClothPositionYEx, Param1 )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f dbPhyGetClothPositionZ( Param1.l )
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyGetClothPositionZEx, Param1 )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f dbPhyGetClothRotationX( Param1.l )
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyGetClothRotationXEx, Param1 )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f dbPhyGetClothRotationY( Param1.l )
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyGetClothRotationYEx, Param1 )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f dbPhyGetClothRotationZ( Param1.l )
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyGetClothRotationZEx, Param1 )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.l dbPhyGetClothStatic( Param1.l )
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyGetClothStatic, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l dbPhyGetClothCollision( Param1.l )
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyGetClothCollision, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l dbPhyGetClothGravity( Param1.l )
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyGetClothGravity, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l dbPhyGetClothBending( Param1.l )
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyGetClothBending, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l dbPhyGetClothDamping( Param1.l )
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyGetClothDamping, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l dbPhyGetClothTwoWayCollision( Param1.l )
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyGetClothTwoWayCollision, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l dbPhyGetClothTearing( Param1.l )
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyGetClothTearing, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.f dbPhyGetClothThickness( Param1.l )
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyGetClothThicknessEx, Param1 )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f dbPhyGetClothDensity( Param1.l )
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyGetClothDensityEx, Param1 )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f dbPhyGetClothBendingStiffness( Param1.l )
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyGetClothBendingStiffnessEx, Param1 )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f dbPhyGetClothStretchingStiffness( Param1.l )
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyGetClothStretchingStiffnessEx, Param1 )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f dbPhyGetClothFriction( Param1.l )
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyGetClothFrictionEx, Param1 )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f dbPhyGetClothPressure( Param1.l )
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyGetClothPressureEx, Param1 )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f dbPhyGetClothTearFactor( Param1.l )
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyGetClothTearFactorEx, Param1 )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f dbPhyGetClothCollisionResponseCoefficient( Param1.l )
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyGetClothCollisionResponseCoefficientEx, Param1 )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f dbPhyGetClothAttachmentResponseCoefficient( Param1.l )
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyGetClothAttachmentResponseCoefficientEx, Param1 )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.l dbPhyGetClothSolverIterations( Param1.l )
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyGetClothSolverIterations, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.f dbPhyGetClothExternalAccelerationX( Param1.l )
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyGetClothExternalAccelerationXEx, Param1 )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f dbPhyGetClothExternalAccelerationY( Param1.l )
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyGetClothExternalAccelerationYEx, Param1 )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f dbPhyGetClothExternalAccelerationZ( Param1.l )
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyGetClothExternalAccelerationZEx, Param1 )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.l dbPhyGetClothCollisionGroup( Param1.l )
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyGetClothCollisionGroup, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.f dbPhyGetClothMinSizeX( Param1.l )
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyGetClothMinSizeXEx, Param1 )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f dbPhyGetClothMinSizeY( Param1.l )
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyGetClothMinSizeYEx, Param1 )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f dbPhyGetClothMinSizeZ( Param1.l )
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyGetClothMinSizeZEx, Param1 )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f dbPhyGetClothMaxSizeX( Param1.l )
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyGetClothMaxSizeXEx, Param1 )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f dbPhyGetClothMaxSizeY( Param1.l )
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyGetClothMaxSizeYEx, Param1 )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f dbPhyGetClothMaxSizeZ( Param1.l )
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyGetClothMaxSizeZEx, Param1 )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.l dbPhyClothRayCast( Param1.l, Param2.f, Param3.f, Param4.f, Param5.f, Param6.f, Param7.f )
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyClothRayCast, Param1, Param2, Param3, Param4, Param5, Param6, Param7 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.f dbPhyClothRayCastHitX( Param1.l )
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyClothRayCastHitX, Param1 )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f dbPhyClothRayCastHitY( Param1.l )
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyClothRayCastHitY, Param1 )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f dbPhyClothRayCastHitZ( Param1.l )
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyClothRayCastHitZ, Param1 )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.l dbPhyClothRayCastHitVert( Param1.l )
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyClothRayCastHitVertex, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetGravity( Param0.f, Param1.f, Param2.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetGravity, Param0, Param1, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetTiming( Param0.f, Param1.l, Param2.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetTiming, Param0, Param1, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetFixedTiming( Param0.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetFixedTiming, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetAutoFixedTiming()
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetAutoFixedTiming )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetSkinWidth( Param0.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetSkinWidth, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetDefaultSleepLinearVelocitySquared( Param0.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetDefaultSleepLinearVelocitySquared, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetDefaultSleepAngularVelocitySquared( Param0.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetDefaultSleepAngularVelocitySquared, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetBounceThreshold( Param0.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetBounceThreshold, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetDynamicFriction( Param0.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetDynamicFriction, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetStaticFriction( Param0.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetStaticFriction, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetMaxAngularVelocity( Param0.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetMaxAngularVelocity, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetContinuousCD( Param0.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetContinuousCD, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetAdaptiveForce( Param0.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetAdaptiveForce, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetControlledFiltering( Param0.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetControlledFiltering, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetTriggerCallback( Param0.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetTriggerCallback, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyEnableDebug()
  CallCFunctionFast( *DB_DarkPhysics\dbPhyEnableDebug )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyStart()
  CallCFunctionFast( *DB_DarkPhysics\dbPhyStart )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyStart1( Param0.l, Param1.l, Param2.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyStart1, Param0, Param1, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyEnd()
  CallCFunctionFast( *DB_DarkPhysics\dbPhyEnd )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyClear()
  CallCFunctionFast( *DB_DarkPhysics\dbPhyClear )
 EndProcedure
;
; *********************************************************************
Procedure.l dbPhysX()
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhysX )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure dbPhyUpdate()
  CallCFunctionFast( *DB_DarkPhysics\dbPhyUpdate )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyMakeFluid( Param0.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyMakeFluid, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyMakeFluidEmitter( Param0.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyMakeFluidEmitter, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyBuildFluid( Param0.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyBuildFluid, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyDeleteFluid( Param0.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyDeleteFluid, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure.l dbPhyGetFluidExist( Param1.l )
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyGetFluidExist, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure dbPhyMakeBoxDrain( Param0.l, Param1.f, Param2.f, Param3.f, Param4.f, Param5.f, Param6.f, Param7.f, Param8.f, Param9.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyMakeBoxDrain, Param0, Param1, Param2, Param3, Param4, Param5, Param6, Param7, Param8, Param9 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyMakeSphereDrain( Param0.l, Param1.f, Param2.f, Param3.f, Param4.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyMakeSphereDrain, Param0, Param1, Param2, Param3, Param4 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyDeleteDrain( Param0.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyDeleteDrain, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure.l dbPhyGetDrainExist( Param1.l )
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyGetDrainExist, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetFluidParticleBufferCap( Param0.l, Param1.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetFluidParticleBufferCap, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetFluidRestPerMetre( Param0.l, Param1.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetFluidRestPerMetre, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetFluidRadius( Param0.l, Param1.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetFluidRadius, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetFluidMotionLimit( Param0.l, Param1.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetFluidMotionLimit, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetFluidPacketSize( Param0.l, Param1.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetFluidPacketSize, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetFluidPosition( Param0.l, Param1.f, Param2.f, Param3.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetFluidPosition, Param0, Param1, Param2, Param3 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetFluidRotation( Param0.l, Param1.f, Param2.f, Param3.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetFluidRotation, Param0, Param1, Param2, Param3 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetFluidStiffness( Param0.l, Param1.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetFluidStiffness, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetFluidViscosity( Param0.l, Param1.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetFluidViscosity, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetFluidRestDensity( Param0.l, Param1.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetFluidRestDensity, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetFluidDamping( Param0.l, Param1.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetFluidDamping, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetFluidMethod( Param0.l, Param1.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetFluidMethod, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetFluidAcceleration( Param0.l, Param1.f, Param2.f, Param3.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetFluidAcceleration, Param0, Param1, Param2, Param3 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetFluidEmitterType( Param0.l, Param1.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetFluidEmitterType, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetFluidEmitterMaxParticles( Param0.l, Param1.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetFluidEmitterMaxParticles, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetFluidEmitterShape( Param0.l, Param1.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetFluidEmitterShape, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetFluidEmitterDimensions( Param0.l, Param1.f, Param2.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetFluidEmitterDimensions, Param0, Param1, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetFluidEmitterRandomPosition( Param0.l, Param1.f, Param2.f, Param3.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetFluidEmitterRandomPosition, Param0, Param1, Param2, Param3 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetFluidEmitterRandomAngle( Param0.l, Param1.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetFluidEmitterRandomAngle, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetFluidEmitterVelocity( Param0.l, Param1.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetFluidEmitterVelocity, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetFluidEmitterRate( Param0.l, Param1.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetFluidEmitterRate, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetFluidEmitterLifetime( Param0.l, Param1.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetFluidEmitterLifetime, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetFluidEmitterFlags( Param0.l, Param1.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetFluidEmitterFlags, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyMakeParticleEmitter( Param0.l, Param1.l, Param2.f, Param3.f, Param4.f, Param5.f, Param6.f, Param7.f, Param8.f, Param9.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyMakeParticleEmitter, Param0, Param1, Param2, Param3, Param4, Param5, Param6, Param7, Param8, Param9 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyMakeFireEmitter( Param0.l, Param1.l, Param2.f, Param3.f, Param4.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyMakeFireEmitter, Param0, Param1, Param2, Param3, Param4 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyMakeSmokeEmitter( Param0.l, Param1.l, Param2.f, Param3.f, Param4.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyMakeSmokeEmitter, Param0, Param1, Param2, Param3, Param4 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyMakeSnowEmitter( Param0.l, Param1.l, Param2.f, Param3.f, Param4.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyMakeSnowEmitter, Param0, Param1, Param2, Param3, Param4 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyDeleteEmitter( Param0.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyDeleteEmitter, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetEmitterLinearVelocity( Param0.l, Param1.f, Param2.f, Param3.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetEmitterLinearVelocity, Param0, Param1, Param2, Param3 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetEmitterLinearVelocityRange( Param0.l, Param1.f, Param2.f, Param3.f, Param4.f, Param5.f, Param6.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetEmitterLinearVelocityRange, Param0, Param1, Param2, Param3, Param4, Param5, Param6 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetEmitterGravity( Param0.l, Param1.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetEmitterGravity, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetEmitterLifeSpan( Param0.l, Param1.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetEmitterLifeSpan, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetEmitterFade( Param0.l, Param1.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetEmitterFade, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetEmitterSize( Param0.l, Param1.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetEmitterSize, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetEmitterMaxSize( Param0.l, Param1.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetEmitterMaxSize, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetEmitterGrowthRate( Param0.l, Param1.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetEmitterGrowthRate, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetEmitterRange( Param0.l, Param1.f, Param2.f, Param3.f, Param4.f, Param5.f, Param6.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetEmitterRange, Param0, Param1, Param2, Param3, Param4, Param5, Param6 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetEmitterStartColor( Param0.l, Param1.l, Param2.l, Param3.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetEmitterStartColor, Param0, Param1, Param2, Param3 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetEmitterEndColor( Param0.l, Param1.l, Param2.l, Param3.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetEmitterEndColor, Param0, Param1, Param2, Param3 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetEmitterPosition( Param0.l, Param1.f, Param2.f, Param3.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetEmitterPosition, Param0, Param1, Param2, Param3 )
 EndProcedure
;
; *********************************************************************
Procedure.l dbPhyGetEmitterExist( Param1.l )
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyGetEmitterExist, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure dbPhyMakeBoxCharacterController( Param0.l, Param1.f, Param2.f, Param3.f, Param4.f, Param5.f, Param6.f, Param7.l, Param8.f, Param9.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyMakeBoxCharacterController, Param0, Param1, Param2, Param3, Param4, Param5, Param6, Param7, Param8, Param9 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyMakeCapsuleCharacterController( Param0.l, Param1.f, Param2.f, Param3.f, Param4.f, Param5.f, Param6.l, Param7.f, Param8.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyMakeCapsuleCharacterController, Param0, Param1, Param2, Param3, Param4, Param5, Param6, Param7, Param8 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyMoveCharacterController( Param0.l, Param1.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyMoveCharacterController, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure.l dbPhyGetCharacterControllerExist( Param1.l )
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyGetCharacterControllerExist, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure dbPhyDeleteCharacterController( Param0.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyDeleteCharacterController, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure.l dbPhyGetCollisionData()
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyGetCollisionData )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l dbPhyGetCollisionObjectA()
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyGetCollisionObjectA )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l dbPhyGetCollisionObjectB()
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyGetCollisionObjectB )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure dbPhyMakeRigidBodyStaticBox( Param0.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyMakeRigidBodyStaticBox, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyMakeRigidBodyStaticBoxes( Param0.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyMakeRigidBodyStaticBoxes, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyMakeRigidBodyStaticBox1( Param0.l, Param1.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyMakeRigidBodyStaticBox1, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyMakeRigidBodyStaticBoxes1( Param0.l, Param1.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyMakeRigidBodyStaticBoxes1, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyMakeRigidBodyDynamicBox( Param0.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyMakeRigidBodyDynamicBox, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyMakeRigidBodyDynamicBoxes( Param0.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyMakeRigidBodyDynamicBoxes, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyMakeRigidBodyDynamicBox1( Param0.l, Param1.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyMakeRigidBodyDynamicBox1, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyMakeRigidBodyDynamicBoxes1( Param0.l, Param1.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyMakeRigidBodyDynamicBoxes1, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyMakeRigidBodyStaticCapsule( Param0.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyMakeRigidBodyStaticCapsule, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyMakeRigidBodyStaticCapsules( Param0.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyMakeRigidBodyStaticCapsules, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyMakeRigidBodyStaticCapsule1( Param0.l, Param1.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyMakeRigidBodyStaticCapsule1, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyMakeRigidBodyStaticCapsules1( Param0.l, Param1.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyMakeRigidBodyStaticCapsules1, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyMakeRigidBodyDynamicCapsule( Param0.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyMakeRigidBodyDynamicCapsule, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyMakeRigidBodyDynamicCapsules( Param0.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyMakeRigidBodyDynamicCapsules, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyMakeRigidBodyDynamicCapsule1( Param0.l, Param1.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyMakeRigidBodyDynamicCapsule1, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyMakeRigidBodyDynamicCapsules1( Param0.l, Param1.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyMakeRigidBodyDynamicCapsules1, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyMakeRigidBodyStaticConv( Param0.l, Param1.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param1PTR.l, Len( Param1 ) + 1 ) ; CreateString
  PokeS( Param1PTR, Param1 )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyMakeRigidBodyStaticConvex, Param0, Param1PTR )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyMakeRigidBodyStaticConvexes( Param0.l, Param1.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param1PTR.l, Len( Param1 ) + 1 ) ; CreateString
  PokeS( Param1PTR, Param1 )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyMakeRigidBodyStaticConvexes, Param0, Param1PTR )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyMakeRigidBodyStaticConv1( Param0.l, Param1.s, Param2.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param1PTR.l, Len( Param1 ) + 1 ) ; CreateString
  PokeS( Param1PTR, Param1 )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyMakeRigidBodyStaticConvex1, Param0, Param1PTR, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyMakeRigidBodyStaticConvexes1( Param0.l, Param1.s, Param2.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param1PTR.l, Len( Param1 ) + 1 ) ; CreateString
  PokeS( Param1PTR, Param1 )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyMakeRigidBodyStaticConvexes1, Param0, Param1PTR, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyMakeRigidBodyDynamicConv( Param0.l, Param1.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param1PTR.l, Len( Param1 ) + 1 ) ; CreateString
  PokeS( Param1PTR, Param1 )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyMakeRigidBodyDynamicConvex, Param0, Param1PTR )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyMakeRigidBodyDynamicConvexes( Param0.l, Param1.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param1PTR.l, Len( Param1 ) + 1 ) ; CreateString
  PokeS( Param1PTR, Param1 )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyMakeRigidBodyDynamicConvexes, Param0, Param1PTR )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyMakeRigidBodyDynamicConv1( Param0.l, Param1.s, Param2.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param1PTR.l, Len( Param1 ) + 1 ) ; CreateString
  PokeS( Param1PTR, Param1 )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyMakeRigidBodyDynamicConvex1, Param0, Param1PTR, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyMakeRigidBodyDynamicConvexes1( Param0.l, Param1.s, Param2.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param1PTR.l, Len( Param1 ) + 1 ) ; CreateString
  PokeS( Param1PTR, Param1 )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyMakeRigidBodyDynamicConvexes1, Param0, Param1PTR, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyLoadRigidBodyStaticConv( Param0.l, Param1.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param1PTR.l, Len( Param1 ) + 1 ) ; CreateString
  PokeS( Param1PTR, Param1 )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyLoadRigidBodyStaticConvex, Param0, Param1PTR )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyLoadRigidBodyStaticConvexes( Param0.l, Param1.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param1PTR.l, Len( Param1 ) + 1 ) ; CreateString
  PokeS( Param1PTR, Param1 )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyLoadRigidBodyStaticConvexes, Param0, Param1PTR )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyLoadRigidBodyStaticConv1( Param0.l, Param1.s, Param2.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param1PTR.l, Len( Param1 ) + 1 ) ; CreateString
  PokeS( Param1PTR, Param1 )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyLoadRigidBodyStaticConvex1, Param0, Param1PTR, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyLoadRigidBodyStaticConvexes1( Param0.l, Param1.s, Param2.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param1PTR.l, Len( Param1 ) + 1 ) ; CreateString
  PokeS( Param1PTR, Param1 )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyLoadRigidBodyStaticConvexes1, Param0, Param1PTR, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyLoadRigidBodyDynamicConv( Param0.l, Param1.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param1PTR.l, Len( Param1 ) + 1 ) ; CreateString
  PokeS( Param1PTR, Param1 )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyLoadRigidBodyDynamicConvex, Param0, Param1PTR )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyLoadRigidBodyDynamicConvexes( Param0.l, Param1.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param1PTR.l, Len( Param1 ) + 1 ) ; CreateString
  PokeS( Param1PTR, Param1 )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyLoadRigidBodyDynamicConvexes, Param0, Param1PTR )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyLoadRigidBodyDynamicConv1( Param0.l, Param1.s, Param2.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param1PTR.l, Len( Param1 ) + 1 ) ; CreateString
  PokeS( Param1PTR, Param1 )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyLoadRigidBodyDynamicConvex1, Param0, Param1PTR, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyLoadRigidBodyDynamicConvexes1( Param0.l, Param1.s, Param2.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param1PTR.l, Len( Param1 ) + 1 ) ; CreateString
  PokeS( Param1PTR, Param1 )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyLoadRigidBodyDynamicConvexes1, Param0, Param1PTR, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyMakeRigidBodyStaticMesh( Param0.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyMakeRigidBodyStaticMesh, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyMakeRigidBodyStaticMeshes( Param0.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyMakeRigidBodyStaticMeshes, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyMakeRigidBodyStaticMesh1( Param0.l, Param1.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyMakeRigidBodyStaticMesh1, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyMakeRigidBodyStaticMeshes1( Param0.l, Param1.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyMakeRigidBodyStaticMeshes1, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyMakeRigidBodyDynamicMesh( Param0.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyMakeRigidBodyDynamicMesh, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyMakeRigidBodyDynamicMeshes( Param0.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyMakeRigidBodyDynamicMeshes, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyMakeRigidBodyDynamicMesh1( Param0.l, Param1.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyMakeRigidBodyDynamicMesh1, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyMakeRigidBodyDynamicMeshes1( Param0.l, Param1.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyMakeRigidBodyDynamicMeshes1, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyMakeRigidBodyStaticMesh2( Param0.l, Param1.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param1PTR.l, Len( Param1 ) + 1 ) ; CreateString
  PokeS( Param1PTR, Param1 )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyMakeRigidBodyStaticMesh2, Param0, Param1PTR )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyMakeRigidBodyStaticMeshes2( Param0.l, Param1.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param1PTR.l, Len( Param1 ) + 1 ) ; CreateString
  PokeS( Param1PTR, Param1 )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyMakeRigidBodyStaticMeshes2, Param0, Param1PTR )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyMakeRigidBodyStaticMesh3( Param0.l, Param1.s, Param2.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param1PTR.l, Len( Param1 ) + 1 ) ; CreateString
  PokeS( Param1PTR, Param1 )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyMakeRigidBodyStaticMesh3, Param0, Param1PTR, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyMakeRigidBodyStaticMeshes3( Param0.l, Param1.s, Param2.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param1PTR.l, Len( Param1 ) + 1 ) ; CreateString
  PokeS( Param1PTR, Param1 )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyMakeRigidBodyStaticMeshes3, Param0, Param1PTR, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyMakeRigidBodyDynamicMesh2( Param0.l, Param1.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param1PTR.l, Len( Param1 ) + 1 ) ; CreateString
  PokeS( Param1PTR, Param1 )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyMakeRigidBodyDynamicMesh2, Param0, Param1PTR )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyMakeRigidBodyDynamicMeshes2( Param0.l, Param1.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param1PTR.l, Len( Param1 ) + 1 ) ; CreateString
  PokeS( Param1PTR, Param1 )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyMakeRigidBodyDynamicMeshes2, Param0, Param1PTR )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyMakeRigidBodyDynamicMesh3( Param0.l, Param1.s, Param2.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param1PTR.l, Len( Param1 ) + 1 ) ; CreateString
  PokeS( Param1PTR, Param1 )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyMakeRigidBodyDynamicMesh3, Param0, Param1PTR, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyMakeRigidBodyDynamicMeshes3( Param0.l, Param1.s, Param2.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param1PTR.l, Len( Param1 ) + 1 ) ; CreateString
  PokeS( Param1PTR, Param1 )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyMakeRigidBodyDynamicMeshes3, Param0, Param1PTR, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyLoadRigidBodyStaticMesh( Param0.l, Param1.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param1PTR.l, Len( Param1 ) + 1 ) ; CreateString
  PokeS( Param1PTR, Param1 )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyLoadRigidBodyStaticMesh, Param0, Param1PTR )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyLoadRigidBodyStaticMeshes( Param0.l, Param1.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param1PTR.l, Len( Param1 ) + 1 ) ; CreateString
  PokeS( Param1PTR, Param1 )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyLoadRigidBodyStaticMeshes, Param0, Param1PTR )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyLoadRigidBodyStaticMesh1( Param0.l, Param1.s, Param2.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param1PTR.l, Len( Param1 ) + 1 ) ; CreateString
  PokeS( Param1PTR, Param1 )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyLoadRigidBodyStaticMesh1, Param0, Param1PTR, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyLoadRigidBodyStaticMeshes1( Param0.l, Param1.s, Param2.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param1PTR.l, Len( Param1 ) + 1 ) ; CreateString
  PokeS( Param1PTR, Param1 )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyLoadRigidBodyStaticMeshes1, Param0, Param1PTR, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyLoadRigidBodyDynamicMesh( Param0.l, Param1.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param1PTR.l, Len( Param1 ) + 1 ) ; CreateString
  PokeS( Param1PTR, Param1 )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyLoadRigidBodyDynamicMesh, Param0, Param1PTR )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyLoadRigidBodyDynamicMeshes( Param0.l, Param1.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param1PTR.l, Len( Param1 ) + 1 ) ; CreateString
  PokeS( Param1PTR, Param1 )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyLoadRigidBodyDynamicMeshes, Param0, Param1PTR )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyLoadRigidBodyDynamicMesh1( Param0.l, Param1.s, Param2.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param1PTR.l, Len( Param1 ) + 1 ) ; CreateString
  PokeS( Param1PTR, Param1 )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyLoadRigidBodyDynamicMesh1, Param0, Param1PTR, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyLoadRigidBodyDynamicMeshes1( Param0.l, Param1.s, Param2.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param1PTR.l, Len( Param1 ) + 1 ) ; CreateString
  PokeS( Param1PTR, Param1 )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyLoadRigidBodyDynamicMeshes1, Param0, Param1PTR, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyMakeRagdoll( Param0.l, Param1.l, Param2.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyMakeRagdoll, Param0, Param1, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyAssignRagdollPart( Param0.l, Param1.l, Param2.l, Param3.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyAssignRagdollPart, Param0, Param1, Param2, Param3 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyMakeRigidBodyStaticSphere( Param0.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyMakeRigidBodyStaticSphere, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyMakeRigidBodyStaticSpheres( Param0.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyMakeRigidBodyStaticSpheres, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyMakeRigidBodyStaticSphere1( Param0.l, Param1.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyMakeRigidBodyStaticSphere1, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyMakeRigidBodyStaticSpheres1( Param0.l, Param1.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyMakeRigidBodyStaticSpheres1, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyMakeRigidBodyDynamicSphere( Param0.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyMakeRigidBodyDynamicSphere, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyMakeRigidBodyDynamicSpheres( Param0.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyMakeRigidBodyDynamicSpheres, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyMakeRigidBodyDynamicSphere1( Param0.l, Param1.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyMakeRigidBodyDynamicSphere1, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyMakeRigidBodyDynamicSpheres1( Param0.l, Param1.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyMakeRigidBodyDynamicSpheres1, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetVehicleBrakeTorque( Param0.l, Param1.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetVehicleBrakeTorque, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetRigidBodyTerrainExtent( Param0.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetRigidBodyTerrainExtent, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetRigidBodyCCD( Param0.l, Param1.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetRigidBodyCCD, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure.l dbPhyGetRigidBodyDynamic( Param1.l )
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyGetRigidBodyDynamic, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure dbPhyDeleteRigidBody( Param0.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyDeleteRigidBody, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure.l dbPhyGetRigidBodyExist( Param1.l )
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyGetRigidBodyExist, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l dbPhyGetRigidBodyType( Param1.l )
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyGetRigidBodyType, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure dbPhyMake6DOFJoint( Param0.l, Param1.l, Param2.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyMake6DOFJoint, Param0, Param1, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySet6DOFJointLocalAnchor( Param0.l, Param1.l, Param2.f, Param3.f, Param4.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySet6DOFJointLocalAnchor, Param0, Param1, Param2, Param3, Param4 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySet6DOFJointLocalAxis( Param0.l, Param1.l, Param2.f, Param3.f, Param4.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySet6DOFJointLocalAxis, Param0, Param1, Param2, Param3, Param4 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySet6DOFJointLocalNormal( Param0.l, Param1.l, Param2.f, Param3.f, Param4.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySet6DOFJointLocalNormal, Param0, Param1, Param2, Param3, Param4 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySet6DOFJointGlobalAnchor( Param0.l, Param1.l, Param2.f, Param3.f, Param4.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySet6DOFJointGlobalAnchor, Param0, Param1, Param2, Param3, Param4 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySet6DOFJointGlobalAxis( Param0.l, Param1.l, Param2.f, Param3.f, Param4.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySet6DOFJointGlobalAxis, Param0, Param1, Param2, Param3, Param4 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySet6DOFJointTwistMotion( Param0.l, Param1.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySet6DOFJointTwistMotion, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySet6DOFJointSwing1Motion( Param0.l, Param1.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySet6DOFJointSwing1Motion, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySet6DOFJointSwing2Motion( Param0.l, Param1.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySet6DOFJointSwing2Motion, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySet6DOFJointMotionX( Param0.l, Param1.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySet6DOFJointMotionX, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySet6DOFJointMotionY( Param0.l, Param1.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySet6DOFJointMotionY, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySet6DOFJointMotionZ( Param0.l, Param1.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySet6DOFJointMotionZ, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySet6DOFJointLinearLimit( Param0.l, Param1.f, Param2.f, Param3.f, Param4.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySet6DOFJointLinearLimit, Param0, Param1, Param2, Param3, Param4 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySet6DOFJointSwing1Limit( Param0.l, Param1.f, Param2.f, Param3.f, Param4.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySet6DOFJointSwing1Limit, Param0, Param1, Param2, Param3, Param4 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySet6DOFJointSwing2Limit( Param0.l, Param1.f, Param2.f, Param3.f, Param4.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySet6DOFJointSwing2Limit, Param0, Param1, Param2, Param3, Param4 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySet6DOFJointTwistLimit( Param0.l, Param1.f, Param2.f, Param3.f, Param4.f, Param5.f, Param6.f, Param7.f, Param8.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySet6DOFJointTwistLimit, Param0, Param1, Param2, Param3, Param4, Param5, Param6, Param7, Param8 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySet6DOFJointDriv( Param0.l, Param1.l, Param2.f, Param3.f, Param4.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySet6DOFJointDriveX, Param0, Param1, Param2, Param3, Param4 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySet6DOFJointDriveY( Param0.l, Param1.l, Param2.f, Param3.f, Param4.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySet6DOFJointDriveY, Param0, Param1, Param2, Param3, Param4 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySet6DOFJointDriveZ( Param0.l, Param1.l, Param2.f, Param3.f, Param4.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySet6DOFJointDriveZ, Param0, Param1, Param2, Param3, Param4 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySet6DOFJointTwistDrive( Param0.l, Param1.l, Param2.f, Param3.f, Param4.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySet6DOFJointTwistDrive, Param0, Param1, Param2, Param3, Param4 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySet6DOFJointSwingDrive( Param0.l, Param1.l, Param2.f, Param3.f, Param4.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySet6DOFJointSwingDrive, Param0, Param1, Param2, Param3, Param4 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySet6DOFJointSlerpDrive( Param0.l, Param1.l, Param2.f, Param3.f, Param4.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySet6DOFJointSlerpDrive, Param0, Param1, Param2, Param3, Param4 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySet6DOFJointDrivePosition( Param0.l, Param1.f, Param2.f, Param3.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySet6DOFJointDrivePosition, Param0, Param1, Param2, Param3 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySet6DOFJointDriveRotation( Param0.l, Param1.f, Param2.f, Param3.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySet6DOFJointDriveRotation, Param0, Param1, Param2, Param3 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySet6DOFJointDriveLinearVelocity( Param0.l, Param1.f, Param2.f, Param3.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySet6DOFJointDriveLinearVelocity, Param0, Param1, Param2, Param3 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySet6DOFJointDriveAngularVelocity( Param0.l, Param1.f, Param2.f, Param3.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySet6DOFJointDriveAngularVelocity, Param0, Param1, Param2, Param3 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySet6DOFJointProjection( Param0.l, Param1.l, Param2.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySet6DOFJointProjection, Param0, Param1, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySet6DOFJointSlerpDrive1( Param0.l, Param1.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySet6DOFJointSlerpDrive1, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySet6DOFJointGear( Param0.l, Param1.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySet6DOFJointGear, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyBuild6DOFJoint( Param0.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyBuild6DOFJoint, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyMakeCylindricalJoint( Param0.l, Param1.l, Param2.l, Param3.f, Param4.f, Param5.f, Param6.f, Param7.f, Param8.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyMakeCylindricalJoint, Param0, Param1, Param2, Param3, Param4, Param5, Param6, Param7, Param8 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyMakeCylindricalJoint1( Param0.l, Param1.l, Param2.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyMakeCylindricalJoint1, Param0, Param1, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetCylindricalJointLocalAnchor( Param0.l, Param1.l, Param2.f, Param3.f, Param4.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetCylindricalJointLocalAnchor, Param0, Param1, Param2, Param3, Param4 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetCylindricalJointLocalAxis( Param0.l, Param1.l, Param2.f, Param3.f, Param4.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetCylindricalJointLocalAxis, Param0, Param1, Param2, Param3, Param4 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetCylindricalJointGlobalAnchor( Param0.l, Param1.l, Param2.f, Param3.f, Param4.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetCylindricalJointGlobalAnchor, Param0, Param1, Param2, Param3, Param4 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetCylindricalJointGlobalAxis( Param0.l, Param1.l, Param2.f, Param3.f, Param4.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetCylindricalJointGlobalAxis, Param0, Param1, Param2, Param3, Param4 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyBuildCylindricalJoint( Param0.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyBuildCylindricalJoint, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyMakeDistanceJoint( Param0.l, Param1.l, Param2.l, Param3.f, Param4.f, Param5.f, Param6.f, Param7.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyMakeDistanceJoint, Param0, Param1, Param2, Param3, Param4, Param5, Param6, Param7 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyMakeDistanceJoint1( Param0.l, Param1.l, Param2.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyMakeDistanceJoint1, Param0, Param1, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetDistanceJointLocalAnchor( Param0.l, Param1.l, Param2.f, Param3.f, Param4.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetDistanceJointLocalAnchor, Param0, Param1, Param2, Param3, Param4 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetDistanceJointGlobalAnchor( Param0.l, Param1.l, Param2.f, Param3.f, Param4.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetDistanceJointGlobalAnchor, Param0, Param1, Param2, Param3, Param4 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetDistanceJointLocalAxis( Param0.l, Param1.l, Param2.f, Param3.f, Param4.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetDistanceJointLocalAxis, Param0, Param1, Param2, Param3, Param4 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetDistanceJointGlobalAxis( Param0.l, Param1.l, Param2.f, Param3.f, Param4.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetDistanceJointGlobalAxis, Param0, Param1, Param2, Param3, Param4 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetDistanceJointMax( Param0.l, Param1.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetDistanceJointMax, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetDistanceJointMin( Param0.l, Param1.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetDistanceJointMin, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetDistanceJointSpring( Param0.l, Param1.f, Param2.f, Param3.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetDistanceJointSpring, Param0, Param1, Param2, Param3 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyBuildDistanceJoint( Param0.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyBuildDistanceJoint, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyMakeFixedJoint( Param0.l, Param1.l, Param2.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyMakeFixedJoint, Param0, Param1, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyMakeFixedJoint1( Param0.l, Param1.l, Param2.l, Param3.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyMakeFixedJoint1, Param0, Param1, Param2, Param3 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyBuildFixedJoint( Param0.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyBuildFixedJoint, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyMakePointInPlaneJoint( Param0.l, Param1.l, Param2.l, Param3.f, Param4.f, Param5.f, Param6.f, Param7.f, Param8.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyMakePointInPlaneJoint, Param0, Param1, Param2, Param3, Param4, Param5, Param6, Param7, Param8 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyMakePointInPlaneJoint1( Param0.l, Param1.l, Param2.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyMakePointInPlaneJoint1, Param0, Param1, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetPointInPlaneJointLocalAnchor( Param0.l, Param1.l, Param2.f, Param3.f, Param4.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetPointInPlaneJointLocalAnchor, Param0, Param1, Param2, Param3, Param4 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetPointInPlaneJointLocalAxis( Param0.l, Param1.l, Param2.f, Param3.f, Param4.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetPointInPlaneJointLocalAxis, Param0, Param1, Param2, Param3, Param4 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetPointInPlaneJointGlobalAnchor( Param0.l, Param1.l, Param2.f, Param3.f, Param4.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetPointInPlaneJointGlobalAnchor, Param0, Param1, Param2, Param3, Param4 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetPointInPlaneJointGlobalAxis( Param0.l, Param1.l, Param2.f, Param3.f, Param4.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetPointInPlaneJointGlobalAxis, Param0, Param1, Param2, Param3, Param4 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyBuildPointInPlaneJoint( Param0.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyBuildPointInPlaneJoint, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyMakePointOnLineJoint( Param0.l, Param1.l, Param2.l, Param3.f, Param4.f, Param5.f, Param6.f, Param7.f, Param8.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyMakePointOnLineJoint, Param0, Param1, Param2, Param3, Param4, Param5, Param6, Param7, Param8 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyMakePointOnLineJoint1( Param0.l, Param1.l, Param2.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyMakePointOnLineJoint1, Param0, Param1, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetPointOnLineJointLocalAnchor( Param0.l, Param1.l, Param2.f, Param3.f, Param4.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetPointOnLineJointLocalAnchor, Param0, Param1, Param2, Param3, Param4 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetPointOnLineJointLocalAxis( Param0.l, Param1.l, Param2.f, Param3.f, Param4.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetPointOnLineJointLocalAxis, Param0, Param1, Param2, Param3, Param4 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetPointOnLineJointGlobalAnchor( Param0.l, Param1.l, Param2.f, Param3.f, Param4.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetPointOnLineJointGlobalAnchor, Param0, Param1, Param2, Param3, Param4 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetPointOnLineJointGlobalAxis( Param0.l, Param1.l, Param2.f, Param3.f, Param4.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetPointOnLineJointGlobalAxis, Param0, Param1, Param2, Param3, Param4 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyBuildPointOnLineJoint( Param0.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyBuildPointOnLineJoint, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyMakePrismaticJoint( Param0.l, Param1.l, Param2.l, Param3.f, Param4.f, Param5.f, Param6.f, Param7.f, Param8.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyMakePrismaticJoint, Param0, Param1, Param2, Param3, Param4, Param5, Param6, Param7, Param8 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyMakePrismaticJoint1( Param0.l, Param1.l, Param2.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyMakePrismaticJoint1, Param0, Param1, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetPrismaticJointLocalAnchor( Param0.l, Param1.l, Param2.f, Param3.f, Param4.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetPrismaticJointLocalAnchor, Param0, Param1, Param2, Param3, Param4 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetPrismaticJointLocalAxis( Param0.l, Param1.l, Param2.f, Param3.f, Param4.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetPrismaticJointLocalAxis, Param0, Param1, Param2, Param3, Param4 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetPrismaticJointGlobalAnchor( Param0.l, Param1.l, Param2.f, Param3.f, Param4.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetPrismaticJointGlobalAnchor, Param0, Param1, Param2, Param3, Param4 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetPrismaticJointGlobalAxis( Param0.l, Param1.l, Param2.f, Param3.f, Param4.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetPrismaticJointGlobalAxis, Param0, Param1, Param2, Param3, Param4 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyBuildPrismaticJoint( Param0.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyBuildPrismaticJoint, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyMakePulleyJoint( Param0.l, Param1.l, Param2.l, Param3.f, Param4.f, Param5.f, Param6.f, Param7.f, Param8.f, Param9.f, Param10.f, Param11.f, Param12.f, Param13.f, Param14.f, Param15.f, Param16.f, Param17.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyMakePulleyJoint, Param0, Param1, Param2, Param3, Param4, Param5, Param6, Param7, Param8, Param9, Param10, Param11, Param12, Param13, Param14, Param15, Param16, Param17 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyMakePulleyJoint1( Param0.l, Param1.l, Param2.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyMakePulleyJoint1, Param0, Param1, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetPulleyJointLocalAnchor( Param0.l, Param1.l, Param2.f, Param3.f, Param4.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetPulleyJointLocalAnchor, Param0, Param1, Param2, Param3, Param4 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetPulleyJointGlobalAnchor( Param0.l, Param1.l, Param2.f, Param3.f, Param4.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetPulleyJointGlobalAnchor, Param0, Param1, Param2, Param3, Param4 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetPulleyJointLocalAxis( Param0.l, Param1.l, Param2.f, Param3.f, Param4.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetPulleyJointLocalAxis, Param0, Param1, Param2, Param3, Param4 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetPulleyJointGlobalAxis( Param0.l, Param1.l, Param2.f, Param3.f, Param4.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetPulleyJointGlobalAxis, Param0, Param1, Param2, Param3, Param4 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetPulleyJointSuspension( Param0.l, Param1.l, Param2.f, Param3.f, Param4.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetPulleyJointSuspension, Param0, Param1, Param2, Param3, Param4 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetPulleyJointDistance( Param0.l, Param1.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetPulleyJointDistance, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetPulleyJointStiffness( Param0.l, Param1.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetPulleyJointStiffness, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetPulleyJointRatio( Param0.l, Param1.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetPulleyJointRatio, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetPulleyJointRigid( Param0.l, Param1.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetPulleyJointRigid, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetPulleyJointMotor( Param0.l, Param1.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetPulleyJointMotor, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyBuildPulleyJoint( Param0.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyBuildPulleyJoint, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyMakeScene( Param1.l, Param2.l, Param3.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyMakeScene, Param1, Param2, Param3 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetCurrentScene( Param0.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetCurrentScene, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetRevoluteJointLocalAnchor( Param0.l, Param1.l, Param2.f, Param3.f, Param4.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetRevoluteJointLocalAnchor, Param0, Param1, Param2, Param3, Param4 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetRevoluteJointLocalAxis( Param0.l, Param1.l, Param2.f, Param3.f, Param4.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetRevoluteJointLocalAxis, Param0, Param1, Param2, Param3, Param4 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetRevoluteJointGlobalAnchor( Param0.l, Param1.l, Param2.f, Param3.f, Param4.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetRevoluteJointGlobalAnchor, Param0, Param1, Param2, Param3, Param4 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetRevoluteJointGlobalAxis( Param0.l, Param1.l, Param2.f, Param3.f, Param4.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetRevoluteJointGlobalAxis, Param0, Param1, Param2, Param3, Param4 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetRevoluteJointSpring( Param0.l, Param1.f, Param2.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetRevoluteJointSpring, Param0, Param1, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetRevoluteJointLimit( Param0.l, Param1.f, Param2.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetRevoluteJointLimit, Param0, Param1, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetRevoluteJointMotor( Param0.l, Param1.f, Param2.f, Param3.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetRevoluteJointMotor, Param0, Param1, Param2, Param3 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetRevoluteJointProjection( Param0.l, Param1.l, Param2.f, Param3.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetRevoluteJointProjection, Param0, Param1, Param2, Param3 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyBuildRevoluteJoint( Param0.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyBuildRevoluteJoint, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyMakeSphereJoint( Param0.l, Param1.l, Param2.l, Param3.f, Param4.f, Param5.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyMakeSphereJoint, Param0, Param1, Param2, Param3, Param4, Param5 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyMakeSphereJoint1( Param0.l, Param1.l, Param2.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyMakeSphereJoint1, Param0, Param1, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetSphereJointLocalAnchor( Param0.l, Param1.l, Param2.f, Param3.f, Param4.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetSphereJointLocalAnchor, Param0, Param1, Param2, Param3, Param4 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetSphereJointLocalAxis( Param0.l, Param1.l, Param2.f, Param3.f, Param4.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetSphereJointLocalAxis, Param0, Param1, Param2, Param3, Param4 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetSphereJointGlobalAnchor( Param0.l, Param1.l, Param2.f, Param3.f, Param4.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetSphereJointGlobalAnchor, Param0, Param1, Param2, Param3, Param4 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetSphereJointGlobalAxis( Param0.l, Param1.l, Param2.f, Param3.f, Param4.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetSphereJointGlobalAxis, Param0, Param1, Param2, Param3, Param4 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetSphereJointSwingAxis( Param0.l, Param1.f, Param2.f, Param3.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetSphereJointSwingAxis, Param0, Param1, Param2, Param3 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetSphereJointSwingLimit( Param0.l, Param1.f, Param2.f, Param3.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetSphereJointSwingLimit, Param0, Param1, Param2, Param3 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetSphereJointTwistLimit( Param0.l, Param1.f, Param2.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetSphereJointTwistLimit, Param0, Param1, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetSphereJointTwistSpring( Param0.l, Param1.f, Param2.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetSphereJointTwistSpring, Param0, Param1, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetSphereJointSwingSpring( Param0.l, Param1.f, Param2.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetSphereJointSwingSpring, Param0, Param1, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetSphereJointSpring( Param0.l, Param1.f, Param2.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetSphereJointSpring, Param0, Param1, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetSphereJointProjection( Param0.l, Param1.l, Param2.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetSphereJointProjection, Param0, Param1, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyBuildSphereJoint( Param0.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyBuildSphereJoint, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyDeleteJoint( Param0.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyDeleteJoint, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure.l dbPhyGetJointExist( Param1.l )
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyGetJointExist, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l dbPhyGetJointType( Param1.l )
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyGetJointType, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure dbPhyMakeMaterial( Param0.l, Param1.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param1PTR.l, Len( Param1 ) + 1 ) ; CreateString
  PokeS( Param1PTR, Param1 )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyMakeMaterial, Param0, Param1PTR )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyDeleteMaterial( Param0.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyDeleteMaterial, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetMaterialDynamicFriction( Param0.l, Param1.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetMaterialDynamicFriction, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetMaterialStaticFriction( Param0.l, Param1.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetMaterialStaticFriction, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetMaterialRestitution( Param0.l, Param1.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetMaterialRestitution, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetMaterialDynamicFrictionV( Param0.l, Param1.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetMaterialDynamicFrictionV, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetMaterialStaticFrictionV( Param0.l, Param1.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetMaterialStaticFrictionV, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetMaterialDirOfAnisotropy( Param0.l, Param1.f, Param2.f, Param3.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetMaterialDirOfAnisotropy, Param0, Param1, Param2, Param3 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetMaterialFrictionCombine( Param0.l, Param1.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetMaterialFrictionCombine, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetMaterialRestitutionCombine( Param0.l, Param1.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetMaterialRestitutionCombine, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyBuildMaterial( Param0.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyBuildMaterial, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure.l dbPhyGetMaterialExist( Param1.l )
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyGetMaterialExist, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.f dbPhyGetMaterialDynamicFriction( Param1.l )
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyGetMaterialDynamicFrictionEx, Param1 )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f dbPhyGetMaterialStaticFriction( Param1.l )
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyGetMaterialStaticFrictionEx, Param1 )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f dbPhyGetMaterialRestitution( Param1.l )
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyGetMaterialRestitutionEx, Param1 )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f dbPhyGetMaterialDynamicFrictionV( Param1.l )
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyGetMaterialDynamicFrictionVEx, Param1 )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f dbPhyGetMaterialStaticFrictionV( Param1.l )
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyGetMaterialStaticFrictionVEx, Param1 )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f dbPhyGetMaterialDirOfAnisotropyX( Param1.l )
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyGetMaterialDirOfAnisotropyXEx, Param1 )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f dbPhyGetMaterialDirOfAnisotropyY( Param1.l )
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyGetMaterialDirOfAnisotropyYEx, Param1 )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f dbPhyGetMaterialDirOfAnisotropyZ( Param1.l )
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyGetMaterialDirOfAnisotropyZEx, Param1 )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.l dbPhyGetMaterialFrictionCombine( Param1.l )
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyGetMaterialFrictionCombine, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l dbPhyGetMaterialRestitutionCombine( Param1.l )
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyGetMaterialRestitutionCombine, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetRigidBodyPosition( Param0.l, Param1.f, Param2.f, Param3.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetRigidBodyPosition, Param0, Param1, Param2, Param3 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetRigidBodyRotation( Param0.l, Param1.f, Param2.f, Param3.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetRigidBodyRotation, Param0, Param1, Param2, Param3 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetRigidBodyMass( Param0.l, Param1.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetRigidBodyMass, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure.f dbPhyGetRigidBodyMass( Param1.l )
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyGetRigidBodyMassEx, Param1 )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetRigidBodyMassOffsetLocal( Param0.l, Param1.f, Param2.f, Param3.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetRigidBodyMassOffsetLocal, Param0, Param1, Param2, Param3 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetRigidBodyMassOffsetGlobal( Param0.l, Param1.f, Param2.f, Param3.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetRigidBodyMassOffsetGlobal, Param0, Param1, Param2, Param3 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyUpdateRigidBodyMass( Param0.l, Param1.f, Param2.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyUpdateRigidBodyMass, Param0, Param1, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetRigidBodyLinearDamping( Param0.l, Param1.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetRigidBodyLinearDamping, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetRigidBodyAngularDamping( Param0.l, Param1.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetRigidBodyAngularDamping, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure.f dbPhyGetRigidBodyLinearDamping( Param1.l )
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyGetRigidBodyLinearDampingEx, Param1 )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f dbPhyGetRigidBodyAngularDamping( Param1.l )
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyGetRigidBodyAngularDampingEx, Param1 )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetRigidBodyLinearVelocity( Param0.l, Param1.f, Param2.f, Param3.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetRigidBodyLinearVelocity, Param0, Param1, Param2, Param3 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetRigidBodyAngularVelocity( Param0.l, Param1.f, Param2.f, Param3.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetRigidBodyAngularVelocity, Param0, Param1, Param2, Param3 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetRigidBodyMaxAngularVelocity( Param0.l, Param1.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetRigidBodyMaxAngularVelocity, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure.f dbPhyGetRigidBodyLinearVelocityX( Param1.l )
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyGetRigidBodyLinearVelocityXEx, Param1 )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f dbPhyGetRigidBodyLinearVelocityY( Param1.l )
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyGetRigidBodyLinearVelocityYEx, Param1 )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f dbPhyGetRigidBodyLinearVelocityZ( Param1.l )
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyGetRigidBodyLinearVelocityZEx, Param1 )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f dbPhyGetRigidBodyAngularVelocityX( Param1.l )
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyGetRigidBodyAngularVelocityXEx, Param1 )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f dbPhyGetRigidBodyAngularVelocityY( Param1.l )
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyGetRigidBodyAngularVelocityYEx, Param1 )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f dbPhyGetRigidBodyAngularVelocityZ( Param1.l )
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyGetRigidBodyAngularVelocityZEx, Param1 )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f dbPhyGetRigidBodyMaxAngularVelocity( Param1.l )
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyGetRigidBodyMaxAngularVelocityEx, Param1 )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetRigidBodyCCDMotionThreshold( Param0.l, Param1.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetRigidBodyCCDMotionThreshold, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure.f dbPhyGetRigidBodyCCDMotionThreshold( Param1.l )
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyGetRigidBodyCCDMotionThresholdEx, Param1 )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetRigidBodyLinearMomentum( Param0.l, Param1.f, Param2.f, Param3.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetRigidBodyLinearMomentum, Param0, Param1, Param2, Param3 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetRigidBodyAngularMomentum( Param0.l, Param1.f, Param2.f, Param3.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetRigidBodyAngularMomentum, Param0, Param1, Param2, Param3 )
 EndProcedure
;
; *********************************************************************
Procedure.f dbPhyGetRigidBodyLinearMomentumX( Param1.l )
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyGetRigidBodyLinearMomentumXEx, Param1 )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f dbPhyGetRigidBodyLinearMomentumY( Param1.l )
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyGetRigidBodyLinearMomentumYEx, Param1 )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f dbPhyGetRigidBodyLinearMomentumZ( Param1.l )
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyGetRigidBodyLinearMomentumZEx, Param1 )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f dbPhyGetRigidBodyAngularMomentumX( Param1.l )
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyGetRigidBodyAngularMomentumXEx, Param1 )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f dbPhyGetRigidBodyAngularMomentumY( Param1.l )
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyGetRigidBodyAngularMomentumYEx, Param1 )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f dbPhyGetRigidBodyAngularMomentumZ( Param1.l )
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyGetRigidBodyAngularMomentumZEx, Param1 )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure dbPhyAddRigidBodyForce( Param0.l, Param1.f, Param2.f, Param3.f, Param4.f, Param5.f, Param6.f, Param7.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyAddRigidBodyForce, Param0, Param1, Param2, Param3, Param4, Param5, Param6, Param7 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyAddRigidBodyForceAtLocal( Param0.l, Param1.f, Param2.f, Param3.f, Param4.f, Param5.f, Param6.f, Param7.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyAddRigidBodyForceAtLocal, Param0, Param1, Param2, Param3, Param4, Param5, Param6, Param7 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyAddRigidBodyLocalForce( Param0.l, Param1.f, Param2.f, Param3.f, Param4.f, Param5.f, Param6.f, Param7.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyAddRigidBodyLocalForce, Param0, Param1, Param2, Param3, Param4, Param5, Param6, Param7 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyAddRigidBodyLocalForceAtLocal( Param0.l, Param1.f, Param2.f, Param3.f, Param4.f, Param5.f, Param6.f, Param7.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyAddRigidBodyLocalForceAtLocal, Param0, Param1, Param2, Param3, Param4, Param5, Param6, Param7 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyAddRigidBodyForce1( Param0.l, Param1.f, Param2.f, Param3.f, Param4.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyAddRigidBodyForce1, Param0, Param1, Param2, Param3, Param4 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyAddRigidBodyLocalForce1( Param0.l, Param1.f, Param2.f, Param3.f, Param4.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyAddRigidBodyLocalForce1, Param0, Param1, Param2, Param3, Param4 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyAddRigidBodyTorque( Param0.l, Param1.f, Param2.f, Param3.f, Param4.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyAddRigidBodyTorque, Param0, Param1, Param2, Param3, Param4 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyAddRigidBodyLocalTorque( Param0.l, Param1.f, Param2.f, Param3.f, Param4.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyAddRigidBodyLocalTorque, Param0, Param1, Param2, Param3, Param4 )
 EndProcedure
;
; *********************************************************************
Procedure.f dbPhyGetRigidBodyPointVelocityX( Param1.l, Param2.f, Param3.f, Param4.f )
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyGetRigidBodyPointVelocityXEx, Param1, Param2, Param3, Param4 )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f dbPhyGetRigidBodyPointVelocityY( Param1.l, Param2.f, Param3.f, Param4.f )
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyGetRigidBodyPointVelocityYEx, Param1, Param2, Param3, Param4 )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f dbPhyGetRigidBodyPointVelocityZ( Param1.l, Param2.f, Param3.f, Param4.f )
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyGetRigidBodyPointVelocityZEx, Param1, Param2, Param3, Param4 )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f dbPhyGetRigidBodyLocalPointVelocityX( Param1.l, Param2.f, Param3.f, Param4.f )
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyGetRigidBodyLocalPointVelocityXEx, Param1, Param2, Param3, Param4 )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f dbPhyGetRigidBodyLocalPointVelocityY( Param1.l, Param2.f, Param3.f, Param4.f )
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyGetRigidBodyLocalPointVelocityYEx, Param1, Param2, Param3, Param4 )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f dbPhyGetRigidBodyLocalPointVelocityZ( Param1.l, Param2.f, Param3.f, Param4.f )
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyGetRigidBodyLocalPointVelocityZEx, Param1, Param2, Param3, Param4 )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetRigidBodySleepLinearVelocity( Param0.l, Param1.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetRigidBodySleepLinearVelocity, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetRigidBodySleepAngularVelocity( Param0.l, Param1.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetRigidBodySleepAngularVelocity, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyWakeUpRigidBody( Param0.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyWakeUpRigidBody, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure.l dbPhyGetRigidBodySleeping( Param1.l )
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyGetRigidBodySleeping, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.f dbPhyGetRigidBodySleepLinearVelocity( Param1.l )
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyGetRigidBodySleepLinearVelocityEx, Param1 )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f dbPhyGetRigidBodySleepAngularVelocity( Param1.l )
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyGetRigidBodySleepAngularVelocityEx, Param1 )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetRigidBodyKinematic( Param0.l, Param1.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetRigidBodyKinematic, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetRigidBodyKinematicPosition( Param0.l, Param1.f, Param2.f, Param3.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetRigidBodyKinematicPosition, Param0, Param1, Param2, Param3 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetRigidBodyKinematicRotation( Param0.l, Param1.f, Param2.f, Param3.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetRigidBodyKinematicRotation, Param0, Param1, Param2, Param3 )
 EndProcedure
;
; *********************************************************************
Procedure.l dbPhyRayCastAllShapes( Param1.f, Param2.f, Param3.f, Param4.f, Param5.f, Param6.f )
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyRayCastAllShapes, Param1, Param2, Param3, Param4, Param5, Param6 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l dbPhyGetRayCastHit()
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyGetRayCastHit )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.f dbPhyGetRayCastHitPointX()
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyGetRayCastHitPointXEx )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f dbPhyGetRayCastHitPointY()
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyGetRayCastHitPointYEx )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f dbPhyGetRayCastHitPointZ()
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyGetRayCastHitPointZEx )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f dbPhyGetRayCastHitNormalX()
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyGetRayCastHitNormalXEx )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f dbPhyGetRayCastHitNormalY()
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyGetRayCastHitNormalYEx )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f dbPhyGetRayCastHitNormalZ()
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyGetRayCastHitNormalZEx )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f dbPhyGetRayCastDistance()
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyGetRayCastDistanceEx )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f dbPhyGetRayCastTU()
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyGetRayCastTU )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f dbPhyGetRayCastTV()
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyGetRayCastTV )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.l dbPhyGetRayCastObject()
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyGetRayCastObject )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure dbPhyMakeTriggerBox( Param0.l, Param1.f, Param2.f, Param3.f, Param4.f, Param5.f, Param6.f, Param7.f, Param8.f, Param9.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyMakeTriggerBox, Param0, Param1, Param2, Param3, Param4, Param5, Param6, Param7, Param8, Param9 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyMakeTriggerSphere( Param0.l, Param1.f, Param2.f, Param3.f, Param4.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyMakeTriggerSphere, Param0, Param1, Param2, Param3, Param4 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyDeleteTrigger( Param0.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyDeleteTrigger, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure.l dbPhyTriggerExist( Param1.l )
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyTriggerExist, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l dbPhyTriggerType( Param1.l )
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyTriggerType, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l dbPhyGetTriggerData()
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyGetTriggerData )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l dbPhyGetTriggerObjectA()
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyGetTriggerObjectA )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l dbPhyGetTriggerObjectB()
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyGetTriggerObjectB )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l dbPhyGetTriggerAction()
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyGetTriggerAction )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure dbPhyCreateVehicle( Param0.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyCreateVehicle, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyAddVehicleBody( Param0.l, Param1.f, Param2.f, Param3.f, Param4.f, Param5.f, Param6.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyAddVehicleBody, Param0, Param1, Param2, Param3, Param4, Param5, Param6 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyAddVehicleWheel( Param0.l, Param1.l, Param2.f, Param3.f, Param4.f, Param5.f, Param6.f, Param7.l, Param8.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyAddVehicleWheel, Param0, Param1, Param2, Param3, Param4, Param5, Param6, Param7, Param8 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyBuildVehicle( Param0.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyBuildVehicle, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetVehicleMass( Param0.l, Param1.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetVehicleMass, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetVehicleAuto( Param0.l, Param1.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetVehicleAuto, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetVehicleMaxMotor( Param0.l, Param1.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetVehicleMaxMotor, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetVehicleMotorForce( Param0.l, Param1.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetVehicleMotorForce, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetVehicleWheelPower( Param0.l, Param1.l, Param2.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetVehicleWheelPower, Param0, Param1, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetVehicleSteeringDelta( Param0.l, Param1.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetVehicleSteeringDelta, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetVehicleMaxSteeringAngle( Param0.l, Param1.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetVehicleMaxSteeringAngle, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetVehicleWheelRotation( Param0.l, Param1.l, Param2.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetVehicleWheelRotation, Param0, Param1, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetVehicleSuspensionSpring( Param0.l, Param1.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetVehicleSuspensionSpring, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetVehicleSuspensionDamping( Param0.l, Param1.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetVehicleSuspensionDamping, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetVehicleSuspensionBias( Param0.l, Param1.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetVehicleSuspensionBias, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetVehicleRestitution( Param0.l, Param1.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetVehicleRestitution, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetVehicleStaticFriction( Param0.l, Param1.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetVehicleStaticFriction, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetVehicleStaticFrictionV( Param0.l, Param1.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetVehicleStaticFrictionV, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetVehicleDynamicFriction( Param0.l, Param1.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetVehicleDynamicFriction, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetVehicleDynamicFrictionV( Param0.l, Param1.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetVehicleDynamicFrictionV, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetVehicleWheelMultiplier( Param0.l, Param1.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetVehicleWheelMultiplier, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetVehicleSteeringAngle( Param0.l, Param1.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetVehicleSteeringAngle, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetVehicleSteeringValue( Param0.l, Param1.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetVehicleSteeringValue, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure.f dbPhyGetVehicleSteeringAngle( Param1.l )
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyGetVehicleSteeringAngleEx, Param1 )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f dbPhyGetVehicleSteeringDelta( Param1.l )
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyGetVehicleSteeringDeltaEx, Param1 )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f dbPhyGetVehicleMotorForce( Param1.l )
  Retour.l = CallCFunctionFast( *DB_DarkPhysics\dbPhyGetVehicleMotorForceEx, Param1 )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure dbPhyMakeRevoluteJoint( Param0.l, Param1.l, Param2.l, Param3.f, Param4.f, Param5.f, Param6.f, Param7.f, Param8.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyMakeRevoluteJoint, Param0, Param1, Param2, Param3, Param4, Param5, Param6, Param7, Param8 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyMakeRevoluteJoint1( Param0.l, Param1.l, Param2.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyMakeRevoluteJoint1, Param0, Param1, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyMakeRigidBodyStaticConv2( Param0.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyMakeRigidBodyStaticConvex2, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyMakeRigidBodyStaticConvexes2( Param0.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyMakeRigidBodyStaticConvexes2, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyMakeRigidBodyStaticConv3( Param0.l, Param1.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyMakeRigidBodyStaticConvex3, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyMakeRigidBodyStaticConvexes3( Param0.l, Param1.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyMakeRigidBodyStaticConvexes3, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyMakeRigidBodyDynamicConv2( Param0.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyMakeRigidBodyDynamicConvex2, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyMakeRigidBodyDynamicConvexes2( Param0.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyMakeRigidBodyDynamicConvexes2, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyMakeRigidBodyDynamicConv3( Param0.l, Param1.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyMakeRigidBodyDynamicConvex3, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyMakeRigidBodyDynamicConvexes3( Param0.l, Param1.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyMakeRigidBodyDynamicConvexes3, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetJointBreakLimits( Param0.l, Param1.f, Param2.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetJointBreakLimits, Param0, Param1, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetEmitterCollision( Param0.l, Param1.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetEmitterCollision, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetEmitterCollisionScale( Param0.l, Param1.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetEmitterCollisionScale, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyUpdate1( Param0.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyUpdate1, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetGroundPlane( Param0.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetGroundPlane, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetRigidBodyGravity( Param0.l, Param1.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetRigidBodyGravity, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetRigidBodyGroup( Param0.l, Param1.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetRigidBodyGroup, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySleepRigidBody( Param0.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySleepRigidBody, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetGroupCollision( Param0.l, Param1.l, Param2.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetGroupCollision, Param0, Param1, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetEmitterRate( Param0.l, Param1.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetEmitterRate, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetEmitterUpdate( Param0.l, Param1.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetEmitterUpdate, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetFluidScreenSpacing( Param0.l, Param1.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetFluidScreenSpacing, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetFluidTriangleWinding( Param0.l, Param1.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetFluidTriangleWinding, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetFluidThreshold( Param0.l, Param1.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetFluidThreshold, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetFluidParticleRadius( Param0.l, Param1.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetFluidParticleRadius, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetFluidDepthSmoothing( Param0.l, Param1.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetFluidDepthSmoothing, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetFluidSilhouetteSmoothing( Param0.l, Param1.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetFluidSilhouetteSmoothing, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyMakeRigidBodyStaticTerrain( Param0.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyMakeRigidBodyStaticTerrain, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyMakeRigidBodyStaticTerrain1( Param0.l, Param1.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyMakeRigidBodyStaticTerrain1, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyMakeRigidBodyStaticTerrain2( Param0.l, Param1.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param1PTR.l, Len( Param1 ) + 1 ) ; CreateString
  PokeS( Param1PTR, Param1 )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyMakeRigidBodyStaticTerrain2, Param0, Param1PTR )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyMakeRigidBodyStaticTerrain3( Param0.l, Param1.s, Param2.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param1PTR.l, Len( Param1 ) + 1 ) ; CreateString
  PokeS( Param1PTR, Param1 )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyMakeRigidBodyStaticTerrain3, Param0, Param1PTR, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyLoadRigidBodyStaticTerrain( Param0.l, Param1.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param1PTR.l, Len( Param1 ) + 1 ) ; CreateString
  PokeS( Param1PTR, Param1 )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyLoadRigidBodyStaticTerrain, Param0, Param1PTR )
 EndProcedure
;
; *********************************************************************
Procedure dbPhyLoadRigidBodyStaticTerrain1( Param0.l, Param1.s, Param2.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param1PTR.l, Len( Param1 ) + 1 ) ; CreateString
  PokeS( Param1PTR, Param1 )
  CallCFunctionFast( *DB_DarkPhysics\dbPhyLoadRigidBodyStaticTerrain1, Param0, Param1PTR, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetCharacterControllerDisplacement( Param0.l, Param1.f, Param2.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetCharacterControllerDisplacement, Param0, Param1, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetCharacterControllerDisplacement1( Param0.l, Param1.f, Param2.f, Param3.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetCharacterControllerDisplacement1, Param0, Param1, Param2, Param3 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetCharacterControllerDisplacement2( Param0.l, Param1.l )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetCharacterControllerDisplacement2, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetCharacterControllerSharpness( Param0.l, Param1.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetCharacterControllerSharpness, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetCharacterControllerExtents( Param0.l, Param1.f, Param2.f, Param3.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetCharacterControllerExtents, Param0, Param1, Param2, Param3 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetCharacterControllerExtents1( Param0.l, Param1.f, Param2.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetCharacterControllerExtents1, Param0, Param1, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetCharacterControllerMinDistance( Param0.l, Param1.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetCharacterControllerMinDistance, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetVehicleBrakeTorque1( Param0.l, Param1.l, Param2.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetVehicleBrakeTorque1, Param0, Param1, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetVehicleMotorTorque( Param0.l, Param1.l, Param2.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetVehicleMotorTorque, Param0, Param1, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetVehicleSteeringAngle1( Param0.l, Param1.l, Param2.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetVehicleSteeringAngle1, Param0, Param1, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetVehicleWheelRadius( Param0.l, Param1.l, Param2.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetVehicleWheelRadius, Param0, Param1, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetVehicleSuspensionTravel( Param0.l, Param1.l, Param2.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetVehicleSuspensionTravel, Param0, Param1, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetVehicleLongitudalTireForceFunction( Param0.l, Param1.l, Param2.f, Param3.f, Param4.f, Param5.f, Param6.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetVehicleLongitudalTireForceFunction, Param0, Param1, Param2, Param3, Param4, Param5, Param6 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetVehicleLateralTireForceFunction( Param0.l, Param1.l, Param2.f, Param3.f, Param4.f, Param5.f, Param6.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetVehicleLateralTireForceFunction, Param0, Param1, Param2, Param3, Param4, Param5, Param6 )
 EndProcedure
;
; *********************************************************************
Procedure dbPhySetVehicleWheelFlags( Param0.l, Param1.l, Param2.f )
  CallCFunctionFast( *DB_DarkPhysics\dbPhySetVehicleWheelFlags, Param0, Param1, Param2 )
 EndProcedure
;

; IDE Options = PureBasic v4.02 (Windows - x86)
; CursorPosition = 1717
; FirstLine = 1706
; Folding = --------------------------------------------------------------------------------------
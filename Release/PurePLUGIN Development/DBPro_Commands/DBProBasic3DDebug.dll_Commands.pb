; DarkBasic Professional RC2PBIncludes Ver 1. File - COMMANDS WRAPPING
; By Frederic Cordier - 07.02.13
Global TextureQuality.l
;
; *********************************************************************
Procedure DBLoadObject( Filename.s, ObjectNumber.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FilenamePTR.l, Len( Filename ) + 1 ) ; CreateString
  PokeS( FilenamePTR, Filename )
  If TextureQuality = 0
    CallCFunctionFast( *DB_Basic3D\Load, FilenamePTR, ObjectNumber )
   Else
    CallCFunctionFast( *DB_Basic3D\Load2, FilenamePTR, ObjectNumber, 1, TextureQuality )
   EndIf
 EndProcedure
;
; *********************************************************************
Procedure DBRotateObject( ObjectNumber.l, XAngle.f, YAngle.f, ZAngle.f )
  CallCFunctionFast( *DB_Basic3D\Rotate, ObjectNumber, XAngle, YAngle, ZAngle )
 EndProcedure
;
; *********************************************************************
Procedure DBLoopObject( ObjectNumber.l )
  CallCFunctionFast( *DB_Basic3D\Loop, ObjectNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBAddLimb( ObjectNumber.l, LimbNumber.l, MeshNumber.l )
  CallCFunctionFast( *DB_Basic3D\AddLimb, ObjectNumber, LimbNumber, MeshNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBAppendObject( Filename.s, ObjectNumber.l, StartFrame.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FilenamePTR.l, Len( Filename ) + 1 ) ; CreateString
  PokeS( FilenamePTR, Filename )
  CallCFunctionFast( *DB_Basic3D\Append, FilenamePTR, ObjectNumber, StartFrame )
 EndProcedure
;
; *********************************************************************
Procedure DBAppendAnimation( ObjectNumber.l, Filename.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FilenamePTR.l, Len( Filename ) + 1 ) ; CreateString
  PokeS( FilenamePTR, Filename )
  CallCFunctionFast( *DB_Basic3D\AppendAnimation, ObjectNumber, FilenamePTR )
 EndProcedure
;
; *********************************************************************
Procedure DBLoadEffect( Filename.s, EffectNumber.l, TextureFlag.l, DoNotGenerateExtraData.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FilenamePTR.l, Len( Filename ) + 1 ) ; CreateString
  PokeS( FilenamePTR, Filename )
  CallCFunctionFast( *DB_Basic3D\LoadEffectEx, FilenamePTR, EffectNumber, TextureFlag, DoNotGenerateExtraData )
 EndProcedure
;
; *********************************************************************
Procedure DBChangeMesh( ObjectNumber.l, LimbNumber.l, MeshNumber.l )
  CallCFunctionFast( *DB_Basic3D\ChangeMesh, ObjectNumber, LimbNumber, MeshNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBClearAllKeyFrames( ObjectNumber.l )
  CallCFunctionFast( *DB_Basic3D\ClearAllKeyFrames, ObjectNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBClearKeyFrame( ObjectNumber.l, Keyframe.l )
  CallCFunctionFast( *DB_Basic3D\ClearKeyFrame, ObjectNumber, Keyframe )
 EndProcedure
;
; *********************************************************************
Procedure DBCalculateObjectBounds( Param0.l )
  CallCFunctionFast( *DB_Basic3D\CalculateObjectBounds, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure DBColorObject( ObjectNumber.l, ColorValue.l )
  CallCFunctionFast( *DB_Basic3D\Color, ObjectNumber, ColorValue )
 EndProcedure
;
; *********************************************************************
Procedure DBColorLimb( ObjectNumber.l, LimbNumber.l, ColorValue.l )
  CallCFunctionFast( *DB_Basic3D\ColorLimb, ObjectNumber, LimbNumber, ColorValue )
 EndProcedure
;
; *********************************************************************
Procedure DBDeleteCollisionBox( ObjectNumber.l )
  CallCFunctionFast( *DB_Basic3D\DeleteCollisionBox, ObjectNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBDeleteObject( ObjectNumber.l )
  CallCFunctionFast( *DB_Basic3D\DeleteEx, ObjectNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBDeleteMesh( MeshNumber.l )
  CallCFunctionFast( *DB_Basic3D\DeleteMesh, MeshNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSetMask( ObjectNumber.l, CameraMaskBits.l )
  CallCFunctionFast( *DB_Basic3D\SetMask, ObjectNumber, CameraMaskBits )
 EndProcedure
;
; *********************************************************************
Procedure DBDisableObjectZDepth( ObjectNumber.l )
  CallCFunctionFast( *DB_Basic3D\DisableZDepth, ObjectNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBEnableObjectZDepth( ObjectNumber.l )
  CallCFunctionFast( *DB_Basic3D\EnableZDepth, ObjectNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBFadeObject( ObjectNumber.l, FadeValue.f )
  CallCFunctionFast( *DB_Basic3D\Fade, ObjectNumber, FadeValue )
 EndProcedure
;
; *********************************************************************
Procedure DBFixObjectPivot( ObjectNumber.l )
  CallCFunctionFast( *DB_Basic3D\FixPivot, ObjectNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSetObjectToObjectOrientation( ObjectNumber.l, SecondObject.l, Flag.l )
  CallCFunctionFast( *DB_Basic3D\SetToObjectOrientation, ObjectNumber, SecondObject, Flag )
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetAlphaBlending()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetAlphaBlending )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetNumberOfFrames( ObjectNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetNumberOfFrames, ObjectNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetBlending()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetBlending )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetObjectCollision( ObjectANumber.l, ObjectBNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetCollision, ObjectANumber, ObjectBNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetObjectCollisionX()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetCollisionX )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetObjectCollisionY()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetCollisionY )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetObjectCollisionZ()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetCollisionZ )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetObjectExist( ObjectNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetExist, ObjectNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetFog()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetFog )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetObjectFrame( ObjectNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetFrame, ObjectNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetObjectHit( ObjectANumber.l, ObjectBNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetHit, ObjectANumber, ObjectBNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetInScreen( ObjectNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetInScreen, ObjectNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetInterpolation( ObjectNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetInterpolation, ObjectNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetLimbAngl( ObjectNumber.l, LimbNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetLimbAngleX, ObjectNumber, LimbNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetLimbAngleY( ObjectNumber.l, LimbNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetLimbAngleY, ObjectNumber, LimbNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetLimbAngleZ( ObjectNumber.l, LimbNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetLimbAngleZ, ObjectNumber, LimbNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetLimbExist( ObjectNumber.l, LimbNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetLimbExist, ObjectNumber, LimbNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.s DBGetLimbName( ObjectNumber.l, LimbNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetLimbName, ExtraPARAM.l, ObjectNumber, LimbNumber )
  RetourSTR.s = PeekS( Retour )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetLimbOffsetX( ObjectNumber.l, LimbNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetLimbOffsetX, ObjectNumber, LimbNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetLimbOffsetY( ObjectNumber.l, LimbNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetLimbOffsetY, ObjectNumber, LimbNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetLimbOffsetZ( ObjectNumber.l, LimbNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetLimbOffsetZ, ObjectNumber, LimbNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetObjectLimbScale( ObjectNumber.l, LimbNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetLimbScaleX, ObjectNumber, LimbNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetLimbScaleY( ObjectNumber.l, LimbNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetLimbScaleY, ObjectNumber, LimbNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetLimbScaleZ( ObjectNumber.l, LimbNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetLimbScaleZ, ObjectNumber, LimbNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.s DBGetLimbTextureName( ObjectNumber.l, LimbNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetLimbTextureName, ExtraPARAM.l, ObjectNumber, LimbNumber )
  RetourSTR.s = PeekS( Retour )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetLimbTexture( ObjectNumber.l, LimbNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetLimbTexture, ObjectNumber, LimbNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetLimbVisible( ObjectNumber.l, LimbNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetLimbVisible, ObjectNumber, LimbNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetObjectLimbXDirection( ObjectNumber.l, LimbNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetLimbXDirection, ObjectNumber, LimbNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetObjectLimbYDirection( ObjectNumber.l, LimbNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetLimbYDirection, ObjectNumber, LimbNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetObjectLimbZDirection( ObjectNumber.l, LimbNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetLimbZDirection, ObjectNumber, LimbNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetObjectXPosition( ObjectNumber.l, LimbNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetLimbXPosition, ObjectNumber, LimbNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetObjectYPosition( ObjectNumber.l, LimbNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetLimbYPosition, ObjectNumber, LimbNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetObjectZPosition( ObjectNumber.l, LimbNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetLimbZPosition, ObjectNumber, LimbNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetLooping( ObjectNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetLooping, ObjectNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetMeshExist( MeshNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetMeshExist, MeshNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetPlaying( ObjectNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetPlaying, ObjectNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetScreenX( ObjectNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetScreenX, ObjectNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetScreenY( ObjectNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetScreenY, ObjectNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetObjectSize( ObjectNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetSize, ObjectNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetSpeed( ObjectNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetSpeed, ObjectNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetStaticLineOfSightX()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetStaticLineOfSightX )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetStaticLineOfSightY()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetStaticLineOfSightY )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetStaticLineOfSightZ()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetStaticLineOfSightZ )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetVisible( ObjectNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetVisible, ObjectNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetObjectXPosition1( ObjectNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetXPositionEx, ObjectNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetObjectYPosition1( ObjectNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetYPositionEx, ObjectNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetObjectZPosition1( ObjectNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetZPositionEx, ObjectNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetObjectXSize( ObjectNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetXSize, ObjectNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetObjectYSize( ObjectNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetYSize, ObjectNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetObjectZSize( ObjectNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetZSize, ObjectNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetObjectXRotation( ObjectNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetXRotationEx, ObjectNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetObjectYRotation( ObjectNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetYRotationEx, ObjectNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetObjectZRotation( ObjectNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetZRotationEx, ObjectNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure DBGhostObjectOff( ObjectNumber.l )
  CallCFunctionFast( *DB_Basic3D\GhostOff, ObjectNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBGhostObjectOn( ObjectNumber.l )
  CallCFunctionFast( *DB_Basic3D\GhostOn, ObjectNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBGhostObjectOn1( ObjectNumber.l, GhostEffect.l )
  CallCFunctionFast( *DB_Basic3D\GhostOn1, ObjectNumber, GhostEffect )
 EndProcedure
;
; *********************************************************************
Procedure DBGlueToLimb( ObjectNumber.l, SecondObject.l, LimbNumber.l )
  CallCFunctionFast( *DB_Basic3D\GlueToLimb, ObjectNumber, SecondObject, LimbNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBHideObject( ObjectNumber.l )
  CallCFunctionFast( *DB_Basic3D\Hide, ObjectNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBHideObjectLimb( ObjectNumber.l, LimbNumber.l )
  CallCFunctionFast( *DB_Basic3D\HideLimb, ObjectNumber, LimbNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBLinkLimb( ObjectNumber.l, LimbParent.l, LimbChild.l )
  CallCFunctionFast( *DB_Basic3D\LinkLimb, ObjectNumber, LimbParent, LimbChild )
 EndProcedure
;
; *********************************************************************
Procedure DBLoadMesh( Filename.s, MeshNumber.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FilenamePTR.l, Len( Filename ) + 1 ) ; CreateString
  PokeS( FilenamePTR, Filename )
  CallCFunctionFast( *DB_Basic3D\LoadMesh, FilenamePTR, MeshNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBLockObjectOff( ObjectNumber.l )
  CallCFunctionFast( *DB_Basic3D\LockOff, ObjectNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBLockObjectOn( ObjectNumber.l )
  CallCFunctionFast( *DB_Basic3D\LockOn, ObjectNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBLoopObject1( ObjectNumber.l, StartFrame.l )
  CallCFunctionFast( *DB_Basic3D\Loop1, ObjectNumber, StartFrame )
 EndProcedure
;
; *********************************************************************
Procedure DBLoopObject2( ObjectNumber.l, StartFrame.l, EndFrame.l )
  CallCFunctionFast( *DB_Basic3D\Loop2, ObjectNumber, StartFrame, EndFrame )
 EndProcedure
;
; *********************************************************************
Procedure DBMakeObjectBox( ObjectNumber.l, Width.f, Height.f, Depth.f )
  CallCFunctionFast( *DB_Basic3D\MakeBox, ObjectNumber, Width, Height, Depth )
 EndProcedure
;
; *********************************************************************
Procedure DBMakeObjectCollisionBox( ObjectNumber.l, X1.f, Y1.f, Z1.f, X2.f, Y2.f, Z2.f, CollisionFlag.l )
  CallCFunctionFast( *DB_Basic3D\MakeCollisionBox, ObjectNumber, X1, Y1, Z1, X2, Y2, Z2, CollisionFlag )
 EndProcedure
;
; *********************************************************************
Procedure DBMakeObjectCone( ObjectNumber.l, Size.f )
  CallCFunctionFast( *DB_Basic3D\MakeCone, ObjectNumber, Size )
 EndProcedure
;
; *********************************************************************
Procedure DBMakeObjectCube( ObjectNumber.l, Size.f )
  CallCFunctionFast( *DB_Basic3D\MakeCube, ObjectNumber, Size )
 EndProcedure
;
; *********************************************************************
Procedure DBMakeObjectCylinder( ObjectNumber.l, Size.f )
  CallCFunctionFast( *DB_Basic3D\MakeCylinder, ObjectNumber, Size )
 EndProcedure
;
; *********************************************************************
Procedure DBMakeMeshFromObject( MeshNumber.l, ObjectNumber.l )
  CallCFunctionFast( *DB_Basic3D\MakeMeshFromObject, MeshNumber, ObjectNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBMakeObjectObjectFromLimb( ObjectNumber.l, SecondObject.l, LimbNumber.l )
  CallCFunctionFast( *DB_Basic3D\MakeObjectFromLimb, ObjectNumber, SecondObject, LimbNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBMakeObjectPlane( ObjectNumber.l, Width.f, Height.f )
  CallCFunctionFast( *DB_Basic3D\MakePlane, ObjectNumber, Width, Height )
 EndProcedure
;
; *********************************************************************
Procedure DBMakeObjectSphere( ObjectNumber.l, Size.f )
  CallCFunctionFast( *DB_Basic3D\MakeSphere, ObjectNumber, Size )
 EndProcedure
;
; *********************************************************************
Procedure DBMakeObjectTriangle( ObjectNumber.l, X1.f, Y1.f, Z1.f, X2.f, Y2.f, Z2.f, X3.f, Y3.f, Z3.f )
  CallCFunctionFast( *DB_Basic3D\MakeTriangle, ObjectNumber, X1, Y1, Z1, X2, Y2, Z2, X3, Y3, Z3 )
 EndProcedure
;
; *********************************************************************
Procedure DBMoveObject( ObjectNumber.l, Speed.f )
  CallCFunctionFast( *DB_Basic3D\Move, ObjectNumber, Speed )
 EndProcedure
;
; *********************************************************************
Procedure DBOffsetLimb( ObjectNumber.l, LimbNumber.l, X.f, Y.f, Z.f )
  CallCFunctionFast( *DB_Basic3D\OffsetLimb, ObjectNumber, LimbNumber, X, Y, Z )
 EndProcedure
;
; *********************************************************************
Procedure DBPerformCheckListForLimbs( ObjectNumber.l )
  CallCFunctionFast( *DB_Basic3D\PerformCheckListForLimbs, ObjectNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBPitchObjectDown( ObjectNumber.l, Value.f )
  CallCFunctionFast( *DB_Basic3D\PitchDown, ObjectNumber, Value )
 EndProcedure
;
; *********************************************************************
Procedure DBPitchObjectUp( ObjectNumber.l, Value.f )
  CallCFunctionFast( *DB_Basic3D\PitchUp, ObjectNumber, Value )
 EndProcedure
;
; *********************************************************************
Procedure DBPlayObject( ObjectNumber.l )
  CallCFunctionFast( *DB_Basic3D\Play, ObjectNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBPlayObject1( ObjectNumber.l, StartFrame.l )
  CallCFunctionFast( *DB_Basic3D\Play1, ObjectNumber, StartFrame )
 EndProcedure
;
; *********************************************************************
Procedure DBPlayObject2( ObjectNumber.l, StartFrame.l, EndFrame.l )
  CallCFunctionFast( *DB_Basic3D\Play2, ObjectNumber, StartFrame, EndFrame )
 EndProcedure
;
; *********************************************************************
Procedure DBPointObject( ObjectNumber.l, X.f, Y.f, Z.f )
  CallCFunctionFast( *DB_Basic3D\Point, ObjectNumber, X, Y, Z )
 EndProcedure
;
; *********************************************************************
Procedure DBPositionObject( ObjectNumber.l, X.f, Y.f, Z.f )
  CallCFunctionFast( *DB_Basic3D\Position, ObjectNumber, X, Y, Z )
 EndProcedure
;
; *********************************************************************
Procedure DBRollObjectLeft( ObjectNumber.l, Value.f )
  CallCFunctionFast( *DB_Basic3D\RollLeft, ObjectNumber, Value )
 EndProcedure
;
; *********************************************************************
Procedure DBRollObjectRight( ObjectNumber.l, Value.f )
  CallCFunctionFast( *DB_Basic3D\RollRight, ObjectNumber, Value )
 EndProcedure
;
; *********************************************************************
Procedure DBMakeObjectObjectPlane1( ObjectNumber.l, Width.f, Height.f, Param3.l )
  CallCFunctionFast( *DB_Basic3D\MakePlane1, ObjectNumber, Width, Height, Param3 )
 EndProcedure
;
; *********************************************************************
Procedure DBRotateLimb( ObjectNumber.l, LimbNumber.l, XAngle.f, YAngle.f, ZAngle.f )
  CallCFunctionFast( *DB_Basic3D\RotateLimb, ObjectNumber, LimbNumber, XAngle, YAngle, ZAngle )
 EndProcedure
;
; *********************************************************************
Procedure DBSaveAnimation( ObjectNumber.l, Filename.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FilenamePTR.l, Len( Filename ) + 1 ) ; CreateString
  PokeS( FilenamePTR, Filename )
  CallCFunctionFast( *DB_Basic3D\SaveAnimation, ObjectNumber, FilenamePTR )
 EndProcedure
;
; *********************************************************************
Procedure DBScaleObject( ObjectNumber.l, XSize.f, YSize.f, ZSize.f )
  CallCFunctionFast( *DB_Basic3D\Scale, ObjectNumber, XSize, YSize, ZSize )
 EndProcedure
;
; *********************************************************************
Procedure DBScaleLimb( ObjectNumber.l, LimbNumber.l, XSize.f, YSize.f, ZSize.f )
  CallCFunctionFast( *DB_Basic3D\ScaleLimb, ObjectNumber, LimbNumber, XSize, YSize, ZSize )
 EndProcedure
;
; *********************************************************************
Procedure DBScaleLimbTexture( ObjectNumber.l, LimbNumber.l, UScale.f, VScale.f )
  CallCFunctionFast( *DB_Basic3D\ScaleLimbTexture, ObjectNumber, LimbNumber, UScale, VScale )
 EndProcedure
;
; *********************************************************************
Procedure DBScaleTexture( ObjectNumber.l, UScale.f, VScale.f )
  CallCFunctionFast( *DB_Basic3D\ScaleTexture, ObjectNumber, UScale, VScale )
 EndProcedure
;
; *********************************************************************
Procedure DBScrollLimbTexture( ObjectNumber.l, LimbNumber.l, X.f, Y.f )
  CallCFunctionFast( *DB_Basic3D\ScrollLimbTexture, ObjectNumber, LimbNumber, X, Y )
 EndProcedure
;
; *********************************************************************
Procedure DBScrollTexture( ObjectNumber.l, X.f, Y.f )
  CallCFunctionFast( *DB_Basic3D\ScrollTexture, ObjectNumber, X, Y )
 EndProcedure
;
; *********************************************************************
Procedure DBSetObject( ObjectNumber.l, Wire.l, Transparent.l, Cull.l )
  CallCFunctionFast( *DB_Basic3D\Set, ObjectNumber, Wire, Transparent, Cull )
 EndProcedure
;
; *********************************************************************
Procedure DBSetObject1( ObjectNumber.l, Wire.l, Transparent.l, Cull.l, Filter.l )
  CallCFunctionFast( *DB_Basic3D\Set1, ObjectNumber, Wire, Transparent, Cull, Filter )
 EndProcedure
;
; *********************************************************************
Procedure DBSetObject2( ObjectNumber.l, Wire.l, Transparent.l, Cull.l, Filter.l, Light.l )
  CallCFunctionFast( *DB_Basic3D\Set2, ObjectNumber, Wire, Transparent, Cull, Filter, Light )
 EndProcedure
;
; *********************************************************************
Procedure DBSetObject3( ObjectNumber.l, Wire.l, Transparent.l, Cull.l, Filter.l, Light.l, Fog.l )
  CallCFunctionFast( *DB_Basic3D\Set3, ObjectNumber, Wire, Transparent, Cull, Filter, Light, Fog )
 EndProcedure
;
; *********************************************************************
Procedure DBSetObject4( ObjectNumber.l, Wire.l, Transparent.l, Cull.l, Filter.l, Light.l, Fog.l, Ambient.l )
  CallCFunctionFast( *DB_Basic3D\Set4, ObjectNumber, Wire, Transparent, Cull, Filter, Light, Fog, Ambient )
 EndProcedure
;
; *********************************************************************
Procedure DBSetCollisionObjectOff( ObjectNumber.l )
  CallCFunctionFast( *DB_Basic3D\SetCollisionOff, ObjectNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSetCollisionObjectOn( ObjectNumber.l )
  CallCFunctionFast( *DB_Basic3D\SetCollisionOn, ObjectNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSetCollisionObjectToBoxes( ObjectNumber.l )
  CallCFunctionFast( *DB_Basic3D\SetCollisionToBoxes, ObjectNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSetCollisionObjectToPolygons( ObjectNumber.l )
  CallCFunctionFast( *DB_Basic3D\SetCollisionToPolygons, ObjectNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSetCollisionObjectToSpheres( ObjectNumber.l )
  CallCFunctionFast( *DB_Basic3D\SetCollisionToSpheres, ObjectNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSetObjectFrame( ObjectNumber.l, Frame.f )
  CallCFunctionFast( *DB_Basic3D\SetFrameEx, ObjectNumber, Frame )
 EndProcedure
;
; *********************************************************************
Procedure DBSetGlobalCollisionOff()
  CallCFunctionFast( *DB_Basic3D\SetGlobalCollisionOff )
 EndProcedure
;
; *********************************************************************
Procedure DBSetGlobalCollisionOn()
  CallCFunctionFast( *DB_Basic3D\SetGlobalCollisionOn )
 EndProcedure
;
; *********************************************************************
Procedure DBSetInterpolation( ObjectNumber.l, Interpolation.l )
  CallCFunctionFast( *DB_Basic3D\SetInterpolation, ObjectNumber, Interpolation )
 EndProcedure
;
; *********************************************************************
Procedure DBSetKeyFrame( ObjectNumber.l, Keyframe.l )
  CallCFunctionFast( *DB_Basic3D\SetKeyFrame, ObjectNumber, Keyframe )
 EndProcedure
;
; *********************************************************************
Procedure DBSetMipmapMode( MipmapMode.l )
  CallCFunctionFast( *DB_Basic3D\SetMipmapMode, MipmapMode )
 EndProcedure
;
; *********************************************************************
Procedure DBSetObjectRotationXYZ( ObjectNumber.l )
  CallCFunctionFast( *DB_Basic3D\SetRotationXYZ, ObjectNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSetObjectRotationZYX( ObjectNumber.l )
  CallCFunctionFast( *DB_Basic3D\SetRotationZYX, ObjectNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSetObjectSpeed( ObjectNumber.l, Speed.l )
  CallCFunctionFast( *DB_Basic3D\SetSpeed, ObjectNumber, Speed )
 EndProcedure
;
; *********************************************************************
Procedure DBSetObjectTexture( ObjectNumber.l, ImageNumber.l )
  CallCFunctionFast( *DB_Basic3D\SetTexture, ObjectNumber, ImageNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSetTextureMode( ObjectNumber.l, TexturingMode.l, MipmapFlag.l )
  CallCFunctionFast( *DB_Basic3D\SetTextureMode, ObjectNumber, TexturingMode, MipmapFlag )
 EndProcedure
;
; *********************************************************************
Procedure DBSetToCameraOrientation( ObjectNumber.l )
  CallCFunctionFast( *DB_Basic3D\SetToCameraOrientation, ObjectNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSetObjectToObjectOrientation1( ObjectNumber.l, SecondObject.l )
  CallCFunctionFast( *DB_Basic3D\SetToObjectOrientation1, ObjectNumber, SecondObject )
 EndProcedure
;
; *********************************************************************
Procedure DBShowObject( ObjectNumber.l )
  CallCFunctionFast( *DB_Basic3D\Show, ObjectNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBShowObjectLimb( ObjectNumber.l, LimbNumber.l )
  CallCFunctionFast( *DB_Basic3D\ShowLimb, ObjectNumber, LimbNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBStopObject( ObjectNumber.l )
  CallCFunctionFast( *DB_Basic3D\Stop, ObjectNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBTextureLimb( ObjectNumber.l, LimbNumber.l, ImageNumber.l )
  CallCFunctionFast( *DB_Basic3D\TextureLimb, ObjectNumber, LimbNumber, ImageNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBTurnObjectLeft( ObjectNumber.l, Value.f )
  CallCFunctionFast( *DB_Basic3D\TurnLeft, ObjectNumber, Value )
 EndProcedure
;
; *********************************************************************
Procedure DBTurnObjectRight( ObjectNumber.l, Value.f )
  CallCFunctionFast( *DB_Basic3D\TurnRight, ObjectNumber, Value )
 EndProcedure
;
; *********************************************************************
Procedure DBUnGlue( ObjectNumber.l )
  CallCFunctionFast( *DB_Basic3D\UnGlue, ObjectNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBXRotate( ObjectNumber.l, XAngle.f )
  CallCFunctionFast( *DB_Basic3D\XRotate, ObjectNumber, XAngle )
 EndProcedure
;
; *********************************************************************
Procedure DBYRotate( ObjectNumber.l, YAngle.f )
  CallCFunctionFast( *DB_Basic3D\YRotate, ObjectNumber, YAngle )
 EndProcedure
;
; *********************************************************************
Procedure DBZRotate( ObjectNumber.l, ZAngle.f )
  CallCFunctionFast( *DB_Basic3D\ZRotate, ObjectNumber, ZAngle )
 EndProcedure
;
; *********************************************************************
Procedure DBMakeObject( ObjectNumber.l, MeshIndex.l, ImageNumber.l )
  CallCFunctionFast( *DB_Basic3D\MakeObject, ObjectNumber, MeshIndex, ImageNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSetBumpMap( ObjectNumber.l, ImageNumber.l )
  CallCFunctionFast( *DB_Basic3D\SetBumpMap, ObjectNumber, ImageNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSetCartoonShadingOn( ObjectNumber.l, ShadeImage.l, EdgeImage.l )
  CallCFunctionFast( *DB_Basic3D\SetCartoonShadingOn, ObjectNumber, ShadeImage, EdgeImage )
 EndProcedure
;
; *********************************************************************
Procedure DBSetSphereMap( ObjectNumber.l, ImageNumber.l )
  CallCFunctionFast( *DB_Basic3D\SetSphereMap, ObjectNumber, ImageNumber )
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetObjectObjectSize1( ObjectNumber.l, ActualSize.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetSizeEx, ObjectNumber, ActualSize )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetLimbLink( ObjectNumber.l, LimbNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetLimbLink, ObjectNumber, LimbNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetObjectCollisionRadius( ObjectNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetObjectCollisionRadius, ObjectNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetObjectCollisionCenterX( ObjectNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetObjectCollisionCenterX, ObjectNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetObjectCollisionCenterY( ObjectNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetObjectCollisionCenterY, ObjectNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetObjectCollisionCenterZ( ObjectNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetObjectCollisionCenterZ, ObjectNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure DBConvert3DStoX( _3DSFilename.s, XFilename.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @_3DSFilenamePTR.l, Len( _3DSFilename ) + 1 ) ; CreateString
  PokeS( _3DSFilenamePTR, _3DSFilename )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @XFilenamePTR.l, Len( XFilename ) + 1 ) ; CreateString
  PokeS( XFilenamePTR, XFilename )
  CallCFunctionFast( *DB_Basic3D\Convert3DStoX, _3DSFilenamePTR, XFilenamePTR )
 EndProcedure
;
; *********************************************************************
Procedure DBFlushVideoMemory()
  CallCFunctionFast( *DB_Basic3D\FlushVideoMemory )
 EndProcedure
;
; *********************************************************************
Procedure DBDisableObjectTNL()
  CallCFunctionFast( *DB_Basic3D\DisableTNL )
 EndProcedure
;
; *********************************************************************
Procedure DBEnableObjectTNL()
  CallCFunctionFast( *DB_Basic3D\EnableTNL )
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetStatistic( StatisticCode.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetStatistic, StatisticCode )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetDrawPrimTLVert()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetDrawPrimTLVertex )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DBCloneObject( ObjectNumber.l, SourceObject.l )
  CallCFunctionFast( *DB_Basic3D\Clone, ObjectNumber, SourceObject )
 EndProcedure
;
; *********************************************************************
Procedure DBCreateVertexShaderFromFile( VertexShaderNumber.l, ShaderFilename.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @ShaderFilenamePTR.l, Len( ShaderFilename ) + 1 ) ; CreateString
  PokeS( ShaderFilenamePTR, ShaderFilename )
  CallCFunctionFast( *DB_Basic3D\CreateVertexShaderFromFile, VertexShaderNumber, ShaderFilenamePTR )
 EndProcedure
;
; *********************************************************************
Procedure DBMakeObjectObjectSphere1( ObjectNumber.l, Size.f, Rows.l, Columns.l )
  CallCFunctionFast( *DB_Basic3D\MakeSphere1, ObjectNumber, Size, Rows, Columns )
 EndProcedure
;
; *********************************************************************
Procedure DBMoveObjectDown( ObjectNumber.l, Value.f )
  CallCFunctionFast( *DB_Basic3D\MoveDown, ObjectNumber, Value )
 EndProcedure
;
; *********************************************************************
Procedure DBMoveObjectLeft( ObjectNumber.l, Value.f )
  CallCFunctionFast( *DB_Basic3D\MoveLeft, ObjectNumber, Value )
 EndProcedure
;
; *********************************************************************
Procedure DBMoveObjectRight( ObjectNumber.l, Value.f )
  CallCFunctionFast( *DB_Basic3D\MoveRight, ObjectNumber, Value )
 EndProcedure
;
; *********************************************************************
Procedure DBMoveObjectUp( ObjectNumber.l, Value.f )
  CallCFunctionFast( *DB_Basic3D\MoveUp, ObjectNumber, Value )
 EndProcedure
;
; *********************************************************************
Procedure DBSetObjectAmbient( ObjectNumber.l, Flag.l )
  CallCFunctionFast( *DB_Basic3D\SetAmbient, ObjectNumber, Flag )
 EndProcedure
;
; *********************************************************************
Procedure DBSetCull( ObjectNumber.l, Flag.l )
  CallCFunctionFast( *DB_Basic3D\SetCull, ObjectNumber, Flag )
 EndProcedure
;
; *********************************************************************
Procedure DBSetDetailMap( ObjectNumber.l, ImageNumber.l )
  CallCFunctionFast( *DB_Basic3D\SetDetailMap, ObjectNumber, ImageNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSetFilter( ObjectNumber.l, Flag.l )
  CallCFunctionFast( *DB_Basic3D\SetFilter, ObjectNumber, Flag )
 EndProcedure
;
; *********************************************************************
Procedure DBSetFog( ObjectNumber.l, Flag.l )
  CallCFunctionFast( *DB_Basic3D\SetFog, ObjectNumber, Flag )
 EndProcedure
;
; *********************************************************************
Procedure DBSetLight( ObjectNumber.l, Flag.l )
  CallCFunctionFast( *DB_Basic3D\SetLight, ObjectNumber, Flag )
 EndProcedure
;
; *********************************************************************
Procedure DBSetLightMap( ObjectNumber.l, ImageNumber.l )
  CallCFunctionFast( *DB_Basic3D\SetLightMap, ObjectNumber, ImageNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSetSphereRadius( ObjectNumber.l, Radius.f )
  CallCFunctionFast( *DB_Basic3D\SetSphereRadius, ObjectNumber, Radius )
 EndProcedure
;
; *********************************************************************
Procedure DBSetTransparency( ObjectNumber.l, Flag.l )
  CallCFunctionFast( *DB_Basic3D\SetTransparency, ObjectNumber, Flag )
 EndProcedure
;
; *********************************************************************
Procedure DBSetVertexShaderMatrix( VertexShaderNumber.l, Constant.l, Matrix4.l, ConstantCount.l )
  CallCFunctionFast( *DB_Basic3D\SetVertexShaderMatrix, VertexShaderNumber, Constant, Matrix4, ConstantCount )
 EndProcedure
;
; *********************************************************************
Procedure DBSetVertexShaderOff( ObjectNumber.l )
  CallCFunctionFast( *DB_Basic3D\SetVertexShaderOff, ObjectNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSetVertexShaderOn( ObjectNumber.l, VertexShaderNumber.l )
  CallCFunctionFast( *DB_Basic3D\SetVertexShaderOn, ObjectNumber, VertexShaderNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSetVertexShaderStream( VertexShaderNumber.l, Position.l, _Data.l, Datatype.l )
  CallCFunctionFast( *DB_Basic3D\SetVertexShaderStream, VertexShaderNumber, Position, _Data, Datatype )
 EndProcedure
;
; *********************************************************************
Procedure DBSetVertexShaderStreamCount( VertexShaderNumber.l, Count.l )
  CallCFunctionFast( *DB_Basic3D\SetVertexShaderStreamCount, VertexShaderNumber, Count )
 EndProcedure
;
; *********************************************************************
Procedure DBSetVertexShaderVector( VertexShaderNumber.l, Constant.l, Vector3.l, ConstantCount.l )
  CallCFunctionFast( *DB_Basic3D\SetVertexShaderVector, VertexShaderNumber, Constant, Vector3, ConstantCount )
 EndProcedure
;
; *********************************************************************
Procedure DBSetWireframe( ObjectNumber.l, Flag.l )
  CallCFunctionFast( *DB_Basic3D\SetWireframe, ObjectNumber, Flag )
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetObjectAlpha()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetAlpha )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetAlphaComparision()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetAlphaComparision )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetAnisotropicFiltering()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetAnisotropicFiltering )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetAntiAliasEdges()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetAntiAliasEdges )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetBlitSysOntoLocal()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetBlitSysOntoLocal )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetCalibrateGamma()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetCalibrateGamma )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetClipAndScalePoints()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetClipAndScalePoints )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetClipTLVerts()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetClipTLVerts )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetColorPerspective()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetColorPerspective )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetColorWriteEnable()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetColorWriteEnable )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetCubeMap()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetCubeMap )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetCullCCW()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetCullCCW )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetCullCW()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetCullCW )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetDeviceType()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetDeviceType )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetDither()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetDither )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetFogRange()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetFogRange )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetFogTable()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetFogTable )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetFogVert()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetFogVertex )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetFullScreenGamma()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetFullScreenGamma )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetMaxLights()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetMaxLights )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetMaxPixelShaderValue()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetMaxPixelShaderValue )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DBScaleTexture1( ObjectNumber.l, Stage.l, UScale.f, VScale.f )
  CallCFunctionFast( *DB_Basic3D\ScaleTexture1, ObjectNumber, Stage, UScale, VScale )
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetMaxTextureHeight()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetMaxTextureHeight )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetMaxTextureWidth()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetMaxTextureWidth )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetMaxVertexShaderConstants()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetMaxVertexShaderConstants )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetMaxVolumeExtent()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetMaxVolumeExtent )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetMipCubeMap()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetMipCubeMap )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetMipMap()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetMipMap )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetMipMapLODBias()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetMipMapLODBias )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetMipMapVolume()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetMipMapVolume )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetNonPowerOf2Textures()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetNonPowerOf2Textures )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetPerspective()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetPerspective )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetPixelShaderVersion()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetPixelShaderVersion )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetProjected()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetProjected )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetRenderAfterFlip()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetRenderAfterFlip )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetRenderWindowed()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetRenderWindowed )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetSeparateTextureMemories()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetSeparateTextureMemories )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetSquareOnly()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetSquareOnly )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetTLVertexSystemMemory()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetTLVertexSystemMemory )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetTLVertexVideoMemory()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetTLVertexVideoMemory )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetTextureNonLocalVideoMemory()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetTextureNonLocalVideoMemory )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetTextureSystemMemory()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetTextureSystemMemory )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetTextureVideoMemory()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetTextureVideoMemory )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetVertexShaderVersion()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetVertexShaderVersion )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetVolumeMap()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetVolumeMap )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetWBuffer()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetWBuffer )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetWFog()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetWFog )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetZBuffer()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetZBuffer )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetZFog()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetZFog )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DBDeleteVertexShader( VertexShaderNumber.l )
  CallCFunctionFast( *DB_Basic3D\DeleteVertexShader, VertexShaderNumber )
 EndProcedure
;
; *********************************************************************
Procedure.l DBVertexShaderExist( VertexShaderNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\VertexShaderExist, VertexShaderNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DBSetCubeMap( ObjectNumber.l, Face1.l, Face2.l, Face3.l, Face4.l, Face5.l, Face6.l )
  CallCFunctionFast( *DB_Basic3D\SetCubeMap, ObjectNumber, Face1, Face2, Face3, Face4, Face5, Face6 )
 EndProcedure
;
; *********************************************************************
Procedure DBSetBlendMap( ObjectNumber.l, ImageNumber.l, BlendMode.l )
  CallCFunctionFast( *DB_Basic3D\SetBlendMap, ObjectNumber, ImageNumber, BlendMode )
 EndProcedure
;
; *********************************************************************
Procedure DBSaveMesh( Filename.s, MeshNumber.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FilenamePTR.l, Len( Filename ) + 1 ) ; CreateString
  PokeS( FilenamePTR, Filename )
  CallCFunctionFast( *DB_Basic3D\SaveMesh, FilenamePTR, MeshNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBRemoveLimb( ObjectNumber.l, LimbNumber.l )
  CallCFunctionFast( *DB_Basic3D\RemoveLimb, ObjectNumber, LimbNumber )
 EndProcedure
;
; *********************************************************************
Procedure.f DBIntersectObject( ObjectNumber.l, X.f, Y.f, Z.f, ToX.f, ToY.f, ToZ.f )
  Retour.l = CallCFunctionFast( *DB_Basic3D\IntersectObject, ObjectNumber, X, Y, Z, ToX, ToY, ToZ )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure DBAutomaticObjectCollision( ObjectNumber.l, Radius.f, Response.l )
  CallCFunctionFast( *DB_Basic3D\AutomaticObjectCollision, ObjectNumber, Radius, Response )
 EndProcedure
;
; *********************************************************************
Procedure DBAutomaticCameraCollision( CameraNumber.l, Radius.f, Response.l )
  CallCFunctionFast( *DB_Basic3D\AutomaticCameraCollision, CameraNumber, Radius, Response )
 EndProcedure
;
; *********************************************************************
Procedure DBSetRainbowRenderingOn( ObjectNumber.l, RainbowImage.l )
  CallCFunctionFast( *DB_Basic3D\SetRainbowRenderingOn, ObjectNumber, RainbowImage )
 EndProcedure
;
; *********************************************************************
Procedure DBSetShadowOn( ObjectNumber.l )
  CallCFunctionFast( *DB_Basic3D\SetShadowOn, ObjectNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSetReflectionOn( ObjectNumber.l )
  CallCFunctionFast( *DB_Basic3D\SetReflectionOn, ObjectNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBCreatePixelShaderFromFile( PixelShaderNumber.l, ShaderFilename.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @ShaderFilenamePTR.l, Len( ShaderFilename ) + 1 ) ; CreateString
  PokeS( ShaderFilenamePTR, ShaderFilename )
  CallCFunctionFast( *DB_Basic3D\CreatePixelShaderFromFile, PixelShaderNumber, ShaderFilenamePTR )
 EndProcedure
;
; *********************************************************************
Procedure DBSetPixelShaderOn( ObjectNumber.l, PixelShaderNumber.l )
  CallCFunctionFast( *DB_Basic3D\SetPixelShaderOn, ObjectNumber, PixelShaderNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSetPixelShaderOff( ObjectNumber.l )
  CallCFunctionFast( *DB_Basic3D\SetPixelShaderOff, ObjectNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBDeletePixelShader( PixelShaderNumber.l )
  CallCFunctionFast( *DB_Basic3D\DeletePixelShader, PixelShaderNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSetPixelShaderTexture( PixelShaderNumber.l, SlotNumber.l, ImageNumber.l )
  CallCFunctionFast( *DB_Basic3D\SetPixelShaderTexture, PixelShaderNumber, SlotNumber, ImageNumber )
 EndProcedure
;
; *********************************************************************
Procedure.l DBPixelShaderExist( PixelShaderNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\PixelShaderExist, PixelShaderNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DBSetTextureMD3( ObjectNumber.l, H0.l, H1.l, L0.l, L1.l, L2.l, U0.l )
  CallCFunctionFast( *DB_Basic3D\SetTextureMD3, ObjectNumber, H0, H1, L0, L1, L2, U0 )
 EndProcedure
;
; *********************************************************************
Procedure DBCloneMeshToNewFormat( ObjectNumber.l, FVFFormat.l )
  CallCFunctionFast( *DB_Basic3D\CloneMeshToNewFormat, ObjectNumber, FVFFormat )
 EndProcedure
;
; *********************************************************************
Procedure DBSaveObject( Filename.s, ObjectNumber.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FilenamePTR.l, Len( Filename ) + 1 ) ; CreateString
  PokeS( FilenamePTR, Filename )
  CallCFunctionFast( *DB_Basic3D\Save, FilenamePTR, ObjectNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBHideObjectBounds( ObjectNumber.l )
  CallCFunctionFast( *DB_Basic3D\HideBounds, ObjectNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBShowObjectBounds( ObjectNumber.l )
  CallCFunctionFast( *DB_Basic3D\ShowBounds, ObjectNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSetSmoothing( ObjectNumber.l, Percentage.f )
  CallCFunctionFast( *DB_Basic3D\SetSmoothing, ObjectNumber, Percentage )
 EndProcedure
;
; *********************************************************************
Procedure DBSetLimbSmoothing( ObjectNumber.l, LimbNumber.l, Percentage.f )
  CallCFunctionFast( *DB_Basic3D\SetLimbSmoothing, ObjectNumber, LimbNumber, Percentage )
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetObjectObjectXSize1( ObjectNumber.l, ActualSize.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetXSizeEx, ObjectNumber, ActualSize )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure DBLockObjectVertexDataForLimb( ObjectNumber.l, LimbNumber.l )
  CallCFunctionFast( *DB_Basic3D\LockVertexDataForLimb, ObjectNumber, LimbNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBLockObjectVertexDataForMesh( MeshNumber.l )
  CallCFunctionFast( *DB_Basic3D\LockVertexDataForMesh, MeshNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBUnlockVertexData()
  CallCFunctionFast( *DB_Basic3D\UnlockVertexData )
 EndProcedure
;
; *********************************************************************
Procedure DBSetVertexDataUV( VertexIndex.l, U.f, V.f )
  CallCFunctionFast( *DB_Basic3D\SetVertexDataUV, VertexIndex, U, V )
 EndProcedure
;
; *********************************************************************
Procedure DBSetVertexDataNormals( VertexIndex.l, NX.f, NY.f, NZ.f )
  CallCFunctionFast( *DB_Basic3D\SetVertexDataNormals, VertexIndex, NX, NY, NZ )
 EndProcedure
;
; *********************************************************************
Procedure DBSetObjectaPosition( VertexIndex.l, X.f, Y.f, Z.f )
  CallCFunctionFast( *DB_Basic3D\SetVertexDataPosition, VertexIndex, X, Y, Z )
 EndProcedure
;
; *********************************************************************
Procedure DBSetVertexDataDiffuse( VertexIndex.l, RGBValue.l )
  CallCFunctionFast( *DB_Basic3D\SetVertexDataDiffuse, VertexIndex, RGBValue )
 EndProcedure
;
; *********************************************************************
Procedure DBAddMeshToVertexData( MeshNumber.l )
  CallCFunctionFast( *DB_Basic3D\AddMeshToVertexData, MeshNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBDeleteMeshFromVertexData( VertexStart.l, VertexEnd.l, IndexStart.l, IndexEnd.l )
  CallCFunctionFast( *DB_Basic3D\DeleteMeshFromVertexData, VertexStart, VertexEnd, IndexStart, IndexEnd )
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetVertexDataVertexCount()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetVertexDataVertexCount )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetVertexDataIndexCount()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetVertexDataIndexCount )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetVertexDataPositionX( VertexIndex.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetVertexDataPositionX, VertexIndex )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetVertexDataPositionY( VertexIndex.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetVertexDataPositionY, VertexIndex )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetVertexDataPositionZ( VertexIndex.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetVertexDataPositionZ, VertexIndex )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetVertexDataNormalsX( VertexIndex.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetVertexDataNormalsX, VertexIndex )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetVertexDataNormalsY( VertexIndex.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetVertexDataNormalsY, VertexIndex )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetVertexDataNormalsZ( VertexIndex.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetVertexDataNormalsZ, VertexIndex )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetVertexDataU( VertexIndex.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetVertexDataU, VertexIndex )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetVertexDataV( VertexIndex.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetVertexDataV, VertexIndex )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetVertexDataDiffuse( VertexIndex.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetVertexDataDiffuse, VertexIndex )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DBSetAlphaFactor( ObjectNumber.l, AlphaPercentage.f )
  CallCFunctionFast( *DB_Basic3D\SetAlphaFactor, ObjectNumber, AlphaPercentage )
 EndProcedure
;
; *********************************************************************
Procedure DBInstanceObject( ObjectNumber.l, SourceObject.l )
  CallCFunctionFast( *DB_Basic3D\Instance, ObjectNumber, SourceObject )
 EndProcedure
;
; *********************************************************************
Procedure DBSetEffectOn( ObjectNumber.l, EffectFilename.s, TextureFlag.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @EffectFilenamePTR.l, Len( EffectFilename ) + 1 ) ; CreateString
  PokeS( EffectFilenamePTR, EffectFilename )
  CallCFunctionFast( *DB_Basic3D\SetEffectOn, ObjectNumber, EffectFilenamePTR, TextureFlag )
 EndProcedure
;
; *********************************************************************
Procedure DBSetTextureStage( ObjectNumber.l, StageNumber.l, ImageNumber.l )
  CallCFunctionFast( *DB_Basic3D\SetTextureStage, ObjectNumber, StageNumber, ImageNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBEnableObjectZRead( ObjectNumber.l )
  CallCFunctionFast( *DB_Basic3D\EnableZRead, ObjectNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBDisableObjectZRead( ObjectNumber.l )
  CallCFunctionFast( *DB_Basic3D\DisableZRead, ObjectNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBEnableObjectZWrite( ObjectNumber.l )
  CallCFunctionFast( *DB_Basic3D\EnableZWrite, ObjectNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBDisableObjectZWrite( ObjectNumber.l )
  CallCFunctionFast( *DB_Basic3D\DisableZWrite, ObjectNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBLoadEffect1( Filename.s, EffectNumber.l, TextureFlag.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FilenamePTR.l, Len( Filename ) + 1 ) ; CreateString
  PokeS( FilenamePTR, Filename )
  CallCFunctionFast( *DB_Basic3D\LoadEffect, FilenamePTR, EffectNumber, TextureFlag )
 EndProcedure
;
; *********************************************************************
Procedure DBDeleteEffect( EffectNumber.l )
  CallCFunctionFast( *DB_Basic3D\DeleteEffect, EffectNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSetObjectEffect( ObjectNumber.l, EffectNumber.l )
  CallCFunctionFast( *DB_Basic3D\SetObjectEffect, ObjectNumber, EffectNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSetLimbEffect( ObjectNumber.l, LimbNumber.l, EffectNumber.l )
  CallCFunctionFast( *DB_Basic3D\SetLimbEffect, ObjectNumber, LimbNumber, EffectNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSetEffectConstantF( EffectNumber.l, ConstantString.s, ConstantValue.f )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @ConstantStringPTR.l, Len( ConstantString ) + 1 ) ; CreateString
  PokeS( ConstantStringPTR, ConstantString )
  CallCFunctionFast( *DB_Basic3D\SetEffectConstantF, EffectNumber, ConstantStringPTR, ConstantValue )
 EndProcedure
;
; *********************************************************************
Procedure DBPerformChecklistForEffectValues( EffectNumber.l )
  CallCFunctionFast( *DB_Basic3D\PerformChecklistForEffectValues, EffectNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSetDiffuseMaterial( ObjectNumber.l, ColorValue.l )
  CallCFunctionFast( *DB_Basic3D\SetDiffuseMaterial, ObjectNumber, ColorValue )
 EndProcedure
;
; *********************************************************************
Procedure DBSetAmbienceMaterial( ObjectNumber.l, ColorValue.l )
  CallCFunctionFast( *DB_Basic3D\SetAmbienceMaterial, ObjectNumber, ColorValue )
 EndProcedure
;
; *********************************************************************
Procedure DBSetSpecularMaterial( ObjectNumber.l, ColorValue.l )
  CallCFunctionFast( *DB_Basic3D\SetSpecularMaterial, ObjectNumber, ColorValue )
 EndProcedure
;
; *********************************************************************
Procedure DBSetEmissiveMaterial( ObjectNumber.l, ColorValue.l )
  CallCFunctionFast( *DB_Basic3D\SetEmissiveMaterial, ObjectNumber, ColorValue )
 EndProcedure
;
; *********************************************************************
Procedure DBSetSpecularPower( ObjectNumber.l, Power.f )
  CallCFunctionFast( *DB_Basic3D\SetSpecularPower, ObjectNumber, Power )
 EndProcedure
;
; *********************************************************************
Procedure DBTextureLimbStage( ObjectNumber.l, LimbNumber.l, StageNumber.l, ImageNumber.l )
  CallCFunctionFast( *DB_Basic3D\TextureLimbStage, ObjectNumber, LimbNumber, StageNumber, ImageNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBMakeObjectEmitter( ObjectNumber.l, Size.l )
  CallCFunctionFast( *DB_Basic3D\MakeEmitter, ObjectNumber, Size )
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetEffectExist( EffectNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetEffectExist, EffectNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DBPerformChecklistForEffectErrors()
  CallCFunctionFast( *DB_Basic3D\PerformChecklistForEffectErrors )
 EndProcedure
;
; *********************************************************************
Procedure DBSetEffectTranspose( EffectNumber.l, TransposeFlag.l )
  CallCFunctionFast( *DB_Basic3D\SetEffectTranspose, EffectNumber, TransposeFlag )
 EndProcedure
;
; *********************************************************************
Procedure DBSetEffectConstantB( EffectNumber.l, ConstantString.s, ConstantValue.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @ConstantStringPTR.l, Len( ConstantString ) + 1 ) ; CreateString
  PokeS( ConstantStringPTR, ConstantString )
  CallCFunctionFast( *DB_Basic3D\SetEffectConstantB, EffectNumber, ConstantStringPTR, ConstantValue )
 EndProcedure
;
; *********************************************************************
Procedure DBSetEffectConstantI( EffectNumber.l, ConstantString.s, ConstantValue.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @ConstantStringPTR.l, Len( ConstantString ) + 1 ) ; CreateString
  PokeS( ConstantStringPTR, ConstantString )
  CallCFunctionFast( *DB_Basic3D\SetEffectConstantI, EffectNumber, ConstantStringPTR, ConstantValue )
 EndProcedure
;
; *********************************************************************
Procedure DBSetEffectConstantV( EffectNumber.l, ConstantString.s, VectorNumber.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @ConstantStringPTR.l, Len( ConstantString ) + 1 ) ; CreateString
  PokeS( ConstantStringPTR, ConstantString )
  CallCFunctionFast( *DB_Basic3D\SetEffectConstantV, EffectNumber, ConstantStringPTR, VectorNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSetEffectConstantM( EffectNumber.l, ConstantString.s, MatrixNumber.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @ConstantStringPTR.l, Len( ConstantString ) + 1 ) ; CreateString
  PokeS( ConstantStringPTR, ConstantString )
  CallCFunctionFast( *DB_Basic3D\SetEffectConstantM, EffectNumber, ConstantStringPTR, MatrixNumber )
 EndProcedure
;
; *********************************************************************
Procedure.l DBPickScreenObject( ScreenX.l, ScreenY.l, ObjectStart.l, ObjectEnd.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\PickScreenObject, ScreenX, ScreenY, ObjectStart, ObjectEnd )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetPickVectorX()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetPickVectorX )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetPickVectorY()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetPickVectorY )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetPickVectorZ()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetPickVectorZ )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure DBPickScreen2D23D( ScreenX.l, ScreenY.l, Distance.f )
  CallCFunctionFast( *DB_Basic3D\PickScreen2D23D, ScreenX, ScreenY, Distance )
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetPickDistance()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetPickDistance )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure DBSetShadingOff( ObjectNumber.l )
  CallCFunctionFast( *DB_Basic3D\SetShadingOff, ObjectNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBShowObjectObjectBounds1( ObjectNumber.l, BoxOnlyFlag.l )
  CallCFunctionFast( *DB_Basic3D\ShowBoundsEx, ObjectNumber, BoxOnlyFlag )
 EndProcedure
;
; *********************************************************************
Procedure DBSetEffectTechnique( EffectNumber.l, TechniqueName.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @TechniqueNamePTR.l, Len( TechniqueName ) + 1 ) ; CreateString
  PokeS( TechniqueNamePTR, TechniqueName )
  CallCFunctionFast( *DB_Basic3D\SetEffectTechnique, EffectNumber, TechniqueNamePTR )
 EndProcedure
;
; *********************************************************************
Procedure DBSetVertexDataUV1( VertexIndex.l, Index.l, U.f, V.f )
  CallCFunctionFast( *DB_Basic3D\SetVertexDataUV1, VertexIndex, Index, U, V )
 EndProcedure
;
; *********************************************************************
Procedure DBPerformChecklistForEffectErrors1( EffectNumber.l )
  CallCFunctionFast( *DB_Basic3D\PerformChecklistForEffectErrors1, EffectNumber )
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetLimbCollision( ObjectANumber.l, LimbANumber.l, ObjectBNumber.l, LimbBNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetLimbCollision, ObjectANumber, LimbANumber, ObjectBNumber, LimbBNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetLimbHit( ObjectANumber.l, LimbANumber.l, ObjectBNumber.l, LimbBNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetLimbHit, ObjectANumber, LimbANumber, ObjectBNumber, LimbBNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DBLoadObject1( Filename.s, ObjectNumber.l, DBProMode.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FilenamePTR.l, Len( Filename ) + 1 ) ; CreateString
  PokeS( FilenamePTR, Filename )
  If TextureQuality = 0
    CallCFunctionFast( *DB_Basic3D\Load1, FilenamePTR, ObjectNumber, DBProMode )
   Else
    CallCFunctionFast( *DB_Basic3D\Load2, FilenamePTR, ObjectNumber, DBProMode, TextureQuality )
   EndIf
 EndProcedure
;
; *********************************************************************
Procedure DBExcludeObjectOn( ObjectID.l )
  CallCFunctionFast( *DB_Basic3D\ExcludeOn, ObjectID )
 EndProcedure
;
; *********************************************************************
Procedure DBExcludeObjectOff( ObjectID.l )
  CallCFunctionFast( *DB_Basic3D\ExcludeOff, ObjectID )
 EndProcedure
;
; *********************************************************************
Procedure DBSetNormals( ObjectNumber.l )
  CallCFunctionFast( *DB_Basic3D\SetNormals, ObjectNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSetLimbNormals( ObjectNumber.l, LimbNumber.l )
  CallCFunctionFast( *DB_Basic3D\SetLimbNormals, ObjectNumber, LimbNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSetTextureModeStage( ObjectNumber.l, StageNumber.l, TexturingMode.l, MipmapFlag.l )
  CallCFunctionFast( *DB_Basic3D\SetTextureModeStage, ObjectNumber, StageNumber, TexturingMode, MipmapFlag )
 EndProcedure
;
; *********************************************************************
Procedure DBSetFilterStage( ObjectNumber.l, StageNumber.l, Flag.l )
  CallCFunctionFast( *DB_Basic3D\SetFilterStage, ObjectNumber, StageNumber, Flag )
 EndProcedure
;
; *********************************************************************
Procedure DBLockObjectVertexDataForLimbCore( ObjectNumber.l, LimbNumber.l, LockMode.l )
  CallCFunctionFast( *DB_Basic3D\LockVertexDataForLimbCore, ObjectNumber, LimbNumber, LockMode )
 EndProcedure
;
; *********************************************************************
Procedure DBSetObjectFOV( ObjectNumber.l, FOVAngle.f )
  CallCFunctionFast( *DB_Basic3D\SetObjectFOV, ObjectNumber, FOVAngle )
 EndProcedure
;
; *********************************************************************
Procedure DBDeleteObjects( _From.l, _To.l )
  CallCFunctionFast( *DB_Basic3D\Deletes, _From, _To )
 EndProcedure
;
; *********************************************************************
Procedure DBForceAutomaticEnd()
  CallCFunctionFast( *DB_Basic3D\ForceAutomaticEnd )
 EndProcedure
;
; *********************************************************************
Procedure DBEnableObjectZBias( ObjectNumber.l, SlopeScale.f, Depth.f )
  CallCFunctionFast( *DB_Basic3D\EnableZBias, ObjectNumber, SlopeScale, Depth )
 EndProcedure
;
; *********************************************************************
Procedure DBDisableObjectZBias( ObjectNumber.l )
  CallCFunctionFast( *DB_Basic3D\DisableZBias, ObjectNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBOffsetLimb1( ObjectNumber.l, LimbNumber.l, X.f, Y.f, Z.f, BoundsFlag.l )
  CallCFunctionFast( *DB_Basic3D\OffsetLimb1, ObjectNumber, LimbNumber, X, Y, Z, BoundsFlag )
 EndProcedure
;
; *********************************************************************
Procedure DBScaleLimb1( ObjectNumber.l, LimbNumber.l, XSize.f, YSize.f, ZSize.f, BoundsFlag.l )
  CallCFunctionFast( *DB_Basic3D\ScaleLimb1, ObjectNumber, LimbNumber, XSize, YSize, ZSize, BoundsFlag )
 EndProcedure
;
; *********************************************************************
Procedure DBRotateLimb1( ObjectNumber.l, LimbNumber.l, XAngle.f, YAngle.f, ZAngle.f, BoundsFlag.l )
  CallCFunctionFast( *DB_Basic3D\RotateLimb1, ObjectNumber, LimbNumber, XAngle, YAngle, ZAngle, BoundsFlag )
 EndProcedure
;
; *********************************************************************
Procedure DBCloneShared( ObjectNumber.l, SourceObject.l, ShareOriginalData.l )
  CallCFunctionFast( *DB_Basic3D\CloneShared, ObjectNumber, SourceObject, ShareOriginalData )
 EndProcedure
;
; *********************************************************************
Procedure DBSetObjectFrame1( ObjectNumber.l, Frame.f, RecalculateBounds.l )
  CallCFunctionFast( *DB_Basic3D\SetFrameEx1, ObjectNumber, Frame, RecalculateBounds )
 EndProcedure
;
; *********************************************************************
Procedure DBSetShadowOn1( ObjectNumber.l, MeshNumber.l, ShadowRange.l, UseShader.l )
  CallCFunctionFast( *DB_Basic3D\SetShadowOnEx, ObjectNumber, MeshNumber, ShadowRange, UseShader )
 EndProcedure
;
; *********************************************************************
Procedure DBSetShadowOff( ObjectNumber.l )
  CallCFunctionFast( *DB_Basic3D\SetShadowOff, ObjectNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSetBlendMap1( ObjectNumber.l, StageIndex.l, ImageNumber.l, TexCoordMode.l, BlendMode.l )
  CallCFunctionFast( *DB_Basic3D\SetBlendMap1, ObjectNumber, StageIndex, ImageNumber, TexCoordMode, BlendMode )
 EndProcedure
;
; *********************************************************************
Procedure DBSetIndexData( IndiceIndex.l, VertexIndex.l )
  CallCFunctionFast( *DB_Basic3D\SetIndexData, IndiceIndex, VertexIndex )
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetIndexData( IndexNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetIndexData, IndexNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetVertexDataU1( VertexIndex.l, StageNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetVertexDataU1, VertexIndex, StageNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetVertexDataV1( VertexIndex.l, StageNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetVertexDataV1, VertexIndex, StageNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetObjectObjectYSize1( ObjectNumber.l, ActualSize.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetYSizeEx, ObjectNumber, ActualSize )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure DBSetGlobalObjectCreationMode( CreationMode.l )
  CallCFunctionFast( *DB_Basic3D\SetGlobalObjectCreationMode, CreationMode )
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetObjectObjectZSize1( ObjectNumber.l, ActualSize.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetZSizeEx, ObjectNumber, ActualSize )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure DBScrollTexture1( ObjectNumber.l, Stage.l, X.f, Y.f )
  CallCFunctionFast( *DB_Basic3D\ScrollTexture1, ObjectNumber, Stage, X, Y )
 EndProcedure
;
; *********************************************************************
Procedure DBScaleLimbTexture1( ObjectNumber.l, LimbNumber.l, Stage.l, UScale.f, VScale.f )
  CallCFunctionFast( *DB_Basic3D\ScaleLimbTexture1, ObjectNumber, LimbNumber, Stage, UScale, VScale )
 EndProcedure
;
; *********************************************************************
Procedure DBScrollLimbTexture1( ObjectNumber.l, LimbNumber.l, Stage.l, X.f, Y.f )
  CallCFunctionFast( *DB_Basic3D\ScrollLimbTexture1, ObjectNumber, LimbNumber, Stage, X, Y )
 EndProcedure
;
; *********************************************************************
Procedure DBSetTextureStage1( ObjectNumber.l, StageNumber.l, ImageNumber.l, IgnoreSorting.l )
  CallCFunctionFast( *DB_Basic3D\SetTextureStageEx, ObjectNumber, StageNumber, ImageNumber, IgnoreSorting )
 EndProcedure
;
; *********************************************************************
Procedure DBSetDiffuseMaterial1( ObjectNumber.l, ColorValue.l, VertexDiffuseMode.l )
  CallCFunctionFast( *DB_Basic3D\SetDiffuseMaterialEx, ObjectNumber, ColorValue, VertexDiffuseMode )
 EndProcedure
;
; *********************************************************************
Procedure DBLoadObject2( Filename.s, ObjectNumber.l, DBProMode.l, DivideTexture.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FilenamePTR.l, Len( Filename ) + 1 ) ; CreateString
  PokeS( FilenamePTR, Filename )
  CallCFunctionFast( *DB_Basic3D\Load2, FilenamePTR, ObjectNumber, DBProMode, DivideTexture )
 EndProcedure
;
; *********************************************************************
Procedure.s DBGetLimbTextureName1( ObjectNumber.l, LimbNumber.l, TextureStage.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetLimbTextureNameEx, ExtraPARAM.l, ObjectNumber, LimbNumber, TextureStage )
  RetourSTR.s = PeekS( Retour )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetLimbTexture1( ObjectNumber.l, LimbNumber.l, TextureStage.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetLimbTextureEx, ObjectNumber, LimbNumber, TextureStage )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBPickScreenObject1( ScreenX.l, ScreenY.l, ObjectStart.l, ObjectEnd.l, IgnoreCameraFlag.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\PickScreenObjectEx, ScreenX, ScreenY, ObjectStart, ObjectEnd, IgnoreCameraFlag )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DBGlueToLimb1( ObjectNumber.l, SecondObject.l, LimbNumber.l, GlueMode.l )
  CallCFunctionFast( *DB_Basic3D\GlueToLimbEx, ObjectNumber, SecondObject, LimbNumber, GlueMode )
 EndProcedure
;
; *********************************************************************
Procedure DBConvertMeshToVertexData( MeshNumber.l )
  CallCFunctionFast( *DB_Basic3D\ConvertMeshToVertexData, MeshNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBMakeObjectObjectObjectFromLimb1( ObjectNumber.l, SecondObject.l, LimbNumber.l, AllLimbsFlag.l )
  CallCFunctionFast( *DB_Basic3D\MakeObjectFromLimbEx, ObjectNumber, SecondObject, LimbNumber, AllLimbsFlag )
 EndProcedure
;
; *********************************************************************
Procedure DBAutomaticCameraCollision1( CameraNumber.l, Radius.f, Response.l, StandGroundMode.l )
  CallCFunctionFast( *DB_Basic3D\AutomaticCameraCollision1, CameraNumber, Radius, Response, StandGroundMode )
 EndProcedure
;

; IDE Options = PureBasic 4.10 Beta 2 (Windows - x86)
; CursorPosition = 1876
; FirstLine = 1870
; Folding = --------------------------------------------------------------
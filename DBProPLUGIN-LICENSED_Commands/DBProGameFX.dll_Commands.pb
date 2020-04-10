; DarkBasic Professional RC2PBIncludes Ver 1.0 File - COMMANDS WRAPPING
; By Frederic Cordier - 07.02.13
;
; *********************************************************************
Procedure DBCreateNodeTree( X.f, Y.f, Z.f )
  CallCFunctionFast( *DB_GameFX\CreateNodeTree, X, Y, Z )
 EndProcedure
;
; *********************************************************************
Procedure DBAddNodeTreeObject( ObjectNumber.l, Collision.l, ArbitaryValue.l, CastShadow.l, PortalBlocker.l )
  CallCFunctionFast( *DB_GameFX\AddNodeTreeObject, ObjectNumber, Collision, ArbitaryValue, CastShadow, PortalBlocker )
 EndProcedure
;
; *********************************************************************
Procedure DBAddNodeTreeLimb( ObjectNumber.l, LimbNumber.l, Collision.l, ArbitaryValue.l, CastShadow.l, PortalBlocker.l )
  CallCFunctionFast( *DB_GameFX\AddNodeTreeLimb, ObjectNumber, LimbNumber, Collision, ArbitaryValue, CastShadow, PortalBlocker )
 EndProcedure
;
; *********************************************************************
Procedure DBDeleteNodeTree()
  CallCFunctionFast( *DB_GameFX\DeleteNodeTree )
 EndProcedure
;
; *********************************************************************
Procedure DBRemoveNodeTreeObject( ObjectNumber.l )
  CallCFunctionFast( *DB_GameFX\RemoveNodeTreeObject, ObjectNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSetNodeTreePortalsOn()
  CallCFunctionFast( *DB_GameFX\SetNodeTreePortalsOn )
 EndProcedure
;
; *********************************************************************
Procedure DBSetNodeTreePortalsOff()
  CallCFunctionFast( *DB_GameFX\SetNodeTreePortalsOff )
 EndProcedure
;
; *********************************************************************
Procedure DBBuildNodeTreePortals()
  CallCFunctionFast( *DB_GameFX\BuildNodeTreePortals )
 EndProcedure
;
; *********************************************************************
Procedure DBSetNodeTreeWireframeOn()
  CallCFunctionFast( *DB_GameFX\SetNodeTreeWireframeOn )
 EndProcedure
;
; *********************************************************************
Procedure DBSetNodeTreeWireframeOff()
  CallCFunctionFast( *DB_GameFX\SetNodeTreeWireframeOff )
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetStaticLineOfSight( X1.f, Y1.f, Z1.f, X2.f, Y2.f, Z2.f, Width.f, Accuracy.f )
  Retour.l = CallCFunctionFast( *DB_GameFX\GetStaticLineOfSight, X1, Y1, Z1, X2, Y2, Z2, Width, Accuracy )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetStaticHit( OX1.f, OY1.f, OZ1.f, OX2.f, OY2.f, OZ2.f, NX1.f, NY1.f, NZ1.f, NX2.f, NY2.f, NZ2.f )
  Retour.l = CallCFunctionFast( *DB_GameFX\GetStaticHit, OX1, OY1, OZ1, OX2, OY2, OZ2, NX1, NY1, NZ1, NX2, NY2, NZ2 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetStaticRayCast( X1.f, Y1.f, Z1.f, X2.f, Y2.f, Z2.f )
  Retour.l = CallCFunctionFast( *DB_GameFX\GetStaticRayCast, X1, Y1, Z1, X2, Y2, Z2 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetStaticVolumeCast( X1.f, Y1.f, Z1.f, X2.f, Y2.f, Z2.f, Size.f )
  Retour.l = CallCFunctionFast( *DB_GameFX\GetStaticVolumeCast, X1, Y1, Z1, X2, Y2, Z2, Size )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetStaticX()
  Retour.l = CallCFunctionFast( *DB_GameFX\GetStaticX )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetStaticY()
  Retour.l = CallCFunctionFast( *DB_GameFX\GetStaticY )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetStaticZ()
  Retour.l = CallCFunctionFast( *DB_GameFX\GetStaticZ )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetStaticColCount()
  Retour.l = CallCFunctionFast( *DB_GameFX\GetStaticColCount )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetStaticColValue()
  Retour.l = CallCFunctionFast( *DB_GameFX\GetStaticColValue )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetStaticFloor()
  Retour.l = CallCFunctionFast( *DB_GameFX\GetStaticFloor )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DBAddStaticObjectsToLightMapPool()
  CallCFunctionFast( *DB_GameFX\AddStaticObjectsToLightMapPool )
 EndProcedure
;
; *********************************************************************
Procedure DBAddObjectToLightMapPool( ObjectNumber.l )
  CallCFunctionFast( *DB_GameFX\AddObjectToLightMapPool, ObjectNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBAddLightMapLight( X.f, Y.f, Z.f, Radius.f, Red.f, Green.f, Blue.f, Brightness.f, Shadow.l )
  CallCFunctionFast( *DB_GameFX\AddLightMapLight, X, Y, Z, Radius, Red, Green, Blue, Brightness, Shadow )
 EndProcedure
;
; *********************************************************************
Procedure DBCreateLightMaps( TextureSize.l, TextureQuality.l, LightMapSavePath.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @LightMapSavePathPTR.l, Len( LightMapSavePath ) + 1 ) ; CreateString
  PokeS( LightMapSavePathPTR, LightMapSavePath )
  CallCFunctionFast( *DB_GameFX\CreateLightMaps, TextureSize, TextureQuality, LightMapSavePathPTR )
 EndProcedure
;
; *********************************************************************
Procedure DBFlushLightMaps()
  CallCFunctionFast( *DB_GameFX\FlushLightMaps )
 EndProcedure
;
; *********************************************************************
Procedure DBAddLimbToLightMapPool( Param0.l, Param1.l )
  CallCFunctionFast( *DB_GameFX\AddLimbToLightMapPool, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure DBFlushLightMapLights()
  CallCFunctionFast( *DB_GameFX\FlushLightMapLights )
 EndProcedure
;
; *********************************************************************
Procedure DBAddNodeTreeScorch( ScorchSize.f, ScorchType.l )
  CallCFunctionFast( *DB_GameFX\AddNodeTreeScorch, ScorchSize, ScorchType )
 EndProcedure
;
; *********************************************************************
Procedure DBLoadNodeTreeObjects( Filename.s, DivideTextureSize.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FilenamePTR.l, Len( Filename ) + 1 ) ; CreateString
  PokeS( FilenamePTR, Filename )
  CallCFunctionFast( *DB_GameFX\LoadNodeTreeObjects, FilenamePTR, DivideTextureSize )
 EndProcedure
;
; *********************************************************************
Procedure DBSetNodeTreeScorchTexture( ImageNumber.l, Width.l, Height.l )
  CallCFunctionFast( *DB_GameFX\SetNodeTreeScorchTexture, ImageNumber, Width, Height )
 EndProcedure
;
; *********************************************************************
Procedure DBAddNodeTreeLight( LightNumber.l, X.f, Y.f, Z.f, Range.f )
  CallCFunctionFast( *DB_GameFX\AddNodeTreeLight, LightNumber, X, Y, Z, Range )
 EndProcedure
;
; *********************************************************************
Procedure DBSetGlobalShadowsOff()
  CallCFunctionFast( *DB_GameFX\SetGlobalShadowsOff )
 EndProcedure
;
; *********************************************************************
Procedure DBSetGlobalShadowsOn()
  CallCFunctionFast( *DB_GameFX\SetGlobalShadowsOn )
 EndProcedure
;
; *********************************************************************
Procedure DBSetShadowShades( NumberOfShades.l )
  CallCFunctionFast( *DB_GameFX\SetShadowShades, NumberOfShades )
 EndProcedure
;
; *********************************************************************
Procedure DBSetShadowColor( Red.l, Green.l, Blue.l, Alpha.l )
  CallCFunctionFast( *DB_GameFX\SetShadowColor, Red, Green, Blue, Alpha )
 EndProcedure
;
; *********************************************************************
Procedure DBSetShadowPosition( Mode.l, X.f, Y.f, Z.f )
  CallCFunctionFast( *DB_GameFX\SetShadowPosition, Mode, X, Y, Z )
 EndProcedure
;
; *********************************************************************
Procedure DBPeformCSGUnion( TargetObject.l, BrushObject.l )
  CallCFunctionFast( *DB_GameFX\PeformCSGUnion, TargetObject, BrushObject )
 EndProcedure
;
; *********************************************************************
Procedure DBPeformCSGDifference( TargetObject.l, BrushObject.l )
  CallCFunctionFast( *DB_GameFX\PeformCSGDifference, TargetObject, BrushObject )
 EndProcedure
;
; *********************************************************************
Procedure DBPeformCSGIntersection( TargetObject.l, BrushObject.l )
  CallCFunctionFast( *DB_GameFX\PeformCSGIntersection, TargetObject, BrushObject )
 EndProcedure
;
; *********************************************************************
Procedure DBPeformCSGClip( TargetObject.l, BrushObject.l )
  CallCFunctionFast( *DB_GameFX\PeformCSGClip, TargetObject, BrushObject )
 EndProcedure
;
; *********************************************************************
Procedure DBPeformCSGUnionOnVertexData( BrushMesh.l )
  CallCFunctionFast( *DB_GameFX\PeformCSGUnionOnVertexData, BrushMesh )
 EndProcedure
;
; *********************************************************************
Procedure DBPeformCSGDifferenceOnVertexData( BrushMesh.l )
  CallCFunctionFast( *DB_GameFX\PeformCSGDifferenceOnVertexData, BrushMesh )
 EndProcedure
;
; *********************************************************************
Procedure DBPeformCSGIntersectionOnVertexData( BrushMesh.l )
  CallCFunctionFast( *DB_GameFX\PeformCSGIntersectionOnVertexData, BrushMesh )
 EndProcedure
;
; *********************************************************************
Procedure DBReduceMesh( MeshNumber.l, BlockMode.l, NearMode.l, GX.l, GY.l, GZ.l )
  CallCFunctionFast( *DB_GameFX\ReduceMesh, MeshNumber, BlockMode, NearMode, GX, GY, GZ )
 EndProcedure
;
; *********************************************************************
Procedure DBAttachObjectToNodeTree( ObjectNumber.l )
  CallCFunctionFast( *DB_GameFX\AttachObjectToNodeTree, ObjectNumber )
 EndProcedure
;
; *********************************************************************
Procedure.l DBObjectBlocking( Object.l, X1.f, Y1.f, Z1.f, X2.f, Y2.f, Z2.f )
  Retour.l = CallCFunctionFast( *DB_GameFX\ObjectBlocking, Object, X1, Y1, Z1, X2, Y2, Z2 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DBDetachObjectFromNodeTree( ObjectNumber.l )
  CallCFunctionFast( *DB_GameFX\DetachObjectFromNodeTree, ObjectNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBAddLODToObject( ObjectNumber.l, LODObject.l, LODLevel.l, LODDistance.f )
  CallCFunctionFast( *DB_GameFX\AddLODToObject, ObjectNumber, LODObject, LODLevel, LODDistance )
 EndProcedure
;
; *********************************************************************
Procedure DBSaveNodeTreeObjects( Filename.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FilenamePTR.l, Len( Filename ) + 1 ) ; CreateString
  PokeS( FilenamePTR, Filename )
  CallCFunctionFast( *DB_GameFX\SaveNodeTreeObjects, FilenamePTR )
 EndProcedure
;
; *********************************************************************
Procedure DBMakeGameFXNodeTreeCollisionBox( X1.f, Y1.f, Z1.f, X2.f, Y2.f, Z2.f )
  CallCFunctionFast( *DB_GameFX\MakeNodeTreeCollisionBox, X1, Y1, Z1, X2, Y2, Z2 )
 EndProcedure
;

; IDE Options = PureBasic v4.00 (Windows - x86)
; CursorPosition = 270
; FirstLine = 221
; Folding = ---------
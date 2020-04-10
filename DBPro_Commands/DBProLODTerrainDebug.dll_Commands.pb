; DarkBasic Professional RC2PBIncludes Ver 1. File - COMMANDS WRAPPING
; By Frederic Cordier - 07.02.13
;
; *********************************************************************
Procedure DBMakeLODTerrain( TerrainNumber.l, HeightmapFilename.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @HeightmapFilenamePTR.l, Len( HeightmapFilename ) + 1 ) ; CreateString
  PokeS( HeightmapFilenamePTR, HeightmapFilename )
  CallCFunctionFast( *DB_LODTerrain\Make, TerrainNumber, HeightmapFilenamePTR )
 EndProcedure
;
; *********************************************************************
Procedure DBSetLODTerraintPosition( TerrainNumber.l, X.f, Y.f, Z.f )
  CallCFunctionFast( *DB_LODTerrain\SetPosition, TerrainNumber, X, Y, Z )
 EndProcedure
;
; *********************************************************************
Procedure DBDeleteLODTerrain( TerrainNumber.l )
  CallCFunctionFast( *DB_LODTerrain\Delete, TerrainNumber )
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetLODTerrainExist( TerrainNumber.l )
  Retour.l = CallCFunctionFast( *DB_LODTerrain\GetExist, TerrainNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetLODTerrainHeight( TerrainNumber.l, X.f, Z.f )
  Retour.l = CallCFunctionFast( *DB_LODTerrain\GetHeight, TerrainNumber, X, Z )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetTotalLODTerrainHeight( TerrainNumber.l )
  Retour.l = CallCFunctionFast( *DB_LODTerrain\GetTotalHeight, TerrainNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetPositionX( TerrainNumber.l )
  Retour.l = CallCFunctionFast( *DB_LODTerrain\GetPositionX, TerrainNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetPositionY( TerrainNumber.l )
  Retour.l = CallCFunctionFast( *DB_LODTerrain\GetPositionY, TerrainNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetPositionZ( TerrainNumber.l )
  Retour.l = CallCFunctionFast( *DB_LODTerrain\GetPositionZ, TerrainNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure DBSetLODTerrainTexture( TerrainNumber.l, ImageNumber.l )
  CallCFunctionFast( *DB_LODTerrain\SetTexture, TerrainNumber, ImageNumber )
 EndProcedure
;

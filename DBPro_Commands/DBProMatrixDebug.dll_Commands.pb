; DarkBasic Professional RC2PBIncludes Ver 1. File - COMMANDS WRAPPING
; By Frederic Cordier - 07.02.13
;
; *********************************************************************
Procedure DBMakeMatrix( MatrixNumber.l, Width.f, Height.f, XSegments.l, ZSegments.l )
  CallCFunctionFast( *DB_Matrix\MakeEx, MatrixNumber, Width, Height, XSegments, ZSegments )
 EndProcedure
;
; *********************************************************************
Procedure DBSetMatrixWireFrameOn( MatrixNumber.l )
  CallCFunctionFast( *DB_Matrix\SetWireframeOn, MatrixNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBDeleteMatrix( MatrixNumber.l )
  CallCFunctionFast( *DB_Matrix\Delete, MatrixNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBFillMatrix( MatrixNumber.l, Height.f, TileNumber.l )
  CallCFunctionFast( *DB_Matrix\Fill, MatrixNumber, Height, TileNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSetMatrixTransparencyOn( MatrixNumber.l )
  CallCFunctionFast( *DB_Matrix\SetTransparencyOn, MatrixNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSetMatrixTransparencyOff( MatrixNumber.l )
  CallCFunctionFast( *DB_Matrix\SetTransparencyOff, MatrixNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBPositionMatrix( MatrixNumber.l, X.f, Y.f, Z.f )
  CallCFunctionFast( *DB_Matrix\PositionEx, MatrixNumber, X, Y, Z )
 EndProcedure
;
; *********************************************************************
Procedure DBPrepareTexture( MatrixNumber.l, ImageNumber.l, Across.l, Down.l )
  CallCFunctionFast( *DB_Matrix\PrepareTexture, MatrixNumber, ImageNumber, Across, Down )
 EndProcedure
;
; *********************************************************************
Procedure DBRandomize1( MatrixNumber.l, MaximumHeight.l )
  CallCFunctionFast( *DB_Matrix\Randomize, MatrixNumber, MaximumHeight )
 EndProcedure
;
; *********************************************************************
Procedure DBSetMatrixHeight( MatrixNumber.l, TileX.l, TileZ.l, Height.f )
  CallCFunctionFast( *DB_Matrix\SetHeight, MatrixNumber, TileX, TileZ, Height )
 EndProcedure
;
; *********************************************************************
Procedure DBSetMatrixNormal( MatrixNumber.l, TileX.l, TileZ.l, NX.f, NY.f, NZ.f )
  CallCFunctionFast( *DB_Matrix\SetNormal, MatrixNumber, TileX, TileZ, NX, NY, NZ )
 EndProcedure
;
; *********************************************************************
Procedure DBSetMatrixTexture( MatrixNumber.l, TextureMode.l, MipMode.l )
  CallCFunctionFast( *DB_Matrix\SetTexture, MatrixNumber, TextureMode, MipMode )
 EndProcedure
;
; *********************************************************************
Procedure DBSetMatrixTile( MatrixNumber.l, TileX.l, TileZ.l, TileNumber.l )
  CallCFunctionFast( *DB_Matrix\SetTile, MatrixNumber, TileX, TileZ, TileNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSetMatrixWireFrameOff( MatrixNumber.l )
  CallCFunctionFast( *DB_Matrix\SetWireframeOff, MatrixNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSetMatrix( MatrixNumber.l, Wire.l, Transparency.l, Cull.l, Filter.l, Light.l, Fog.l, Ambient.l )
  CallCFunctionFast( *DB_Matrix\SetEx, MatrixNumber, Wire, Transparency, Cull, Filter, Light, Fog, Ambient )
 EndProcedure
;
; *********************************************************************
Procedure DBShiftMatrixDown( MatrixNumber.l )
  CallCFunctionFast( *DB_Matrix\ShiftDown, MatrixNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBShiftMatrixLeft( MatrixNumber.l )
  CallCFunctionFast( *DB_Matrix\ShiftLeft, MatrixNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBShiftMatrixRight( MatrixNumber.l )
  CallCFunctionFast( *DB_Matrix\ShiftRight, MatrixNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBShiftMatrixUp( MatrixNumber.l )
  CallCFunctionFast( *DB_Matrix\ShiftUp, MatrixNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBApplyMatrix( MatrixNumber.l )
  CallCFunctionFast( *DB_Matrix\Apply, MatrixNumber )
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetGroundHeight( MatrixNumber.l, X.f, Z.f )
  Retour.l = CallCFunctionFast( *DB_Matrix\GetGroundHeightEx, MatrixNumber, X, Z )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetMatrixHeight( MatrixNumber.l, TileX.l, TileZ.l )
  Retour.l = CallCFunctionFast( *DB_Matrix\GetHeightEx, MatrixNumber, TileX, TileZ )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetMatrixExist( MatrixNumber.l )
  Retour.l = CallCFunctionFast( *DB_Matrix\GetExistEx, MatrixNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetPositionX1( MatrixNumber.l )
  Retour.l = CallCFunctionFast( *DB_Matrix\GetPositionXEx, MatrixNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetPositionY1( MatrixNumber.l )
  Retour.l = CallCFunctionFast( *DB_Matrix\GetPositionYEx, MatrixNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetPositionZ1( MatrixNumber.l )
  Retour.l = CallCFunctionFast( *DB_Matrix\GetPositionZEx, MatrixNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetTileCount( MatrixNumber.l )
  Retour.l = CallCFunctionFast( *DB_Matrix\GetTileCountEx, MatrixNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetTilesExist( MatrixNumber.l )
  Retour.l = CallCFunctionFast( *DB_Matrix\GetTilesExistEx, MatrixNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetWireframe( MatrixNumber.l )
  Retour.l = CallCFunctionFast( *DB_Matrix\GetWireframeEx, MatrixNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DBSetMatrixPositionVector3( MatrixNumber.l, Vector.l )
  CallCFunctionFast( *DB_Matrix\SetPositionVector3, MatrixNumber, Vector )
 EndProcedure
;
; *********************************************************************
Procedure DBGetPositionVector32( Vector.l, MatrixNumber.l )
  CallCFunctionFast( *DB_Matrix\GetPositionVector3, Vector, MatrixNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSetMatrixTransparencyOn1( MatrixNumber.l, Mode.l )
  CallCFunctionFast( *DB_Matrix\SetTransparencyOn1, MatrixNumber, Mode )
 EndProcedure
;
; *********************************************************************
Procedure DBSetMatrixTrim( MatrixNumber.l, TrimX.f, TrimY.f )
  CallCFunctionFast( *DB_Matrix\SetTrim, MatrixNumber, TrimX, TrimY )
 EndProcedure
;
; *********************************************************************
Procedure DBSetMatrixPriority( MatrixNumber.l, PriorityFlag.l )
  CallCFunctionFast( *DB_Matrix\SetPriority, MatrixNumber, PriorityFlag )
 EndProcedure
;

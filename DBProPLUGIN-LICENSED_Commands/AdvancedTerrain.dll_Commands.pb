; DarkBasic Professional RC2PBIncludes Ver 1.0 File - COMMANDS WRAPPING
; By Frederic Cordier - 07.02.13
;
; *********************************************************************
Procedure SetTerrainScale( Param0.l, Param1.f, Param2.f, Param3.f )
  CallCFunctionFast( *DB_AdvancedTerrain\SetTerrainScale, Param0, Param1, Param2, Param3 )
 EndProcedure
;
; *********************************************************************
Procedure SetTerrainSplit( Param0.l, Param1.l )
  CallCFunctionFast( *DB_AdvancedTerrain\SetTerrainSplit, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure SetTerrainTiling( Param0.l, Param1.l )
  CallCFunctionFast( *DB_AdvancedTerrain\SetTerrainTiling, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure SetTerrainHeightMap( Param0.l, Param1.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param1PTR.l, Len( Param1 ) + 1 ) ; CreateString
  PokeS( Param1PTR, Param1 )
  CallCFunctionFast( *DB_AdvancedTerrain\SetTerrainHeightMap, Param0, Param1PTR )
 EndProcedure
;
; *********************************************************************
Procedure SetTerrainLight( Param0.l, Param1.f, Param2.f, Param3.f, Param4.f, Param5.f, Param6.f, Param7.f )
  CallCFunctionFast( *DB_AdvancedTerrain\SetTerrainLight, Param0, Param1, Param2, Param3, Param4, Param5, Param6, Param7 )
 EndProcedure
;
; *********************************************************************
Procedure BuildTerrain( Param0.l )
  CallCFunctionFast( *DB_AdvancedTerrain\BuildTerrain, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure UpdateTerrain()
  CallCFunctionFast( *DB_AdvancedTerrain\UpdateTerrain )
 EndProcedure
;
; *********************************************************************
Procedure SetTerrainTexture( Param0.l, Param1.l, Param2.l )
  CallCFunctionFast( *DB_AdvancedTerrain\SetTerrainTexture, Param0, Param1, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure MakecedTerrainObjectTerrain( Param0.l )
  CallCFunctionFast( *DB_AdvancedTerrain\MakeObjectTerrain, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure.f GetTerrainGroundHeight( Param1.l, Param2.f, Param3.f )
  Retour.l = CallCFunctionFast( *DB_AdvancedTerrain\GetTerrainGroundHeight, Param1, Param2, Param3 )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure LoadTerrain( Param0.s, Param1.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param0PTR.l, Len( Param0 ) + 1 ) ; CreateString
  PokeS( Param0PTR, Param0 )
  CallCFunctionFast( *DB_AdvancedTerrain\LoadTerrain, Param0PTR, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure SaveTerrain( Param0.s, Param1.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param0PTR.l, Len( Param0 ) + 1 ) ; CreateString
  PokeS( Param0PTR, Param0 )
  CallCFunctionFast( *DB_AdvancedTerrain\SaveTerrain, Param0PTR, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure.f GetcedTerrainTerrainXSize( Param1.l )
  Retour.l = CallCFunctionFast( *DB_AdvancedTerrain\GetTerrainXSize, Param1 )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f GetcedTerrainTerrainZSize( Param1.l )
  Retour.l = CallCFunctionFast( *DB_AdvancedTerrain\GetTerrainZSize, Param1 )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure DeleteTerrain( Param0.l )
  CallCFunctionFast( *DB_AdvancedTerrain\DeleteTerrain, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure UpdateTerrainNoCull( NoCullingMode.l )
  CallCFunctionFast( *DB_AdvancedTerrain\UpdateTerrainNoCull, NoCullingMode )
 EndProcedure
;
; *********************************************************************
Procedure BuildTerrain1( Param0.l, Param1.l )
  CallCFunctionFast( *DB_AdvancedTerrain\BuildTerrainEx, Param0, Param1 )
 EndProcedure
;

; IDE Options = PureBasic v4.00 (Windows - x86)
; CursorPosition = 97
; FirstLine = 48
; Folding = ---
; DarkBasic Professional RC2PBIncludes Ver 1.0 File - COMMANDS INITIALIZING
; By Frederic Cordier - 07.02.13
;
Procedure.l CheckAdvancedTerrain()
  SUCCESS.l = 1
  If OpenLibrary( 1, "AdvancedTerrain.dll")
    DB_AdvancedTerrain\SetTerrainScale= AIsFunction( 1 , "?SetTerrainScale@@YAXHMMM@Z" ) ; 1 SET TERRAIN SCALE 
    DB_AdvancedTerrain\SetTerrainSplit= AIsFunction( 1 , "?SetTerrainSplit@@YAXHH@Z" ) ; 2 SET TERRAIN SPLIT 
    DB_AdvancedTerrain\SetTerrainTiling= AIsFunction( 1 , "?SetTerrainTiling@@YAXHH@Z" ) ; 3 SET TERRAIN TILING 
    DB_AdvancedTerrain\SetTerrainHeightMap= AIsFunction( 1 , "?SetTerrainHeightMap@@YAXHK@Z" ) ; 4 SET TERRAIN HEIGHTMAP 
    DB_AdvancedTerrain\SetTerrainLight= AIsFunction( 1 , "?SetTerrainLight@@YAXHMMMMMMM@Z" ) ; 5 SET TERRAIN LIGHT 
    DB_AdvancedTerrain\BuildTerrain= AIsFunction( 1 , "?BuildTerrain@@YAXH@Z" ) ; 6 BUILD TERRAIN 
    DB_AdvancedTerrain\UpdateTerrain= AIsFunction( 1 , "?UpdateTerrain@@YAXXZ" ) ; 7 UPDATE TERRAIN 
    DB_AdvancedTerrain\SetTerrainTexture= AIsFunction( 1 , "?SetTerrainTexture@@YAXHHH@Z" ) ; 8 SET TERRAIN TEXTURE 
    DB_AdvancedTerrain\MakeObjectTerrain= AIsFunction( 1 , "?MakeObjectTerrain@@YAXH@Z" ) ; 9 MAKE OBJECT TERRAIN 
    DB_AdvancedTerrain\GetTerrainGroundHeight= AIsFunction( 1 , "?GetTerrainGroundHeight@@YAKHMM@Z" ) ; 10 GET TERRAIN GROUND HEIGHT 
    DB_AdvancedTerrain\LoadTerrain= AIsFunction( 1 , "?LoadTerrain@@YAXKH@Z" ) ; 11 LOAD TERRAIN 
    DB_AdvancedTerrain\SaveTerrain= AIsFunction( 1 , "?SaveTerrain@@YAXKH@Z" ) ; 12 SAVE TERRAIN 
    DB_AdvancedTerrain\GetTerrainXSize= AIsFunction( 1 , "?GetTerrainXSize@@YAKH@Z" ) ; 13 GET TERRAIN X SIZE 
    DB_AdvancedTerrain\GetTerrainZSize= AIsFunction( 1 , "?GetTerrainZSize@@YAKH@Z" ) ; 14 GET TERRAIN Z SIZE 
    DB_AdvancedTerrain\DeleteTerrain= AIsFunction( 1 , "?DeleteTerrain@@YAXH@Z" ) ; 15 DESTROY TERRAIN 
    DB_AdvancedTerrain\UpdateTerrainNoCull= AIsFunction( 1 , "?UpdateTerrainNoCull@@YAXH@Z" ) ; 16 UPDATE TERRAIN No Culling Mode
    DB_AdvancedTerrain\BuildTerrainEx= AIsFunction( 1 , "?BuildTerrainEx@@YAXHH@Z" ) ; 17 BUILD TERRAIN 
   Else
    SUCCESS.l = 0
   EndIf
  ProcedureReturn SUCCESS
 EndProcedure

; IDE Options = PureBasic v4.00 (Windows - x86)
; CursorPosition = 22
; Folding = -
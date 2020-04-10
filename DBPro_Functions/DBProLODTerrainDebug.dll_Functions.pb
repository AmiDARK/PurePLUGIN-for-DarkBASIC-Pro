; DarkBasic Professional RC2PBIncludes Ver 1.1 File - COMMANDS INITIALIZING
; By Frederic Cordier - 07.02.13
;
Procedure.l CheckLODTerrain()
  SUCCESS.l = 1
  If OpenLibrary( 1, "DBProLODTerrainDebug.dll")
    DB_LODTerrain\Make= AIsFunction( 1 , "?Make@@YAXHK@Z" ) ; 1 MAKE TERRAIN Terrain Number, Heightmap Filename
    DB_LODTerrain\SetPosition= AIsFunction( 1 , "?SetPosition@@YAXHMMM@Z" ) ; 3 POSITION TERRAIN Terrain Number, X, Y, Z
    DB_LODTerrain\Delete= AIsFunction( 1 , "?Delete@@YAXH@Z" ) ; 4 DELETE TERRAIN Terrain Number
    DB_LODTerrain\GetExist= AIsFunction( 1 , "?GetExist@@YAHH@Z" ) ; 5 TERRAIN EXIST Terrain Number
    DB_LODTerrain\GetHeight= AIsFunction( 1 , "?GetHeight@@YAKHMM@Z" ) ; 6 GET TERRAIN HEIGHT Terrain Number, X, Z
    DB_LODTerrain\GetTotalHeight= AIsFunction( 1 , "?GetTotalHeight@@YAKH@Z" ) ; 7 GET TOTAL TERRAIN HEIGHT Terrain Number
    DB_LODTerrain\GetPositionX= AIsFunction( 1 , "?GetPositionX@@YAKH@Z" ) ; 8 TERRAIN POSITION X Terrain Number
    DB_LODTerrain\GetPositionY= AIsFunction( 1 , "?GetPositionY@@YAKH@Z" ) ; 9 TERRAIN POSITION Y Terrain Number
    DB_LODTerrain\GetPositionZ= AIsFunction( 1 , "?GetPositionZ@@YAKH@Z" ) ; 10 TERRAIN POSITION Z Terrain Number
    DB_LODTerrain\SetTexture= AIsFunction( 1 , "?SetTexture@@YAXHH@Z" ) ; 11 TEXTURE TERRAIN Terrain Number, Image Number
    CloseLibrary( 1 )
   Else
    SUCCESS.l = 0
   Endif
  ProcedureReturn SUCCESS
 EndProcedure

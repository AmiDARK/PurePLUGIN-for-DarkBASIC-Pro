; DarkBasic Professional RC2PBIncludes Ver 1.1 File - COMMANDS INITIALIZING
; By Frederic Cordier - 07.02.13
;
Procedure.l CheckMatrix()
  SUCCESS.l = 1
  If OpenLibrary( 1, "DBProMatrixDebug.dll")
    DB_Matrix\MakeEx= AIsFunction( 1 , "?MakeEx@@YAXHMMHH@Z" ) ; 1 MAKE MATRIX Matrix Number, Width, Height, XSegments, ZSegments
    DB_Matrix\SetWireframeOn= AIsFunction( 1 , "?SetWireframeOn@@YAXH@Z" ) ; 2 SET MATRIX WIREFRAME ON Matrix Number
    DB_Matrix\Delete= AIsFunction( 1 , "?Delete@@YAXH@Z" ) ; 3 DELETE MATRIX Matrix Number
    DB_Matrix\Fill= AIsFunction( 1 , "?Fill@@YAXHMH@Z" ) ; 4 FILL MATRIX Matrix Number, Height, Tile Number
    DB_Matrix\SetTransparencyOn= AIsFunction( 1 , "?SetTransparencyOn@@YAXH@Z" ) ; 5 GHOST MATRIX ON Matrix Number
    DB_Matrix\SetTransparencyOff= AIsFunction( 1 , "?SetTransparencyOff@@YAXH@Z" ) ; 6 GHOST MATRIX OFF Matrix Number
    DB_Matrix\PositionEx= AIsFunction( 1 , "?PositionEx@@YAXHMMM@Z" ) ; 7 POSITION MATRIX Matrix Number, X, Y, Z
    DB_Matrix\PrepareTexture= AIsFunction( 1 , "?PrepareTexture@@YAXHHHH@Z" ) ; 8 PREPARE MATRIX TEXTURE Matrix Number, Image Number, Across, Down
    DB_Matrix\Randomize= AIsFunction( 1 , "?Randomize@@YAXHH@Z" ) ; 9 RANDOMIZE MATRIX Matrix Number, Maximum Height
    DB_Matrix\SetHeight= AIsFunction( 1 , "?SetHeight@@YAXHHHM@Z" ) ; 10 SET MATRIX HEIGHT Matrix Number, TileX, TileZ, Height
    DB_Matrix\SetNormal= AIsFunction( 1 , "?SetNormal@@YAXHHHMMM@Z" ) ; 11 SET MATRIX NORMAL Matrix Number, TileX, TileZ, NX, NY, NZ
    DB_Matrix\SetTexture= AIsFunction( 1 , "?SetTexture@@YAXHHH@Z" ) ; 12 SET MATRIX TEXTURE Matrix Number, Texture Mode, Mip Mode
    DB_Matrix\SetTile= AIsFunction( 1 , "?SetTile@@YAXHHHH@Z" ) ; 13 SET MATRIX TILE Matrix Number, TileX, TileZ, Tile Number
    DB_Matrix\SetWireframeOff= AIsFunction( 1 , "?SetWireframeOff@@YAXH@Z" ) ; 14 SET MATRIX WIREFRAME OFF Matrix Number
    DB_Matrix\SetEx= AIsFunction( 1 , "?SetEx@@YAXHHHHHHHH@Z" ) ; 15 SET MATRIX Matrix Number, Wire, Transparency, Cull, Filter, Light, Fog, Ambient
    DB_Matrix\ShiftDown= AIsFunction( 1 , "?ShiftDown@@YAXH@Z" ) ; 16 SHIFT MATRIX DOWN Matrix Number
    DB_Matrix\ShiftLeft= AIsFunction( 1 , "?ShiftLeft@@YAXH@Z" ) ; 18 SHIFT MATRIX LEFT Matrix Number
    DB_Matrix\ShiftRight= AIsFunction( 1 , "?ShiftRight@@YAXH@Z" ) ; 20 SHIFT MATRIX RIGHT Matrix Number
    DB_Matrix\ShiftUp= AIsFunction( 1 , "?ShiftUp@@YAXH@Z" ) ; 22 SHIFT MATRIX UP Matrix Number
    DB_Matrix\Apply= AIsFunction( 1 , "?Apply@@YAXH@Z" ) ; 24 UPDATE MATRIX Matrix Number
    DB_Matrix\GetGroundHeightEx= AIsFunction( 1 , "?GetGroundHeightEx@@YAKHMM@Z" ) ; 25 GET GROUND HEIGHT Matrix Number, X, Z
    DB_Matrix\GetHeightEx= AIsFunction( 1 , "?GetHeightEx@@YAKHHH@Z" ) ; 26 GET MATRIX HEIGHT Matrix Number, TileX, TileZ
    DB_Matrix\GetExistEx= AIsFunction( 1 , "?GetExistEx@@YAHH@Z" ) ; 27 MATRIX EXIST Matrix Number
    DB_Matrix\GetPositionXEx= AIsFunction( 1 , "?GetPositionXEx@@YAKH@Z" ) ; 28 MATRIX POSITION X Matrix Number
    DB_Matrix\GetPositionYEx= AIsFunction( 1 , "?GetPositionYEx@@YAKH@Z" ) ; 29 MATRIX POSITION Y Matrix Number
    DB_Matrix\GetPositionZEx= AIsFunction( 1 , "?GetPositionZEx@@YAKH@Z" ) ; 30 MATRIX POSITION Z Matrix Number
    DB_Matrix\GetTileCountEx= AIsFunction( 1 , "?GetTileCountEx@@YAHH@Z" ) ; 31 MATRIX TILE COUNT Matrix Number
    DB_Matrix\GetTilesExistEx= AIsFunction( 1 , "?GetTilesExistEx@@YAHH@Z" ) ; 32 MATRIX TILES EXIST Matrix Number
    DB_Matrix\GetWireframeEx= AIsFunction( 1 , "?GetWireframeEx@@YAHH@Z" ) ; 33 MATRIX WIREFRAME STATE Matrix Number
    DB_Matrix\SetPositionVector3= AIsFunction( 1 , "?SetPositionVector3@@YAXHH@Z" ) ; 34 POSITION MATRIX Matrix Number, Vector
    DB_Matrix\GetPositionVector3= AIsFunction( 1 , "?GetPositionVector3@@YAXHH@Z" ) ; 35 SET VECTOR3 TO MATRIX POSITION Vector, Matrix Number
    DB_Matrix\SetTransparencyOn1= AIsFunction( 1 , "?SetTransparencyOn@@YAXHH@Z" ) ; 36 GHOST MATRIX ON Matrix Number, Mode
    DB_Matrix\SetTrim= AIsFunction( 1 , "?SetTrim@@YAXHMM@Z" ) ; 37 SET MATRIX TRIM Matrix Number, TrimX, TrimY
    DB_Matrix\SetPriority= AIsFunction( 1 , "?SetPriority@@YAXHH@Z" ) ; 38 SET MATRIX PRIORITY Matrix Number, Priority Flag
    CloseLibrary( 1 )
   Else
    SUCCESS.l = 0
   Endif
  ProcedureReturn SUCCESS
 EndProcedure

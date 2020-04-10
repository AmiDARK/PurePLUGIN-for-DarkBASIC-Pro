; DarkBasic Professional RC2PBIncludes Ver 1.1 File - COMMANDS INITIALIZING
; By Frederic Cordier - 07.02.13
;
Procedure.l CheckLight()
  SUCCESS.l = 1
  If OpenLibrary( 1, "DBProLightDebug.dll")
    DB_Light\MakeEx= AIsFunction( 1 , "?MakeEx@@YAXH@Z" ) ; 1 MAKE LIGHT Light Number
    DB_Light\DeleteEx= AIsFunction( 1 , "?DeleteEx@@YAXH@Z" ) ; 2 DELETE LIGHT Light Number
    DB_Light\SetColor= AIsFunction( 1 , "?SetColor@@YAXHK@Z" ) ; 3 COLOR LIGHT Light Number, Color Value
    DB_Light\SetColorEx= AIsFunction( 1 , "?SetColorEx@@YAXHHHH@Z" ) ; 4 COLOR LIGHT Light Number, Red, Green, Blue
    DB_Light\Show= AIsFunction( 1 , "?Show@@YAXH@Z" ) ; 5 SHOW LIGHT Light Number
    DB_Light\Hide= AIsFunction( 1 , "?Hide@@YAXH@Z" ) ; 6 HIDE LIGHT Light Number
    DB_Light\Point= AIsFunction( 1 , "?Point@@YAXHMMM@Z" ) ; 7 POINT LIGHT Light Number, X, Y, Z
    DB_Light\Position= AIsFunction( 1 , "?Position@@YAXHMMM@Z" ) ; 8 POSITION LIGHT Light Number, X, Y, Z
    DB_Light\Rotate= AIsFunction( 1 , "?Rotate@@YAXHMMM@Z" ) ; 9 ROTATE LIGHT Light Number, XAngle, YAngle, ZAngle
    DB_Light\SetDirectional= AIsFunction( 1 , "?SetDirectional@@YAXHMMM@Z" ) ; 10 SET DIRECTIONAL LIGHT Light Number, NX, NY, NZ
    DB_Light\SetRange= AIsFunction( 1 , "?SetRange@@YAXHM@Z" ) ; 11 SET LIGHT RANGE Light Number, Distance
    DB_Light\SetToObjectOrientation= AIsFunction( 1 , "?SetToObjectOrientation@@YAXHH@Z" ) ; 12 SET LIGHT TO OBJECT ORIENTATION Light Number, Object Number
    DB_Light\SetToObject= AIsFunction( 1 , "?SetToObject@@YAXHH@Z" ) ; 13 SET LIGHT TO OBJECT POSITION Light Number, Object Number
    DB_Light\SetPoint= AIsFunction( 1 , "?SetPoint@@YAXHMMM@Z" ) ; 14 SET POINT LIGHT Light Number, X, Y, Z
    DB_Light\SetSpot= AIsFunction( 1 , "?SetSpot@@YAXHMM@Z" ) ; 15 SET SPOT LIGHT Light Number, Inner Angle, Outer Angle
    DB_Light\SetAmbient= AIsFunction( 1 , "?SetAmbient@@YAXH@Z" ) ; 16 SET AMBIENT LIGHT Percentage
    DB_Light\SetAmbientColor= AIsFunction( 1 , "?SetAmbientColor@@YAXK@Z" ) ; 17 COLOR AMBIENT LIGHT Color Value
    DB_Light\FogOn= AIsFunction( 1 , "?FogOn@@YAXXZ" ) ; 18 FOG ON 
    DB_Light\FogOff= AIsFunction( 1 , "?FogOff@@YAXXZ" ) ; 19 FOG OFF 
    DB_Light\SetFogColor= AIsFunction( 1 , "?SetFogColor@@YAXK@Z" ) ; 20 FOG COLOR Color Value
    DB_Light\SetFogColorEx= AIsFunction( 1 , "?SetFogColorEx@@YAXHHH@Z" ) ; 21 FOG COLOR Red, Green, Blue
    DB_Light\SetFogDistance= AIsFunction( 1 , "?SetFogDistance@@YAXH@Z" ) ; 22 FOG DISTANCE Distance
    DB_Light\GetXDirectionEx= AIsFunction( 1 , "?GetXDirectionEx@@YAKH@Z" ) ; 23 LIGHT DIRECTION X Light Number
    DB_Light\GetYDirectionEx= AIsFunction( 1 , "?GetYDirectionEx@@YAKH@Z" ) ; 24 LIGHT DIRECTION Y Light Number
    DB_Light\GetZDirectionEx= AIsFunction( 1 , "?GetZDirectionEx@@YAKH@Z" ) ; 25 LIGHT DIRECTION Z Light Number
    DB_Light\GetXPositionEx= AIsFunction( 1 , "?GetXPositionEx@@YAKH@Z" ) ; 26 LIGHT POSITION X Light Number
    DB_Light\GetYPositionEx= AIsFunction( 1 , "?GetYPositionEx@@YAKH@Z" ) ; 27 LIGHT POSITION Y Light Number
    DB_Light\GetZPositionEx= AIsFunction( 1 , "?GetZPositionEx@@YAKH@Z" ) ; 28 LIGHT POSITION Z Light Number
    DB_Light\GetExistEx= AIsFunction( 1 , "?GetExistEx@@YAHH@Z" ) ; 29 LIGHT EXIST Light Number
    DB_Light\GetRangeEx= AIsFunction( 1 , "?GetRangeEx@@YAKH@Z" ) ; 30 LIGHT RANGE Light Number
    DB_Light\GetTypeEx= AIsFunction( 1 , "?GetTypeEx@@YAHH@Z" ) ; 31 LIGHT TYPE Light Number
    DB_Light\GetVisibleEx= AIsFunction( 1 , "?GetVisibleEx@@YAHH@Z" ) ; 32 LIGHT VISIBLE Light Number
    DB_Light\SetNormalizationOff= AIsFunction( 1 , "?SetNormalizationOff@@YAXXZ" ) ; 33 SET NORMALIZATION OFF 
    DB_Light\SetNormalizationOn= AIsFunction( 1 , "?SetNormalizationOn@@YAXXZ" ) ; 34 SET NORMALIZATION ON 
    DB_Light\SetPositionVector3= AIsFunction( 1 , "?SetPositionVector3@@YAXHH@Z" ) ; 35 POSITION LIGHT Light Number, Vector
    DB_Light\SetRotationVector3= AIsFunction( 1 , "?SetRotationVector3@@YAXHH@Z" ) ; 36 ROTATE LIGHT Light Number, Vector
    DB_Light\GetPositionVector3= AIsFunction( 1 , "?GetPositionVector3@@YAXHH@Z" ) ; 37 SET VECTOR3 TO LIGHT POSITION Vector, Light Number
    DB_Light\GetRotationVector3= AIsFunction( 1 , "?GetRotationVector3@@YAXHH@Z" ) ; 38 SET VECTOR3 TO LIGHT ROTATION Vector, Light Number
    DB_Light\SetFogDistance1= AIsFunction( 1 , "?SetFogDistance@@YAXHH@Z" ) ; 39 FOG DISTANCE Start Distance, End Distance
    CloseLibrary( 1 )
   Else
    SUCCESS.l = 0
   Endif
  ProcedureReturn SUCCESS
 EndProcedure

; DarkBasic Professional RC2PBIncludes Ver 1.0 File - COMMANDS INITIALIZING
; By Frederic Cordier - 07.02.13
;
Procedure.l CheckEZRotateBasic()
  SUCCESS.l = 1
  If OpenLibrary( 1, "EZrotate.dll")
    EZRotateBasic\EZrotate_Set= AIsFunction( 1 , "?EZrotate_Set@@YAXNNN@Z" ) ; 1 EZro_Set Current X#, Current Y#, Current Z#
    EZRotateBasic\EZrotate_GetX= AIsFunction( 1 , "?EZrotate_GetX@@YANXZ" ) ; 2 EZro_GetX 
    EZRotateBasic\EZrotate_GetY= AIsFunction( 1 , "?EZrotate_GetY@@YANXZ" ) ; 3 EZro_GetY 
    EZRotateBasic\EZrotate_GetZ= AIsFunction( 1 , "?EZrotate_GetZ@@YANXZ" ) ; 4 EZro_GetZ 
    EZRotateBasic\EZrotate_GX= AIsFunction( 1 , "?EZrotate_GX@@YAXN@Z" ) ; 5 EZro_GX Angle#
    EZRotateBasic\EZrotate_GY= AIsFunction( 1 , "?EZrotate_GY@@YAXN@Z" ) ; 6 EZro_GY Angle#
    EZRotateBasic\EZrotate_GZ= AIsFunction( 1 , "?EZrotate_GZ@@YAXN@Z" ) ; 7 EZro_GZ Angle#
    EZRotateBasic\EZrotate_GetMatXX= AIsFunction( 1 , "?EZrotate_GetMatXX@@YANXZ" ) ; 8 EZro_GetMatXX 
    EZRotateBasic\EZrotate_GetMatXY= AIsFunction( 1 , "?EZrotate_GetMatXY@@YANXZ" ) ; 9 EZro_GetMatXY 
    EZRotateBasic\EZrotate_GetMatXZ= AIsFunction( 1 , "?EZrotate_GetMatXZ@@YANXZ" ) ; 10 EZro_GetMatXZ 
    EZRotateBasic\EZrotate_GetMatYX= AIsFunction( 1 , "?EZrotate_GetMatYX@@YANXZ" ) ; 11 EZro_GetMatYX 
    EZRotateBasic\EZrotate_GetMatYY= AIsFunction( 1 , "?EZrotate_GetMatYY@@YANXZ" ) ; 12 EZro_GetMatYY 
    EZRotateBasic\EZrotate_GetMatYZ= AIsFunction( 1 , "?EZrotate_GetMatYZ@@YANXZ" ) ; 13 EZro_GetMatYZ 
    EZRotateBasic\EZrotate_GetMatZX= AIsFunction( 1 , "?EZrotate_GetMatZX@@YANXZ" ) ; 14 EZro_GetMatZX 
    EZRotateBasic\EZrotate_GetMatZY= AIsFunction( 1 , "?EZrotate_GetMatZY@@YANXZ" ) ; 15 EZro_GetMatZY 
    EZRotateBasic\EZrotate_GetMatZZ= AIsFunction( 1 , "?EZrotate_GetMatZZ@@YANXZ" ) ; 16 EZro_GetMatZZ 
    EZRotateBasic\EZrotate_LX= AIsFunction( 1 , "?EZrotate_LX@@YAXN@Z" ) ; 17 EZro_LX Angle#
    EZRotateBasic\EZrotate_LY= AIsFunction( 1 , "?EZrotate_LY@@YAXN@Z" ) ; 18 EZro_LY Angle#
    EZRotateBasic\EZrotate_LZ= AIsFunction( 1 , "?EZrotate_LZ@@YAXN@Z" ) ; 19 EZro_LZ Angle#
    EZRotateBasic\EZrotate_SetMatRowX= AIsFunction( 1 , "?EZrotate_SetMatRowX@@YAXNNN@Z" ) ; 20 EZro_SetMatRowX MatrixXX#, MatrixXY#, MatrixXZ# 
    EZRotateBasic\EZrotate_SetMatRowY= AIsFunction( 1 , "?EZrotate_SetMatRowY@@YAXNNN@Z" ) ; 21 EZro_SetMatRowY MatrixYX#, MatrixYY#, MatrixYZ# 
    EZRotateBasic\EZrotate_SetMatRowZ= AIsFunction( 1 , "?EZrotate_SetMatRowZ@@YAXNNN@Z" ) ; 22 EZro_SetMatRowZ MatrixZX#, MatrixZY#, MatrixZZ# 
    CloseLibrary( 1 )
   Else
    SUCCESS.l = 0
   EndIf
  ProcedureReturn SUCCESS
 EndProcedure

; IDE Options = PureBasic 4.10 Beta 2 (Windows - x86)
; CursorPosition = 29
; Folding = -
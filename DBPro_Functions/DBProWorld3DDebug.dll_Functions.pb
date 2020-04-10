; DarkBasic Professional RC2PBIncludes Ver 1.1 File - COMMANDS INITIALIZING
; By Frederic Cordier - 07.02.13
;
Procedure.l CheckWorld3D()
  SUCCESS.l = 1
  If OpenLibrary( 1, "DBProWorld3DDebug.dll")
    DB_World3D\LoadEx= AIsFunction( 1 , "?LoadEx@@YAXKK@Z" ) ; 1 LOAD BSP PK3 Filename, BSP Filename
    DB_World3D\SetupCameraCollisionEx= AIsFunction( 1 , "?SetupCameraCollisionEx@@YAXHHMH@Z" ) ; 2 SET BSP CAMERA COLLISION Collision Index, Camera Number, Radius, Response
    DB_World3D\SetupObjectCollisionEx= AIsFunction( 1 , "?SetupObjectCollisionEx@@YAXHHMH@Z" ) ; 3 SET BSP OBJECT COLLISION Collision Index, Object Number, Radius, Response
    DB_World3D\SetupCullingCameraEx= AIsFunction( 1 , "?SetupCullingCameraEx@@YAXH@Z" ) ; 4 SET BSP CAMERA Camera Number
    DB_World3D\SetupCollisionOffEx= AIsFunction( 1 , "?SetupCollisionOffEx@@YAXH@Z" ) ; 5 SET BSP COLLISION OFF Collision Index
    DB_World3D\DeleteEx= AIsFunction( 1 , "?DeleteEx@@YAXXZ" ) ; 6 DELETE BSP 
    DB_World3D\GetCollisionResponseEx= AIsFunction( 1 , "?GetCollisionResponseEx@@YAHH@Z" ) ; 7 BSP COLLISION HIT Collision Index
    DB_World3D\GetCollisionXEx= AIsFunction( 1 , "?GetCollisionXEx@@YAKH@Z" ) ; 8 BSP COLLISION X Collision Index
    DB_World3D\GetCollisionYEx= AIsFunction( 1 , "?GetCollisionYEx@@YAKH@Z" ) ; 9 BSP COLLISION Y Collision Index
    DB_World3D\GetCollisionZEx= AIsFunction( 1 , "?GetCollisionZEx@@YAKH@Z" ) ; 10 BSP COLLISION Z Collision Index
    DB_World3D\SetCollisionThreshholdEx= AIsFunction( 1 , "?SetCollisionThreshholdEx@@YAXHM@Z" ) ; 11 SET BSP COLLISION THRESHHOLD Collision Index, Sensitivity
    DB_World3D\SetCameraCollisionRadiusEx= AIsFunction( 1 , "?SetCameraCollisionRadiusEx@@YAXHHMMM@Z" ) ; 12 SET BSP CAMERA COLLISION RADIUS Collision Index, Camera Number, X, Y, Z
    DB_World3D\SetHardwareMultiTexturingOnEx= AIsFunction( 1 , "?SetHardwareMultiTexturingOnEx@@YAXXZ" ) ; 13 SET BSP MULTITEXTURING ON 
    DB_World3D\SetHardwareMultiTexturingOffEx= AIsFunction( 1 , "?SetHardwareMultiTexturingOffEx@@YAXXZ" ) ; 14 SET BSP MULTITEXTURING OFF 
    DB_World3D\SetObjectCollisionRadiusEx= AIsFunction( 1 , "?SetObjectCollisionRadiusEx@@YAXHHMMM@Z" ) ; 15 SET BSP OBJECT COLLISION RADIUS Collision Index, Object Number, X, Y, Z
    DB_World3D\ProcessCollisionEx= AIsFunction( 1 , "?ProcessCollisionEx@@YAXH@Z" ) ; 16 PROCESS BSP COLLISION Collision Index
    DB_World3D\SetCollisionHeightAdjustmentEx= AIsFunction( 1 , "?SetCollisionHeightAdjustmentEx@@YAXHM@Z" ) ; 17 SET BSP COLLISION HEIGHT ADJUSTMENT Collision Index, Height
    CloseLibrary( 1 )
   Else
    SUCCESS.l = 0
   Endif
  ProcedureReturn SUCCESS
 EndProcedure

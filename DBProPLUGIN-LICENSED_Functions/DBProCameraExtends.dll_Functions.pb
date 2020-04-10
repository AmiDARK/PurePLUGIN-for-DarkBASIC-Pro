; DarkBasic Professional RC2PBIncludes Ver 1.1 File - COMMANDS INITIALIZING
; By Frederic Cordier - 07.02.13
;
Procedure.l CheckCameraExtends()
  SUCCESS.l = 0
  If OpenLibrary( 1, "DBProCameraExtends.dll")
    SUCCESS = 1
   Else
    If OpenLibrary( 1, "eXtends_Cameras3D.dll" )
      SUCCESS = 1
     EndIf
   EndIf
  If SUCCESS = 1
    CameraExtends\CMR_Init= AIsFunction( 1 , "CMR_Init" ) ; 1 CMR Initialized 
    CameraExtends\CMR_Clear= AIsFunction( 1 , "CMR_Clear" ) ; 2 CMR Clear All Camera 
    CameraExtends\CMR_Count= AIsFunction( 1 , "CMR_Count" ) ; 3 CMR Exist Camera Count 
    CameraExtends\CMR_Delete= AIsFunction( 1 , "CMR_Delete" ) ; 4 CMR Delete Camera Camera Number
    CameraExtends\CMR_DynamicMake= AIsFunction( 1 , "CMR_DynamicMake" ) ; 5 CMR Make Camera 
    CameraExtends\CMR_DynamicClone= AIsFunction( 1 , "CMR_DynamicClone" ) ; 6 CMR Clone Camera Source Camera
    CloseLibrary( 1 )
   Else
    SUCCESS.l = 0
   EndIf
  ProcedureReturn SUCCESS
 EndProcedure

; IDE Options = PureBasic 4.20 Beta 2 (Windows - x86)
; CursorPosition = 8
; Folding = -
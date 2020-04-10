; DarkBasic Professional RC2PBIncludes Ver 1.1 File - COMMANDS INITIALIZING
; By Frederic Cordier - 07.02.13
;
Procedure.l CheckLight3DExtends()
  SUCCESS.l = 0
  If OpenLibrary( 1, "DBProLight3DExtends.dll")
    SUCCESS = 1
   Else
    If OpenLibrary( 1, "eXtends_VirtualsLights3D.dll" )
      SUCCESS = 1
     EndIf
   EndIf
  If SUCCESS = 1
    Light3DExtends\L3D_Init= AIsFunction( 1 , "L3D_Init" ) ; 1 L3D Initialized 
    Light3DExtends\L3D_SetDisplayCamera= AIsFunction( 1 , "L3D_SetDisplayCamera" ) ; 2 L3D Set Control Camera CameraNumber
    Light3DExtends\L3D_GetDisplayCamera= AIsFunction( 1 , "L3D_GetDisplayCamera" ) ; 3 L3D Get Control Camera 
    Light3DExtends\L3D_LockLight= AIsFunction( 1 , "L3D_LockLight" ) ; 4 L3D Lock Light LightNumber
    Light3DExtends\L3D_UnLockLight= AIsFunction( 1 , "L3D_UnLockLight" ) ; 5 L3D Unlock Light LightNumber
    Light3DExtends\L3D_GetLocked= AIsFunction( 1 , "L3D_GetLocked" ) ; 6 L3D Get Locked LightNumber
    Light3DExtends\L3D_GetTotalFreeLight= AIsFunction( 1 , "L3D_GetTotalFreeLight" ) ; 7 L3D Get Allocated Light 
    Light3DExtends\L3D_AddVirtualLight= AIsFunction( 1 , "L3D_AddVirtualLight" ) ; 8 L3D Add Virtual Light Xpos, YPos, ZPos, Range, RedColor, GreenColor, BlueColor, Style
    Light3DExtends\L3D_DeleteVirtualLight= AIsFunction( 1 , "L3D_DeleteVirtualLight" ) ; 9 L3D Delete Virtual Light LightNumber
    Light3DExtends\L3D_GetVirtualLightsCount= AIsFunction( 1 , "L3D_GetVirtualLightsCount" ) ; 10 L3D Get Virtual Light Count 
    Light3DExtends\L3D_ClearVirtualLights= AIsFunction( 1 , "L3D_ClearVirtualLights" ) ; 11 L3D Clear Virtual Lights 
    Light3DExtends\L3D_RefreshLights= AIsFunction( 1 , "L3D_RefreshLights" ) ; 12 L3D Display Lights 
    Light3DExtends\L3D_SetVisibilityDistance= AIsFunction( 1 , "L3D_SetVisibilityDistance" ) ; 13 L3D Set Visibility Range Range
    Light3DExtends\L3D_GetVisibilityDistance= AIsFunction( 1 , "L3D_GetVisibilityDistance" ) ; 14 L3D Get Visibility Range 
    Light3DExtends\L3D_SetVLightRange= AIsFunction( 1 , "L3D_SetVLightRange" ) ; 15 L3D Set Virtual Light Range LightNumber, Range(f)
    Light3DExtends\L3D_SetVLightColor= AIsFunction( 1 , "L3D_SetVLightColor" ) ; 16 L3D Set Virtual Light Color LightNumber, Red, Green, Blue
    Light3DExtends\L3D_HideVLight= AIsFunction( 1 , "L3D_HideVLight" ) ; 17 L3D Hide Virtual Light LightNumber
    Light3DExtends\L3D_ShowVLight= AIsFunction( 1 , "L3D_ShowVLight" ) ; 18 L3D Show Virtual Light LightNumber
    Light3DExtends\L3D_PositionVLight= AIsFunction( 1 , "L3D_PositionVLight" ) ; 19 L3D Position Virtual Light LightNumber, XPos(f), YPos(f), ZPos(f)
    Light3DExtends\L3D_SetVLightHalo= AIsFunction( 1 , "L3D_SetVLightHalo" ) ; 20 L3D Set Virtual Light Halo LightNumber, HaloImage
    Light3DExtends\L3D_SetVLightAsFixed= AIsFunction( 1 , "L3D_SetVLightAsFixed" ) ; 21 L3D Set Virtual Fixed Light LightNumber
    Light3DExtends\L3D_SetVLightAsFlame= AIsFunction( 1 , "L3D_SetVLightAsFlame" ) ; 22 L3D Set Virtual Flame Light LightNumber
    Light3DExtends\L3D_SetVLightAsPulse= AIsFunction( 1 , "L3D_SetVLightAsPulse" ) ; 23 L3D Set Virtual Pulse Light LightNumber
    Light3DExtends\L3D_SetVLightAsFlashs= AIsFunction( 1 , "L3D_SetVLightAsFlashs" ) ; 24 L3D Set Virtual Flash Light LightNumber
    Light3DExtends\L3D_GetTrueLightColor= AIsFunction( 1 , "L3D_GetTrueLightColor" ) ; 25 L3D Get True Light Color LightID
    Light3DExtends\L3D_GetTrueLightRange= AIsFunction( 1 , "L3D_GetTrueLightRange" ) ; 26 L3D Get True Light Range LightID
    CloseLibrary( 1 )
   Else
    SUCCESS.l = 0
   EndIf
  ProcedureReturn SUCCESS
 EndProcedure

; IDE Options = PureBasic 4.20 Beta 2 (Windows - x86)
; CursorPosition = 13
; Folding = -
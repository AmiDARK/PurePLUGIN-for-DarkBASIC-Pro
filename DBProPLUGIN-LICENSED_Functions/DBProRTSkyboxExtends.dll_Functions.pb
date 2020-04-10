; DarkBasic Professional RC2PBIncludes Ver 1.1 File - COMMANDS INITIALIZING
; By Frederic Cordier - 07.02.13
;
Procedure.l CheckRTSkyboxExtends()
  SUCCESS.l = 0
  If OpenLibrary( 1, "DBProRTSkyboxExtends.dll")
    SUCCESS = 1
   Else
    If OpenLibrary( 1, "eXtends_RealTimeSkySystem.dll" )
      SUCCESS = 1
     EndIf
   EndIf
  If SUCCESS = 1
    RTSkyboxExtends\RTSkybox_Init= AIsFunction( 1 , "RTSkybox_Init" ) ; 1 RTS Initialized 
    RTSkyboxExtends\RTS_RealTime_SetClock= AIsFunction( 1 , "RTS_RealTime_SetClock" ) ; 2 RTS Set Clock Hour, Minutes, TimeExpansion(f)
    RTSkyboxExtends\RTS_GetDay= AIsFunction( 1 , "RTS_GetDay" ) ; 3 RTS Get Day 
    RTSkyboxExtends\RTS_GetHour= AIsFunction( 1 , "RTS_GetHour" ) ; 4 RTS Get Hour 
    RTSkyboxExtends\RTS_GetMinutes= AIsFunction( 1 , "RTS_GetMinutes" ) ; 5 RTS Get Minutes 
    RTSkyboxExtends\RTS_GetSecunds= AIsFunction( 1 , "RTS_GetSecunds" ) ; 6 RTS Get Seconds 
    RTSkyboxExtends\RTS_SetWind= AIsFunction( 1 , "RTS_SetWind" ) ; 7 RTS Set Wind Speed XSpeed(f), ZSpeed(f)
    RTSkyboxExtends\RTS_ClearRTSkybox= AIsFunction( 1 , "RTS_ClearRTSkybox" ) ; 8 RTS Clear Skybox 
    RTSkyboxExtends\RTS_RealTimeSky_Setup= AIsFunction( 1 , "RTS_RealTimeSky_Setup" ) ; 9 RTS Setup Skybox SkyBoxFile$, CameraMode
    RTSkyboxExtends\RTS_RealTimeSky= AIsFunction( 1 , "RTS_RealTimeSky" ) ; 10 RTS Update Skybox 
    RTSkyboxExtends\RTS_SetFogControlOn= AIsFunction( 1 , "RTS_SetFogControlOn" ) ; 11 RTS Fog On 
    RTSkyboxExtends\RTS_SetFogControlOff= AIsFunction( 1 , "RTS_SetFogControlOff" ) ; 12 RTS Fog Off 
    RTSkyboxExtends\RTS_SetFogDistance= AIsFunction( 1 , "RTS_SetFogDistance" ) ; 13 RTS Fog Distance Distance(f)
    RTSkyboxExtends\RTS_SetFogColor= AIsFunction( 1 , "RTS_SetFogColor" ) ; 14 RTS Fog Color Red, Green, Blue
    RTSkyboxExtends\RTS_GetObjectLoaded= AIsFunction( 1 , "RTS_GetObjectLoaded" ) ; 15 RTS Get Loaded Object ObjectID[0-10]
    RTSkyboxExtends\RTS_SetFogColorEx= AIsFunction( 1 , "RTS_SetFogColorEx" ) ; 16 RTS Fog Color Red, Green, Blue, NightRed, NightGreen, NightBlue
    RTSkyboxExtends\RTS_CloudPersistence= AIsFunction( 1 , "RTS_CloudPersistence" ) ; 17 RTS Set Cloud Density CloudsDensity#
    RTSkyboxExtends\RTS_SetMistAlpha= AIsFunction( 1 , "RTS_SetMistAlpha" ) ; 18 RTS Set Mist Density MistDensity#
    RTSkyboxExtends\RTS_SetDay= AIsFunction( 1 , "RTS_SetDay" ) ; 19 RTS Set Day ActualDay
    RTSkyboxExtends\RTS_SetHour= AIsFunction( 1 , "RTS_SetHour" ) ; 20 RTS Set Hour ActualHour
    RTSkyboxExtends\RTS_SetMinutes= AIsFunction( 1 , "RTS_SetMinutes" ) ; 21 RTS Set Minutes ActualMinute
    RTSkyboxExtends\RTS_SetSecunds= AIsFunction( 1 , "RTS_SetSecunds" ) ; 22 RTS Set Seconds ActualSecond
    RTSkyboxExtends\RTS_SetTimeExpansion= AIsFunction( 1 , "RTS_SetTimeExpansion" ) ; 23 RTS Set Time Expansion TimeExpansion(f)
    RTSkyboxExtends\RTS_EnableShadowShadings= AIsFunction( 1 , "RTS_EnableShadowShadings" ) ; 24 RTS Shadow Shading On 
    RTSkyboxExtends\RTS_DisableShadowShadings= AIsFunction( 1 , "RTS_DisableShadowShadings" ) ; 25 RTS Shadow Shading Off 
    RTSkyboxExtends\RTS_SetAutoZoom= AIsFunction( 1 , "RTS_SetAutoZoom" ) ; 26 RTS Set Auto Zoom ZoomFactor#
    CloseLibrary( 1 )
   Else
    SUCCESS.l = 0
   EndIf
  ProcedureReturn SUCCESS
 EndProcedure

; IDE Options = PureBasic 4.20 Beta 2 (Windows - x86)
; CursorPosition = 8
; Folding = -
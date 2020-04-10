; DarkBasic Professional RC2PBIncludes Ver 1. File - COMMANDS WRAPPING
; By Frederic Cordier - 07.02.13
;
; *********************************************************************
Procedure.l RTSkybox_Init()
  Retour.l = CallCFunctionFast( *DB_RTSkyboxExtends\RTSkybox_Init )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure RTS_RealTime_SetClock( Hour.l, Minutes.l, TimeExpansionf.f )
  CallCFunctionFast( *DB_RTSkyboxExtends\RTS_RealTime_SetClock, Hour, Minutes, TimeExpansionf )
 EndProcedure
;
; *********************************************************************
Procedure.l RTS_GetDay()
  Retour.l = CallCFunctionFast( *DB_RTSkyboxExtends\RTS_GetDay )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l RTS_GetHour()
  Retour.l = CallCFunctionFast( *DB_RTSkyboxExtends\RTS_GetHour )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l RTS_GetMinutes()
  Retour.l = CallCFunctionFast( *DB_RTSkyboxExtends\RTS_GetMinutes )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l RTS_GetSecunds()
  Retour.l = CallCFunctionFast( *DB_RTSkyboxExtends\RTS_GetSecunds )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure RTS_SetWind( XSpeedf.f, ZSpeedf.f )
  CallCFunctionFast( *DB_RTSkyboxExtends\RTS_SetWind, XSpeedf, ZSpeedf )
 EndProcedure
;
; *********************************************************************
Procedure RTS_ClearRTSkybox()
  CallCFunctionFast( *DB_RTSkyboxExtends\RTS_ClearRTSkybox )
 EndProcedure
;
; *********************************************************************
Procedure RTS_RealTimeSky_Setup( SkyBoxFile.s, CameraMode.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @SkyBoxFilePTR.l, Len( SkyBoxFile ) + 1 ) ; CreateString
  PokeS( SkyBoxFilePTR, SkyBoxFile )
  CallCFunctionFast( *DB_RTSkyboxExtends\RTS_RealTimeSky_Setup, SkyBoxFilePTR, CameraMode )
 EndProcedure
;
; *********************************************************************
Procedure RTS_RealTimeSky()
  CallCFunctionFast( *DB_RTSkyboxExtends\RTS_RealTimeSky )
 EndProcedure
;
; *********************************************************************
Procedure RTS_SetFogControlOn()
  CallCFunctionFast( *DB_RTSkyboxExtends\RTS_SetFogControlOn )
 EndProcedure
;
; *********************************************************************
Procedure RTS_SetFogControlOff()
  CallCFunctionFast( *DB_RTSkyboxExtends\RTS_SetFogControlOff )
 EndProcedure
;
; *********************************************************************
Procedure RTS_SetFogDistance( Distancef.f )
  CallCFunctionFast( *DB_RTSkyboxExtends\RTS_SetFogDistance, Distancef )
 EndProcedure
;
; *********************************************************************
Procedure RTS_SetFogColor( Red.l, Green.l, Blue.l )
  CallCFunctionFast( *DB_RTSkyboxExtends\RTS_SetFogColor, Red, Green, Blue )
 EndProcedure
;
; *********************************************************************
Procedure.l RTS_GetObjectLoaded( ObjectID010.l )
  Retour.l = CallCFunctionFast( *DB_RTSkyboxExtends\RTS_GetObjectLoaded, ObjectID010 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure RTS_SetFogColor1( Red.l, Green.l, Blue.l, NightRed.l, NightGreen.l, NightBlue.l )
  CallCFunctionFast( *DB_RTSkyboxExtends\RTS_SetFogColorEx, Red, Green, Blue, NightRed, NightGreen, NightBlue )
 EndProcedure
;
; *********************************************************************
Procedure RTS_CloudPersistence( CloudsDensity.f )
  CallCFunctionFast( *DB_RTSkyboxExtends\RTS_CloudPersistence, CloudsDensity )
 EndProcedure
;
; *********************************************************************
Procedure RTS_SetMistAlpha( MistDensity.f )
  CallCFunctionFast( *DB_RTSkyboxExtends\RTS_SetMistAlpha, MistDensity )
 EndProcedure
;
; *********************************************************************
Procedure RTS_SetDay( ActualDay.l )
  CallCFunctionFast( *DB_RTSkyboxExtends\RTS_SetDay, ActualDay )
 EndProcedure
;
; *********************************************************************
Procedure RTS_SetHour( ActualHour.l )
  CallCFunctionFast( *DB_RTSkyboxExtends\RTS_SetHour, ActualHour )
 EndProcedure
;
; *********************************************************************
Procedure RTS_SetMinutes( ActualMinute.l )
  CallCFunctionFast( *DB_RTSkyboxExtends\RTS_SetMinutes, ActualMinute )
 EndProcedure
;
; *********************************************************************
Procedure RTS_SetSecunds( ActualSecond.l )
  CallCFunctionFast( *DB_RTSkyboxExtends\RTS_SetSecunds, ActualSecond )
 EndProcedure
;
; *********************************************************************
Procedure RTS_SetTimeExpansion( TimeExpansionf.f )
  CallCFunctionFast( *DB_RTSkyboxExtends\RTS_SetTimeExpansion, TimeExpansionf )
 EndProcedure
;
; *********************************************************************
Procedure RTS_EnableShadowShadings()
  CallCFunctionFast( *DB_RTSkyboxExtends\RTS_EnableShadowShadings )
 EndProcedure
;
; *********************************************************************
Procedure RTS_DisableShadowShadings()
  CallCFunctionFast( *DB_RTSkyboxExtends\RTS_DisableShadowShadings )
 EndProcedure
;
; *********************************************************************
Procedure RTS_SetAutoZoom( ZoomFactor.f )
  CallCFunctionFast( *DB_RTSkyboxExtends\RTS_SetAutoZoom, ZoomFactor )
 EndProcedure
;

; IDE Options = PureBasic 4.10 Beta 2 (Windows - x86)
; CursorPosition = 138
; FirstLine = 96
; Folding = -----
; DarkBasic Professional RC2PBIncludes Ver 1. File - COMMANDS WRAPPING
; By Frederic Cordier - 07.02.13
;
; *********************************************************************
Procedure.l L3D_Init()
  Retour.l = CallCFunctionFast( *DB_Light3DExtends\L3D_Init )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure L3D_SetDisplayCamera( CameraNumber.l )
  CallCFunctionFast( *DB_Light3DExtends\L3D_SetDisplayCamera, CameraNumber )
 EndProcedure
;
; *********************************************************************
Procedure.l L3D_GetDisplayCamera()
  Retour.l = CallCFunctionFast( *DB_Light3DExtends\L3D_GetDisplayCamera )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure L3D_LockLight( LightNumber.l )
  CallCFunctionFast( *DB_Light3DExtends\L3D_LockLight, LightNumber )
 EndProcedure
;
; *********************************************************************
Procedure L3D_UnLockLight( LightNumber.l )
  CallCFunctionFast( *DB_Light3DExtends\L3D_UnLockLight, LightNumber )
 EndProcedure
;
; *********************************************************************
Procedure.l L3D_GetLocked( LightNumber.l )
  Retour.l = CallCFunctionFast( *DB_Light3DExtends\L3D_GetLocked, LightNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l L3D_GetTotalFreeLight()
  Retour.l = CallCFunctionFast( *DB_Light3DExtends\L3D_GetTotalFreeLight )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l L3D_AddVirtualLight( Xpos.f, YPos.f, ZPos.f, Range.f, RedColor.l, GreenColor.l, BlueColor.l, Style.l )
  Retour.l = CallCFunctionFast( *DB_Light3DExtends\L3D_AddVirtualLight, Xpos, YPos, ZPos, Range, RedColor, GreenColor, BlueColor, Style )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l L3D_DeleteVirtualLight( LightNumber.l )
  Retour.l = CallCFunctionFast( *DB_Light3DExtends\L3D_DeleteVirtualLight, LightNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l L3D_GetVirtualLightsCount()
  Retour.l = CallCFunctionFast( *DB_Light3DExtends\L3D_GetVirtualLightsCount )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure L3D_ClearVirtualLights()
  CallCFunctionFast( *DB_Light3DExtends\L3D_ClearVirtualLights )
 EndProcedure
;
; *********************************************************************
Procedure.l L3D_RefreshLights()
  Retour.l = CallCFunctionFast( *DB_Light3DExtends\L3D_RefreshLights )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure L3D_SetVisibilityDistance( Range.f )
  CallCFunctionFast( *DB_Light3DExtends\L3D_SetVisibilityDistance, Range )
 EndProcedure
;
; *********************************************************************
Procedure.f L3D_GetVisibilityDistance()
  Retour.l = CallCFunctionFast( *DB_Light3DExtends\L3D_GetVisibilityDistance )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure L3D_SetVLightRange( LightNumber.l, Rangef.f )
  CallCFunctionFast( *DB_Light3DExtends\L3D_SetVLightRange, LightNumber, Rangef )
 EndProcedure
;
; *********************************************************************
Procedure L3D_SetVLightColor( LightNumber.l, Red.l, Green.l, Blue.l )
  CallCFunctionFast( *DB_Light3DExtends\L3D_SetVLightColor, LightNumber, Red, Green, Blue )
 EndProcedure
;
; *********************************************************************
Procedure L3D_HideVLight( LightNumber.l )
  CallCFunctionFast( *DB_Light3DExtends\L3D_HideVLight, LightNumber )
 EndProcedure
;
; *********************************************************************
Procedure L3D_ShowVLight( LightNumber.l )
  CallCFunctionFast( *DB_Light3DExtends\L3D_ShowVLight, LightNumber )
 EndProcedure
;
; *********************************************************************
Procedure L3D_PositionVLight( LightNumber.l, XPosf.f, YPosf.f, ZPosf.f )
  CallCFunctionFast( *DB_Light3DExtends\L3D_PositionVLight, LightNumber, XPosf, YPosf, ZPosf )
 EndProcedure
;
; *********************************************************************
Procedure L3D_SetVLightHalo( LightNumber.l, HaloImage.l )
  CallCFunctionFast( *DB_Light3DExtends\L3D_SetVLightHalo, LightNumber, HaloImage )
 EndProcedure
;
; *********************************************************************
Procedure L3D_SetVLightAsFixed( LightNumber.l )
  CallCFunctionFast( *DB_Light3DExtends\L3D_SetVLightAsFixed, LightNumber )
 EndProcedure
;
; *********************************************************************
Procedure L3D_SetVLightAsFlame( LightNumber.l )
  CallCFunctionFast( *DB_Light3DExtends\L3D_SetVLightAsFlame, LightNumber )
 EndProcedure
;
; *********************************************************************
Procedure L3D_SetVLightAsPulse( LightNumber.l )
  CallCFunctionFast( *DB_Light3DExtends\L3D_SetVLightAsPulse, LightNumber )
 EndProcedure
;
; *********************************************************************
Procedure L3D_SetVLightAsFlashs( LightNumber.l )
  CallCFunctionFast( *DB_Light3DExtends\L3D_SetVLightAsFlashs, LightNumber )
 EndProcedure
;
; *********************************************************************
Procedure.l L3D_GetTrueLightColor( LightID.l )
  Retour.l = CallCFunctionFast( *DB_Light3DExtends\L3D_GetTrueLightColor, LightID )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l L3D_GetTrueLightRange( LightID.l )
  Retour.l = CallCFunctionFast( *DB_Light3DExtends\L3D_GetTrueLightRange, LightID )
  ProcedureReturn Retour
 EndProcedure
;

; IDE Options = PureBasic 4.10 Beta 2 (Windows - x86)
; CursorPosition = 141
; FirstLine = 99
; Folding = -----
; DarkBasic Professional RC2PBIncludes Ver 1. File - COMMANDS WRAPPING
; By Frederic Cordier - 07.02.13
;
; *********************************************************************
Procedure.l CMR_Init()
  Retour.l = CallCFunctionFast( *DB_CameraExtends\CMR_Init )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure CMR_Clear()
  CallCFunctionFast( *DB_CameraExtends\CMR_Clear )
 EndProcedure
;
; *********************************************************************
Procedure.l CMR_Count()
  Retour.l = CallCFunctionFast( *DB_CameraExtends\CMR_Count )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l CMR_Delete( CameraNumber.l )
  Retour.l = CallCFunctionFast( *DB_CameraExtends\CMR_Delete, CameraNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l CMR_DynamicMake()
  Retour.l = CallCFunctionFast( *DB_CameraExtends\CMR_DynamicMake )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l CMR_DynamicClone()
  Retour.l = CallCFunctionFast( *DB_CameraExtends\CMR_DynamicClone )
  ProcedureReturn Retour
 EndProcedure
;

; IDE Options = PureBasic 4.10 Beta 2 (Windows - x86)
; CursorPosition = 34
; Folding = --
; DarkBasic Professional RC2PBIncludes Ver 1. File - COMMANDS WRAPPING
; By Frederic Cordier - 07.02.13
;
; *********************************************************************
Procedure.l Vector3_Init()
  Retour.l = CallCFunctionFast( *DB_Vector3Extends\Vector3_Init )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l V3D3_Delete( Vector3Number.l )
  Retour.l = CallCFunctionFast( *DB_Vector3Extends\V3D3_Delete, Vector3Number )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l V3D3_DynamicMakeVector3()
  Retour.l = CallCFunctionFast( *DB_Vector3Extends\V3D3_DynamicMakeVector3 )
  ProcedureReturn Retour
 EndProcedure
;

; IDE Options = PureBasic 4.10 Beta 2 (Windows - x86)
; CursorPosition = 17
; Folding = -
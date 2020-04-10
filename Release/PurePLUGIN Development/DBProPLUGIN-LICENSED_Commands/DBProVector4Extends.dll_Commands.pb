; DarkBasic Professional RC2PBIncludes Ver 1. File - COMMANDS WRAPPING
; By Frederic Cordier - 07.02.13
;
; *********************************************************************
Procedure.l Vector4_Init()
  Retour.l = CallCFunctionFast( *DB_Vector4Extends\Vector4_Init )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l V3D4_Delete( Vector4Number.l )
  Retour.l = CallCFunctionFast( *DB_Vector4Extends\V3D4_Delete, Vector4Number )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l V3D4_DynamicMakeVector4()
  Retour.l = CallCFunctionFast( *DB_Vector4Extends\V3D4_DynamicMakeVector4 )
  ProcedureReturn Retour
 EndProcedure
;

; IDE Options = PureBasic 4.10 Beta 2 (Windows - x86)
; CursorPosition = 17
; Folding = -
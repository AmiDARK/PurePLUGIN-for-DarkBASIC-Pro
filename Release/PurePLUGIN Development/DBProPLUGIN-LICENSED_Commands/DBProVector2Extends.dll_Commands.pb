; DarkBasic Professional RC2PBIncludes Ver 1. File - COMMANDS WRAPPING
; By Frederic Cordier - 07.02.13
;
; *********************************************************************
Procedure.l Vector2_Init()
  Retour.l = CallCFunctionFast( *DB_Vector2Extends\Vector2_Init )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l V3D2_Delete( Vector2Number.l )
  Retour.l = CallCFunctionFast( *DB_Vector2Extends\V3D2_Delete, Vector2Number )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l V3D2_DynamicMakeVector2()
  Retour.l = CallCFunctionFast( *DB_Vector2Extends\V3D2_DynamicMakeVector2 )
  ProcedureReturn Retour
 EndProcedure
;

; IDE Options = PureBasic 4.10 Beta 2 (Windows - x86)
; CursorPosition = 17
; Folding = -
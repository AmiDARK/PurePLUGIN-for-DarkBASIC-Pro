; DarkBasic Professional RC2PBIncludes Ver 1. File - COMMANDS WRAPPING
; By Frederic Cordier - 07.02.13
;
; *********************************************************************
Procedure.l Mesh3D_Init()
  Retour.l = CallCFunctionFast( *DB_Mesh3DExtends\Mesh3D_Init )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l M3D_DynamicLoad( FileName.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FileNamePTR.l, Len( FileName ) + 1 ) ; CreateString
  PokeS( FileNamePTR, FileName )
  Retour.l = CallCFunctionFast( *DB_Mesh3DExtends\M3D_DynamicLoad, FileNamePTR )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l M3D_Delete( MeshNumber.l )
  Retour.l = CallCFunctionFast( *DB_Mesh3DExtends\M3D_Delete, MeshNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l M3D_DynamicMakeFromObject( SourceObject.l )
  Retour.l = CallCFunctionFast( *DB_Mesh3DExtends\M3D_DynamicMakeFromObject, SourceObject )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l M3D_DynamicMakeFromMemblock( SourceMemblock.l )
  Retour.l = CallCFunctionFast( *DB_Mesh3DExtends\M3D_DynamicMakeFromMemblock, SourceMemblock )
  ProcedureReturn Retour
 EndProcedure
;

; IDE Options = PureBasic 4.10 Beta 2 (Windows - x86)
; CursorPosition = 31
; Folding = -
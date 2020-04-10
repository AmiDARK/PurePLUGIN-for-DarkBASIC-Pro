; DarkBasic Professional RC2PBIncludes Ver 1. File - COMMANDS WRAPPING
; By Frederic Cordier - 07.02.13
;
; *********************************************************************
Procedure DarkSide_Set_StarBurst_X_Power( Param0.l )
  CallCFunctionFast( *ideStarBurst\DarkSide_Set_StarBurst_X_Power, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure DarkSide_Set_StarBurst_Y_Power( Param0.l )
  CallCFunctionFast( *ideStarBurst\DarkSide_Set_StarBurst_Y_Power, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure.f DarkSide_Get_StarBurst_X_Pos( Param1.l )
  Retour.l = CallCFunctionFast( *ideStarBurst\DarkSide_Get_StarBurst_X_Pos, Param1 )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DarkSide_Get_StarBurst_Y_Pos( Param1.l )
  Retour.l = CallCFunctionFast( *ideStarBurst\DarkSide_Get_StarBurst_Y_Pos, Param1 )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure DarkSide_Update_StarBurst()
  CallCFunctionFast( *ideStarBurst\DarkSide_Update_StarBurst )
 EndProcedure
;
; *********************************************************************
Procedure DarkSide_StarBurst_Blast()
  CallCFunctionFast( *ideStarBurst\DarkSide_StarBurst_Blast )
 EndProcedure
;
; *********************************************************************
Procedure DarkSide_Set_StarBurst_X_Start( Param0.l )
  CallCFunctionFast( *ideStarBurst\DarkSide_Set_StarBurst_X_Start, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure DarkSide_Set_StarBurst_Y_Start( Param0.l )
  CallCFunctionFast( *ideStarBurst\DarkSide_Set_StarBurst_Y_Start, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure DarkSide_Set_StarBurst_Gravity( Param0.l )
  CallCFunctionFast( *ideStarBurst\DarkSide_Set_StarBurst_Gravity, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure DarkSide_Get_StarBurst_Dll_Info()
  CallCFunctionFast( *ideStarBurst\DarkSide_Get_StarBurst_Dll_Info )
 EndProcedure
;

; IDE Options = PureBasic 4.20 Beta 2 (Windows - x86)
; CursorPosition = 54
; FirstLine = 8
; Folding = --
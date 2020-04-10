; DarkBasic Professional RC2PBIncludes Ver 1. File - COMMANDS WRAPPING
; By Frederic Cordier - 07.02.13
;
; *********************************************************************
Procedure DarkSide_Font_Requester()
  CallCFunctionFast( *ideFontRequester\DarkSide_Font_Requester )
 EndProcedure
;
; *********************************************************************
Procedure DarkSide_Get_Font_Requester_Font_Name()
  CallCFunctionFast( *ideFontRequester\DarkSide_Get_Font_Requester_Font_Name )
 EndProcedure
;
; *********************************************************************
Procedure.l DarkSide_Get_Font_Requester_Font_Red()
  Retour.l = CallCFunctionFast( *ideFontRequester\DarkSide_Get_Font_Requester_Font_Red )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DarkSide_Get_Font_Requester_Font_Green()
  Retour.l = CallCFunctionFast( *ideFontRequester\DarkSide_Get_Font_Requester_Font_Green )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DarkSide_Get_Font_Requester_Font_Blue()
  Retour.l = CallCFunctionFast( *ideFontRequester\DarkSide_Get_Font_Requester_Font_Blue )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DarkSide_Get_Font_Requester_Font_Size()
  Retour.l = CallCFunctionFast( *ideFontRequester\DarkSide_Get_Font_Requester_Font_Size )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DarkSide_Get_Font_Requester_Font_Style()
  Retour.l = CallCFunctionFast( *ideFontRequester\DarkSide_Get_Font_Requester_Font_Style )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DarkSide_Get_Font_Requester_Dll_Info()
  CallCFunctionFast( *ideFontRequester\DarkSide_Get_Font_Requester_Dll_Info )
 EndProcedure
;

; IDE Options = PureBasic 4.20 Beta 2 (Windows - x86)
; CursorPosition = 45
; Folding = --
; DarkBasic Professional RC2PBIncludes Ver 1. File - COMMANDS WRAPPING
; By Frederic Cordier - 07.02.13
;
; *********************************************************************
Procedure DarkSide_Color_Requester()
  CallCFunctionFast( *ideColourRequester\DarkSide_Color_Requester )
 EndProcedure
;
; *********************************************************************
Procedure.l DarkSide_Get_Color_Requester_24Bit()
  Retour.l = CallCFunctionFast( *ideColourRequester\DarkSide_Get_Color_Requester_24Bit )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DarkSide_Get_Color_Requester_Red()
  Retour.l = CallCFunctionFast( *ideColourRequester\DarkSide_Get_Color_Requester_Red )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DarkSide_Get_Color_Requester_Green()
  Retour.l = CallCFunctionFast( *ideColourRequester\DarkSide_Get_Color_Requester_Green )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DarkSide_Get_Color_Requester_Blue()
  Retour.l = CallCFunctionFast( *ideColourRequester\DarkSide_Get_Color_Requester_Blue )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DarkSide_Color_Requester_Inc_RGB()
  CallCFunctionFast( *ideColourRequester\DarkSide_Color_Requester_Inc_RGB )
 EndProcedure
;
; *********************************************************************
Procedure DarkSide_Color_Requester_Dec_RGB()
  CallCFunctionFast( *ideColourRequester\DarkSide_Color_Requester_Dec_RGB )
 EndProcedure
;
; *********************************************************************
Procedure DarkSide_Colour_Requester_Dll_Info()
  CallCFunctionFast( *ideColourRequester\DarkSide_Colour_Requester_Dll_Info )
 EndProcedure
;

; IDE Options = PureBasic 4.20 Beta 2 (Windows - x86)
; CursorPosition = 44
; Folding = --
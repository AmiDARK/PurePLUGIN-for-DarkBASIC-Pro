; DarkBasic Professional RC2PBIncludes Ver 1. File - COMMANDS WRAPPING
; By Frederic Cordier - 07.02.13
;
; *********************************************************************
Procedure DarkSide_Setup_Input()
  CallCFunctionFast( *ideInput\DarkSide_Setup_Input )
 EndProcedure
;
; *********************************************************************
Procedure.l DarkSide_Input_Get_GamePad_X()
  Retour.l = CallCFunctionFast( *ideInput\DarkSide_Input_Get_GamePad_X )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DarkSide_Input_Get_GamePad_Y()
  Retour.l = CallCFunctionFast( *ideInput\DarkSide_Input_Get_GamePad_Y )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DarkSide_Input_Get_GamePad_Button()
  Retour.l = CallCFunctionFast( *ideInput\DarkSide_Input_Get_GamePad_Button )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DarkSide_Input_Get_Keyboard_Asc()
  Retour.l = CallCFunctionFast( *ideInput\DarkSide_Input_Get_Keyboard_Asc )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DarkSide_Input_Get_Mouse_Button()
  Retour.l = CallCFunctionFast( *ideInput\DarkSide_Input_Get_Mouse_Button )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DarkSide_Input_Get_GamePad_Combo()
  Retour.l = CallCFunctionFast( *ideInput\DarkSide_Input_Get_GamePad_Combo )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DarkSide_Input_Set_GamePad_Combo_Rate( Param0.l )
  CallCFunctionFast( *ideInput\DarkSide_Input_Set_GamePad_Combo_Rate, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure.l DarkSide_Input_Get_DPad_Number()
  Retour.l = CallCFunctionFast( *ideInput\DarkSide_Input_Get_DPad_Number )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DarkSide_Get_Input_Dll_Info()
  CallCFunctionFast( *ideInput\DarkSide_Get_Input_Dll_Info )
 EndProcedure
;

; IDE Options = PureBasic 4.20 Beta 2 (Windows - x86)
; CursorPosition = 57
; FirstLine = 11
; Folding = --
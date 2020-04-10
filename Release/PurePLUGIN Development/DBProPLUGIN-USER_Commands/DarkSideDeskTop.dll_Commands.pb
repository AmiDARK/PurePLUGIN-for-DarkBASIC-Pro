; DarkBasic Professional RC2PBIncludes Ver 1. File - COMMANDS WRAPPING
; By Frederic Cordier - 07.02.13
;
; *********************************************************************
Procedure.l DarkSide_Get_Desktop_Width()
  Retour.l = CallCFunctionFast( *ideDeskTop\DarkSide_Get_Desktop_Width )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DarkSide_Get_Desktop_Height()
  Retour.l = CallCFunctionFast( *ideDeskTop\DarkSide_Get_Desktop_Height )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DarkSide_Get_Desktop_Depth()
  Retour.l = CallCFunctionFast( *ideDeskTop\DarkSide_Get_Desktop_Depth )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DarkSide_Get_Desktop_Frequency()
  Retour.l = CallCFunctionFast( *ideDeskTop\DarkSide_Get_Desktop_Frequency )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DarkSide_Get_Desktop_Timer()
  Retour.l = CallCFunctionFast( *ideDeskTop\DarkSide_Get_Desktop_Timer )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DarkSide_Get_Desktop_Mous()
  Retour.l = CallCFunctionFast( *ideDeskTop\DarkSide_Get_Desktop_MouseX )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DarkSide_Get_Desktop_MouseY()
  Retour.l = CallCFunctionFast( *ideDeskTop\DarkSide_Get_Desktop_MouseY )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DarkSide_Get_Desktop_Clipboard_Length()
  Retour.l = CallCFunctionFast( *ideDeskTop\DarkSide_Get_Desktop_Clipboard_Length )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DarkSide_Get_Desktop_Name()
  CallCFunctionFast( *ideDeskTop\DarkSide_Get_Desktop_Name )
 EndProcedure
;
; *********************************************************************
Procedure DarkSide_Get_Desktop_OS()
  CallCFunctionFast( *ideDeskTop\DarkSide_Get_Desktop_OS )
 EndProcedure
;
; *********************************************************************
Procedure DarkSide_Get_Desktop_Dll_Info()
  CallCFunctionFast( *ideDeskTop\DarkSide_Get_Desktop_Dll_Info )
 EndProcedure
;

; IDE Options = PureBasic 4.20 Beta 2 (Windows - x86)
; CursorPosition = 63
; FirstLine = 20
; Folding = --
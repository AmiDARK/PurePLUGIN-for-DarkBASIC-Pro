; DarkBasic Professional RC2PBIncludes Ver 1. File - COMMANDS WRAPPING
; By Frederic Cordier - 07.02.13
;
; *********************************************************************
Procedure.l DarkSide_Get_White_Rabbit_25Fps()
  Retour.l = CallCFunctionFast( *ideWhiteRabbit\DarkSide_Get_White_Rabbit_25Fps )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DarkSide_Get_White_Rabbit_15Fps()
  Retour.l = CallCFunctionFast( *ideWhiteRabbit\DarkSide_Get_White_Rabbit_15Fps )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DarkSide_Get_White_Rabbit_10Fps()
  Retour.l = CallCFunctionFast( *ideWhiteRabbit\DarkSide_Get_White_Rabbit_10Fps )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DarkSide_Get_White_Rabbit_30Fps()
  Retour.l = CallCFunctionFast( *ideWhiteRabbit\DarkSide_Get_White_Rabbit_30Fps )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DarkSide_Get_White_Rabbit_60Fps()
  Retour.l = CallCFunctionFast( *ideWhiteRabbit\DarkSide_Get_White_Rabbit_60Fps )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.f DarkSide_Get_White_Rabbit_Force()
  Retour.l = CallCFunctionFast( *ideWhiteRabbit\DarkSide_Get_White_Rabbit_Force )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.l DarkSide_Get_White_Rabbit_SpeedFix()
  Retour.l = CallCFunctionFast( *ideWhiteRabbit\DarkSide_Get_White_Rabbit_SpeedFix )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DarkSide_Set_White_Rabbit_SpeedFix( Param0.l )
  CallCFunctionFast( *ideWhiteRabbit\DarkSide_Set_White_Rabbit_SpeedFix, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure DarkSide_Set_White_Rabbit_Seconds( Param0.l )
  CallCFunctionFast( *ideWhiteRabbit\DarkSide_Set_White_Rabbit_Seconds, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure.l DarkSide_Get_White_Rabbit_Seconds()
  Retour.l = CallCFunctionFast( *ideWhiteRabbit\DarkSide_Get_White_Rabbit_Seconds )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DarkSide_Get_White_Rabbit_5Fps()
  Retour.l = CallCFunctionFast( *ideWhiteRabbit\DarkSide_Get_White_Rabbit_5Fps )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DarkSide_Get_White_Rabbit_KeyTime()
  Retour.l = CallCFunctionFast( *ideWhiteRabbit\DarkSide_Get_White_Rabbit_KeyTime )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DarkSide_Set_White_Rabbit_Bpm( Param0.l )
  CallCFunctionFast( *ideWhiteRabbit\DarkSide_Set_White_Rabbit_Bpm, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure.l DarkSide_Get_White_Rabbit_Bpm()
  Retour.l = CallCFunctionFast( *ideWhiteRabbit\DarkSide_Get_White_Rabbit_Bpm )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DarkSide_Get_White_Rabbit_Dll_Info()
  CallCFunctionFast( *ideWhiteRabbit\DarkSide_Get_White_Rabbit_Dll_Info )
 EndProcedure
;

; IDE Options = PureBasic 4.20 Beta 2 (Windows - x86)
; CursorPosition = 87
; FirstLine = 41
; Folding = ---
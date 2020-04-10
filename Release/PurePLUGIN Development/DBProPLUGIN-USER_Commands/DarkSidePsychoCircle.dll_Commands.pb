; DarkBasic Professional RC2PBIncludes Ver 1. File - COMMANDS WRAPPING
; By Frederic Cordier - 07.02.13
;
; *********************************************************************
Procedure DarkSide_Set_Psycho_Circle_Seed( Param0.l )
  CallCFunctionFast( *idePsychoCircle\DarkSide_Set_Psycho_Circle_Seed, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure.f DarkSide_Get_Psycho_Circle_X1()
  Retour.l = CallCFunctionFast( *idePsychoCircle\DarkSide_Get_Psycho_Circle_X1 )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DarkSide_Get_Psycho_Circle_Y1()
  Retour.l = CallCFunctionFast( *idePsychoCircle\DarkSide_Get_Psycho_Circle_Y1 )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DarkSide_Get_Psycho_Circle_X2()
  Retour.l = CallCFunctionFast( *idePsychoCircle\DarkSide_Get_Psycho_Circle_X2 )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DarkSide_Get_Psycho_Circle_Y2()
  Retour.l = CallCFunctionFast( *idePsychoCircle\DarkSide_Get_Psycho_Circle_Y2 )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DarkSide_Get_Psycho_Circle_X3()
  Retour.l = CallCFunctionFast( *idePsychoCircle\DarkSide_Get_Psycho_Circle_X3 )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DarkSide_Get_Psycho_Circle_Y3()
  Retour.l = CallCFunctionFast( *idePsychoCircle\DarkSide_Get_Psycho_Circle_Y3 )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DarkSide_Get_Psycho_Circle_X4()
  Retour.l = CallCFunctionFast( *idePsychoCircle\DarkSide_Get_Psycho_Circle_X4 )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DarkSide_Get_Psycho_Circle_Y4()
  Retour.l = CallCFunctionFast( *idePsychoCircle\DarkSide_Get_Psycho_Circle_Y4 )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DarkSide_Get_Psycho_Circle_X5()
  Retour.l = CallCFunctionFast( *idePsychoCircle\DarkSide_Get_Psycho_Circle_X5 )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DarkSide_Get_Psycho_Circle_Y5()
  Retour.l = CallCFunctionFast( *idePsychoCircle\DarkSide_Get_Psycho_Circle_Y5 )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure DarkSide_Get_Psycho_Circle_Dll_Info()
  CallCFunctionFast( *idePsychoCircle\DarkSide_Get_Psycho_Circle_Dll_Info )
 EndProcedure
;

; IDE Options = PureBasic 4.20 Beta 2 (Windows - x86)
; CursorPosition = 80
; FirstLine = 34
; Folding = ---
; DarkBasic Professional RC2PBIncludes Ver 1. File - COMMANDS WRAPPING
; By Frederic Cordier - 07.02.13
;
; *********************************************************************
Procedure DarkSide_Set_Speed_Menu_Title( Param0.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param0PTR.l, Len( Param0 ) + 1 ) ; CreateString
  PokeS( Param0PTR, Param0 )
  CallCFunctionFast( *ideSpeedMenu\DarkSide_Set_Speed_Menu_Title, Param0PTR )
 EndProcedure
;
; *********************************************************************
Procedure DarkSide_Set_Speed_Menu_Fields( Param0.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param0PTR.l, Len( Param0 ) + 1 ) ; CreateString
  PokeS( Param0PTR, Param0 )
  CallCFunctionFast( *ideSpeedMenu\DarkSide_Set_Speed_Menu_Fields, Param0PTR )
 EndProcedure
;
; *********************************************************************
Procedure DarkSide_Set_Speed_Menu_Width( Param0.l )
  CallCFunctionFast( *ideSpeedMenu\DarkSide_Set_Speed_Menu_Width, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure DarkSide_Make_Speed_Menu()
  CallCFunctionFast( *ideSpeedMenu\DarkSide_Make_Speed_Menu )
 EndProcedure
;
; *********************************************************************
Procedure.l DarkSide_Get_Speed_Menu_Return()
  Retour.l = CallCFunctionFast( *ideSpeedMenu\DarkSide_Get_Speed_Menu_Return )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DarkSide_Get_Speed_Menu_Dll_Info()
  CallCFunctionFast( *ideSpeedMenu\DarkSide_Get_Speed_Menu_Dll_Info )
 EndProcedure
;
; *********************************************************************
Procedure.l DarkSide_Get_Speed_Menu_Timer()
  Retour.l = CallCFunctionFast( *ideSpeedMenu\DarkSide_Get_Speed_Menu_Timer )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DarkSide_Set_Speed_Menu_Width_Auto()
  CallCFunctionFast( *ideSpeedMenu\DarkSide_Set_Speed_Menu_Width_Auto )
 EndProcedure
;
; *********************************************************************
Procedure DarkSide_Kill_Speed_Menu()
  CallCFunctionFast( *ideSpeedMenu\DarkSide_Kill_Speed_Menu )
 EndProcedure
;

; IDE Options = PureBasic 4.20 Beta 2 (Windows - x86)
; CursorPosition = 12
; FirstLine = 8
; Folding = --
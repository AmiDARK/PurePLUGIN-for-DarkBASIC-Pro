; DarkBasic Professional RC2PBIncludes Ver 1. File - COMMANDS WRAPPING
; By Frederic Cordier - 07.02.13
;
; *********************************************************************
Procedure DarkSide_Set_Display_Mode( Param0.l, Param1.l, Param2.l )
  CallCFunctionFast( *ideDisplay\DarkSide_Set_Display_Mode, Param0, Param1, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure DarkSide_Restore_Display_Mode()
  CallCFunctionFast( *ideDisplay\DarkSide_Restore_Display_Mode )
 EndProcedure
;
; *********************************************************************
Procedure DarkSide_Get_Display_ScreenShot()
  CallCFunctionFast( *ideDisplay\DarkSide_Get_Display_ScreenShot )
 EndProcedure
;
; *********************************************************************
Procedure DarkSide_Set_Display_WallPaper( Param0.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param0PTR.l, Len( Param0 ) + 1 ) ; CreateString
  PokeS( Param0PTR, Param0 )
  CallCFunctionFast( *ideDisplay\DarkSide_Set_Display_WallPaper, Param0PTR )
 EndProcedure
;
; *********************************************************************
Procedure.l DarkSide_Get_Display_Width()
  Retour.l = CallCFunctionFast( *ideDisplay\DarkSide_Get_Display_Width )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DarkSide_Get_Display_Height()
  Retour.l = CallCFunctionFast( *ideDisplay\DarkSide_Get_Display_Height )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DarkSide_Get_Display_Depth()
  Retour.l = CallCFunctionFast( *ideDisplay\DarkSide_Get_Display_Depth )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DarkSide_Make_Display_Grid( Param0.l, Param1.l, Param2.l, Param3.l )
  CallCFunctionFast( *ideDisplay\DarkSide_Make_Display_Grid, Param0, Param1, Param2, Param3 )
 EndProcedure
;
; *********************************************************************
Procedure.l DarkSide_Check_Display_Grid( Param1.l, Param2.l )
  Retour.l = CallCFunctionFast( *ideDisplay\DarkSide_Check_Display_Grid, Param1, Param2 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DarkSide_Get_Display_Grid_Total()
  Retour.l = CallCFunctionFast( *ideDisplay\DarkSide_Get_Display_Grid_Total )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DarkSide_Get_Display_Grid_X1()
  Retour.l = CallCFunctionFast( *ideDisplay\DarkSide_Get_Display_Grid_X1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DarkSide_Get_Display_Grid_Y1()
  Retour.l = CallCFunctionFast( *ideDisplay\DarkSide_Get_Display_Grid_Y1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DarkSide_Get_Display_Grid_X2()
  Retour.l = CallCFunctionFast( *ideDisplay\DarkSide_Get_Display_Grid_X2 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DarkSide_Get_Display_Grid_Y2()
  Retour.l = CallCFunctionFast( *ideDisplay\DarkSide_Get_Display_Grid_Y2 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DarkSide_Get_Display_Dll_Info()
  CallCFunctionFast( *ideDisplay\DarkSide_Get_Display_Dll_Info )
 EndProcedure
;

; IDE Options = PureBasic 4.20 Beta 2 (Windows - x86)
; CursorPosition = 89
; FirstLine = 43
; Folding = ---
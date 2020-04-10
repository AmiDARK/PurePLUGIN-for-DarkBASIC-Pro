; DarkBasic Professional RC2PBIncludes Ver 1. File - COMMANDS WRAPPING
; By Frederic Cordier - 07.02.13
;
; *********************************************************************
Procedure DarkSide_Set_Progress_Bar_Title( Param0.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param0PTR.l, Len( Param0 ) + 1 ) ; CreateString
  PokeS( Param0PTR, Param0 )
  CallCFunctionFast( *ideProgressBar\DarkSide_Set_Progress_Bar_Title, Param0PTR )
 EndProcedure
;
; *********************************************************************
Procedure DarkSide_Make_Progress_Bar()
  CallCFunctionFast( *ideProgressBar\DarkSide_Make_Progress_Bar )
 EndProcedure
;
; *********************************************************************
Procedure DarkSide_Kill_Progress_Bar()
  CallCFunctionFast( *ideProgressBar\DarkSide_Kill_Progress_Bar )
 EndProcedure
;
; *********************************************************************
Procedure DarkSide_Get_Progress_Bar_Dll_Info()
  CallCFunctionFast( *ideProgressBar\DarkSide_Get_Progress_Bar_Dll_Info )
 EndProcedure
;
; *********************************************************************
Procedure DarkSide_Set_Progress_Bar_Status( Param0.l )
  CallCFunctionFast( *ideProgressBar\DarkSide_Set_Progress_Bar_Status, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure DarkSide_Set_Progress_Bar_Style( Param0.l )
  CallCFunctionFast( *ideProgressBar\DarkSide_Set_Progress_Bar_Style, Param0 )
 EndProcedure
;

; IDE Options = PureBasic 4.20 Beta 2 (Windows - x86)
; CursorPosition = 5
; Folding = --
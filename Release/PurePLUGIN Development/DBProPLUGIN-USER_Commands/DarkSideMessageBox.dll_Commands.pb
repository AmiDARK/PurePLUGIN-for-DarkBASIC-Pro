; DarkBasic Professional RC2PBIncludes Ver 1. File - COMMANDS WRAPPING
; By Frederic Cordier - 07.02.13
;
; *********************************************************************
Procedure DarkSide_Message_Box_A()
  CallCFunctionFast( *ideMessageBox\DarkSide_Message_Box_A )
 EndProcedure
;
; *********************************************************************
Procedure DarkSide_Message_Box_B()
  CallCFunctionFast( *ideMessageBox\DarkSide_Message_Box_B )
 EndProcedure
;
; *********************************************************************
Procedure DarkSide_Message_Box_C()
  CallCFunctionFast( *ideMessageBox\DarkSide_Message_Box_C )
 EndProcedure
;
; *********************************************************************
Procedure DarkSide_Set_Message_Box_Title( Param0.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param0PTR.l, Len( Param0 ) + 1 ) ; CreateString
  PokeS( Param0PTR, Param0 )
  CallCFunctionFast( *ideMessageBox\DarkSide_Set_Message_Box_Title, Param0PTR )
 EndProcedure
;
; *********************************************************************
Procedure DarkSide_Set_Message_Box_Text( Param0.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param0PTR.l, Len( Param0 ) + 1 ) ; CreateString
  PokeS( Param0PTR, Param0 )
  CallCFunctionFast( *ideMessageBox\DarkSide_Set_Message_Box_Text, Param0PTR )
 EndProcedure
;
; *********************************************************************
Procedure.l DarkSide_Get_Message_Box_Result()
  Retour.l = CallCFunctionFast( *ideMessageBox\DarkSide_Get_Message_Box_Result )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DarkSide_Get_Message_Box_Dll_Info()
  CallCFunctionFast( *ideMessageBox\DarkSide_Get_Message_Box_Dll_Info )
 EndProcedure
;

; IDE Options = PureBasic 4.20 Beta 2 (Windows - x86)
; CursorPosition = 27
; Folding = --
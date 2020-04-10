; DarkBasic Professional RC2PBIncludes Ver 1. File - COMMANDS WRAPPING
; By Frederic Cordier - 07.02.13
;
; *********************************************************************
Procedure DarkSide_Input_Requester()
  CallCFunctionFast( *ideInputRequester\DarkSide_Input_Requester )
 EndProcedure
;
; *********************************************************************
Procedure DarkSide_Input_Requester_Fast( Param0.s, Param1.s, Param2.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param0PTR.l, Len( Param0 ) + 1 ) ; CreateString
  PokeS( Param0PTR, Param0 )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param1PTR.l, Len( Param1 ) + 1 ) ; CreateString
  PokeS( Param1PTR, Param1 )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param2PTR.l, Len( Param2 ) + 1 ) ; CreateString
  PokeS( Param2PTR, Param2 )
  CallCFunctionFast( *ideInputRequester\DarkSide_Input_Requester_Fast, Param0PTR, Param1PTR, Param2PTR )
 EndProcedure
;
; *********************************************************************
Procedure DarkSide_Set_Input_Requester_Title( Param0.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param0PTR.l, Len( Param0 ) + 1 ) ; CreateString
  PokeS( Param0PTR, Param0 )
  CallCFunctionFast( *ideInputRequester\DarkSide_Set_Input_Requester_Title, Param0PTR )
 EndProcedure
;
; *********************************************************************
Procedure DarkSide_Set_Input_Requester_Message( Param0.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param0PTR.l, Len( Param0 ) + 1 ) ; CreateString
  PokeS( Param0PTR, Param0 )
  CallCFunctionFast( *ideInputRequester\DarkSide_Set_Input_Requester_Message, Param0PTR )
 EndProcedure
;
; *********************************************************************
Procedure DarkSide_Set_Input_Requester_Default( Param0.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param0PTR.l, Len( Param0 ) + 1 ) ; CreateString
  PokeS( Param0PTR, Param0 )
  CallCFunctionFast( *ideInputRequester\DarkSide_Set_Input_Requester_Default, Param0PTR )
 EndProcedure
;
; *********************************************************************
Procedure DarkSide_Get_Input_Requester_Dll_Info()
  CallCFunctionFast( *ideInputRequester\DarkSide_Get_Input_Requester_Dll_Info )
 EndProcedure
;

; IDE Options = PureBasic 4.20 Beta 2 (Windows - x86)
; CursorPosition = 35
; Folding = --
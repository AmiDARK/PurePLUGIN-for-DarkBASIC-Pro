; DarkBasic Professional RC2PBIncludes Ver 1. File - COMMANDS WRAPPING
; By Frederic Cordier - 07.02.13
;
; *********************************************************************
Procedure DarkSide_Set_File_Requester_Title( Param0.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param0PTR.l, Len( Param0 ) + 1 ) ; CreateString
  PokeS( Param0PTR, Param0 )
  CallCFunctionFast( *ideFileRequester\DarkSide_Set_File_Requester_Title, Param0PTR )
 EndProcedure
;
; *********************************************************************
Procedure DarkSide_Set_File_Requester_Path( Param0.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param0PTR.l, Len( Param0 ) + 1 ) ; CreateString
  PokeS( Param0PTR, Param0 )
  CallCFunctionFast( *ideFileRequester\DarkSide_Set_File_Requester_Path, Param0PTR )
 EndProcedure
;
; *********************************************************************
Procedure DarkSide_Set_File_Requester_Extension( Param0.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param0PTR.l, Len( Param0 ) + 1 ) ; CreateString
  PokeS( Param0PTR, Param0 )
  CallCFunctionFast( *ideFileRequester\DarkSide_Set_File_Requester_Extension, Param0PTR )
 EndProcedure
;
; *********************************************************************
Procedure DarkSide_Set_File_Requester_Extension_Pattern( Param0.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param0PTR.l, Len( Param0 ) + 1 ) ; CreateString
  PokeS( Param0PTR, Param0 )
  CallCFunctionFast( *ideFileRequester\DarkSide_Set_File_Requester_Extension_Pattern, Param0PTR )
 EndProcedure
;
; *********************************************************************
Procedure DarkSide_Open_File_Requester()
  CallCFunctionFast( *ideFileRequester\DarkSide_Open_File_Requester )
 EndProcedure
;
; *********************************************************************
Procedure DarkSide_Save_File_Requester()
  CallCFunctionFast( *ideFileRequester\DarkSide_Save_File_Requester )
 EndProcedure
;
; *********************************************************************
Procedure DarkSide_Path_Requester()
  CallCFunctionFast( *ideFileRequester\DarkSide_Path_Requester )
 EndProcedure
;
; *********************************************************************
Procedure DarkSide_Return_File_Requester_path()
  CallCFunctionFast( *ideFileRequester\DarkSide_Return_File_Requester_path )
 EndProcedure
;
; *********************************************************************
Procedure DarkSide_Return_File_Requester_File()
  CallCFunctionFast( *ideFileRequester\DarkSide_Return_File_Requester_File )
 EndProcedure
;
; *********************************************************************
Procedure DarkSide_Return_File_Requester_Extension()
  CallCFunctionFast( *ideFileRequester\DarkSide_Return_File_Requester_Extension )
 EndProcedure
;
; *********************************************************************
Procedure DarkSide_Return_File_Requester_Full()
  CallCFunctionFast( *ideFileRequester\DarkSide_Return_File_Requester_Full )
 EndProcedure
;
; *********************************************************************
Procedure DarkSide_File_Requester_About()
  CallCFunctionFast( *ideFileRequester\DarkSide_File_Requester_About )
 EndProcedure
;

; IDE Options = PureBasic 4.20 Beta 2 (Windows - x86)
; CursorPosition = 71
; FirstLine = 25
; Folding = ---
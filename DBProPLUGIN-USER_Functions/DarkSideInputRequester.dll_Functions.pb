; DarkBasic Professional RC2PBIncludes Ver 1.1 File - COMMANDS INITIALIZING
; By Frederic Cordier - 07.02.13
;
Procedure.l CheckideInputRequester()
  SUCCESS.l = 1
  If OpenLibrary( 1, "DarkSideInputRequester.dll")
    ideInputRequester\DarkSide_Input_Requester= AIsFunction( 1 , "DarkSide_Input_Requester" ) ; 1 DarkSide_Input_Requester 
    ideInputRequester\DarkSide_Input_Requester_Fast= AIsFunction( 1 , "DarkSide_Input_Requester_Fast" ) ; 2 DarkSide_Input_Requester_Fast 
    ideInputRequester\DarkSide_Set_Input_Requester_Title= AIsFunction( 1 , "DarkSide_Set_Input_Requester_Title" ) ; 3 DarkSide_Set_Input_Requester_Title 
    ideInputRequester\DarkSide_Set_Input_Requester_Message= AIsFunction( 1 , "DarkSide_Set_Input_Requester_Message" ) ; 4 DarkSide_Set_Input_Requester_Message 
    ideInputRequester\DarkSide_Set_Input_Requester_Default= AIsFunction( 1 , "DarkSide_Set_Input_Requester_Default" ) ; 5 DarkSide_Set_Input_Requester_Default 
    ideInputRequester\DarkSide_Get_Input_Requester_Dll_Info= AIsFunction( 1 , "DarkSide_Get_Input_Requester_Dll_Info" ) ; 6 DarkSide_Get_Input_Requester_Dll_Info 
    CloseLibrary( 1 )
   Else
    SUCCESS.l = 0
   Endif
  ProcedureReturn SUCCESS
 EndProcedure

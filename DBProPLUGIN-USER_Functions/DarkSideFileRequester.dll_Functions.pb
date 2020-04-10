; DarkBasic Professional RC2PBIncludes Ver 1.1 File - COMMANDS INITIALIZING
; By Frederic Cordier - 07.02.13
;
Procedure.l CheckideFileRequester()
  SUCCESS.l = 1
  If OpenLibrary( 1, "DarkSideFileRequester.dll")
    ideFileRequester\DarkSide_Set_File_Requester_Title= AIsFunction( 1 , "DarkSide_Set_File_Requester_Title" ) ; 1 DarkSide_Set_File_Requester_Title 
    ideFileRequester\DarkSide_Set_File_Requester_Path= AIsFunction( 1 , "DarkSide_Set_File_Requester_Path" ) ; 2 DarkSide_Set_File_Requester_Path 
    ideFileRequester\DarkSide_Set_File_Requester_Extension= AIsFunction( 1 , "DarkSide_Set_File_Requester_Extension" ) ; 3 DarkSide_Set_File_Requester_Extension 
    ideFileRequester\DarkSide_Set_File_Requester_Extension_Pattern= AIsFunction( 1 , "DarkSide_Set_File_Requester_Extension_Pattern" ) ; 4 DarkSide_Set_File_Requester_Extension_Pattern 
    ideFileRequester\DarkSide_Open_File_Requester= AIsFunction( 1 , "DarkSide_Open_File_Requester" ) ; 5 DarkSide_Open_File_Requester 
    ideFileRequester\DarkSide_Save_File_Requester= AIsFunction( 1 , "DarkSide_Save_File_Requester" ) ; 6 DarkSide_Save_File_Requester 
    ideFileRequester\DarkSide_Path_Requester= AIsFunction( 1 , "DarkSide_Path_Requester" ) ; 7 DarkSide_Path_Requester 
    ideFileRequester\DarkSide_Return_File_Requester_path= AIsFunction( 1 , "DarkSide_Return_File_Requester_path" ) ; 8 DarkSide_Return_File_Requester_path 
    ideFileRequester\DarkSide_Return_File_Requester_File= AIsFunction( 1 , "DarkSide_Return_File_Requester_File" ) ; 9 DarkSide_Return_File_Requester_File 
    ideFileRequester\DarkSide_Return_File_Requester_Extension= AIsFunction( 1 , "DarkSide_Return_File_Requester_Extension" ) ; 10 DarkSide_Return_File_Requester_Extension 
    ideFileRequester\DarkSide_Return_File_Requester_Full= AIsFunction( 1 , "DarkSide_Return_File_Requester_Full" ) ; 11 DarkSide_Return_File_Requester_Full 
    ideFileRequester\DarkSide_File_Requester_About= AIsFunction( 1 , "DarkSide_File_Requester_About" ) ; 12 DarkSide_File_Requester_About 
    CloseLibrary( 1 )
   Else
    SUCCESS.l = 0
   Endif
  ProcedureReturn SUCCESS
 EndProcedure

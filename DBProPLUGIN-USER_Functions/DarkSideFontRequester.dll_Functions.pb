; DarkBasic Professional RC2PBIncludes Ver 1.1 File - COMMANDS INITIALIZING
; By Frederic Cordier - 07.02.13
;
Procedure.l CheckideFontRequester()
  SUCCESS.l = 1
  If OpenLibrary( 1, "DarkSideFontRequester.dll")
    ideFontRequester\DarkSide_Font_Requester= AIsFunction( 1 , "DarkSide_Font_Requester" ) ; 1 DarkSide_Font_Requester 
    ideFontRequester\DarkSide_Get_Font_Requester_Font_Name= AIsFunction( 1 , "DarkSide_Get_Font_Requester_Font_Name" ) ; 2 DarkSide_Get_Font_Requester_Font_Name 
    ideFontRequester\DarkSide_Get_Font_Requester_Font_Red= AIsFunction( 1 , "DarkSide_Get_Font_Requester_Font_Red" ) ; 3 DarkSide_Get_Font_Requester_Font_Red 
    ideFontRequester\DarkSide_Get_Font_Requester_Font_Green= AIsFunction( 1 , "DarkSide_Get_Font_Requester_Font_Green" ) ; 4 DarkSide_Get_Font_Requester_Font_Green 
    ideFontRequester\DarkSide_Get_Font_Requester_Font_Blue= AIsFunction( 1 , "DarkSide_Get_Font_Requester_Font_Blue" ) ; 5 DarkSide_Get_Font_Requester_Font_Blue 
    ideFontRequester\DarkSide_Get_Font_Requester_Font_Size= AIsFunction( 1 , "DarkSide_Get_Font_Requester_Font_Size" ) ; 6 DarkSide_Get_Font_Requester_Font_Size 
    ideFontRequester\DarkSide_Get_Font_Requester_Font_Style= AIsFunction( 1 , "DarkSide_Get_Font_Requester_Font_Style" ) ; 7 DarkSide_Get_Font_Requester_Font_Style 
    ideFontRequester\DarkSide_Get_Font_Requester_Dll_Info= AIsFunction( 1 , "DarkSide_Get_Font_Requester_Dll_Info" ) ; 8 DarkSide_Get_Font_Requester_Dll_Info 
    CloseLibrary( 1 )
   Else
    SUCCESS.l = 0
   Endif
  ProcedureReturn SUCCESS
 EndProcedure

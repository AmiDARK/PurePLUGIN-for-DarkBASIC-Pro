; DarkBasic Professional RC2PBIncludes Ver 1.1 File - COMMANDS INITIALIZING
; By Frederic Cordier - 07.02.13
;
Procedure.l CheckideColourRequester()
  SUCCESS.l = 1
  If OpenLibrary( 1, "DarkSideColourRequester.dll")
    ideColourRequester\DarkSide_Color_Requester= AIsFunction( 1 , "DarkSide_Color_Requester" ) ; 1 DarkSide_Color_Requester 
    ideColourRequester\DarkSide_Get_Color_Requester_24Bit= AIsFunction( 1 , "DarkSide_Get_Color_Requester_24Bit" ) ; 2 DarkSide_Get_Color_Requester_24Bit 
    ideColourRequester\DarkSide_Get_Color_Requester_Red= AIsFunction( 1 , "DarkSide_Get_Color_Requester_Red" ) ; 3 DarkSide_Get_Color_Requester_Red 
    ideColourRequester\DarkSide_Get_Color_Requester_Green= AIsFunction( 1 , "DarkSide_Get_Color_Requester_Green" ) ; 4 DarkSide_Get_Color_Requester_Green 
    ideColourRequester\DarkSide_Get_Color_Requester_Blue= AIsFunction( 1 , "DarkSide_Get_Color_Requester_Blue" ) ; 5 DarkSide_Get_Color_Requester_Blue 
    ideColourRequester\DarkSide_Color_Requester_Inc_RGB= AIsFunction( 1 , "DarkSide_Color_Requester_Inc_RGB" ) ; 6 DarkSide_Color_Requester_Inc_RGB 
    ideColourRequester\DarkSide_Color_Requester_Dec_RGB= AIsFunction( 1 , "DarkSide_Color_Requester_Dec_RGB" ) ; 7 DarkSide_Color_Requester_Dec_RGB 
    ideColourRequester\DarkSide_Colour_Requester_Dll_Info= AIsFunction( 1 , "DarkSide_Colour_Requester_Dll_Info" ) ; 8 DarkSide_Colour_Requester_Dll_Info 
    CloseLibrary( 1 )
   Else
    SUCCESS.l = 0
   Endif
  ProcedureReturn SUCCESS
 EndProcedure

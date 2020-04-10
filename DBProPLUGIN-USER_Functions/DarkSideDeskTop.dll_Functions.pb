; DarkBasic Professional RC2PBIncludes Ver 1.1 File - COMMANDS INITIALIZING
; By Frederic Cordier - 07.02.13
;
Procedure.l CheckideDeskTop()
  SUCCESS.l = 1
  If OpenLibrary( 1, "DarkSideDeskTop.dll")
    ideDeskTop\DarkSide_Get_Desktop_Width= AIsFunction( 1 , "DarkSide_Get_Desktop_Width" ) ; 1 DarkSide_Get_Desktop_Width 
    ideDeskTop\DarkSide_Get_Desktop_Height= AIsFunction( 1 , "DarkSide_Get_Desktop_Height" ) ; 2 DarkSide_Get_Desktop_Height 
    ideDeskTop\DarkSide_Get_Desktop_Depth= AIsFunction( 1 , "DarkSide_Get_Desktop_Depth" ) ; 3 DarkSide_Get_Desktop_Depth 
    ideDeskTop\DarkSide_Get_Desktop_Frequency= AIsFunction( 1 , "DarkSide_Get_Desktop_Frequency" ) ; 4 DarkSide_Get_Desktop_Frequency 
    ideDeskTop\DarkSide_Get_Desktop_Timer= AIsFunction( 1 , "DarkSide_Get_Desktop_Timer" ) ; 5 DarkSide_Get_Desktop_Timer 
    ideDeskTop\DarkSide_Get_Desktop_MouseX= AIsFunction( 1 , "DarkSide_Get_Desktop_MouseX" ) ; 6 DarkSide_Get_Desktop_MouseX 
    ideDeskTop\DarkSide_Get_Desktop_MouseY= AIsFunction( 1 , "DarkSide_Get_Desktop_MouseY" ) ; 7 DarkSide_Get_Desktop_MouseY 
    ideDeskTop\DarkSide_Get_Desktop_Clipboard_Length= AIsFunction( 1 , "DarkSide_Get_Desktop_Clipboard_Length" ) ; 8 DarkSide_Get_Desktop_Clipboard_Length 
    ideDeskTop\DarkSide_Get_Desktop_Name= AIsFunction( 1 , "DarkSide_Get_Desktop_Name" ) ; 9 DarkSide_Get_Desktop_Name 
    ideDeskTop\DarkSide_Get_Desktop_OS= AIsFunction( 1 , "DarkSide_Get_Desktop_OS" ) ; 10 DarkSide_Get_Desktop_OS 
    ideDeskTop\DarkSide_Get_Desktop_Dll_Info= AIsFunction( 1 , "DarkSide_Get_Desktop_Dll_Info" ) ; 11 DarkSide_Get_Desktop_Dll_Info 
    CloseLibrary( 1 )
   Else
    SUCCESS.l = 0
   Endif
  ProcedureReturn SUCCESS
 EndProcedure

; DarkBasic Professional RC2PBIncludes Ver 1.1 File - COMMANDS INITIALIZING
; By Frederic Cordier - 07.02.13
;
Procedure.l CheckideMessageBox()
  SUCCESS.l = 1
  If OpenLibrary( 1, "DarkSideMessageBox.dll")
    ideMessageBox\DarkSide_Message_Box_A= AIsFunction( 1 , "DarkSide_Message_Box_A" ) ; 1 DarkSide_Message_Box_A 
    ideMessageBox\DarkSide_Message_Box_B= AIsFunction( 1 , "DarkSide_Message_Box_B" ) ; 2 DarkSide_Message_Box_B 
    ideMessageBox\DarkSide_Message_Box_C= AIsFunction( 1 , "DarkSide_Message_Box_C" ) ; 3 DarkSide_Message_Box_C 
    ideMessageBox\DarkSide_Set_Message_Box_Title= AIsFunction( 1 , "DarkSide_Set_Message_Box_Title" ) ; 4 DarkSide_Set_Message_Box_Title 
    ideMessageBox\DarkSide_Set_Message_Box_Text= AIsFunction( 1 , "DarkSide_Set_Message_Box_Text" ) ; 5 DarkSide_Set_Message_Box_Text 
    ideMessageBox\DarkSide_Get_Message_Box_Result= AIsFunction( 1 , "DarkSide_Get_Message_Box_Result" ) ; 6 DarkSide_Get_Message_Box_Result 
    ideMessageBox\DarkSide_Get_Message_Box_Dll_Info= AIsFunction( 1 , "DarkSide_Get_Message_Box_Dll_Info" ) ; 7 DarkSide_Get_Message_Box_Dll_Info 
    CloseLibrary( 1 )
   Else
    SUCCESS.l = 0
   Endif
  ProcedureReturn SUCCESS
 EndProcedure

; DarkBasic Professional RC2PBIncludes Ver 1.1 File - COMMANDS INITIALIZING
; By Frederic Cordier - 07.02.13
;
Procedure.l CheckideSpeedMenu()
  SUCCESS.l = 1
  If OpenLibrary( 1, "DarkSideSpeedMenu.dll")
    ideSpeedMenu\DarkSide_Set_Speed_Menu_Title= AIsFunction( 1 , "DarkSide_Set_Speed_Menu_Title" ) ; 1 DarkSide_Set_Speed_Menu_Title 
    ideSpeedMenu\DarkSide_Set_Speed_Menu_Fields= AIsFunction( 1 , "DarkSide_Set_Speed_Menu_Fields" ) ; 2 DarkSide_Set_Speed_Menu_Fields 
    ideSpeedMenu\DarkSide_Set_Speed_Menu_Width= AIsFunction( 1 , "DarkSide_Set_Speed_Menu_Width" ) ; 3 DarkSide_Set_Speed_Menu_Width 
    ideSpeedMenu\DarkSide_Make_Speed_Menu= AIsFunction( 1 , "DarkSide_Make_Speed_Menu" ) ; 4 DarkSide_Make_Speed_Menu 
    ideSpeedMenu\DarkSide_Get_Speed_Menu_Return= AIsFunction( 1 , "DarkSide_Get_Speed_Menu_Return" ) ; 5 DarkSide_Get_Speed_Menu_Return 
    ideSpeedMenu\DarkSide_Get_Speed_Menu_Dll_Info= AIsFunction( 1 , "DarkSide_Get_Speed_Menu_Dll_Info" ) ; 6 DarkSide_Get_Speed_Menu_Dll_Info 
    ideSpeedMenu\DarkSide_Get_Speed_Menu_Timer= AIsFunction( 1 , "DarkSide_Get_Speed_Menu_Timer" ) ; 7 DarkSide_Get_Speed_Menu_Timer 
    ideSpeedMenu\DarkSide_Set_Speed_Menu_Width_Auto= AIsFunction( 1 , "DarkSide_Set_Speed_Menu_Width_Auto" ) ; 8 DarkSide_Set_Speed_Menu_Width_Auto 
    ideSpeedMenu\DarkSide_Kill_Speed_Menu= AIsFunction( 1 , "DarkSide_Kill_Speed_Menu" ) ; 9 DarkSide_Kill_Speed_Menu 
    CloseLibrary( 1 )
   Else
    SUCCESS.l = 0
   Endif
  ProcedureReturn SUCCESS
 EndProcedure

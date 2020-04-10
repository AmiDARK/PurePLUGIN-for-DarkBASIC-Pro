; DarkBasic Professional RC2PBIncludes Ver 1.1 File - COMMANDS INITIALIZING
; By Frederic Cordier - 07.02.13
;
Procedure.l CheckideInput()
  SUCCESS.l = 1
  If OpenLibrary( 1, "DarkSideInput.dll")
    ideInput\DarkSide_Setup_Input= AIsFunction( 1 , "DarkSide_Setup_Input" ) ; 1 DarkSide_Setup_Input 
    ideInput\DarkSide_Input_Get_GamePad_X= AIsFunction( 1 , "DarkSide_Input_Get_GamePad_X" ) ; 2 DarkSide_Input_Get_GamePad_X 
    ideInput\DarkSide_Input_Get_GamePad_Y= AIsFunction( 1 , "DarkSide_Input_Get_GamePad_Y" ) ; 3 DarkSide_Input_Get_GamePad_Y 
    ideInput\DarkSide_Input_Get_GamePad_Button= AIsFunction( 1 , "DarkSide_Input_Get_GamePad_Button" ) ; 4 DarkSide_Input_Get_GamePad_Button 
    ideInput\DarkSide_Input_Get_Keyboard_Asc= AIsFunction( 1 , "DarkSide_Input_Get_Keyboard_Asc" ) ; 5 DarkSide_Input_Get_Keyboard_Asc 
    ideInput\DarkSide_Input_Get_Mouse_Button= AIsFunction( 1 , "DarkSide_Input_Get_Mouse_Button" ) ; 6 DarkSide_Input_Get_Mouse_Button 
    ideInput\DarkSide_Input_Get_GamePad_Combo= AIsFunction( 1 , "DarkSide_Input_Get_GamePad_Combo" ) ; 7 DarkSide_Input_Get_GamePad_Combo 
    ideInput\DarkSide_Input_Set_GamePad_Combo_Rate= AIsFunction( 1 , "DarkSide_Input_Set_GamePad_Combo_Rate" ) ; 8 DarkSide_Input_Set_GamePad_Combo_Rate 
    ideInput\DarkSide_Input_Get_DPad_Number= AIsFunction( 1 , "DarkSide_Input_Get_DPad_Number" ) ; 9 DarkSide_Input_Get_DPad_Number 
    ideInput\DarkSide_Get_Input_Dll_Info= AIsFunction( 1 , "DarkSide_Get_Input_Dll_Info" ) ; 10 DarkSide_Get_Input_Dll_Info 
    CloseLibrary( 1 )
   Else
    SUCCESS.l = 0
   Endif
  ProcedureReturn SUCCESS
 EndProcedure

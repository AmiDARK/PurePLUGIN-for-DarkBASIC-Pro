; DarkBasic Professional RC2PBIncludes Ver 1.1 File - COMMANDS INITIALIZING
; By Frederic Cordier - 07.02.13
;
Procedure.l CheckideStarBurst()
  SUCCESS.l = 1
  If OpenLibrary( 1, "DarkSideStarBurst.dll")
    ideStarBurst\DarkSide_Set_StarBurst_X_Power= AIsFunction( 1 , "DarkSide_Set_StarBurst_X_Power" ) ; 1 DarkSide_Set_StarBurst_X_Power 
    ideStarBurst\DarkSide_Set_StarBurst_Y_Power= AIsFunction( 1 , "DarkSide_Set_StarBurst_Y_Power" ) ; 2 DarkSide_Set_StarBurst_Y_Power 
    ideStarBurst\DarkSide_Get_StarBurst_X_Pos= AIsFunction( 1 , "DarkSide_Get_StarBurst_X_Pos" ) ; 3 DarkSide_Get_StarBurst_X_Pos 
    ideStarBurst\DarkSide_Get_StarBurst_Y_Pos= AIsFunction( 1 , "DarkSide_Get_StarBurst_Y_Pos" ) ; 4 DarkSide_Get_StarBurst_Y_Pos 
    ideStarBurst\DarkSide_Update_StarBurst= AIsFunction( 1 , "DarkSide_Update_StarBurst" ) ; 5 DarkSide_Update_StarBurst 
    ideStarBurst\DarkSide_StarBurst_Blast= AIsFunction( 1 , "DarkSide_StarBurst_Blast" ) ; 6 DarkSide_StarBurst_Blast 
    ideStarBurst\DarkSide_Set_StarBurst_X_Start= AIsFunction( 1 , "DarkSide_Set_StarBurst_X_Start" ) ; 7 DarkSide_Set_StarBurst_X_Start 
    ideStarBurst\DarkSide_Set_StarBurst_Y_Start= AIsFunction( 1 , "DarkSide_Set_StarBurst_Y_Start" ) ; 8 DarkSide_Set_StarBurst_Y_Start 
    ideStarBurst\DarkSide_Set_StarBurst_Gravity= AIsFunction( 1 , "DarkSide_Set_StarBurst_Gravity" ) ; 9 DarkSide_Set_StarBurst_Gravity 
    ideStarBurst\DarkSide_Get_StarBurst_Dll_Info= AIsFunction( 1 , "DarkSide_Get_StarBurst_Dll_Info" ) ; 10 DarkSide_Get_StarBurst_Dll_Info 
    CloseLibrary( 1 )
   Else
    SUCCESS.l = 0
   Endif
  ProcedureReturn SUCCESS
 EndProcedure

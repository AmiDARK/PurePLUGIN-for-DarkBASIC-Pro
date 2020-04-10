; DarkBasic Professional RC2PBIncludes Ver 1.1 File - COMMANDS INITIALIZING
; By Frederic Cordier - 07.02.13
;
Procedure.l CheckidePsychoCircle()
  SUCCESS.l = 1
  If OpenLibrary( 1, "DarkSidePsychoCircle.dll")
    idePsychoCircle\DarkSide_Set_Psycho_Circle_Seed= AIsFunction( 1 , "DarkSide_Set_Psycho_Circle_Seed" ) ; 1 DarkSide_Set_Psycho_Circle_Seed 
    idePsychoCircle\DarkSide_Get_Psycho_Circle_X1= AIsFunction( 1 , "DarkSide_Get_Psycho_Circle_X1" ) ; 2 DarkSide_Get_Psycho_Circle_X1 
    idePsychoCircle\DarkSide_Get_Psycho_Circle_Y1= AIsFunction( 1 , "DarkSide_Get_Psycho_Circle_Y1" ) ; 3 DarkSide_Get_Psycho_Circle_Y1 
    idePsychoCircle\DarkSide_Get_Psycho_Circle_X2= AIsFunction( 1 , "DarkSide_Get_Psycho_Circle_X2" ) ; 4 DarkSide_Get_Psycho_Circle_X2 
    idePsychoCircle\DarkSide_Get_Psycho_Circle_Y2= AIsFunction( 1 , "DarkSide_Get_Psycho_Circle_Y2" ) ; 5 DarkSide_Get_Psycho_Circle_Y2 
    idePsychoCircle\DarkSide_Get_Psycho_Circle_X3= AIsFunction( 1 , "DarkSide_Get_Psycho_Circle_X3" ) ; 6 DarkSide_Get_Psycho_Circle_X3 
    idePsychoCircle\DarkSide_Get_Psycho_Circle_Y3= AIsFunction( 1 , "DarkSide_Get_Psycho_Circle_Y3" ) ; 7 DarkSide_Get_Psycho_Circle_Y3 
    idePsychoCircle\DarkSide_Get_Psycho_Circle_X4= AIsFunction( 1 , "DarkSide_Get_Psycho_Circle_X4" ) ; 8 DarkSide_Get_Psycho_Circle_X4 
    idePsychoCircle\DarkSide_Get_Psycho_Circle_Y4= AIsFunction( 1 , "DarkSide_Get_Psycho_Circle_Y4" ) ; 9 DarkSide_Get_Psycho_Circle_Y4 
    idePsychoCircle\DarkSide_Get_Psycho_Circle_X5= AIsFunction( 1 , "DarkSide_Get_Psycho_Circle_X5" ) ; 10 DarkSide_Get_Psycho_Circle_X5 
    idePsychoCircle\DarkSide_Get_Psycho_Circle_Y5= AIsFunction( 1 , "DarkSide_Get_Psycho_Circle_Y5" ) ; 11 DarkSide_Get_Psycho_Circle_Y5 
    idePsychoCircle\DarkSide_Get_Psycho_Circle_Dll_Info= AIsFunction( 1 , "DarkSide_Get_Psycho_Circle_Dll_Info" ) ; 12 DarkSide_Get_Psycho_Circle_Dll_Info 
    CloseLibrary( 1 )
   Else
    SUCCESS.l = 0
   Endif
  ProcedureReturn SUCCESS
 EndProcedure

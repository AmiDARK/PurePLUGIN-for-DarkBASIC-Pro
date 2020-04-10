; DarkBasic Professional RC2PBIncludes Ver 1.1 File - COMMANDS INITIALIZING
; By Frederic Cordier - 07.02.13
;
Procedure.l CheckideProgressBar()
  SUCCESS.l = 1
  If OpenLibrary( 1, "DarkSideProgressBar.dll")
    ideProgressBar\DarkSide_Set_Progress_Bar_Title= AIsFunction( 1 , "DarkSide_Set_Progress_Bar_Title" ) ; 1 DarkSide_Set_Progress_Bar_Title 
    ideProgressBar\DarkSide_Make_Progress_Bar= AIsFunction( 1 , "DarkSide_Make_Progress_Bar" ) ; 2 DarkSide_Make_Progress_Bar 
    ideProgressBar\DarkSide_Kill_Progress_Bar= AIsFunction( 1 , "DarkSide_Kill_Progress_Bar" ) ; 3 DarkSide_Kill_Progress_Bar 
    ideProgressBar\DarkSide_Get_Progress_Bar_Dll_Info= AIsFunction( 1 , "DarkSide_Get_Progress_Bar_Dll_Info" ) ; 4 DarkSide_Get_Progress_Bar_Dll_Info 
    ideProgressBar\DarkSide_Set_Progress_Bar_Status= AIsFunction( 1 , "DarkSide_Set_Progress_Bar_Status" ) ; 5 DarkSide_Set_Progress_Bar_Status 
    ideProgressBar\DarkSide_Set_Progress_Bar_Style= AIsFunction( 1 , "DarkSide_Set_Progress_Bar_Style" ) ; 6 DarkSide_Set_Progress_Bar_Style 
    CloseLibrary( 1 )
   Else
    SUCCESS.l = 0
   Endif
  ProcedureReturn SUCCESS
 EndProcedure

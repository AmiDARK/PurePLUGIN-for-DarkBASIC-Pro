; DarkBasic Professional RC2PBIncludes Ver 1.1 File - COMMANDS INITIALIZING
; By Frederic Cordier - 07.02.13
;
Procedure.l CheckideDisplay()
  SUCCESS.l = 1
  If OpenLibrary( 1, "DarkSideDisplay.dll")
    ideDisplay\DarkSide_Set_Display_Mode= AIsFunction( 1 , "DarkSide_Set_Display_Mode" ) ; 1 DarkSide_Set_Display_Mode 
    ideDisplay\DarkSide_Restore_Display_Mode= AIsFunction( 1 , "DarkSide_Restore_Display_Mode" ) ; 2 DarkSide_Restore_Display_Mode 
    ideDisplay\DarkSide_Get_Display_ScreenShot= AIsFunction( 1 , "DarkSide_Get_Display_ScreenShot" ) ; 3 DarkSide_Get_Display_ScreenShot 
    ideDisplay\DarkSide_Set_Display_WallPaper= AIsFunction( 1 , "DarkSide_Set_Display_WallPaper" ) ; 4 DarkSide_Set_Display_WallPaper 
    ideDisplay\DarkSide_Get_Display_Width= AIsFunction( 1 , "DarkSide_Get_Display_Width" ) ; 5 DarkSide_Get_Display_Width 
    ideDisplay\DarkSide_Get_Display_Height= AIsFunction( 1 , "DarkSide_Get_Display_Height" ) ; 6 DarkSide_Get_Display_Height 
    ideDisplay\DarkSide_Get_Display_Depth= AIsFunction( 1 , "DarkSide_Get_Display_Depth" ) ; 7 DarkSide_Get_Display_Depth 
    ideDisplay\DarkSide_Make_Display_Grid= AIsFunction( 1 , "DarkSide_Make_Display_Grid" ) ; 8 DarkSide_Make_Display_Grid 
    ideDisplay\DarkSide_Check_Display_Grid= AIsFunction( 1 , "DarkSide_Check_Display_Grid" ) ; 9 DarkSide_Check_Display_Grid 
    ideDisplay\DarkSide_Get_Display_Grid_Total= AIsFunction( 1 , "DarkSide_Get_Display_Grid_Total" ) ; 10 DarkSide_Get_Display_Grid_Total 
    ideDisplay\DarkSide_Get_Display_Grid_X1= AIsFunction( 1 , "DarkSide_Get_Display_Grid_X1" ) ; 11 DarkSide_Get_Display_Grid_X1 
    ideDisplay\DarkSide_Get_Display_Grid_Y1= AIsFunction( 1 , "DarkSide_Get_Display_Grid_Y1" ) ; 12 DarkSide_Get_Display_Grid_Y1 
    ideDisplay\DarkSide_Get_Display_Grid_X2= AIsFunction( 1 , "DarkSide_Get_Display_Grid_X2" ) ; 13 DarkSide_Get_Display_Grid_X2 
    ideDisplay\DarkSide_Get_Display_Grid_Y2= AIsFunction( 1 , "DarkSide_Get_Display_Grid_Y2" ) ; 14 DarkSide_Get_Display_Grid_Y2 
    ideDisplay\DarkSide_Get_Display_Dll_Info= AIsFunction( 1 , "DarkSide_Get_Display_Dll_Info" ) ; 15 DarkSide_Get_Display_Dll_Info 
    CloseLibrary( 1 )
   Else
    SUCCESS.l = 0
   Endif
  ProcedureReturn SUCCESS
 EndProcedure

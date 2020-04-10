; DarkBasic Professional RC2PBIncludes Ver 1.1 File - COMMANDS INITIALIZING
; By Frederic Cordier - 07.02.13
;
Procedure.l CheckideWhiteRabbit()
  SUCCESS.l = 1
  If OpenLibrary( 1, "DarkSideWhiteRabbit.dll")
    ideWhiteRabbit\DarkSide_Get_White_Rabbit_25Fps= AIsFunction( 1 , "DarkSide_Get_White_Rabbit_25Fps" ) ; 1 DarkSide_Get_White_Rabbit_25Fps 
    ideWhiteRabbit\DarkSide_Get_White_Rabbit_15Fps= AIsFunction( 1 , "DarkSide_Get_White_Rabbit_15Fps" ) ; 2 DarkSide_Get_White_Rabbit_15Fps 
    ideWhiteRabbit\DarkSide_Get_White_Rabbit_10Fps= AIsFunction( 1 , "DarkSide_Get_White_Rabbit_10Fps" ) ; 3 DarkSide_Get_White_Rabbit_10Fps 
    ideWhiteRabbit\DarkSide_Get_White_Rabbit_30Fps= AIsFunction( 1 , "DarkSide_Get_White_Rabbit_30Fps" ) ; 4 DarkSide_Get_White_Rabbit_30Fps 
    ideWhiteRabbit\DarkSide_Get_White_Rabbit_60Fps= AIsFunction( 1 , "DarkSide_Get_White_Rabbit_60Fps" ) ; 5 DarkSide_Get_White_Rabbit_60Fps 
    ideWhiteRabbit\DarkSide_Get_White_Rabbit_Force= AIsFunction( 1 , "DarkSide_Get_White_Rabbit_Force" ) ; 6 DarkSide_Get_White_Rabbit_Force 
    ideWhiteRabbit\DarkSide_Get_White_Rabbit_SpeedFix= AIsFunction( 1 , "DarkSide_Get_White_Rabbit_SpeedFix" ) ; 7 DarkSide_Get_White_Rabbit_SpeedFix 
    ideWhiteRabbit\DarkSide_Set_White_Rabbit_SpeedFix= AIsFunction( 1 , "DarkSide_Set_White_Rabbit_SpeedFix" ) ; 8 DarkSide_Set_White_Rabbit_SpeedFix 
    ideWhiteRabbit\DarkSide_Set_White_Rabbit_Seconds= AIsFunction( 1 , "DarkSide_Set_White_Rabbit_Seconds" ) ; 9 DarkSide_Set_White_Rabbit_Seconds 
    ideWhiteRabbit\DarkSide_Get_White_Rabbit_Seconds= AIsFunction( 1 , "DarkSide_Get_White_Rabbit_Seconds" ) ; 10 DarkSide_Get_White_Rabbit_Seconds 
    ideWhiteRabbit\DarkSide_Get_White_Rabbit_5Fps= AIsFunction( 1 , "DarkSide_Get_White_Rabbit_5Fps" ) ; 11 DarkSide_Get_White_Rabbit_5Fps 
    ideWhiteRabbit\DarkSide_Get_White_Rabbit_KeyTime= AIsFunction( 1 , "DarkSide_Get_White_Rabbit_KeyTime" ) ; 12 DarkSide_Get_White_Rabbit_KeyTime 
    ideWhiteRabbit\DarkSide_Set_White_Rabbit_Bpm= AIsFunction( 1 , "DarkSide_Set_White_Rabbit_Bpm" ) ; 13 DarkSide_Set_White_Rabbit_Bpm 
    ideWhiteRabbit\DarkSide_Get_White_Rabbit_Bpm= AIsFunction( 1 , "DarkSide_Get_White_Rabbit_Bpm" ) ; 14 DarkSide_Get_White_Rabbit_Bpm 
    ideWhiteRabbit\DarkSide_Get_White_Rabbit_Dll_Info= AIsFunction( 1 , "DarkSide_Get_White_Rabbit_Dll_Info" ) ; 15 DarkSide_Get_White_Rabbit_Dll_Info 
    CloseLibrary( 1 )
   Else
    SUCCESS.l = 0
   Endif
  ProcedureReturn SUCCESS
 EndProcedure

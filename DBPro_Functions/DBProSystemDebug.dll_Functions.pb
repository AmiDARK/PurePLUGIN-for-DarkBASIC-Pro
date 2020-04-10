; DarkBasic Professional RC2PBIncludes Ver 1.1 File - COMMANDS INITIALIZING
; By Frederic Cordier - 07.02.13
;
Procedure.l CheckSystem()
  SUCCESS.l = 1
  If OpenLibrary( 1, "DBProSystemDebug.dll")
    DB_System\EmptyChecklist= AIsFunction( 1 , "?EmptyChecklist@@YAXXZ" ) ; 1 EMPTY CHECKLIST 
    DB_System\ChecklistQuantity= AIsFunction( 1 , "?ChecklistQuantity@@YAHXZ" ) ; 2 CHECKLIST QUANTITY 
    DB_System\ChecklistValueA= AIsFunction( 1 , "?ChecklistValueA@@YAHH@Z" ) ; 3 CHECKLIST VALUE A 
    DB_System\ChecklistValueB= AIsFunction( 1 , "?ChecklistValueB@@YAHH@Z" ) ; 4 CHECKLIST VALUE B 
    DB_System\ChecklistValueC= AIsFunction( 1 , "?ChecklistValueC@@YAHH@Z" ) ; 5 CHECKLIST VALUE C 
    DB_System\ChecklistValueD= AIsFunction( 1 , "?ChecklistValueD@@YAHH@Z" ) ; 6 CHECKLIST VALUE D 
    DB_System\ChecklistString= AIsFunction( 1 , "?ChecklistString@@YAKKH@Z" ) ; 7 CHECKLIST STRING$ 
    DB_System\TMEMAvailable= AIsFunction( 1 , "?TMEMAvailable@@YAHXZ" ) ; 32 SYSTEM TMEM AVAILABLE 
    DB_System\DMEMAvailable= AIsFunction( 1 , "?DMEMAvailable@@YAHXZ" ) ; 33 SYSTEM DMEM AVAILABLE 
    DB_System\SMEMAvailable= AIsFunction( 1 , "?SMEMAvailable@@YAHXZ" ) ; 34 SYSTEM SMEM AVAILABLE 
    DB_System\DisableEscapeKey= AIsFunction( 1 , "?DisableEscapeKey@@YAXXZ" ) ; 35 DISABLE ESCAPEKEY 
    DB_System\EnableEscapeKey= AIsFunction( 1 , "?EnableEscapeKey@@YAXXZ" ) ; 36 ENABLE ESCAPEKEY 
    DB_System\DisableSystemKeys= AIsFunction( 1 , "?DisableSystemKeys@@YAXXZ" ) ; 37 DISABLE SYSTEMKEYS 
    DB_System\EnableSystemKeys= AIsFunction( 1 , "?EnableSystemKeys@@YAXXZ" ) ; 38 ENABLE SYSTEMKEYS 
    DB_System\ExitPrompt= AIsFunction( 1 , "?ExitPrompt@@YAXKK@Z" ) ; 39 EXIT PROMPT Message String, Caption String
    DB_System\ChecklistFValueA= AIsFunction( 1 , "?ChecklistFValueA@@YAKH@Z" ) ; 43 CHECKLIST FVALUE A Index
    DB_System\ChecklistFValueB= AIsFunction( 1 , "?ChecklistFValueB@@YAKH@Z" ) ; 44 CHECKLIST FVALUE B Index
    DB_System\ChecklistFValueC= AIsFunction( 1 , "?ChecklistFValueC@@YAKH@Z" ) ; 45 CHECKLIST FVALUE C Index
    DB_System\ChecklistFValueD= AIsFunction( 1 , "?ChecklistFValueD@@YAKH@Z" ) ; 46 CHECKLIST FVALUE D Index
    CloseLibrary( 1 )
   Else
    SUCCESS.l = 0
   Endif
  ProcedureReturn SUCCESS
 EndProcedure

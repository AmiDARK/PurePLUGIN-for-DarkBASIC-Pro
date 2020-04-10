; DarkBasic Professional RC2PBIncludes Ver 1.1 File - COMMANDS INITIALIZING
; By Frederic Cordier - 07.02.13
;
Procedure.l CheckSetup()
  SUCCESS.l = 1
  If OpenLibrary( 1, "DBProSetupDebug.dll")
    DB_Setup\GetDisplayFPS= AIsFunction( 1 , "?GetDisplayFPS@@YAHXZ" ) ; 1 SCREEN FPS 
    DB_Setup\LockBackbuffer= AIsFunction( 1 , "?LockBackbuffer@@YAXXZ" ) ; 2 LOCK BACKBUFFER 
    DB_Setup\UnlockBackbuffer= AIsFunction( 1 , "?UnlockBackbuffer@@YAXXZ" ) ; 3 UNLOCK BACKBUFFER 
    DB_Setup\GetBackbufferPtr= AIsFunction( 1 , "?GetBackbufferPtr@@YAKXZ" ) ; 4 GET BACKBUFFER PTR 
    DB_Setup\GetBackbufferWidth= AIsFunction( 1 , "?GetBackbufferWidth@@YAHXZ" ) ; 5 GET BACKBUFFER WIDTH 
    DB_Setup\GetBackbufferHeight= AIsFunction( 1 , "?GetBackbufferHeight@@YAHXZ" ) ; 6 GET BACKBUFFER HEIGHT 
    DB_Setup\GetBackbufferDepth= AIsFunction( 1 , "?GetBackbufferDepth@@YAHXZ" ) ; 7 GET BACKBUFFER DEPTH 
    DB_Setup\GetBackbufferPitch= AIsFunction( 1 , "?GetBackbufferPitch@@YAHXZ" ) ; 8 GET BACKBUFFER PITCH 
    DB_Setup\CheckDisplayMode= AIsFunction( 1 , "?CheckDisplayMode@@YAHHHH@Z" ) ; 9 CHECK DISPLAY MODE Width, Height, Depth
    DB_Setup\CurrentGraphicsCard= AIsFunction( 1 , "?CurrentGraphicsCard@@YAKK@Z" ) ; 10 CURRENT GRAPHICS CARD$ 
    DB_Setup\EmulationMode= AIsFunction( 1 , "?EmulationMode@@YAHXZ" ) ; 11 EMULATION MODE 
    DB_Setup\PerformChecklistForDisplayModes= AIsFunction( 1 , "?PerformChecklistForDisplayModes@@YAXXZ" ) ; 12 PERFORM CHECKLIST FOR DISPLAY MODES 
    DB_Setup\PerformChecklistForGraphicsCards= AIsFunction( 1 , "?PerformChecklistForGraphicsCards@@YAXXZ" ) ; 13 PERFORM CHECKLIST FOR GRAPHICS CARDS 
    DB_Setup\GetDisplayDepth= AIsFunction( 1 , "?GetDisplayDepth@@YAHXZ" ) ; 14 SCREEN DEPTH 
    DB_Setup\GetDisplayHeight= AIsFunction( 1 , "?GetDisplayHeight@@YAHXZ" ) ; 15 SCREEN HEIGHT 
    DB_Setup\GetDisplayInvalid= AIsFunction( 1 , "?GetDisplayInvalid@@YAHXZ" ) ; 16 SCREEN INVALID 
    DB_Setup\GetDisplayType= AIsFunction( 1 , "?GetDisplayType@@YAHXZ" ) ; 17 SCREEN TYPE 
    DB_Setup\GetDisplayWidth= AIsFunction( 1 , "?GetDisplayWidth@@YAHXZ" ) ; 18 SCREEN WIDTH 
    DB_Setup\SetDisplayModeEx= AIsFunction( 1 , "?SetDisplayModeEx@@YAXHHH@Z" ) ; 19 SET DISPLAY MODE Width, Height, Depth
    DB_Setup\SetEmulationOn= AIsFunction( 1 , "?SetEmulationOn@@YAXXZ" ) ; 20 SET EMULATION ON 
    DB_Setup\SetEmulationOff= AIsFunction( 1 , "?SetEmulationOff@@YAXXZ" ) ; 21 SET EMULATION OFF 
    DB_Setup\SetGamma= AIsFunction( 1 , "?SetGamma@@YAXHHH@Z" ) ; 22 SET GAMMA Red, Green, Blue
    DB_Setup\SetGraphicsCard= AIsFunction( 1 , "?SetGraphicsCard@@YAXK@Z" ) ; 23 SET GRAPHICS CARD Cardname
    DB_Setup\ShowWindow= AIsFunction( 1 , "?ShowWindow@@YAXXZ" ) ; 24 SHOW WINDOW 
    DB_Setup\HideWindow= AIsFunction( 1 , "?HideWindow@@YAXXZ" ) ; 25 HIDE WINDOW 
    DB_Setup\MaximiseWindow= AIsFunction( 1 , "?MaximiseWindow@@YAXXZ" ) ; 26 MAXIMIZE WINDOW 
    DB_Setup\MinimiseWindow= AIsFunction( 1 , "?MinimiseWindow@@YAXXZ" ) ; 27 MINIMIZE WINDOW 
    DB_Setup\RestoreWindow= AIsFunction( 1 , "?RestoreWindow@@YAXXZ" ) ; 28 RESTORE WINDOW 
    DB_Setup\SetWindowSettings= AIsFunction( 1 , "?SetWindowSettings@@YAXHHH@Z" ) ; 29 SET WINDOW LAYOUT Style, Caption, Icon Number
    DB_Setup\SetWindowModeOn= AIsFunction( 1 , "?SetWindowModeOn@@YAXXZ" ) ; 30 SET WINDOW ON 
    DB_Setup\SetWindowModeOff= AIsFunction( 1 , "?SetWindowModeOff@@YAXXZ" ) ; 31 SET WINDOW OFF 
    DB_Setup\SetWindowSize= AIsFunction( 1 , "?SetWindowSize@@YAXHH@Z" ) ; 32 SET WINDOW SIZE Width, Height
    DB_Setup\SetWindowPosition= AIsFunction( 1 , "?SetWindowPosition@@YAXHH@Z" ) ; 33 SET WINDOW POSITION X, Y
    DB_Setup\SetWindowTitle= AIsFunction( 1 , "?SetWindowTitle@@YAXK@Z" ) ; 34 SET WINDOW TITLE Caption String
    DB_Setup\WindowExist= AIsFunction( 1 , "?WindowExist@@YAHK@Z" ) ; 35 WINDOW EXIST Window Name
    DB_Setup\WindowToBack= AIsFunction( 1 , "?WindowToBack@@YAXXZ" ) ; 36 WINDOW TO BACK 
    DB_Setup\WindowToFront= AIsFunction( 1 , "?WindowToFront@@YAXXZ" ) ; 37 WINDOW TO FRONT 
    DB_Setup\WindowToFront1= AIsFunction( 1 , "?WindowToFront@@YAXK@Z" ) ; 38 WINDOW TO FRONT Window Name
    DB_Setup\WindowToBack1= AIsFunction( 1 , "?WindowToBack@@YAXK@Z" ) ; 39 WINDOW TO BACK Window Name
    DB_Setup\SetDisplayModeVSYNC= AIsFunction( 1 , "?SetDisplayModeVSYNC@@YAXHHHH@Z" ) ; 40 SET DISPLAY MODE Width, Height, Depth, VSyncOn
    CloseLibrary( 1 )
   Else
    SUCCESS.l = 0
   Endif
  ProcedureReturn SUCCESS
 EndProcedure

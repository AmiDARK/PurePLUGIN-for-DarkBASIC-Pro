;
; ***********************************
; *                                 *
; * PurePLUGIN TPC Plug-In Ver 2.00 *
; *                                 *
; ***********************************
; ADDITIONAL NOTES: if you use the PureBASIC TPC tutorial that was released on the Thegamecreators newsletter:
; http://www.thegamecreators.com/data/newsletter/newsletter_issue_22.html#17
; Consider that the informations available here are more recent and must be used instead of old ones in the tutorial.
; Especially to String input/output.
; Ver 1.1 Addons: PurePLUGINVersion checking.
Structure PurePLUGINStructure
  Version.l : Revision.l : DebugMODE.l
 EndStructure
Global PurePLUGIN.PurePLUGINStructure
; Define your UserNAME and UserCODE here. They were provided with the PurePLUGIN registration.
; If you set them incorrectly, your plugin may not work.
; We advice you to try to crypt your UserNAME and UserCODE in your DLL and uncrypt them only in memory
; for security reasons. If you simply put them here without crypting them, they can be seen by someone editing the DLL with an HEX editor.
  Global UserNAME.s = "Put your username here"
  Global UserCODE.s = "put your number code here"
; First of all, we include the constants that can be used to know which DarkBASIC Professional DLL's
; Were included by the compiler in the .EXE
  IncludeFile "..\DBPro_Constants.pb"
; Now we include some commands I've done and that can sometimes be useful.
  IncludeFile "..\AdvancedFunctions.pb" ; Pour contenir des fonctions spécifiques au système PurePLUGIN.
; we firstly included all structures needed to use DarkBASIC Professional's DLL set.
  IncludeFile "..\DBPro_Structures.pb"
  IncludeFile "..\DBPro_Structures_Init.pb" ; Setup for main, Init for sub.
; Now we inlude DarkBASIC Professional command set.
  IncludeFile "..\DBPro_Init.pb" ; Pour l'initialisation secondaire pour les DLLs du pack.
; We now include the command that can be used directly from your TPC DLL.
  IncludeFile "..\DBPro_CommandsLISTS.pb"
;
Global PPInitialized.l ; Global variable to store 1 if darkBASIC Professional was successfully
; Initialized
; *************************************************************************************** Start()
; The main initialisation. Is called internally by DarkBASIC Professional when initializing the .EXE
; Do not forget to follow instructions on how to rename AConstructor00YAXXZ to ?Constructor@@YAXXZ
; Otherwise DarkBASIC Professional will not be able to initialize your plugin and you'll get a crash.
ProcedureCDLL AConstructor00YAXXZ()
  PurePLUGIN\DebugMODE = 1
  If *GlobPtr = 0 : InitialiseCorePtr() : EndIf
  If PPInitialized = 0
    PPInitialized = InitDLLBase()
   EndIf
  GetPPVersion()
 EndProcedure
; *************************************************************************************** Quit()
; You can do the same thing than with Contructor if you need to remove stuffs from memory when the program
; exit. You'll have to rename the ADestructor00YAXXZ to ?Destructor@@YAXXZ with a tool like XVI.
; Follow instructions on how to rename constructor procedure to make changes with destructor too.
ProcedureCDLL ADestructor00YAXXZ()
 EndProcedure
; *************************************************************************************** U6.7 Support.
; This procedure will be called by DarkBASIC Professional when focus is lost on D3DRender
ProcedureCDLL AD3DDeviceLost00YAXXZ()
 EndProcedure
; *************************************************************************************** U6.7 Support.
; This procedure will be called by DarkBASIC Professional when focus is back again on D3DRender.
ProcedureCDLL AD3DDeviceNotReset00YAXXZ()
 EndProcedure
; *************************************************************************************** Get Dependencies()
; This function allow you to define how many external .DLL files your plugin need to work.
ProcedureCDLL.l AGetNumDependencies00YAHXZ()
  ProcedureReturn 1
 EndProcedure
; *************************************************************************************** Return DLL names()
; This function allow you to return the names of the external .DLL your plugin need to work.
; Definition of .DLL files start at index 0.
ProcedureCDLL.s AGetDependencyID00YAPBDH0Z( NumID.l )
  Select NumID
    Case 0 : NewPTR.s = PeekS( ?DEP_PurePLUGIN )      ; Include PurePLUGIN system for SETUP the Plugin.
    Default : NewPTR = ""
   EndSelect
  ProcedureReturn NewPTR
 EndProcedure
; **************************************************************
; This function ensure your plugin is inialized
ProcedureCDLL.l PPInit()
  If *GlobPtr = 0 : InitialiseCorePtr() : EndIf
  If PPInitialized = 0
    PPInitialized = InitDLLBase()
   EndIf
  GetPPVersion()
  ProcedureReturn PPInitialized
 EndProcedure
; **************************************************************
; Now you can include the PureBASIC source code file that will contain all your TPC Procedures
  IncludeFile "PurePLUGIN-YourProcedures.pb"
;
; **************************************************************
; Simple informations about your plugin.
DataSection
; You can put the names of your plugins as follow
DEP_PurePLUGIN:
Data.s "PurePLUGIN.dll"
Data.b 0
;DEP_SecondDLLDependency:
;Data.s "SecondDLLFileName.dll"
;Data.b 0
;
DONNEES:
Data.s "DarkBasic Professional PurePLUGIN DLL Sample / "
Data.s "PurePLUGIN-SampleDLL.dll Ver 1.1 [ 080308 ]  / "
Data.s "Frédéric Cordier - Odyssey-Creators(c)2005-2008 "
EndDataSection
; IDE Options = PureBasic 4.10 (Windows - x86)
; ExecutableFormat = Shared Dll
; CursorPosition = 77
; FirstLine = 39
; Folding = --
; Executable = ..\PurePLUGIN-SampleDLL [PureSCROLLING]\PurePLUGIN-SampleDLL.dll
; AddResource = PurePLUGIN-SampleDLL.rc
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
Structure PurePLUGINS
  Version.l : Revision.l : DebugMODE.l
 EndStructure
Global PurePLUGIN.PurePLUGINS
; Define your UserNAME and UserCODE here. They were provided with the PurePLUGIN registration.
; If you set them incorrectly, your plugin may not work.
; We advice you to try to crypt your UserNAME and UserCODE in your DLL and uncrypt them only in memory
; for security reasons. If you simply put them here without crypting them, they can be seen by someone editing the DLL with an HEX editor.
; User : ezrtvjioenjiovyjmn
; Code : KaUYZJQSEPOOPagSOPFfYWeNP
  Global UserNAME.s = "ezrtvjioenjiovyjmn"
  Global UserCODE.s = "KaUYZJQSEPOOPagSOPFfYWeNP"
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
; You can put in comments the DLL that are not used in your TPC Plugin to make your TPC Plugin be smaller.
  IncludeFile "..\DBPro_Commands\DBProAnimationDebug.dll_Commands.pb"
  IncludeFile "..\DBPro_Commands\DBProBasic2DDebug.dll_Commands.pb"
  IncludeFile "..\DBPro_Commands\DBProBasic3DDebug.dll_Commands.pb"
  IncludeFile "..\DBPro_Commands\DBProBitmapDebug.dll_Commands.pb"
  IncludeFile "..\DBPro_Commands\DBproCameraDebug.dll_Commands.pb"
  IncludeFile "..\DBPro_Commands\DBProCore.dll_Commands.pb"
  IncludeFile "..\DBPro_Commands\DBProCSGDebug.dll_Commands.pb"
  IncludeFile "..\DBPro_Commands\DBProFileDebug.dll_Commands.pb"
  IncludeFile "..\DBPro_Commands\DBProFTPDebug.dll_Commands.pb"
  IncludeFile "..\DBPro_Commands\DBProImageDebug.dll_Commands.pb"
  IncludeFile "..\DBPro_Commands\DBProInputDebug.dll_Commands.pb"
  IncludeFile "..\DBPro_Commands\DBProLightDebug.dll_Commands.pb"
  IncludeFile "..\DBPro_Commands\DBProLODTerrainDebug.dll_Commands.pb"
  IncludeFile "..\DBPro_Commands\DBProMatrixDebug.dll_Commands.pb"
  IncludeFile "..\DBPro_Commands\DBProMemblocksDebug.dll_Commands.pb"
  IncludeFile "..\DBPro_Commands\DBProMultiPlayerDebug.dll_Commands.pb"
  IncludeFile "..\DBPro_Commands\DBProMusicDebug.dll_Commands.pb"
  IncludeFile "..\DBPro_Commands\DBProParticlesDebug.dll_Commands.pb"
  IncludeFile "..\DBPro_Commands\DBProSetupDebug.dll_Commands.pb"
  IncludeFile "..\DBPro_Commands\DBProSoundDebug.dll_Commands.pb"
  IncludeFile "..\DBPro_Commands\DBProSpritesDebug.dll_Commands.pb"
  IncludeFile "..\DBPro_Commands\DBProSystemDebug.dll_Commands.pb"
  IncludeFile "..\DBPro_Commands\DBProTextDebug.dll_Commands.pb"
  IncludeFile "..\DBPro_Commands\DBProVectorsDebug.dll_Commands.pb"
  IncludeFile "..\DBPro_Commands\DBProWorld3DDebug.dll_Commands.pb"
  IncludeFile "..\DBProPLUGIN-LICENSED_Commands\AdvancedTerrain.dll_Commands.pb"
  IncludeFile "..\DBProPLUGIN-LICENSED_Commands\DBProGameFX.dll_Commands.pb"
  IncludeFile "..\DBProPLUGIN-LICENSED_Commands\EnhancementsOV.dll_Commands.pb"
  IncludeFile "..\DBProPLUGIN-USER_Commands\DBProMultiplayerPlusDebug.dll_Commands.pb"
  IncludeFile "..\DBProPLUGIN-USER_Commands\DBProODEDebug.dll_Commands.pb"
  IncludeFile "..\DBProPLUGIN-USER_Commands\ShaderData.dll_Commands.pb"
; PurePLUGIN Ver 1.1 Upgrades support :
  IncludeFile "..\DBProPLUGIN-LICENSED_Commands\DarkPHYSICS.dll_Commands.pb"
; Ver 1.1 Addons: eXtends 1.3 version needed.
  IncludeFile "..\DBProPLUGIN-LICENSED_Commands\DBProBasic2DExtends.dll_Commands.pb"
  IncludeFile "..\DBProPLUGIN-LICENSED_Commands\DBProBasic3DExtends.dll_Commands.pb"
  IncludeFile "..\DBProPLUGIN-LICENSED_Commands\DBProBitmapExtends.dll_Commands.pb"
  IncludeFile "..\DBProPLUGIN-LICENSED_Commands\DBProCameraExtends.dll_Commands.pb"
  IncludeFile "..\DBProPLUGIN-LICENSED_Commands\DBProEffects3DExtends.dll_Commands.pb"
  IncludeFile "..\DBProPLUGIN-LICENSED_Commands\DBProExtends.dll_Commands.pb"
  IncludeFile "..\DBProPLUGIN-LICENSED_Commands\DBProFileExtends.dll_Commands.pb"
  IncludeFile "..\DBProPLUGIN-LICENSED_Commands\DBProImageExtends.dll_Commands.pb"
  IncludeFile "..\DBProPLUGIN-LICENSED_Commands\DBProLight3DExtends.dll_Commands.pb"
  IncludeFile "..\DBProPLUGIN-LICENSED_Commands\DBProMatrixExtends.dll_Commands.pb"
  IncludeFile "..\DBProPLUGIN-LICENSED_Commands\DBProMemblocksExtends.dll_Commands.pb"
  IncludeFile "..\DBProPLUGIN-LICENSED_Commands\DBProMesh3DExtends.dll_Commands.pb"
  IncludeFile "..\DBProPLUGIN-LICENSED_Commands\DBProMusicExtends.dll_Commands.pb"
  IncludeFile "..\DBProPLUGIN-LICENSED_Commands\DBProParticles3DExtends.dll_Commands.pb"
  IncludeFile "..\DBProPLUGIN-LICENSED_Commands\DBProRTSkyboxExtends.dll_Commands.pb"
  IncludeFile "..\DBProPLUGIN-LICENSED_Commands\DBProSoundExtends.dll_Commands.pb"
  IncludeFile "..\DBProPLUGIN-LICENSED_Commands\DBProSpriteExtends.dll_Commands.pb"
  IncludeFile "..\DBProPLUGIN-LICENSED_Commands\DBProTextExtends.dll_Commands.pb"
  IncludeFile "..\DBProPLUGIN-LICENSED_Commands\DBProVector2Extends.dll_Commands.pb"
  IncludeFile "..\DBProPLUGIN-LICENSED_Commands\DBProVector3Extends.dll_Commands.pb"
  IncludeFile "..\DBProPLUGIN-LICENSED_Commands\DBProVector4Extends.dll_Commands.pb"
; Ver 1.1 Addons: DKSHop plugin:
  IncludeFile "..\DBProPLUGIN-USER_Commands\DKSHOP.dll_Commands.pb"
  IncludeFile "..\DBProPLUGIN-USER_Commands\DKAVM.dll_Commands.pb"
; Ver 1.2 Addons: Sparky's Collision DLL:
  IncludeFile "..\DBProPLUGIN-USER_Commands\SC_Collision.dll_Commands.pb"

;
Global PPInitialized.l ; Global variable to store 1 if darkBASIC Professional was successfully
; Initialized
; *************************************************************************************** Start()
; The main initialisation. Is called internally by DarkBASIC Professional when initializing the .EXE
; Do not forget to follow instructions on how to rename AConstructor00YAXXZ to ?Constructor@@YAXXZ
; Otherwise DarkBASIC Professional will not be able to initialize your plugin and you'll get a crash.
ProcedureCDLL AConstructor00YAXXZ()
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
; **************************************************************
; This function ensure your plugin is inialized
ProcedureCDLL.l PPInit()
  If *GlobPtr = 0 : InitialiseCorePtr() : EndIf
  If PPInitialized = 0
    PPInitialized = InitDLLBase()
   EndIf
  ProcedureReturn PPInitialized
  GetPPVersion()
 EndProcedure
; **************************************************************
; Now you can include the PureBASIC source code file that will contain all your TPC Procedures
ProcedureCDLL PPTestDLL()
  MessageRequester( "DBProAnimationDEBUG.dll", "=DBAnimationExist( 1 )" )
  Result.l = DBAnimationExist( 1 )
  MessageRequester( "DBProBasic2DDebug.dll", "=DBRgb( 255, 255, 255 )" )
  Result = DBRgb( 255, 255, 255 )
  MessageRequester( "DBProBasic3DDebug.dll", "=DBGetObjectExist( 1 )" )
  Result = DBGetObjectExist( 1 )
  MessageRequester( "DBProBitmapDebug.dll", "=DBBitmapExist( 1 )" )
  Result = DBBitmapExist( 1 )
  MessageRequester( "DBProCameraDebug.dll", "=DBGetCameraExist( 1 )" )
  Result = DBGetCameraExist( 1 )
  MessageRequester( "DBProCore.dll", "DBSync()" )
  DBSync()
  MessageRequester( "DBProFileDebug.dll", "=DBFileOpen( 1 )" )
  Result = DBFileOpen( 1 )
  MessageRequester( "DBProFTPDebug.dll", "=DBGetFTPStatus()" )
  Result = DBGetFTPStatus()
  MessageRequester( "DBProImageDebug.dll", "=DBGetImageExist( 1 ) " )
  Result = DBGetImageExist( 1 )
  MessageRequester( "DarkPHYSICS.dll", "=dbPhyGetRigidBodyExist( 1 )" )
  Result = dbPhyGetRigidBodyExist( 1 )
  If GetDLLInitialized( #DKSHOP ) = 1
    MessageRequester( "DKSHOP.dll", "=DK_GetPickPoly()" )
    Result = DK_GetPickPoly()
   EndIf
  If GetDLLInitialized( #SC_Collision ) = 1
    MessageRequester( "SC_Collision.dll", "=SC_getCount()" )
    Result = SC_getCount()
   EndIf
  If GetDLLInitialized( #DKAVM ) = 1
    MessageRequester( "DKAVM.dll", "=DK_Basic3D_GetCull()" )
    Result = DK_Basic3D_GetCull( 1 )
   EndIf
  If GetDLLInitialized( #DBProVectors ) = 1
    MessageRequester( "DBProVectorsDebug.dll", "DBMakeVector4" )
   EndIf
 EndProcedure
;
; **************************************************************
; Simple informations about your plugin.
DataSection
DONNEES:
Data.s "DarkBasic Professional PurePLUGIN DLL Sample / "
Data.s "PurePLUGIN-SampleDLL.dll Ver 1.2 [ 070327 ]  / "
Data.s "Frédéric Cordier - Odyssey-Creators(c)2005-2007 "
EndDataSection
; IDE Options = PureBasic 4.20 Beta 2 (Windows - x86)
; ExecutableFormat = Shared Dll
; CursorPosition = 163
; FirstLine = 127
; Folding = -
; Executable = PurePLUGIN-TestDLL.dll
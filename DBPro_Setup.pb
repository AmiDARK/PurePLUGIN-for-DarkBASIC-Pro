;
; Initialisation réelle des DLLs de Dark Basic Professional.
; Fichier à utiliser seulement sur la DLL Principale qui saisirat les adresses réelles.
; Cette DLL Principale devra renvoyer la base des adresses aux sous DLLs du projet.
;
; *************************************************************************************** Initialize DarkBasicPro Core Pointer
Procedure InitialiseCorePtr()
  If OpenLibrary( 1 , "DBProCore.dll" ) 
    coreptr_handle.l = AIsFunction( 1 , "?GetGlobPtr@@YAKXZ" )
    *GlobPtr = CallCFunctionFast( coreptr_handle );
    CloseLibrary( 1 );
   Else
    MessageRequester( "DB PurePLUGIN Initialisation" , " Library DBProCore.dll not found" )
   EndIf
EndProcedure
;
; **************************************************************
Procedure InitBaseList()
  BaseList\DBAnimation = @DB_Animation
  BaseList\DBBasic2D = @DB_Basic2D
  BaseList\DBBasic3D = @DB_Basic3D
  BaseList\DBBitmap = @DB_Bitmap
  BaseList\DBCamera = @DB_Camera
  BaseList\DBCore = @DB_Core
  BaseList\DBCSG = @DB_CSG
  BaseList\DBFile = @DB_File
  BaseList\DBFTP = @DB_FTP
  BaseList\DBImage = @DB_Image
  BaseList\DBInput = @DB_Input
  BaseList\DBLight = @DB_Light
  BaseList\DBLODTerrain = @DB_LODTerrain
  BaseList\DBMatrix = @DB_Matrix
  BaseList\DBMemblocks = @DB_Memblocks
  BaseList\DBMultiPlayer = @DB_MultiPlayer
  BaseList\DBMusic = @DB_Music
  BaseList\DBParticles = @DB_Particles
  BaseList\DBSetup = @DB_Setup
  BaseList\DBSound = @DB_Sound
  BaseList\DBSprites = @DB_Sprites
  BaseList\DBSystem = @DB_System
  BaseList\DBText = @DB_Text
  BaseList\DBVectors = @DB_Vectors
  BaseList\DBWorld3D = @DB_World3D
;
  BaseList\DBAdvancedTerrain = @DB_AdvancedTerrain
  BaseList\DBGameFX = @DB_GameFX
  BaseList\DBEnhancementsOV = @DB_EnhancementsOV
;
  BaseList\DBMultiPlayerPlus = @DB_MultiPlayerPlus
  BaseList\DBODE = @DB_ODE
  BaseList\DBShaderData = @DB_ShaderData
;
  BaseList\DBDarkPHYSICS =@DB_DarkPHYSICS
;
  BaseList\Basic2DExtends = @Basic2DExtends
  BaseList\Basic3DExtends = @Basic3DExtends
  BaseList\BitmapExtends = @BitmapExtends
  BaseList\CameraExtends = @CameraExtends
  BaseList\Effects3DExtends = @Effects3DExtends
  BaseList\ZExtends = @ZExtends
  BaseList\FileExtends = @FileExtends
  BaseList\ImageExtends = @ImageExtends
  BaseList\Light3DExtends = @Light3DExtends
  BaseList\MatrixExtends = @MatrixExtends
  BaseList\MemblocksExtends = @MemblocksExtends
  BaseList\Mesh3DExtends = @Mesh3DExtends
  BaseList\MusicExtends = @MusicExtends
  BaseList\Particles3DExtends = @Particles3DExtends
  BaseList\RTSkyboxExtends = @RTSkyboxExtends
  BaseList\SoundExtends = @SoundExtends
  BaseList\SpriteExtends = @SpriteExtends
  BaseList\TextExtends = @TextExtends
  BaseList\Vector2Extends = @Vector2Extends
  BaseList\Vector3Extends = @Vector3Extends
  BaseList\Vector4Extends = @Vector4Extends
  ; Ver 1.1 Addons
  BaseList\DKAVM = @DKAVM
  BaseList\DKSHOP = @DKSHOP
  ; Ver 1.2 Addons: Sparky's Collision DLL
  BaseList\SC_Collision = @SC_Collision
  ; Ver 1.3 Addons
  BaseList\EZRotateBasic = @EZRotateBasic
  ; Ver 1.4 Addons
  BaseList\AdvancedSPRITES = @AdvancedSPRITES
  ; Ver 1.5 Addons
  BaseList\ideColourRequester = @ideColourRequester
  BaseList\ideDeskTop = @ideDeskTop
  BaseList\ideDisplay = @ideDisplay
  BaseList\ideFileRequester = @ideFileRequester
  BaseList\ideFontRequester = @ideFontRequester
  BaseList\ideInput = @ideInput
  BaseList\ideInputRequester = @ideInputRequester
  BaseList\ideMessageBox = @ideMessageBox
  BaseList\ideProgressBar = @ideProgressBar
  BaseList\idePsychoCircle = @idePsychoCircle
  BaseList\ideSpeedMenu = @ideSpeedMenu
  BaseList\ideStarBurst = @ideStarBurst
  BaseList\ideWhiteRabbit = @ideWhiteRabbit
;
;  BaseList\ = @
;
 EndProcedure
; *************************************************************************************** 
IncludeFile "..\DBPro_Functions\DBProAnimationDebug.dll_Functions.pb"
IncludeFile "..\DBPro_Functions\DBProBasic2DDebug.dll_Functions.pb"
IncludeFile "..\DBPro_Functions\DBProBasic3DDebug.dll_Functions.pb"
IncludeFile "..\DBPro_Functions\DBProBitmapDebug.dll_Functions.pb"
IncludeFile "..\DBPro_Functions\DBproCameraDebug.dll_Functions.pb"
IncludeFile "..\DBPro_Functions\DBProCore.dll_Functions.pb"
IncludeFile "..\DBPro_Functions\DBProCSGDebug.dll_Functions.pb"
IncludeFile "..\DBPro_Functions\DBProFileDebug.dll_Functions.pb"
IncludeFile "..\DBPro_Functions\DBProFTPDebug.dll_Functions.pb"
IncludeFile "..\DBPro_Functions\DBProImageDebug.dll_Functions.pb"
IncludeFile "..\DBPro_Functions\DBProInputDebug.dll_Functions.pb"
IncludeFile "..\DBPro_Functions\DBProLightDebug.dll_Functions.pb"
IncludeFile "..\DBPro_Functions\DBProLODTerrainDebug.dll_Functions.pb"
IncludeFile "..\DBPro_Functions\DBProMatrixDebug.dll_Functions.pb"
IncludeFile "..\DBPro_Functions\DBProMemblocksDebug.dll_Functions.pb"
IncludeFile "..\DBPro_Functions\DBProMultiPlayerDebug.dll_Functions.pb"
IncludeFile "..\DBPro_Functions\DBProMusicDebug.dll_Functions.pb"
IncludeFile "..\DBPro_Functions\DBProParticlesDebug.dll_Functions.pb"
IncludeFile "..\DBPro_Functions\DBProSetupDebug.dll_Functions.pb"
IncludeFile "..\DBPro_Functions\DBProSoundDebug.dll_Functions.pb"
IncludeFile "..\DBPro_Functions\DBProSpritesDebug.dll_Functions.pb"
IncludeFile "..\DBPro_Functions\DBProSystemDebug.dll_Functions.pb"
IncludeFile "..\DBPro_Functions\DBProTextDebug.dll_Functions.pb"
IncludeFile "..\DBPro_Functions\DBProVectorsDebug.dll_Functions.pb"
IncludeFile "..\DBPro_Functions\DBProWorld3DDebug.dll_Functions.pb"
; DarkBASIC Professional Compiler\Plugin-Licensed content"
IncludeFile "..\DBProPLUGIN-LICENSED_Functions\AdvancedTerrain.dll_Functions.pb"
IncludeFile "..\DBProPLUGIN-LICENSED_Functions\DBProGameFX.dll_Functions.pb"
IncludeFile "..\DBProPLUGIN-LICENSED_Functions\EnhancementsOV.dll_Functions.pb"

; DarkBASIC Professional Compiler\Plugin-Licensed Content"
IncludeFile "..\DBProPLUGIN-USER_Functions\DBProMultiplayerPlusDebug.dll_Functions.pb"
IncludeFile "..\DBProPLUGIN-USER_Functions\DBProODEDebug.dll_Functions.pb"
IncludeFile "..\DBProPLUGIN-USER_Functions\ShaderData.dll_Functions.pb"
; Ver 1.1 addon:
IncludeFile "..\DBProPLUGIN-LICENSED_Functions\DarkPhysics.DLL_Functions.pb"
IncludeFile "..\DBProPLUGIN-LICENSED_Functions\DBProBasic2DExtends.dll_Functions.pb"
IncludeFile "..\DBProPLUGIN-LICENSED_Functions\DBProBasic3DExtends.dll_Functions.pb"
IncludeFile "..\DBProPLUGIN-LICENSED_Functions\DBProBitmapExtends.dll_Functions.pb"
IncludeFile "..\DBProPLUGIN-LICENSED_Functions\DBProCameraExtends.dll_Functions.pb"
IncludeFile "..\DBProPLUGIN-LICENSED_Functions\DBProEffects3DExtends.dll_Functions.pb"
IncludeFile "..\DBProPLUGIN-LICENSED_Functions\DBProExtends.dll_Functions.pb"
IncludeFile "..\DBProPLUGIN-LICENSED_Functions\DBProFileExtends.dll_Functions.pb"
IncludeFile "..\DBProPLUGIN-LICENSED_Functions\DBProImageExtends.dll_Functions.pb"
IncludeFile "..\DBProPLUGIN-LICENSED_Functions\DBProLight3DExtends.dll_Functions.pb"
IncludeFile "..\DBProPLUGIN-LICENSED_Functions\DBProMatrixExtends.dll_Functions.pb"
IncludeFile "..\DBProPLUGIN-LICENSED_Functions\DBProMemblocksExtends.dll_Functions.pb"
IncludeFile "..\DBProPLUGIN-LICENSED_Functions\DBProMesh3DExtends.dll_Functions.pb"
IncludeFile "..\DBProPLUGIN-LICENSED_Functions\DBProMusicExtends.dll_Functions.pb"
IncludeFile "..\DBProPLUGIN-LICENSED_Functions\DBProParticles3DExtends.dll_Functions.pb"
IncludeFile "..\DBProPLUGIN-LICENSED_Functions\DBProRTSkyboxExtends.dll_Functions.pb"
IncludeFile "..\DBProPLUGIN-LICENSED_Functions\DBProSoundExtends.dll_Functions.pb"
IncludeFile "..\DBProPLUGIN-LICENSED_Functions\DBProSpriteExtends.dll_Functions.pb"
IncludeFile "..\DBProPLUGIN-LICENSED_Functions\DBProTextExtends.dll_Functions.pb"
IncludeFile "..\DBProPLUGIN-LICENSED_Functions\DBProVector2Extends.dll_Functions.pb"
IncludeFile "..\DBProPLUGIN-LICENSED_Functions\DBProVector3Extends.dll_Functions.pb"
IncludeFile "..\DBProPLUGIN-LICENSED_Functions\DBProVector4Extends.dll_Functions.pb"
IncludeFile "..\DBProPLUGIN-USER_Functions\DKSHOP.dll_Functions.pb"
IncludeFile "..\DBProPLUGIN-USER_Functions\DKAVM.dll_Functions.pb"
IncludeFile "..\DBProPLUGIN-USER_Functions\SC_Collision.dll_Functions.pb"
IncludeFile "..\DBProPLUGIN-USER_Functions\EZRotateBasic_Functions.pb"
IncludeFile "..\DBProPLUGIN-USER_Functions\AdvancedSPRITES.dll_Functions.pb"
;
; PurePLUGIN 1.5 - DarkSIDE plugin pack function includes.
;
  IncludeFile "..\DBProPLUGIN-USER_Functions\DarkSideColourRequester.dll_Functions.pb"
  IncludeFile "..\DBProPLUGIN-USER_Functions\DarkSideDeskTop.dll_Functions.pb"
  IncludeFile "..\DBProPLUGIN-USER_Functions\DarkSideDisplay.dll_Functions.pb"
  IncludeFile "..\DBProPLUGIN-USER_Functions\DarkSideFileRequester.dll_Functions.pb"
  IncludeFile "..\DBProPLUGIN-USER_Functions\DarkSideFontRequester.dll_Functions.pb"
  IncludeFile "..\DBProPLUGIN-USER_Functions\DarkSideInput.dll_Functions.pb"
  IncludeFile "..\DBProPLUGIN-USER_Functions\DarkSideInputRequester.dll_Functions.pb"
  IncludeFile "..\DBProPLUGIN-USER_Functions\DarkSideMessageBox.dll_Functions.pb"
  IncludeFile "..\DBProPLUGIN-USER_Functions\DarkSideProgressBar.dll_Functions.pb"
  IncludeFile "..\DBProPLUGIN-USER_Functions\DarkSidePsychoCircle.dll_Functions.pb"
  IncludeFile "..\DBProPLUGIN-USER_Functions\DarkSideSpeedMenu.dll_Functions.pb"
  IncludeFile "..\DBProPLUGIN-USER_Functions\DarkSideStarBurst.dll_Functions.pb"
  IncludeFile "..\DBProPLUGIN-USER_Functions\DarkSideWhiteRabbit.dll_Functions.pb"

; *************************************************************************************** Initialize DarkBasicPro Library
Procedure.l InitDBPro()
  InitialiseCorePtr()
  If *GlobPtr <> 0
    DBProDLLs( 1 ) = CheckAnimation()
    DBProDLLs( 2 ) = CheckBasic2D()
    DBProDLLs( 3 ) = CheckBasic3D()
    DBProDLLs( 4 ) = CheckBitmap()
    DBProDLLs( 5 ) = CheckCamera()
    DBProDLLs( 6 ) = CheckCore()
    DBProDLLs( 7 ) = CheckCSG()
    DBProDLLs( 8 ) = CheckFile()
    DBProDLLs( 9 ) = CheckFTP()
    DBProDLLs( 10 ) = CheckImage()
    DBProDLLs( 11 ) = CheckInput()
    DBProDLLs( 12 ) = CheckLight()
    DBProDLLs( 13 ) = CheckLODTerrain()
    DBProDLLs( 14 ) = CheckMatrix()
    DBProDLLs( 15 ) = CheckMemblocks()
    DBProDLLs( 16 ) = CheckMultiPlayer()
    DBProDLLs( 17 ) = CheckMusic()
    DBProDLLs( 18 ) = CheckParticles()
    DBProDLLs( 19 ) = CheckSetup()
    DBProDLLs( 20 ) = CheckSound()
    DBProDLLs( 21 ) = CheckSprites()
    DBProDLLs( 22 ) = CheckSystem()
    DBProDLLs( 23 ) = CheckText()
    DBProDLLs( 24 ) = CheckVectors()
    DBProDLLs( 25 ) = CheckWorld3D()
;
    DBProDLLs( 32 ) = CheckAdvancedTerrain()
    DBProDLLs( 33 ) = CheckGameFX()
    DBProDLLs( 34 ) = CheckEnhancementsOV()
    DBProDLLs( 35 ) = CheckDarkPHYSICS() ; Ver 1.1 Addons
;
    DBProDLLs( 48 ) = CheckMultiplayerPlus()
    DBProDLLs( 49 ) = CheckODE()
    DBProDLLs( 50 ) = CheckShaderData()
    DBProDLLs( 51 ) = CheckDKSHOP() ; Ver 1.1 Addons: DK
    DBProDLLs( 52 ) = CheckDKAVM() ; Ver 1.1 Addons: DK
    DBProDLLs( 53 ) = CheckSC_Collision() ; Ver 1.2 Addons : Sparky's Collisions DLL
    DBProDLLs( 54 ) = CheckEZRotateBasic() ; Ver 1.3 Addons : EZRotate BASIC Dll
    DBProDLLs( 55 ) = CheckAdvancedSPRITES() ; Ver 1.5 Addons : M2E D3D Dll -> AdvancedSPRITES.DLL
;
    DBProDLLs( 64 ) = CheckBasic2DExtends() ; Ver 1.1 Addons : eXtends 1.3 Support
    DBProDLLs( 65 ) = CheckBasic3DExtends() ; Ver 1.1 Addons : eXtends 1.3 Support
    DBProDLLs( 66 ) = CheckBitmapExtends() ; Ver 1.1 Addons : eXtends 1.3 Support
    DBProDLLs( 67 ) = CheckCameraExtends() ; Ver 1.1 Addons : eXtends 1.3 Support
    DBProDLLs( 68 ) = CheckEffects3DExtends() ; Ver 1.1 Addons : eXtends 1.3 Support
    DBProDLLs( 69 ) = CheckExtends() ; Ver 1.1 Addons : eXtends 1.3 Support
    DBProDLLs( 70 ) = CheckFileExtends() ; Ver 1.1 Addons : eXtends 1.3 Support
    DBProDLLs( 71 ) = CheckImageExtends() ; Ver 1.1 Addons : eXtends 1.3 Support
    DBProDLLs( 72 ) = CheckLight3DExtends() ; Ver 1.1 Addons : eXtends 1.3 Support
    DBProDLLs( 73 ) = CheckMatrixExtends() ; Ver 1.1 Addons : eXtends 1.3 Support
    DBProDLLs( 74 ) = CheckMemblocksExtends() ; Ver 1.1 Addons : eXtends 1.3 Support
    DBProDLLs( 75 ) = CheckMesh3DExtends() ; Ver 1.1 Addons : eXtends 1.3 Support
    DBProDLLs( 76 ) = CheckMusicExtends() ; Ver 1.1 Addons : eXtends 1.3 Support
    DBProDLLs( 77 ) = CheckParticles3DExtends() ; Ver 1.1 Addons : eXtends 1.3 Support
    DBProDLLs( 78 ) = CheckRTSkyboxExtends() ; Ver 1.1 Addons : eXtends 1.3 Support
    DBProDLLs( 79 ) = CheckSoundExtends() ; Ver 1.1 Addons : eXtends 1.3 Support
    DBProDLLs( 80 ) = CheckSpriteExtends() ; Ver 1.1 Addons : eXtends 1.3 Support
    DBProDLLs( 81 ) = CheckTextExtends() ; Ver 1.1 Addons : eXtends 1.3 Support
    DBProDLLs( 82 ) = CheckVector2Extends() ; Ver 1.1 Addons : eXtends 1.3 Support
    DBProDLLs( 83 ) = CheckVector3Extends() ; Ver 1.1 Addons : eXtends 1.3 Support
    DBProDLLs( 84 ) = CheckVector4Extends() ; Ver 1.1 Addons : eXtends 1.3 Support
;
    DBProDLLs( 85 ) = CheckideColourRequester() ; Ver 1.5 Addonc : DarkSIDE Plugin PACK
    DBProDLLs( 86 ) = CheckideDeskTop() ; Ver 1.5 Addonc : DarkSIDE Plugin PACK
    DBProDLLs( 87 ) = CheckideDisplay() ; Ver 1.5 Addonc : DarkSIDE Plugin PACK
    DBProDLLs( 88 ) = CheckideFileRequester() ; Ver 1.5 Addonc : DarkSIDE Plugin PACK
    DBProDLLs( 89 ) = CheckideFontRequester() ; Ver 1.5 Addonc : DarkSIDE Plugin PACK
    DBProDLLs( 90 ) = CheckideInput() ; Ver 1.5 Addonc : DarkSIDE Plugin PACK
    DBProDLLs( 91 ) = CheckideInputRequester() ; Ver 1.5 Addonc : DarkSIDE Plugin PACK
    DBProDLLs( 92 ) = CheckideMessageBox() ; Ver 1.5 Addonc : DarkSIDE Plugin PACK
    DBProDLLs( 93 ) = CheckideProgressBar() ; Ver 1.5 Addonc : DarkSIDE Plugin PACK
    DBProDLLs( 94 ) = CheckidePsychoCircle() ; Ver 1.5 Addonc : DarkSIDE Plugin PACK
    DBProDLLs( 95 ) = CheckideSpeedMenu() ; Ver 1.5 Addonc : DarkSIDE Plugin PACK
    DBProDLLs( 96 ) = CheckideStarBurst() ; Ver 1.5 Addonc : DarkSIDE Plugin PACK
    DBProDLLs( 97 ) = CheckideWhiteRabbit() ; Ver 1.5 Addonc : DarkSIDE Plugin PACK
    Retour = 1
   Else
    Retour.l = 0
   EndIf
  ProcedureReturn Retour
 EndProcedure

; IDE Options = PureBasic 4.20 Beta 2 (Windows - x86)
; CursorPosition = 97
; FirstLine = 59
; Folding = -
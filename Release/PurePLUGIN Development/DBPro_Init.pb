; *************************************************************************************** Initialize DarkBasicPro Core Pointer
Procedure InitialiseCorePtr()
  If OpenLibrary( 3 , "DBProCore.dll" ) 
    coreptr_handle.l = GetFunction( 3 , "?GetGlobPtr@@YAKXZ" )
    *GlobPtr = CallCFunctionFast( coreptr_handle );
    CloseLibrary( 3 );
   Else
    MessageRequester( "DB PurePLUGIN Warning" , " Library DBProCore.dll not found" )
   EndIf
EndProcedure
;
; **************************************************************
Procedure.l InitDLLBase()
  If OpenLibrary( 1 , "PurePLUGIN.dll" )
    GetDBPInit.l = GetFunction( 1 , "GetDBProBase" )
    If GetDBPInit <> 0
      *BaseList = CallCFunctionFast( GetDBPInit, @UserNAME, @UserCODE )
      *DB_Animation = *BaseList\DBAnimation
      *DB_Basic2D = *BaseList\DBBasic2D
      *DB_Basic3D = *BaseList\DBBasic3D
      *DB_Bitmap = *BaseList\DBBitmap
      *DB_Camera = *BaseList\DBCamera
      *DB_Core = *BaseList\DBCore
      *DB_CSG = *BaseList\DBCSG
      *DB_File = *BaseList\DBFile
      *DB_FTP = *BaseList\DBFTP
      *DB_Image = *BaseList\DBImage
      *DB_Input = *BaseList\DBInput
      *DB_Light = *BaseList\DBLight
      *DB_LODTerrain = *BaseList\DBLODTerrain
      *DB_Matrix = *BaseList\DBMatrix
      *DB_Memblocks = *BaseList\DBMemblocks
      *DB_MultiPlayer = *BaseList\DBMultiPlayer
      *DB_Music = *BaseList\DBMusic
      *DB_Particles = *BaseList\DBParticles
      *DB_Setup = *BaseList\DBSetup
      *DB_Sound = *BaseList\DBSound
      *DB_Sprites = *BaseList\DBSprites
      *DB_System = *BaseList\DBSystem
      *DB_Text = *BaseList\DBText
      *DB_Vectors = *BaseList\DBVectors
      *DB_World3D = *BaseList\DBWorld3D
;
      *DB_AdvancedTerrain = *BaseList\DBAdvancedTerrain
      *DB_GameFX = *BaseList\DBGameFX
      *DB_EnhancementsOV = *BaseList\DBEnhancementsOV
;
      *DB_MultiPlayerPlus = *BaseList\DBMultiPlayerPlus
      *DB_ODE = *BaseList\DBODE
      *DB_ShaderData = *BaseList\DBShaderData
; PurePLUGIN Ver 1.1 Upgrades Support :
      *DB_DarkPHYSICS = *BaseList\DBDarkPHYSICS
      *DB_Basic2DExtends = *BaseList\Basic2DExtends
      *DB_Basic3DExtends = *BaseList\Basic3DExtends
      *DB_BitmapExtends = *BaseList\BitmapExtends
      *DB_CameraExtends = *BaseList\CameraExtends
      *DB_Effects3DExtends = *BaseList\Effects3DExtends
      *DB_Extends = *BaseList\ZExtends
      *DB_FileExtends = *BaseList\FileExtends
      *DB_ImageExtends = *BaseList\ImageExtends
      *DB_Light3DExtends = *BaseList\Light3DExtends
      *DB_MatrixExtends = *BaseList\MatrixExtends
      *DB_MemblocksExtends = *BaseList\MemblocksExtends
      *DB_Mesh3DExtends = *BaseList\Mesh3DExtends
      *DB_MusicExtends = *BaseList\MusicExtends
      *DB_Particles3DExtends = *BaseList\Particles3DExtends
      *DB_RTSkyboxExtends = *BaseList\RTSkyboxExtends
      *DB_SoundExtends = *BaseList\SoundExtends
      *DB_SpriteExtends = *BaseList\SpriteExtends
      *DB_TextExtends = *BaseList\TextExtends
      *DB_Vector2Extends = *BaseList\Vector2Extends
      *DB_Vector3Extends = *BaseList\Vector3Extends
      *DB_Vector4Extends = *BaseList\Vector4Extends
      *DKAVM = *BaseList\DKAVM
      *DKSHOP = *BaseList\DKSHOP
      *SC_Collision = *BaseList\SC_Collision
      *EZRotateBasic = *BaseList\EZRotateBasic
      *AdvancedSPRITES = *BaseList\AdvancedSPRITES
      ; Ver 1.5 Addons
      *ideColourRequester = *BaseList\ideColourRequester
      *ideDeskTop = *BaseList\ideDeskTop
      *ideDisplay = *BaseList\ideDisplay
      *ideFileRequester = *BaseList\ideFileRequester
      *ideFontRequester = *BaseList\ideFontRequester
      *ideInput = *BaseList\ideInput
      *ideInputRequester = *BaseList\ideInputRequester
      *ideMessageBox = *BaseList\ideMessageBox
      *ideProgressBar = *BaseList\ideProgressBar
      *idePsychoCircle = *BaseList\idePsychoCircle
      *ideSpeedMenu = *BaseList\ideSpeedMenu
      *ideStarBurst = *BaseList\ideStarBurst
      *ideWhiteRabbit = *BaseList\ideWhiteRabbit
      ;
      SUCCESS = 1
     Else
      SUCCESS = 0
     EndIf
    CloseLibrary( 1 )
   Else
    SUCCESS = 0
   EndIf
  If SUCCESS = 0 : MessageRequester( "This Plugin requires PurePLUGIN.DLL", "You can download it at http://www.odyssey-creators.com/" ) : EndIf
  ProcedureReturn SUCCESS
 EndProcedure

; This procedure is useful to know if a specific DLL was included in the compiled DBPro .EXE file.
Procedure.l GetDLLInitialized( DLLID.l )
  If OpenLibrary( 1 , "PurePLUGIN.dll" )
    GetDLLInit.l = GetFunction( 1 , "GetDLLInitialized" )
    If GetDLLInit <> 0
      DLLInit.l = CallCFunctionFast( GetDLLInit, DLLID )
     Else
      DLLInit = 0
     EndIf
   Else
    DLLInit = 0
   EndIf
  ProcedureReturn DLLInit
 EndProcedure
; IDE Options = PureBasic 4.10 (Windows - x86)
; CursorPosition = 101
; FirstLine = 72
; Folding = -
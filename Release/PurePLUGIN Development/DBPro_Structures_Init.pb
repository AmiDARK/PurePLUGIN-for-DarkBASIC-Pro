;
; Création réelle des structures pour utilisation dans la DLL Principale du pack.
;
;
Structure BaseListStruct
  DBEmpty.l
  DBAnimation.l : DBBasic2D.l : DBBasic3D.l : DBBitmap.l : DBCamera.l
  DBCore.l : DBCSG.l : DBFile.l : DBFTP.l : DBImage.l
  DBInput.l : DBLight.l : DBLODTerrain.l : DBMatrix.l : DBMemblocks.l
  DBMultiPlayer.l : DBMusic.l : DBParticles.l : DBSetup.l : DBSound.l
  DBSprites.l : DBSystem.l : DBText.l : DBVectors.l : DBWorld3D.l
  DBAdvancedTerrain.l : DBGameFX.l : DBEnhancementsOV.l
  DBMultiplayerPlus.l : DBODE.l : DBShaderData.l
  DBDarkPHYSICS.l
  Basic2DExtends.l : Basic3DExtends.l : BitmapExtends.l : CameraExtends.l
  Effects3DExtends.l : ZExtends.l : FileExtends.l : ImageExtends.l
  Light3DExtends.l : MatrixExtends.l : MemblocksExtends.l : Mesh3DExtends.l
  MusicExtends.l : Particles3DExtends.l : RTSkyboxExtends.l : SoundExtends.l
  SpriteExtends.l : TextExtends.l : Vector2Extends.l : Vector3Extends.l
  Vector4Extends.l
  DKAVM.l : DKSHOP.l : SC_Collision.l : EZRotateBasic.l
  AdvancedSPRITES.l
  ideColourRequester.l : ideDeskTop.l : ideDisplay.l : ideFileRequester.l
  ideFontRequester.l : ideInput.l : ideInputRequester.l : ideMessageBox.l
  ideProgressBar.l : idePsychoCircle.l : ideSpeedMenu.l : ideStarBurst.l
  ideWhiteRabbit.l
 EndStructure
Global *BaseList.BaseListStruct
; ****************************************************************************************************
Global *DB_Animation.DB_AnimationStruct
Global *DB_Basic2D.DB_Basic2DStruct
Global *DB_Basic3D.DB_Basic3DStruct
Global *DB_Bitmap.DB_BitmapStruct
Global *DB_Camera.DB_CameraStruct
Global *DB_Core.DB_CoreStruct
Global *DB_CSG.DB_CSGStruct
Global *DB_File.DB_FileStruct
Global *DB_FTP.DB_FTPStruct
Global *DB_Image.DB_ImageStruct
Global *DB_Input.DB_InputStruct
Global *DB_Light.DB_LightStruct
Global *DB_LODTerrain.DB_LODTerrainStruct
Global *DB_Matrix.DB_MatrixStruct
Global *DB_Memblocks.DB_MemblocksStruct
Global *DB_MultiPlayer.DB_MultiPlayerStruct
Global *DB_Music.DB_MusicStruct
Global *DB_Particles.DB_ParticlesStruct
Global *DB_Setup.DB_SetupStruct
Global *DB_Sound.DB_SoundStruct
Global *DB_Sprites.DB_SpritesStruct
Global *DB_System.DB_SystemStruct
Global *DB_Text.DB_TextStruct
Global *DB_Vectors.DB_VectorsStruct
Global *DB_World3D.DB_World3DStruct
;
Global *DB_AdvancedTerrain.DB_AdvancedTerrainStruct
Global *DB_GameFX.DB_GameFXStruct
Global *DB_EnhancementsOV.DB_EnhancementsOVStruct
;
Global *DB_MultiplayerPlus.DB_MultiplayerPlusStruct
Global *DB_ODE.DB_ODEStruct
Global *DB_ShaderData.DB_ShaderDataStruct
; Ver 1.1 Addons:
Global *DB_DarkPhysics.DB_DarkPhysicsStruct
; Ver 1.1 Addons: Support for eXtends 1.3
Global *DB_Basic2DExtends.DB_Basic2DExtendsStruct
Global *DB_Basic3DExtends.DB_Basic3DExtendsStruct
Global *DB_BitmapExtends.DB_BitmapExtendsStruct
Global *DB_CameraExtends.DB_CameraExtendsStruct
Global *DB_Effects3DExtends.DB_Effects3DExtendsStruct
Global *DB_ZExtends.DB_ExtendsStruct
Global *DB_FileExtends.DB_FileExtendsStruct
Global *DB_ImageExtends.DB_ImageExtendsStruct
Global *DB_Light3DExtends.DB_Light3DExtendsStruct
Global *DB_MatrixExtends.DB_MatrixExtendsStruct
Global *DB_MemblocksExtends.DB_MemblocksExtendsStruct
Global *DB_Mesh3DExtends.DB_Mesh3DExtendsStruct
Global *DB_MusicExtends.DB_MusicExtendsStruct
Global *DB_Particles3DExtends.DB_Particles3DExtendsStruct
Global *DB_RTSkyboxExtends.DB_RTSkyboxExtendsStruct
Global *DB_SoundExtends.DB_SoundExtendsStruct
Global *DB_SpriteExtends.DB_SpriteExtendsStruct
Global *DB_TextExtends.DB_TextExtendsStruct
Global *DB_Vector2Extends.DB_Vector2ExtendsStruct
Global *DB_Vector3Extends.DB_Vector3ExtendsStruct
Global *DB_Vector4Extends.DB_Vector4ExtendsStruct
; Ver 1.1 Addons:
Global *DKAVM.DKAVMStruct
Global *DKSHOP.DKSHOPStruct
; Ver 1.2 Addons: Sparky COLLISIONS DLL.
Global *SC_Collision.SC_CollisionStruct
; Ver 1.3 Addons: EZRotate Basic.
Global *EZRotateBasic.EZRotateBasicStruct
; Ver 1.4 Addons: M2E D3D.
Global *AdvancedSPRITES.AdvancedSPRITESStruct
; Ver 1.5 Addons : DarkSIDE PlugIN PACK
Global *ideColourRequester.ideColourRequesterStruct
Global *ideDeskTop.ideDeskTopStruct
Global *ideDisplay.ideDisplayStruct
Global *ideFileRequester.ideFileRequesterStruct
Global *ideFontRequester.ideFontRequesterStruct
Global *ideInput.ideInputStruct
Global *ideInputRequester.ideInputRequesterStruct
Global *ideMessageBox.ideMessageBoxStruct
Global *ideProgressBar.ideProgressBarStruct
Global *idePsychoCircle.idePsychoCircleStruct
Global *ideSpeedMenu.ideSpeedMenuStruct
Global *ideStarBurst.ideStarBurstStruct
Global *ideWhiteRabbit.ideWhiteRabbitStruct
 




; IDE Options = PureBasic 4.20 Beta 2 (Windows - x86)
; CursorPosition = 27
; FirstLine = 51
; Folding = -
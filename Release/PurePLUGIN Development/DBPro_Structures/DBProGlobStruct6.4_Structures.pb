;
; Update to use 6.0 changes
;
; needed Structures 
Structure GlobChecklistStruct
  dwStringSize.l : string.s
  valuea.l : valueb.l : valuec.l : valued.l
  fvaluea.f : fvalueb.f : fvaluec.f : fvalued.f 
EndStructure
; Global DarkBasic Professional internal structure.
Structure GlobStruct
  ; Function Ptrs (For remote DLLs)
  CreateDeleteString.l : ProcessMessageFunction.l : PrintStringFunction.l
  UpdateFilenameFromVirtualTable.l : Decrypt.l : Encrypt.l
  ChangeMouseFunction.l
  SpareFunction1.l : SpareFunction2.l : SpareFunction3.l
  ; LEEMOD - 130604 - Access To ALL VARIABLES MEMORY
  g_pVariableSpace.l
  ; LEEMOD - 150803 - Replace 'SpareFunction5' with 'g_pErrorHandler'
  g_pErrorHandlerRef.l
  ; DLL Handles And Active Flags
  g_GFX.l : g_Text.l : g_Basic2D.l : g_Sprites.l : g_Image.l
  g_Input.l : g_System.l : g_File.l : g_FTP.l : g_Memblocks.l
  g_Bitmap.l : g_Animation.l : g_Multiplayer.l : g_Basic3D.l : g_Camera3D.l
  g_Matrix3D.l : g_Light3D.l : g_World3D.l : g_Particles.l : g_PrimObject.l 
  g_Vectors.l : g_XObject.l : g_3DSObject.l : g_MDLObject.l : g_MD2Object.l
  g_MD3Object.l : g_Sound.l : g_Music.l : g_LODTerrain.l : g_Q2BSP.l
  g_OwnBSP.l : g_BSPCompiler.l : g_CSG.l
  g_igLoader.l : g_GameFX.l : g_Spare03.l : g_Spare04.l : g_Spare05.l
  g_Spare06.l : g_Spare07.l : g_Spare08.l : g_Spare09.l : g_Spare10.l
  g_Spare11.l : g_Spare12.l : g_Spare13.l : g_Spare14.l : g_Spare15.l
  g_Spare16.l : g_Spare17.l : g_Spare18.l : g_Spare19.l : g_Spare20.l
  g_GFXmade.b : g_Textmade.b : g_Basic2Dmade.b : g_Spritesmade.b : g_Imagemade.b
  g_Inputmade.b : g_Systemmade.b : g_Filemade.b : g_FTPmade.b : g_Memblocksmade.b
  g_Bitmapmade.b : g_Animationmade.b : g_Multiplayermade.b : g_Basic3Dmade.b : g_Camera3Dmade.b
  g_Matrix3Dmade.b : g_Light3Dmade.b : g_World3Dmade.b : g_Particlesmade.b : g_PrimObjectmade.b
  g_Vectorsmade.b : g_XObjectmade.b : g_3DSObjectmade.b : g_MDLObjectmade.b : g_MD2Objectmade.b
  g_MD3Objectmade.b : g_Soundmade.b : g_Musicmade.b : g_LODTerrainmade.b : g_Q2BSPmade.b
  g_OwnBSPmade.b : g_BSPCompilermade.b : g_CSGmade.b
  g_igLoadermade.b : g_GameFXmade.b : g_Spare03made.b : g_Spare04made.b : g_Spare05made.b
  g_Spare06made.b : g_Spare07made.b : g_Spare08made.b : g_Spare09made.b : g_Spare10made.b
  g_Spare11made.b : g_Spare12made.b : g_Spare13made.b : g_Spare14made.b : g_Spare15made.b
  g_Spare16made.b : g_Spare17made.b : g_Spare18made.b : g_Spare19made.b : g_Spare20made.b
  ; Executable Media Handlng Data
  pEXEUnpackDirectory.b[260]
  dwEncryptionUniqueKey.l : ppEXEAbsFilename.l
  ; LEEMOD - 200105 - Replace 'dwEMHDSpare2' with 'dwInternalFunctionCode'
  dwInternalFunctionCode.l
  dwEMHDSpare3.l : dwEMHDSpare4.l : dwEMHDSpare5.l
  ; Windows General Data
  HWND.l : HINSTANCE.l
  pWindowsTextEntry.l : bInvalidFlag.b : dwWindowWidth.l : dwWindowHeight.l
  hAppIcon.l : dwAppDisplayModeUsing.l : dwWindowX.l : dwWindowY.l
  hwndIGLoader.l : dwWGDSpare2.l : dwWGDSpare3.l : dwWGDSpare4.l : dwWGDSpare5.l
  ; Windows Mouse Data
  bWindowsMouseVisible.l : iWindowsMouseX.l : iWindowsMouseY.l : iWindowsMouseClick.l
  dwWMDSpare2.l : dwWMDSpare3.l : dwWMDSpare4.l : dwWMDSpare5.l
  ; Main Screen Data (backbuffer)
  iScreenWidth.l : iScreenHeight.l : iScreenDepth.l : iNoDrawLeft.l : iNoDrawTop.l
  iNoDrawRight.l : iNoDrawBottom.l : dwSafeRectMax.l : pSafeRects.l
  dwMSDSpare3.l : dwMSDSpare4.l : dwMSDSpare5.l
  ; Bitmap And Surface Data (For drawing offscreen)
  iCurrentBitmapNumber.l : pCurrentBitmapTexture.l : pCurrentBitmapSurface.l
  pHoldBackBufferPtr.l : pHoldDepthBufferPtr.l
  dwBSDSpare1.l : dwBSDSpare2.l : dwBSDSpare3.l : dwBSDSpare4.l : dwBSDSpare5.l
  ; Drawing Data
  iCursorX.l : iCursorY.l : dwForeColor.l : dwBackColor.l : dwRenderCameraID.l
  fReflectionPlaneX.f : fReflectionPlaneY.f : fReflectionPlaneZ.f
  ; MIKE - DARKSDK - 2011094
  dwCurrentSetCameraID.l
  lpDirectXVersionString.l : dw3DBackColor.l : dwDDSpare4.l : dwDDSpare5.l
  ; Checklist Data
  checklistexists.b : checklisthasvalues.b : checklisthasstrings.b : checklistqty.l : dwChecklistArraySize.l
  Checklist.GlobChecklistStruct
  ; Dependent 3D Data Exchange
  iFogState.l : dwRedrawPhase.l : dwRedrawCount.l : dwStencilMode.l : dwStencilShadowCount.l
  dwStencilReflectionCount.l : dwNumberOfPolygonsDrawn.l : dwNumberOfPrimCalls.l
  dwStencilSpare3.l : dwStencilSpare4.l : dwStencilSpare5.l
  ; System States And Global Controls
  bEscapeKeyEnabled.b : bSystemKeyEnabled.b
  bSpareBool1.b : bSpareBool2.b : bSpareBool3.b : bSpareBool4.b : bSpareBool5.b
  bSpareBool6.b : bSpareBool7.b : bSpareBool8.b : bSpareBool9.b
  pExitPromptString.l : pExitPromptString2.l : iSoftwareVP.l
  ; Dynamic Memory Area For future expansion
  dwDynMemSize.l : pDynMemPtr.l
EndStructure
; External Reference To Glob Pointer
Global *GlobPtr.GlobStruct
Structure char ; character structure
  a.b
EndStructure

; IDE Options = PureBasic v4.00 (Windows - x86)
; CursorPosition = 3
; Folding = -
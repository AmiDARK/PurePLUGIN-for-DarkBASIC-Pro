; DarkBasic Professional RC2PBIncludes Ver 1. File - COMMANDS WRAPPING
; By Frederic Cordier - 07.02.13
;
; *********************************************************************
Procedure DXS_Initialize()
  CallCFunctionFast( *AdvancedSPRITES\DXS_Initialize )
 EndProcedure
;
; *********************************************************************
Procedure.l DXS_CreateSprite( Param1.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param1PTR.l, Len( Param1 ) + 1 ) ; CreateString
  PokeS( Param1PTR, Param1 )
  Retour.l = CallCFunctionFast( *AdvancedSPRITES\DXS_CreateSprite, Param1PTR )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DXS_CreateSprite1( Param1.s, Param2.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param1PTR.l, Len( Param1 ) + 1 ) ; CreateString
  PokeS( Param1PTR, Param1 )
  Retour.l = CallCFunctionFast( *AdvancedSPRITES\DXS_CreateSprite1, Param1PTR, Param2 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DXS_CreateSpriteRGB( Param1.s, Param2.l, Param3.l, Param4.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param1PTR.l, Len( Param1 ) + 1 ) ; CreateString
  PokeS( Param1PTR, Param1 )
  Retour.l = CallCFunctionFast( *AdvancedSPRITES\DXS_CreateSpriteRGB, Param1PTR, Param2, Param3, Param4 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DXS_CreateEmptySprite( Param1.l, Param2.l )
  Retour.l = CallCFunctionFast( *AdvancedSPRITES\DXS_CreateEmptySprite, Param1, Param2 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DXS_CreateEmptySpriteD3DCOLOR( Param1.l, Param2.l, Param3.l )
  Retour.l = CallCFunctionFast( *AdvancedSPRITES\DXS_CreateEmptySpriteD3DCOLOR, Param1, Param2, Param3 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DXS_CreateEmptySpriteRGB( Param1.l, Param2.l, Param3.l, Param4.l, Param5.l )
  Retour.l = CallCFunctionFast( *AdvancedSPRITES\DXS_CreateEmptySpriteRGB, Param1, Param2, Param3, Param4, Param5 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DXS_CreateSpriteFromImage( Param1.l )
  Retour.l = CallCFunctionFast( *AdvancedSPRITES\DXS_CreateSpriteFromImage, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DXS_ClearSprite( Param0.l )
  CallCFunctionFast( *AdvancedSPRITES\DXS_ClearSprite, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure DXS_DeleteSprite( Param0.l )
  CallCFunctionFast( *AdvancedSPRITES\DXS_DeleteSprite, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure DXS_UpdateSprite( Param0.l )
  CallCFunctionFast( *AdvancedSPRITES\DXS_UpdateSprite, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure DXS_BeginSpriteRender( Param0.l )
  CallCFunctionFast( *AdvancedSPRITES\DXS_BeginSpriteRender, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure DXS_EndSpriteRender( Param0.l )
  CallCFunctionFast( *AdvancedSPRITES\DXS_EndSpriteRender, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure DXS_DrawSpriteA( Param0.l, Param1.f, Param2.f )
  CallCFunctionFast( *AdvancedSPRITES\DXS_DrawSpriteA, Param0, Param1, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure DXS_DrawSpriteB( Param0.l, Param1.f, Param2.f, Param3.f )
  CallCFunctionFast( *AdvancedSPRITES\DXS_DrawSpriteB, Param0, Param1, Param2, Param3 )
 EndProcedure
;
; *********************************************************************
Procedure DXS_DrawSpriteFrameA( Param0.l, Param1.f, Param2.f )
  CallCFunctionFast( *AdvancedSPRITES\DXS_DrawSpriteFrameA, Param0, Param1, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure DXS_DrawSpriteFrameB( Param0.l, Param1.f, Param2.f, Param3.f )
  CallCFunctionFast( *AdvancedSPRITES\DXS_DrawSpriteFrameB, Param0, Param1, Param2, Param3 )
 EndProcedure
;
; *********************************************************************
Procedure DXS_DrawSpriteRectangleA( Param0.l, Param1.l, Param2.l, Param3.l, Param4.l, Param5.f, Param6.f )
  CallCFunctionFast( *AdvancedSPRITES\DXS_DrawSpriteRectangleA, Param0, Param1, Param2, Param3, Param4, Param5, Param6 )
 EndProcedure
;
; *********************************************************************
Procedure DXS_DrawSpriteRectangleB( Param0.l, Param1.l, Param2.l, Param3.l, Param4.l, Param5.f, Param6.f, Param7.f )
  CallCFunctionFast( *AdvancedSPRITES\DXS_DrawSpriteRectangleB, Param0, Param1, Param2, Param3, Param4, Param5, Param6, Param7 )
 EndProcedure
;
; *********************************************************************
Procedure DXS_DrawSpriteTileA( Param0.l, Param1.l, Param2.f, Param3.f )
  CallCFunctionFast( *AdvancedSPRITES\DXS_DrawSpriteTileA, Param0, Param1, Param2, Param3 )
 EndProcedure
;
; *********************************************************************
Procedure DXS_DrawSpriteTileB( Param0.l, Param1.l, Param2.f, Param3.f, Param4.f )
  CallCFunctionFast( *AdvancedSPRITES\DXS_DrawSpriteTileB, Param0, Param1, Param2, Param3, Param4 )
 EndProcedure
;
; *********************************************************************
Procedure DXS_SetSpriteAlpha( Param0.l, Param1.l )
  CallCFunctionFast( *AdvancedSPRITES\DXS_SetSpriteAlpha, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure DXS_SetSpriteDiffuse( Param0.l, Param1.l, Param2.l, Param3.l )
  CallCFunctionFast( *AdvancedSPRITES\DXS_SetSpriteDiffuse, Param0, Param1, Param2, Param3 )
 EndProcedure
;
; *********************************************************************
Procedure DXS_SetSpriteAngle( Param0.l, Param1.f )
  CallCFunctionFast( *AdvancedSPRITES\DXS_SetSpriteAngle, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure DXS_SetSpriteCenter( Param0.l, Param1.f, Param2.f )
  CallCFunctionFast( *AdvancedSPRITES\DXS_SetSpriteCenter, Param0, Param1, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure DXS_SetSpriteRotationCenter( Param0.l, Param1.f, Param2.f )
  CallCFunctionFast( *AdvancedSPRITES\DXS_SetSpriteRotationCenter, Param0, Param1, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure DXS_SetSpriteScalingCenter( Param0.l, Param1.f, Param2.f )
  CallCFunctionFast( *AdvancedSPRITES\DXS_SetSpriteScalingCenter, Param0, Param1, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure DXS_SetSpriteScale( Param0.l, Param1.f, Param2.f )
  CallCFunctionFast( *AdvancedSPRITES\DXS_SetSpriteScale, Param0, Param1, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure DXS_SetSpriteSize( Param0.l, Param1.l, Param2.l )
  CallCFunctionFast( *AdvancedSPRITES\DXS_SetSpriteSize, Param0, Param1, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure DXS_SetSpriteTranslation( Param0.l, Param1.f, Param2.f )
  CallCFunctionFast( *AdvancedSPRITES\DXS_SetSpriteTranslation, Param0, Param1, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure DXS_SetSpriteDepthScale( Param0.l, Param1.f )
  CallCFunctionFast( *AdvancedSPRITES\DXS_SetSpriteDepthScale, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure DXS_SetSpriteImage( Param0.l, Param1.l )
  CallCFunctionFast( *AdvancedSPRITES\DXS_SetSpriteImage, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure DXS_SetSpriteImage1( Param0.l, Param1.l, Param2.l )
  CallCFunctionFast( *AdvancedSPRITES\DXS_SetSpriteImage1, Param0, Param1, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure DXS_SetSpriteFilter( Param0.l, Param1.l )
  CallCFunctionFast( *AdvancedSPRITES\DXS_SetSpriteFilter, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure DXS_ChangeSpriteTexture( Param0.l, Param1.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param1PTR.l, Len( Param1 ) + 1 ) ; CreateString
  PokeS( Param1PTR, Param1 )
  CallCFunctionFast( *AdvancedSPRITES\DXS_ChangeSpriteTexture, Param0, Param1PTR )
 EndProcedure
;
; *********************************************************************
Procedure DXS_ChangeSpriteTexture1( Param0.l, Param1.s, Param2.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param1PTR.l, Len( Param1 ) + 1 ) ; CreateString
  PokeS( Param1PTR, Param1 )
  CallCFunctionFast( *AdvancedSPRITES\DXS_ChangeSpriteTexture1, Param0, Param1PTR, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure DXS_ChangeSpriteTexture2( Param0.l, Param1.s, Param2.l, Param3.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param1PTR.l, Len( Param1 ) + 1 ) ; CreateString
  PokeS( Param1PTR, Param1 )
  CallCFunctionFast( *AdvancedSPRITES\DXS_ChangeSpriteTexture2, Param0, Param1PTR, Param2, Param3 )
 EndProcedure
;
; *********************************************************************
Procedure DXS_ExportSpriteTexture( Param0.l, Param1.s, Param2.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param1PTR.l, Len( Param1 ) + 1 ) ; CreateString
  PokeS( Param1PTR, Param1 )
  CallCFunctionFast( *AdvancedSPRITES\DXS_ExportSpriteTexture, Param0, Param1PTR, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure.l DXS_GetSpriteAlpha( Param1.l )
  Retour.l = CallCFunctionFast( *AdvancedSPRITES\DXS_GetSpriteAlpha, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DXS_GetSpriteRed( Param1.l )
  Retour.l = CallCFunctionFast( *AdvancedSPRITES\DXS_GetSpriteRed, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DXS_GetSpriteGreen( Param1.l )
  Retour.l = CallCFunctionFast( *AdvancedSPRITES\DXS_GetSpriteGreen, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DXS_GetSpriteBlue( Param1.l )
  Retour.l = CallCFunctionFast( *AdvancedSPRITES\DXS_GetSpriteBlue, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.d DXS_GetSpriteAngle( Param1.l )
  Retour.d = CallCFunctionFast( *AdvancedSPRITES\DXS_GetSpriteAngle, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.d DXS_GetSpriteCenterX( Param1.l )
  Retour.d = CallCFunctionFast( *AdvancedSPRITES\DXS_GetSpriteCenterX, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.d DXS_GetSpriteCenterY( Param1.l )
  Retour.d = CallCFunctionFast( *AdvancedSPRITES\DXS_GetSpriteCenterY, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.d DXS_GetSpriteRotationCenterX( Param1.l )
  Retour.d = CallCFunctionFast( *AdvancedSPRITES\DXS_GetSpriteRotationCenterX, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.d DXS_GetSpriteRotationCenterY( Param1.l )
  Retour.d = CallCFunctionFast( *AdvancedSPRITES\DXS_GetSpriteRotationCenterY, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.d DXS_GetSpriteScalingCenterX( Param1.l )
  Retour.d = CallCFunctionFast( *AdvancedSPRITES\DXS_GetSpriteScalingCenterX, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.d DXS_GetSpriteScalingCenterY( Param1.l )
  Retour.d = CallCFunctionFast( *AdvancedSPRITES\DXS_GetSpriteScalingCenterY, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DXS_GetSpriteWidth( Param1.l )
  Retour.l = CallCFunctionFast( *AdvancedSPRITES\DXS_GetSpriteWidth, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DXS_GetSpriteHeight( Param1.l )
  Retour.l = CallCFunctionFast( *AdvancedSPRITES\DXS_GetSpriteHeight, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.d DXS_GetSpriteScal( Param1.l )
  Retour.d = CallCFunctionFast( *AdvancedSPRITES\DXS_GetSpriteScaleX, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.d DXS_GetSpriteScaleY( Param1.l )
  Retour.d = CallCFunctionFast( *AdvancedSPRITES\DXS_GetSpriteScaleY, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.f DXS_SetSpriteDepthScale1( Param1.l )
  Retour.l = CallCFunctionFast( *AdvancedSPRITES\DXS_SetSpriteDepthScale1, Param1 )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.l DXS_GetSpriteImage( Param1.l )
  Retour.l = CallCFunctionFast( *AdvancedSPRITES\DXS_GetSpriteImage, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DXS_GetSpriteFilter( Param1.l )
  Retour.l = CallCFunctionFast( *AdvancedSPRITES\DXS_GetSpriteFilter, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DXS_GetSpriteTextureWidth( Param1.l )
  Retour.l = CallCFunctionFast( *AdvancedSPRITES\DXS_GetSpriteTextureWidth, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DXS_GetSpriteTextureHeight( Param1.l )
  Retour.l = CallCFunctionFast( *AdvancedSPRITES\DXS_GetSpriteTextureHeight, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DXS_GetSpriteTextureDepth( Param1.l )
  Retour.l = CallCFunctionFast( *AdvancedSPRITES\DXS_GetSpriteTextureDepth, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DXS_PlaySprite( Param0.l, Param1.l, Param2.l, Param3.l )
  CallCFunctionFast( *AdvancedSPRITES\DXS_PlaySprite, Param0, Param1, Param2, Param3 )
 EndProcedure
;
; *********************************************************************
Procedure DXS_SetSpriteFrame( Param0.l, Param1.l )
  CallCFunctionFast( *AdvancedSPRITES\DXS_SetSpriteFrame, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure DXS_SetSpriteFrameSet( Param0.l, Param1.l, Param2.l )
  CallCFunctionFast( *AdvancedSPRITES\DXS_SetSpriteFrameSet, Param0, Param1, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure DXS_SetSpriteFrameSize( Param0.l, Param1.l, Param2.l )
  CallCFunctionFast( *AdvancedSPRITES\DXS_SetSpriteFrameSize, Param0, Param1, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure.l DXS_GetSpriteFrame( Param1.l )
  Retour.l = CallCFunctionFast( *AdvancedSPRITES\DXS_GetSpriteFrame, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DXS_GetSpriteFrameSetWidth( Param1.l )
  Retour.l = CallCFunctionFast( *AdvancedSPRITES\DXS_GetSpriteFrameSetWidth, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DXS_GetSpriteFrameSetHeight( Param1.l )
  Retour.l = CallCFunctionFast( *AdvancedSPRITES\DXS_GetSpriteFrameSetHeight, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DXS_GetSpriteFrameWidth( Param1.l )
  Retour.l = CallCFunctionFast( *AdvancedSPRITES\DXS_GetSpriteFrameWidth, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DXS_GetSpriteFrameHeight( Param1.l )
  Retour.l = CallCFunctionFast( *AdvancedSPRITES\DXS_GetSpriteFrameHeight, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DXS_SetSpriteTileSet( Param0.l, Param1.l, Param2.l )
  CallCFunctionFast( *AdvancedSPRITES\DXS_SetSpriteTileSet, Param0, Param1, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure DXS_SetSpriteTileSize( Param0.l, Param1.l, Param2.l )
  CallCFunctionFast( *AdvancedSPRITES\DXS_SetSpriteTileSize, Param0, Param1, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure.l DXS_GetSpriteTileSetWidth( Param1.l )
  Retour.l = CallCFunctionFast( *AdvancedSPRITES\DXS_GetSpriteTileSetWidth, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DXS_GetSpriteTileSetHeight( Param1.l )
  Retour.l = CallCFunctionFast( *AdvancedSPRITES\DXS_GetSpriteTileSetHeight, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DXS_GetSpriteTileWidth( Param1.l )
  Retour.l = CallCFunctionFast( *AdvancedSPRITES\DXS_GetSpriteTileWidth, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DXS_GetSpriteTileHeight( Param1.l )
  Retour.l = CallCFunctionFast( *AdvancedSPRITES\DXS_GetSpriteTileHeight, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DXS_LockSprite( Param0.l )
  CallCFunctionFast( *AdvancedSPRITES\DXS_LockSprite, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure DXS_UnlockSprite( Param0.l )
  CallCFunctionFast( *AdvancedSPRITES\DXS_UnlockSprite, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure DXS_SetSpritePixel( Param0.l, Param1.l, Param2.l, Param3.l )
  CallCFunctionFast( *AdvancedSPRITES\DXS_SetSpritePixel, Param0, Param1, Param2, Param3 )
 EndProcedure
;
; *********************************************************************
Procedure DXS_SetSpritePixelARGB( Param0.l, Param1.l, Param2.l, Param3.l, Param4.l, Param5.l, Param6.l )
  CallCFunctionFast( *AdvancedSPRITES\DXS_SetSpritePixelARGB, Param0, Param1, Param2, Param3, Param4, Param5, Param6 )
 EndProcedure
;
; *********************************************************************
Procedure.l DXS_GetSpritePixel( Param1.l, Param2.l, Param3.l )
  Retour.l = CallCFunctionFast( *AdvancedSPRITES\DXS_GetSpritePixel, Param1, Param2, Param3 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DXS_GetSpritePixelAlpha( Param1.l, Param2.l, Param3.l )
  Retour.l = CallCFunctionFast( *AdvancedSPRITES\DXS_GetSpritePixelAlpha, Param1, Param2, Param3 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DXS_GetSpritePixelRed( Param1.l, Param2.l, Param3.l )
  Retour.l = CallCFunctionFast( *AdvancedSPRITES\DXS_GetSpritePixelRed, Param1, Param2, Param3 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DXS_GetSpritePixelGreen( Param1.l, Param2.l, Param3.l )
  Retour.l = CallCFunctionFast( *AdvancedSPRITES\DXS_GetSpritePixelGreen, Param1, Param2, Param3 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DXS_GetSpritePixelBlue( Param1.l, Param2.l, Param3.l )
  Retour.l = CallCFunctionFast( *AdvancedSPRITES\DXS_GetSpritePixelBlue, Param1, Param2, Param3 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DXS_IsOnSprite( Param1.l, Param2.l, Param3.l )
  Retour.l = CallCFunctionFast( *AdvancedSPRITES\DXS_IsOnSprite, Param1, Param2, Param3 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DXS_IsOnSpriteFrame( Param1.l, Param2.l, Param3.l )
  Retour.l = CallCFunctionFast( *AdvancedSPRITES\DXS_IsOnSpriteFrame, Param1, Param2, Param3 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DXS_IsOnSpriteRectangle( Param1.l, Param2.l, Param3.l, Param4.l, Param5.l, Param6.l, Param7.l )
  Retour.l = CallCFunctionFast( *AdvancedSPRITES\DXS_IsOnSpriteRectangle, Param1, Param2, Param3, Param4, Param5, Param6, Param7 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DXS_IsOnSpriteTile( Param1.l, Param2.l, Param3.l, Param4.l )
  Retour.l = CallCFunctionFast( *AdvancedSPRITES\DXS_IsOnSpriteTile, Param1, Param2, Param3, Param4 )
  ProcedureReturn Retour
 EndProcedure
;

; IDE Options = PureBasic 4.10 Beta 2 (Windows - x86)
; CursorPosition = 495
; FirstLine = 453
; Folding = ---------------
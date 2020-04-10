; DarkBasic Professional RC2PBIncludes Ver 1.0 File - COMMANDS WRAPPING
; By Frederic Cordier - 07.02.13
;
; *********************************************************************
Procedure M2E_Initialize()
  CallCFunctionFast( *M2ED3D\M2E_Initialize )
 EndProcedure
;
; *********************************************************************
Procedure.l C2D_ARGB( Param1.l, Param2.l, Param3.l, Param4.l )
  Retour.l = CallCFunctionFast( *M2ED3D\C2D_ARGB, Param1, Param2, Param3, Param4 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure C2D_Line( Param0.l, Param1.l, Param2.l, Param3.l )
  CallCFunctionFast( *M2ED3D\C2D_Line, Param0, Param1, Param2, Param3 )
 EndProcedure
;
; *********************************************************************
Procedure C2D_Quad( Param0.l, Param1.l, Param2.l, Param3.l, Param4.l, Param5.l, Param6.l, Param7.l )
  CallCFunctionFast( *M2ED3D\C2D_Quad, Param0, Param1, Param2, Param3, Param4, Param5, Param6, Param7 )
 EndProcedure
;
; *********************************************************************
Procedure C2D_Rectangle( Param0.l, Param1.l, Param2.l, Param3.l )
  CallCFunctionFast( *M2ED3D\C2D_Rectangle, Param0, Param1, Param2, Param3 )
 EndProcedure
;
; *********************************************************************
Procedure C2D_SetAntialias( Param0.l )
  CallCFunctionFast( *M2ED3D\C2D_SetAntialias, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure C2D_SetWidth( Param0.f )
  CallCFunctionFast( *M2ED3D\C2D_SetWidth, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure C2D_Triangle( Param0.l, Param1.l, Param2.l, Param3.l, Param4.l, Param5.l )
  CallCFunctionFast( *M2ED3D\C2D_Triangle, Param0, Param1, Param2, Param3, Param4, Param5 )
 EndProcedure
;
; *********************************************************************
Procedure.l C2D_RGBA( Param1.l, Param2.l, Param3.l, Param4.l )
  Retour.l = CallCFunctionFast( *M2ED3D\C2D_RGBA, Param1, Param2, Param3, Param4 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure D3D_BeginRender()
  CallCFunctionFast( *M2ED3D\D3D_BeginRender )
 EndProcedure
;
; *********************************************************************
Procedure D3D_EndRender()
  CallCFunctionFast( *M2ED3D\D3D_EndRender )
 EndProcedure
;
; *********************************************************************
Procedure D3D_Present( Param0.l, Param1.l, Param2.l, Param3.l, Param4.l, Param5.l, Param6.l, Param7.l, Param8.l )
  CallCFunctionFast( *M2ED3D\D3D_Present, Param0, Param1, Param2, Param3, Param4, Param5, Param6, Param7, Param8 )
 EndProcedure
;
; *********************************************************************
Procedure D3D_PresentDBPro()
  CallCFunctionFast( *M2ED3D\D3D_PresentDBPro )
 EndProcedure
;
; *********************************************************************
Procedure.l D3D_GetDirect3DDevice()
  Retour.l = CallCFunctionFast( *M2ED3D\D3D_GetDirect3DDevice )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DXS_CloneSprite( Param1.l )
  Retour.l = CallCFunctionFast( *M2ED3D\DXS_CloneSprite, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DXS_CreateSprite( Param1.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param1PTR.l, Len( Param1 ) + 1 ) ; CreateString
  PokeS( Param1PTR, Param1 )
  Retour.l = CallCFunctionFast( *M2ED3D\DXS_CreateSprite, Param1PTR )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DXS_CreateSpriteFromImage( Param1.l )
  Retour.l = CallCFunctionFast( *M2ED3D\DXS_CreateSpriteFromImage, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DXS_DeleteSprite( Param0.l )
  CallCFunctionFast( *M2ED3D\DXS_DeleteSprite, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure DXS_DrawSprite( Param0.l, Param1.f, Param2.f )
  CallCFunctionFast( *M2ED3D\DXS_DrawSprite, Param0, Param1, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure DXS_DrawSpriteRectangle( Param0.l, Param1.l, Param2.l, Param3.l, Param4.l, Param5.f, Param6.f )
  CallCFunctionFast( *M2ED3D\DXS_DrawSpriteRectangle, Param0, Param1, Param2, Param3, Param4, Param5, Param6 )
 EndProcedure
;
; *********************************************************************
Procedure DXS_DrawSpriteTile( Param0.l, Param1.l, Param2.f, Param3.f )
  CallCFunctionFast( *M2ED3D\DXS_DrawSpriteTile, Param0, Param1, Param2, Param3 )
 EndProcedure
;
; *********************************************************************
Procedure DXS_BeginSpriteRender( Param0.l )
  CallCFunctionFast( *M2ED3D\DXS_BeginSpriteRender, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure DXS_EndSpriteRender( Param0.l )
  CallCFunctionFast( *M2ED3D\DXS_EndSpriteRender, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure.l DXS_GetSpriteAlpha( Param1.l )
  Retour.l = CallCFunctionFast( *M2ED3D\DXS_GetSpriteAlpha, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.d DXS_GetSpriteAngle( Param1.l )
  Retour.d = CallCFunctionFast( *M2ED3D\DXS_GetSpriteAngle, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DXS_GetSpriteBlue( Param1.l )
  Retour.l = CallCFunctionFast( *M2ED3D\DXS_GetSpriteBlue, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.d DXS_GetSpriteCenterX( Param1.l )
  Retour.d = CallCFunctionFast( *M2ED3D\DXS_GetSpriteCenterX, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.d DXS_GetSpriteCenterY( Param1.l )
  Retour.d = CallCFunctionFast( *M2ED3D\DXS_GetSpriteCenterY, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DXS_GetSpriteGreen( Param1.l )
  Retour.l = CallCFunctionFast( *M2ED3D\DXS_GetSpriteGreen, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DXS_GetSpriteHeight( Param1.l )
  Retour.l = CallCFunctionFast( *M2ED3D\DXS_GetSpriteHeight, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DXS_GetSpriteRed( Param1.l )
  Retour.l = CallCFunctionFast( *M2ED3D\DXS_GetSpriteRed, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.d DXS_GetSpriteScal( Param1.l )
  Retour.d = CallCFunctionFast( *M2ED3D\DXS_GetSpriteScaleX, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.d DXS_GetSpriteScaleY( Param1.l )
  Retour.d = CallCFunctionFast( *M2ED3D\DXS_GetSpriteScaleY, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DXS_GetSpriteTil( Param1.l )
  Retour.l = CallCFunctionFast( *M2ED3D\DXS_GetSpriteTileX, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DXS_GetSpriteTileY( Param1.l )
  Retour.l = CallCFunctionFast( *M2ED3D\DXS_GetSpriteTileY, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DXS_GetSpriteTileSiz( Param1.l )
  Retour.l = CallCFunctionFast( *M2ED3D\DXS_GetSpriteTileSizeX, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DXS_GetSpriteTileSizeY( Param1.l )
  Retour.l = CallCFunctionFast( *M2ED3D\DXS_GetSpriteTileSizeY, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DXS_GetSpriteWidth( Param1.l )
  Retour.l = CallCFunctionFast( *M2ED3D\DXS_GetSpriteWidth, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DXS_GetSpriteTexturePointer( Param1.l )
  Retour.l = CallCFunctionFast( *M2ED3D\DXS_GetSpriteTexturePointer, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DXS_SetSpriteAlpha( Param0.l, Param1.l )
  CallCFunctionFast( *M2ED3D\DXS_SetSpriteAlpha, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure DXS_SetSpriteAngle( Param0.l, Param1.f )
  CallCFunctionFast( *M2ED3D\DXS_SetSpriteAngle, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure DXS_SetSpriteCenter( Param0.l, Param1.f, Param2.f )
  CallCFunctionFast( *M2ED3D\DXS_SetSpriteCenter, Param0, Param1, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure DXS_SetSpriteDiffuse( Param0.l, Param1.l, Param2.l, Param3.l )
  CallCFunctionFast( *M2ED3D\DXS_SetSpriteDiffuse, Param0, Param1, Param2, Param3 )
 EndProcedure
;
; *********************************************************************
Procedure DXS_SetSpriteScale( Param0.l, Param1.f, Param2.f )
  CallCFunctionFast( *M2ED3D\DXS_SetSpriteScale, Param0, Param1, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure DXS_SetSpriteTile( Param0.l, Param1.l, Param2.l )
  CallCFunctionFast( *M2ED3D\DXS_SetSpriteTile, Param0, Param1, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure DXS_SetSpriteTileSize( Param0.l, Param1.l, Param2.l )
  CallCFunctionFast( *M2ED3D\DXS_SetSpriteTileSize, Param0, Param1, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure DXS_SetTransparentColor( Param0.l, Param1.l, Param2.l )
  CallCFunctionFast( *M2ED3D\DXS_SetTransparentColor, Param0, Param1, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure DXS_UpdateSprite( Param0.l )
  CallCFunctionFast( *M2ED3D\DXS_UpdateSprite, Param0 )
 EndProcedure
;

; IDE Options = PureBasic 4.10 Beta 2 (Windows - x86)
; CursorPosition = 264
; FirstLine = 222
; Folding = ---------
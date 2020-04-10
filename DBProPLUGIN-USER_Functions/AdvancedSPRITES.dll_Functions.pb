; DarkBasic Professional RC2PBIncludes Ver 1.1 File - COMMANDS INITIALIZING
; By Frederic Cordier - 07.02.13
;
Procedure.l CheckAdvancedSPRITES()
  SUCCESS.l = 1
  If OpenLibrary( 1, "AdvancedSPRITES.dll")
    AdvancedSPRITES\DXS_Initialize= AIsFunction( 1 , "DXS_Initialize" ) ; 1 DXS INITIALIZE 
    AdvancedSPRITES\DXS_CreateSprite= AIsFunction( 1 , "DXS_CreateSprite" ) ; 2 DXS CREATE SPRITE 
    AdvancedSPRITES\DXS_CreateSprite1= AIsFunction( 1 , "DXS_CreateSprite" ) ; 3 DXS CREATE SPRITE 
    AdvancedSPRITES\DXS_CreateSpriteRGB= AIsFunction( 1 , "DXS_CreateSpriteRGB" ) ; 4 DXS CREATE SPRITE 
    AdvancedSPRITES\DXS_CreateEmptySprite= AIsFunction( 1 , "DXS_CreateEmptySprite" ) ; 5 DXS CREATE EMPTY SPRITE 
    AdvancedSPRITES\DXS_CreateEmptySpriteD3DCOLOR= AIsFunction( 1 , "DXS_CreateEmptySpriteD3DCOLOR" ) ; 6 DXS CREATE EMPTY SPRITE 
    AdvancedSPRITES\DXS_CreateEmptySpriteRGB= AIsFunction( 1 , "DXS_CreateEmptySpriteRGB" ) ; 7 DXS CREATE EMPTY SPRITE 
    AdvancedSPRITES\DXS_CreateSpriteFromImage= AIsFunction( 1 , "DXS_CreateSpriteFromImage" ) ; 8 DXS CREATE SPRITE FROM IMAGE 
    AdvancedSPRITES\DXS_ClearSprite= AIsFunction( 1 , "DXS_ClearSprite" ) ; 9 DXS CLEAR SPRITE 
    AdvancedSPRITES\DXS_DeleteSprite= AIsFunction( 1 , "DXS_DeleteSprite" ) ; 10 DXS DELETE SPRITE 
    AdvancedSPRITES\DXS_UpdateSprite= AIsFunction( 1 , "DXS_UpdateSprite" ) ; 11 DXS UPDATE SPRITE 
    AdvancedSPRITES\DXS_BeginSpriteRender= AIsFunction( 1 , "DXS_BeginSpriteRender" ) ; 12 DXS BEGIN SPRITE RENDER 
    AdvancedSPRITES\DXS_EndSpriteRender= AIsFunction( 1 , "DXS_EndSpriteRender" ) ; 13 DXS END SPRITE RENDER 
    AdvancedSPRITES\DXS_DrawSpriteA= AIsFunction( 1 , "DXS_DrawSpriteA" ) ; 14 DXS DRAW SPRITE 
    AdvancedSPRITES\DXS_DrawSpriteB= AIsFunction( 1 , "DXS_DrawSpriteB" ) ; 15 DXS DRAW SPRITE 
    AdvancedSPRITES\DXS_DrawSpriteFrameA= AIsFunction( 1 , "DXS_DrawSpriteFrameA" ) ; 16 DXS DRAW SPRITE FRAME 
    AdvancedSPRITES\DXS_DrawSpriteFrameB= AIsFunction( 1 , "DXS_DrawSpriteFrameB" ) ; 17 DXS DRAW SPRITE FRAME 
    AdvancedSPRITES\DXS_DrawSpriteRectangleA= AIsFunction( 1 , "DXS_DrawSpriteRectangleA" ) ; 18 DXS DRAW SPRITE RECTANGLE 
    AdvancedSPRITES\DXS_DrawSpriteRectangleB= AIsFunction( 1 , "DXS_DrawSpriteRectangleB" ) ; 19 DXS DRAW SPRITE RECTANGLE 
    AdvancedSPRITES\DXS_DrawSpriteTileA= AIsFunction( 1 , "DXS_DrawSpriteTileA" ) ; 20 DXS DRAW SPRITE TILE 
    AdvancedSPRITES\DXS_DrawSpriteTileB= AIsFunction( 1 , "DXS_DrawSpriteTileB" ) ; 21 DXS DRAW SPRITE TILE 
    AdvancedSPRITES\DXS_SetSpriteAlpha= AIsFunction( 1 , "DXS_SetSpriteAlpha" ) ; 22 DXS SET SPRITE ALPHA 
    AdvancedSPRITES\DXS_SetSpriteDiffuse= AIsFunction( 1 , "DXS_SetSpriteDiffuse" ) ; 23 DXS SET SPRITE DIFFUSE 
    AdvancedSPRITES\DXS_SetSpriteAngle= AIsFunction( 1 , "DXS_SetSpriteAngle" ) ; 24 DXS SET SPRITE ANGLE 
    AdvancedSPRITES\DXS_SetSpriteCenter= AIsFunction( 1 , "DXS_SetSpriteCenter" ) ; 25 DXS SET SPRITE CENTER 
    AdvancedSPRITES\DXS_SetSpriteRotationCenter= AIsFunction( 1 , "DXS_SetSpriteRotationCenter" ) ; 26 DXS SET SPRITE ROTATION CENTER 
    AdvancedSPRITES\DXS_SetSpriteScalingCenter= AIsFunction( 1 , "DXS_SetSpriteScalingCenter" ) ; 27 DXS SET SPRITE SCALING CENTER 
    AdvancedSPRITES\DXS_SetSpriteScale= AIsFunction( 1 , "DXS_SetSpriteScale" ) ; 29 DXS SET SPRITE SCALE 
    AdvancedSPRITES\DXS_SetSpriteSize= AIsFunction( 1 , "DXS_SetSpriteSize" ) ; 30 DXS SET SPRITE SIZE 
    AdvancedSPRITES\DXS_SetSpriteTranslation= AIsFunction( 1 , "DXS_SetSpriteTranslation" ) ; 31 DXS SET SPRITE TRANSLATION 
    AdvancedSPRITES\DXS_SetSpriteDepthScale= AIsFunction( 1 , "DXS_SetSpriteDepthScale" ) ; 32 DXS SET SPRITE DEPTH SCALE 
    AdvancedSPRITES\DXS_SetSpriteImage= AIsFunction( 1 , "DXS_SetSpriteImage" ) ; 33 DXS SET SPRITE IMAGE 
    AdvancedSPRITES\DXS_SetSpriteImage1= AIsFunction( 1 , "DXS_SetSpriteImage" ) ; 34 DXS SET SPRITE IMAGE 
    AdvancedSPRITES\DXS_SetSpriteFilter= AIsFunction( 1 , "DXS_SetSpriteFilter" ) ; 35 DXS SET SPRITE FILTER 
    AdvancedSPRITES\DXS_ChangeSpriteTexture= AIsFunction( 1 , "DXS_ChangeSpriteTexture" ) ; 36 DXS CHANGE SPRITE TEXTURE 
    AdvancedSPRITES\DXS_ChangeSpriteTexture1= AIsFunction( 1 , "DXS_ChangeSpriteTexture" ) ; 37 DXS CHANGE SPRITE TEXTURE 
    AdvancedSPRITES\DXS_ChangeSpriteTexture2= AIsFunction( 1 , "DXS_ChangeSpriteTexture" ) ; 38 DXS CHANGE SPRITE TEXTURE 
    AdvancedSPRITES\DXS_ExportSpriteTexture= AIsFunction( 1 , "DXS_ExportSpriteTexture" ) ; 39 DXS EXPORT SPRITE TEXTURE 
    AdvancedSPRITES\DXS_GetSpriteAlpha= AIsFunction( 1 , "DXS_GetSpriteAlpha" ) ; 40 DXS GET SPRITE ALPHA 
    AdvancedSPRITES\DXS_GetSpriteRed= AIsFunction( 1 , "DXS_GetSpriteRed" ) ; 41 DXS GET SPRITE RED 
    AdvancedSPRITES\DXS_GetSpriteGreen= AIsFunction( 1 , "DXS_GetSpriteGreen" ) ; 42 DXS GET SPRITE GREEN 
    AdvancedSPRITES\DXS_GetSpriteBlue= AIsFunction( 1 , "DXS_GetSpriteBlue" ) ; 43 DXS GET SPRITE BLUE 
    AdvancedSPRITES\DXS_GetSpriteAngle= AIsFunction( 1 , "DXS_GetSpriteAngle" ) ; 44 DXS GET SPRITE ANGLE 
    AdvancedSPRITES\DXS_GetSpriteCenterX= AIsFunction( 1 , "DXS_GetSpriteCenterX" ) ; 45 DXS GET SPRITE CENTER X 
    AdvancedSPRITES\DXS_GetSpriteCenterY= AIsFunction( 1 , "DXS_GetSpriteCenterY" ) ; 46 DXS GET SPRITE CENTER Y 
    AdvancedSPRITES\DXS_GetSpriteRotationCenterX= AIsFunction( 1 , "DXS_GetSpriteRotationCenterX" ) ; 47 DXS GET SPRITE ROTATION CENTER X 
    AdvancedSPRITES\DXS_GetSpriteRotationCenterY= AIsFunction( 1 , "DXS_GetSpriteRotationCenterY" ) ; 48 DXS GET SPRITE ROTATION CENTER Y 
    AdvancedSPRITES\DXS_GetSpriteScalingCenterX= AIsFunction( 1 , "DXS_GetSpriteScalingCenterX" ) ; 49 DXS GET SPRITE SCALING CENTER X 
    AdvancedSPRITES\DXS_GetSpriteScalingCenterY= AIsFunction( 1 , "DXS_GetSpriteScalingCenterY" ) ; 50 DXS GET SPRITE SCALING CENTER Y 
    AdvancedSPRITES\DXS_GetSpriteWidth= AIsFunction( 1 , "DXS_GetSpriteWidth" ) ; 51 DXS GET SPRITE WIDTH 
    AdvancedSPRITES\DXS_GetSpriteHeight= AIsFunction( 1 , "DXS_GetSpriteHeight" ) ; 52 DXS GET SPRITE HEIGHT 
    AdvancedSPRITES\DXS_GetSpriteScaleX= AIsFunction( 1 , "DXS_GetSpriteScaleX" ) ; 53 DXS GET SPRITE SCALE X 
    AdvancedSPRITES\DXS_GetSpriteScaleY= AIsFunction( 1 , "DXS_GetSpriteScaleY" ) ; 54 DXS GET SPRITE SCALE Y 
    AdvancedSPRITES\DXS_SetSpriteDepthScale1= AIsFunction( 1 , "DXS_SetSpriteDepthScale" ) ; 55 DXS GET SPRITE DEPTH SCALE 
    AdvancedSPRITES\DXS_GetSpriteImage= AIsFunction( 1 , "DXS_GetSpriteImage" ) ; 56 DXS GET SPRITE IMAGE 
    AdvancedSPRITES\DXS_GetSpriteFilter= AIsFunction( 1 , "DXS_GetSpriteFilter" ) ; 57 DXS GET SPRITE FILTER 
    AdvancedSPRITES\DXS_GetSpriteTextureWidth= AIsFunction( 1 , "DXS_GetSpriteTextureWidth" ) ; 58 DXS GET SPRITE TEXTURE WIDTH 
    AdvancedSPRITES\DXS_GetSpriteTextureHeight= AIsFunction( 1 , "DXS_GetSpriteTextureHeight" ) ; 59 DXS GET SPRITE TEXTURE HEIGHT 
    AdvancedSPRITES\DXS_GetSpriteTextureDepth= AIsFunction( 1 , "DXS_GetSpriteTextureDepth" ) ; 60 DXS GET SPRITE TEXTURE DEPTH 
    AdvancedSPRITES\DXS_PlaySprite= AIsFunction( 1 , "DXS_PlaySprite" ) ; 61 DXS PLAY SPRITE 
    AdvancedSPRITES\DXS_SetSpriteFrame= AIsFunction( 1 , "DXS_SetSpriteFrame" ) ; 62 DXS SET SPRITE FRAME 
    AdvancedSPRITES\DXS_SetSpriteFrameSet= AIsFunction( 1 , "DXS_SetSpriteFrameSet" ) ; 63 DXS SET SPRITE FRAMESET 
    AdvancedSPRITES\DXS_SetSpriteFrameSize= AIsFunction( 1 , "DXS_SetSpriteFrameSize" ) ; 64 DXS SET SPRITE FRAME SIZE 
    AdvancedSPRITES\DXS_GetSpriteFrame= AIsFunction( 1 , "DXS_GetSpriteFrame" ) ; 65 DXS GET SPRITE FRAME 
    AdvancedSPRITES\DXS_GetSpriteFrameSetWidth= AIsFunction( 1 , "DXS_GetSpriteFrameSetWidth" ) ; 66 DXS GET SPRITE FRAMESET WIDTH 
    AdvancedSPRITES\DXS_GetSpriteFrameSetHeight= AIsFunction( 1 , "DXS_GetSpriteFrameSetHeight" ) ; 67 DXS GET SPRITE FRAMESET HEIGHT 
    AdvancedSPRITES\DXS_GetSpriteFrameWidth= AIsFunction( 1 , "DXS_GetSpriteFrameWidth" ) ; 68 DXS GET SPRITE FRAME WIDTH 
    AdvancedSPRITES\DXS_GetSpriteFrameHeight= AIsFunction( 1 , "DXS_GetSpriteFrameHeight" ) ; 69 DXS GET SPRITE FRAME HEIGHT 
    AdvancedSPRITES\DXS_SetSpriteTileSet= AIsFunction( 1 , "DXS_SetSpriteTileSet" ) ; 70 DXS SET SPRITE TILESET 
    AdvancedSPRITES\DXS_SetSpriteTileSize= AIsFunction( 1 , "DXS_SetSpriteTileSize" ) ; 71 DXS SET SPRITE TILE SIZE 
    AdvancedSPRITES\DXS_GetSpriteTileSetWidth= AIsFunction( 1 , "DXS_GetSpriteTileSetWidth" ) ; 72 DXS GET SPRITE TILESET WIDTH 
    AdvancedSPRITES\DXS_GetSpriteTileSetHeight= AIsFunction( 1 , "DXS_GetSpriteTileSetHeight" ) ; 73 DXS GET SPRITE TILESET HEIGHT 
    AdvancedSPRITES\DXS_GetSpriteTileWidth= AIsFunction( 1 , "DXS_GetSpriteTileWidth" ) ; 74 DXS GET SPRITE TILE WIDTH 
    AdvancedSPRITES\DXS_GetSpriteTileHeight= AIsFunction( 1 , "DXS_GetSpriteTileHeight" ) ; 75 DXS GET SPRITE TILE HEIGHT 
    AdvancedSPRITES\DXS_LockSprite= AIsFunction( 1 , "DXS_LockSprite" ) ; 76 DXS LOCK SPRITE 
    AdvancedSPRITES\DXS_UnlockSprite= AIsFunction( 1 , "DXS_UnlockSprite" ) ; 77 DXS UNLOCK SPRITE 
    AdvancedSPRITES\DXS_SetSpritePixel= AIsFunction( 1 , "DXS_SetSpritePixel" ) ; 78 DXS SET SPRITE PIXEL 
    AdvancedSPRITES\DXS_SetSpritePixelARGB= AIsFunction( 1 , "DXS_SetSpritePixelARGB" ) ; 79 DXS SET SPRITE PIXEL 
    AdvancedSPRITES\DXS_GetSpritePixel= AIsFunction( 1 , "DXS_GetSpritePixel" ) ; 80 DXS GET SPRITE PIXEL 
    AdvancedSPRITES\DXS_GetSpritePixelAlpha= AIsFunction( 1 , "DXS_GetSpritePixelAlpha" ) ; 81 DXS GET SPRITE PIXEL ALPHA 
    AdvancedSPRITES\DXS_GetSpritePixelRed= AIsFunction( 1 , "DXS_GetSpritePixelRed" ) ; 82 DXS GET SPRITE PIXEL RED 
    AdvancedSPRITES\DXS_GetSpritePixelGreen= AIsFunction( 1 , "DXS_GetSpritePixelGreen" ) ; 83 DXS GET SPRITE PIXEL GREEN 
    AdvancedSPRITES\DXS_GetSpritePixelBlue= AIsFunction( 1 , "DXS_GetSpritePixelBlue" ) ; 84 DXS GET SPRITE PIXEL BLUE 
    AdvancedSPRITES\DXS_IsOnSprite= AIsFunction( 1 , "DXS_IsOnSprite" ) ; 85 DXS IS ON SPRITE 
    AdvancedSPRITES\DXS_IsOnSpriteFrame= AIsFunction( 1 , "DXS_IsOnSpriteFrame" ) ; 86 DXS IS ON SPRITE FRAME 
    AdvancedSPRITES\DXS_IsOnSpriteRectangle= AIsFunction( 1 , "DXS_IsOnSpriteRectangle" ) ; 87 DXS IS ON SPRITE RECTANGLE 
    AdvancedSPRITES\DXS_IsOnSpriteTile= AIsFunction( 1 , "DXS_IsOnSpriteTile" ) ; 88 DXS IS ON SPRITE TILE 
    CloseLibrary( 1 )
   Else
    SUCCESS.l = 0
   EndIf
  ProcedureReturn SUCCESS
 EndProcedure

; IDE Options = PureBasic 4.10 Beta 2 (Windows - x86)
; CursorPosition = 3
; Folding = -
; DarkBasic Professional RC2PBIncludes Ver 1.1 File - COMMANDS INITIALIZING
; By Frederic Cordier - 07.02.13
;
Procedure.l CheckSpriteExtends()
  SUCCESS.l = 0
  If OpenLibrary( 1, "DBProSpriteExtends.dll")
    SUCCESS = 1
   Else
    If OpenLibrary( 1, "eXtends_Sprites.dll" )
      SUCCESS = 1
     EndIf
   EndIf
  If SUCCESS = 1
    SpriteExtends\SPR_Init= AIsFunction( 1 , "SPR_Init" ) ; 1 SPR Initialized 
    SpriteExtends\SPR_Clear= AIsFunction( 1 , "SPR_Clear" ) ; 2 SPR Clear 
    SpriteExtends\SPR_Count= AIsFunction( 1 , "SPR_Count" ) ; 3 SPR Get Count 
    SpriteExtends\SPR_Delete= AIsFunction( 1 , "SPR_Delete" ) ; 4 SPR Delete Sprite ImageNumber
    SpriteExtends\SPR_DynamicSprite= AIsFunction( 1 , "SPR_DynamicSprite" ) ; 5 SPR Sprite Xpos, YPos, ImageNumber
    SpriteExtends\SPR_DynamicAnimatedSprite= AIsFunction( 1 , "SPR_DynamicAnimatedSprite" ) ; 6 SPR Make Animated Sprite FileName$, Across, Down, ImageNumber
    SpriteExtends\PrepareSpriteForCollision= AIsFunction( 1 , "PrepareSpriteForCollision" ) ; 7 SPR Prepare Collision SpriteNumber
    SpriteExtends\GetSpriteCollision= AIsFunction( 1 , "GetSpriteCollision" ) ; 8 SPR Get Collision Sprite1, Sprite2, Mode
    SpriteExtends\FreeSpriteFromCollision= AIsFunction( 1 , "FreeSpriteFromCollision" ) ; 9 SPR Free Collision SpriteNumber
    SpriteExtends\GetSpritesDistance= AIsFunction( 1 , "GetSpritesDistance" ) ; 10 SPR Get Distance Sprite1, Sprite2
    CloseLibrary( 1 )
   Else
    SUCCESS.l = 0
   EndIf
  ProcedureReturn SUCCESS
 EndProcedure

; IDE Options = PureBasic 4.20 Beta 2 (Windows - x86)
; CursorPosition = 8
; Folding = -
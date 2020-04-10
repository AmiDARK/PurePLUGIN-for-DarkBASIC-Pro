; DarkBasic Professional RC2PBIncludes Ver 1.1 File - COMMANDS INITIALIZING
; By Frederic Cordier - 07.02.13
;
Procedure.l CheckSprites()
  SUCCESS.l = 1
  If OpenLibrary( 1, "DBProSpritesDebug.dll")
    DB_Sprites\Sprite= AIsFunction( 1 , "?Sprite@@YAXHHHH@Z" ) ; 1 SPRITE Sprite Number, XPos, YPos, Image Number
    DB_Sprites\SetSprite= AIsFunction( 1 , "?SetSprite@@YAXHHH@Z" ) ; 2 SET SPRITE Sprite Number, Backsave, Transparency
    DB_Sprites\Size= AIsFunction( 1 , "?Size@@YAXHHH@Z" ) ; 3 SIZE SPRITE Sprite Number, XSize, YSize
    DB_Sprites\Scale= AIsFunction( 1 , "?Scale@@YAXHM@Z" ) ; 4 SCALE SPRITE Sprite Number, Scale
    DB_Sprites\Stretch= AIsFunction( 1 , "?Stretch@@YAXHHH@Z" ) ; 5 STRETCH SPRITE Sprite Number, XScale, YScale
    DB_Sprites\Offset= AIsFunction( 1 , "?Offset@@YAXHHH@Z" ) ; 6 OFFSET SPRITE Sprite Number, XOffset, YOffset
    DB_Sprites\Mirror= AIsFunction( 1 , "?Mirror@@YAXH@Z" ) ; 7 MIRROR SPRITE Sprite Number
    DB_Sprites\Flip= AIsFunction( 1 , "?Flip@@YAXH@Z" ) ; 8 FLIP SPRITE Sprite Number
    DB_Sprites\Delete= AIsFunction( 1 , "?Delete@@YAXH@Z" ) ; 9 DELETE SPRITE Sprite Number
    DB_Sprites\Paste= AIsFunction( 1 , "?Paste@@YAXHHH@Z" ) ; 10 PASTE SPRITE Sprite Number, XPos, YPos
    DB_Sprites\Hide= AIsFunction( 1 , "?Hide@@YAXH@Z" ) ; 11 HIDE SPRITE Sprite Number
    DB_Sprites\Show= AIsFunction( 1 , "?Show@@YAXH@Z" ) ; 12 SHOW SPRITE Sprite Number
    DB_Sprites\HideAllSprites= AIsFunction( 1 , "?HideAllSprites@@YAXXZ" ) ; 13 HIDE ALL SPRITES 
    DB_Sprites\ShowAllSprites= AIsFunction( 1 , "?ShowAllSprites@@YAXXZ" ) ; 14 SHOW ALL SPRITES 
    DB_Sprites\GetExist= AIsFunction( 1 , "?GetExist@@YAHH@Z" ) ; 15 SPRITE EXIST Sprite Number
    DB_Sprites\GetX= AIsFunction( 1 , "?GetX@@YAHH@Z" ) ; 16 SPRITE X Sprite Number
    DB_Sprites\GetY= AIsFunction( 1 , "?GetY@@YAHH@Z" ) ; 17 SPRITE Y Sprite Number
    DB_Sprites\GetXOffset= AIsFunction( 1 , "?GetXOffset@@YAHH@Z" ) ; 18 SPRITE OFFSET X Sprite Number
    DB_Sprites\GetYOffset= AIsFunction( 1 , "?GetYOffset@@YAHH@Z" ) ; 19 SPRITE OFFSET Y Sprite Number
    DB_Sprites\GetWidth= AIsFunction( 1 , "?GetWidth@@YAHH@Z" ) ; 20 SPRITE WIDTH Sprite Number
    DB_Sprites\GetHeight= AIsFunction( 1 , "?GetHeight@@YAHH@Z" ) ; 21 SPRITE HEIGHT Sprite Number
    DB_Sprites\GetImage= AIsFunction( 1 , "?GetImage@@YAHH@Z" ) ; 22 SPRITE IMAGE Sprite Number
    DB_Sprites\GetXScale= AIsFunction( 1 , "?GetXScale@@YAHH@Z" ) ; 23 SPRITE SCALE X Sprite Number
    DB_Sprites\GetYScale= AIsFunction( 1 , "?GetYScale@@YAHH@Z" ) ; 24 SPRITE SCALE Y Sprite Number
    DB_Sprites\GetMirrored= AIsFunction( 1 , "?GetMirrored@@YAHH@Z" ) ; 25 SPRITE MIRRORED Sprite Number
    DB_Sprites\GetFlipped= AIsFunction( 1 , "?GetFlipped@@YAHH@Z" ) ; 26 SPRITE FLIPPED Sprite Number
    DB_Sprites\GetHit= AIsFunction( 1 , "?GetHit@@YAHHH@Z" ) ; 27 SPRITE HIT Sprite Number, Target Sprite Number
    DB_Sprites\GetCollision= AIsFunction( 1 , "?GetCollision@@YAHHH@Z" ) ; 28 SPRITE COLLISION Sprite Number, Target Sprite Number
    DB_Sprites\Rotate= AIsFunction( 1 , "?Rotate@@YAXHM@Z" ) ; 29 ROTATE SPRITE Sprite Number, Angle
    DB_Sprites\SetAlpha= AIsFunction( 1 , "?SetAlpha@@YAXHH@Z" ) ; 30 SET SPRITE ALPHA Sprite Number, Alpha Value
    DB_Sprites\SetDiffuse= AIsFunction( 1 , "?SetDiffuse@@YAXHHHH@Z" ) ; 31 SET SPRITE DIFFUSE Sprite Number, Red Value, Green Value, Blue Value
    DB_Sprites\CreateAnimatedSprite= AIsFunction( 1 , "?CreateAnimatedSprite@@YAXHPADHHH@Z" ) ; 32 CREATE ANIMATED SPRITE Sprite Number, Filename, Across, Down, Image Number
    DB_Sprites\SetTextureCoordinates= AIsFunction( 1 , "?SetTextureCoordinates@@YAXHHMM@Z" ) ; 33 SET SPRITE TEXTURE COORD Sprite Number, Vertex Index, UValue, VValue
    DB_Sprites\Play= AIsFunction( 1 , "?Play@@YAXHHHH@Z" ) ; 34 PLAY SPRITE Sprite Number, Start Frame, End Frame, Delay Value
    DB_Sprites\SetFrame= AIsFunction( 1 , "?SetFrame@@YAXHH@Z" ) ; 35 SET SPRITE FRAME Sprite Number, Frame Value
    DB_Sprites\SetImage= AIsFunction( 1 , "?SetImage@@YAXHH@Z" ) ; 36 SET SPRITE IMAGE Sprite Number, Image Number
    DB_Sprites\Clone= AIsFunction( 1 , "?Clone@@YAXHH@Z" ) ; 37 CLONE SPRITE Sprite Number, Destination Sprite Number
    DB_Sprites\GetAngle= AIsFunction( 1 , "?GetAngle@@YAKH@Z" ) ; 38 SPRITE ANGLE Sprite Number
    DB_Sprites\GetAlpha= AIsFunction( 1 , "?GetAlpha@@YAHH@Z" ) ; 39 SPRITE ALPHA Sprite Number
    DB_Sprites\GetRed= AIsFunction( 1 , "?GetRed@@YAHH@Z" ) ; 40 SPRITE RED Sprite Number
    DB_Sprites\GetGreen= AIsFunction( 1 , "?GetGreen@@YAHH@Z" ) ; 41 SPRITE GREEN Sprite Number
    DB_Sprites\GetBlue= AIsFunction( 1 , "?GetBlue@@YAHH@Z" ) ; 42 SPRITE BLUE Sprite Number
    DB_Sprites\GetFrame= AIsFunction( 1 , "?GetFrame@@YAHH@Z" ) ; 43 SPRITE FRAME Sprite Number
    DB_Sprites\Move= AIsFunction( 1 , "?Move@@YAXHM@Z" ) ; 44 MOVE SPRITE Sprite Number, Velocity
    DB_Sprites\SetPriority= AIsFunction( 1 , "?SetPriority@@YAXHH@Z" ) ; 45 SET SPRITE PRIORITY Sprite Number, Priority
    DB_Sprites\GetVisible= AIsFunction( 1 , "?GetVisible@@YAHH@Z" ) ; 46 SPRITE VISIBLE Sprite Number
    DB_Sprites\SetSpriteResize= AIsFunction( 1 , "?SetSpriteResize@@YAXH@Z" ) ; 47 SET SPRITE RESIZE Mode
    DB_Sprites\GetPriority= AIsFunction( 1 , "?GetPriority@@YAHH@Z" ) ; 48 SPRITE PRIORITY Sprite Number
    CloseLibrary( 1 )
   Else
    SUCCESS.l = 0
   Endif
  ProcedureReturn SUCCESS
 EndProcedure

; DarkBasic Professional RC2PBIncludes Ver 1.1 File - COMMANDS INITIALIZING
; By Frederic Cordier - 07.02.13
;
Procedure.l CheckImageExtends()
  SUCCESS.l = 0
  If OpenLibrary( 1, "DBProImageExtends.dll")
    SUCCESS = 1
   Else
    If OpenLibrary( 1, "eXtends_Images.dll" )
      SUCCESS = 1
     EndIf
   EndIf
  If SUCCESS = 1
    ImageExtends\Image_Init= AIsFunction( 1 , "Image_Init" ) ; 1 IMG Initialized 
    ImageExtends\IMG_Clear= AIsFunction( 1 , "IMG_Clear" ) ; 2 IMG Clear 
    ImageExtends\IMG_Count= AIsFunction( 1 , "IMG_Count" ) ; 3 IMG Get Count 
    ImageExtends\IMG_Delete= AIsFunction( 1 , "IMG_Delete" ) ; 4 IMG Delete Image ImageNumber
    ImageExtends\IMG_DynamicLoad= AIsFunction( 1 , "IMG_DynamicLoad" ) ; 5 IMG Load Image Filename$
    ImageExtends\IMG_DynamicLoadF= AIsFunction( 1 , "IMG_DynamicLoadF" ) ; 6 IMG Load Image Filename$, Flag
    ImageExtends\IMG_MakeImageFromMemblock= AIsFunction( 1 , "IMG_MakeImageFromMemblock" ) ; 7 IMG Make Image From Memblock Memblock Number
    ImageExtends\IMG_GrabImage= AIsFunction( 1 , "IMG_GrabImage" ) ; 8 IMG Make Image Left, Top, Right, Bottom
    ImageExtends\IMG_GrabImageF= AIsFunction( 1 , "IMG_GrabImageF" ) ; 9 IMG Make Image Left, Top, Right, Bottom, Flag
    ImageExtends\IMG_Mosaic1= AIsFunction( 1 , "IMG_Mosaic1" ) ; 10 IMG Mosaic SourceImage, Factor, RandomMode
    ImageExtends\IMG_Mosaic2= AIsFunction( 1 , "IMG_Mosaic2" ) ; 11 IMG Mosaic SourceImage, Factor, RandomMode, TargetImage
    ImageExtends\IMG_Wobble1= AIsFunction( 1 , "IMG_Wobble1" ) ; 12 IMG Wobble SourceImage
    ImageExtends\IMG_Wobble2= AIsFunction( 1 , "IMG_Wobble2" ) ; 13 IMG Wobble SourceImage, TargetImage
    ImageExtends\IMG_SetWobble= AIsFunction( 1 , "IMG_SetWobble" ) ; 14 IMG Set Wobble Amplitude, Speed, Step
    ImageExtends\IMG_DOT3Generate= AIsFunction( 1 , "IMG_DOT3Generate" ) ; 15 IMG Generate DOT3 SourceImage, Smooth, Steep
    ImageExtends\IMG_StaticLoad= AIsFunction( 1 , "IMG_StaticLoad" ) ; 16 IMG Load Image FileName$, ImageID
    ImageExtends\IMG_StaticLoadF= AIsFunction( 1 , "IMG_StaticLoadF" ) ; 17 IMG Load Image FileName$, ImageID, TextureFlag
    ImageExtends\IMG_SetCameraToImage= AIsFunction( 1 , "IMG_SetCameraToImage" ) ; 18 IMG Set Camera To Image CameraID, Width, Height
    ImageExtends\IMG_SetCameraToImage1= AIsFunction( 1 , "IMG_SetCameraToImage1" ) ; 19 IMG Set Camera To Image CameraID, Width, Height, GenerateAlpha
    ImageExtends\IMG_GREYGenerate= AIsFunction( 1 , "IMG_GREYGenerate" ) ; 20 IMG Generate HeightMap SourceImage
    CloseLibrary( 1 )
   Else
    SUCCESS.l = 0
   EndIf
  ProcedureReturn SUCCESS
 EndProcedure

; IDE Options = PureBasic 4.20 Beta 2 (Windows - x86)
; CursorPosition = 8
; Folding = -
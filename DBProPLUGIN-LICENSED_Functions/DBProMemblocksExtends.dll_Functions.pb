; DarkBasic Professional RC2PBIncludes Ver 1.1 File - COMMANDS INITIALIZING
; By Frederic Cordier - 07.02.13
;
Procedure.l CheckMemblocksExtends()
  SUCCESS.l = 0
  If OpenLibrary( 1, "DBProMemblocksExtends.dll")
    SUCCESS = 1
   Else
    If OpenLibrary( 1, "eXtends_Memblocks.dll" )
      SUCCESS = 1
     EndIf
   EndIf
  If SUCCESS = 1
    MemblocksExtends\MBC_Init= AIsFunction( 1 , "MBC_Init" ) ; 1 MBC Initialized 
    MemblocksExtends\MBC_Clear= AIsFunction( 1 , "MBC_Clear" ) ; 2 MBC Clear All Memblocks 
    MemblocksExtends\MBC_Count= AIsFunction( 1 , "MBC_Count" ) ; 3 MBC Exist Memblock Count 
    MemblocksExtends\MBC_Delete= AIsFunction( 1 , "MBC_Delete" ) ; 4 MBC Delete Memblock Memblock Number
    MemblocksExtends\MBC_CloneMemblock= AIsFunction( 1 , "MBC_CloneMemblock" ) ; 5 MBC Clone Memblock Source Memblock
    MemblocksExtends\MBC_DynamicMake= AIsFunction( 1 , "MBC_DynamicMake" ) ; 6 MBC Make Memblock Bytes Size
    MemblocksExtends\MBC_DynamicMakeFromArray= AIsFunction( 1 , "MBC_DynamicMakeFromArray" ) ; 7 MBC Make Memblock From Array Array Name(0)
    MemblocksExtends\MBC_DynamicMakeFromBitmap= AIsFunction( 1 , "MBC_DynamicMakeFromBitmap" ) ; 8 MBC Make Memblock From Bitmap Bitmap Number
    MemblocksExtends\MBC_DynamicMakeFromImage= AIsFunction( 1 , "MBC_DynamicMakeFromImage" ) ; 9 MBC Make Memblock From Image Image Number
    MemblocksExtends\MBC_DynamicMakeFromMesh= AIsFunction( 1 , "MBC_DynamicMakeFromMesh" ) ; 10 MBC Make Memblock From Mesh Mesh Number
    MemblocksExtends\MBC_DynamicMakeFromSound= AIsFunction( 1 , "MBC_DynamicMakeFromSound" ) ; 11 MBC Make Memblock From Sound Sound Number
    MemblocksExtends\MakeMemblockImage= AIsFunction( 1 , "MakeMemblockImage" ) ; 12 MBC Make Memblock Image Width, Height, Depth
    MemblocksExtends\IMPlot= AIsFunction( 1 , "IMPlot" ) ; 13 MBC Plot Memblock Number, X, Y, RGBColor
    MemblocksExtends\IMGetPixel= AIsFunction( 1 , "IMGetPixel" ) ; 14 MBC Get Pixel Memblock Number, X, Y
    MemblocksExtends\IMCircle= AIsFunction( 1 , "IMCircle" ) ; 15 MBC Circle Memblock Number, X, Y, Diameter, RGBColor, FillMode
    MemblocksExtends\IMCube= AIsFunction( 1 , "IMCube" ) ; 16 MBC Cube Memblock Number, X, Y, Size, RGBColor, FillMode
    MemblocksExtends\IMBox= AIsFunction( 1 , "IMBox" ) ; 17 MBC Box Memblock Number, Left, Top, Bottom, Right, RGBColor, FillMode
    MemblocksExtends\IMStretch= AIsFunction( 1 , "IMStretch" ) ; 18 MBC Stretch Image Source IM, Target IM
    MemblocksExtends\IMStretch2= AIsFunction( 1 , "IMStretch2" ) ; 19 MBC Stretch Image Source IM, Width, Height
    CloseLibrary( 1 )
   Else
    SUCCESS.l = 0
   EndIf
  ProcedureReturn SUCCESS
 EndProcedure

; IDE Options = PureBasic 4.20 Beta 2 (Windows - x86)
; CursorPosition = 8
; Folding = -
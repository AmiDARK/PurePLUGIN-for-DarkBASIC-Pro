; DarkBasic Professional RC2PBIncludes Ver 1.1 File - COMMANDS INITIALIZING
; By Frederic Cordier - 07.02.13
;
Procedure.l CheckBasic2D()
  SUCCESS.l = 1
  If OpenLibrary( 1, "DBProBasic2DDebug.dll")
    DB_Basic2D\Ink= AIsFunction( 1 , "?Ink@@YAXKK@Z" ) ; 1 INK Foreground Color,Background Color
    DB_Basic2D\Box= AIsFunction( 1 , "?Box@@YAXHHHH@Z" ) ; 2 BOX Left,Top,Right,Bottom
    DB_Basic2D\Dot= AIsFunction( 1 , "?Dot@@YAXHH@Z" ) ; 3 DOT X,Y
    DB_Basic2D\Circle= AIsFunction( 1 , "?Circle@@YAXHHH@Z" ) ; 4 CIRCLE X,Y,Radius
    DB_Basic2D\Elipse= AIsFunction( 1 , "?Elipse@@YAXHHHH@Z" ) ; 5 ELLIPSE X,Y,X Radius,Y Radius
    DB_Basic2D\Line= AIsFunction( 1 , "?Line@@YAXHHHH@Z" ) ; 6 LINE X1,Y1,X2,Y2
    DB_Basic2D\Rgb= AIsFunction( 1 , "?Rgb@@YAKHHH@Z" ) ; 7 RGB Red Value,Green Value,Blue Value
    DB_Basic2D\RgbR= AIsFunction( 1 , "?RgbR@@YAHK@Z" ) ; 8 RGBR Red Value
    DB_Basic2D\RgbG= AIsFunction( 1 , "?RgbG@@YAHK@Z" ) ; 9 RGBG Green Value
    DB_Basic2D\RgbB= AIsFunction( 1 , "?RgbB@@YAHK@Z" ) ; 10 RGBB Blue Value
    DB_Basic2D\ClearRgb= AIsFunction( 1 , "?ClearRgb@@YAXK@Z" ) ; 11 CLS Color Value
    DB_Basic2D\GetPoint= AIsFunction( 1 , "?GetPoint@@YAKHH@Z" ) ; 12 POINT X,Y
    DB_Basic2D\Lock= AIsFunction( 1 , "?Lock@@YAXXZ" ) ; 13 LOCK PIXELS 
    DB_Basic2D\Unlock= AIsFunction( 1 , "?Unlock@@YAXXZ" ) ; 14 UNLOCK PIXELS 
    DB_Basic2D\BoxGradient= AIsFunction( 1 , "?BoxGradient@@YAXHHHHKKKK@Z" ) ; 15 BOX Left, Top, Right, Bottom, Color1, Color2, Color3, Color4
    DB_Basic2D\Dot1= AIsFunction( 1 , "?Dot@@YAXHHK@Z" ) ; 16 DOT X,Y,Color Value
    DB_Basic2D\GetPixelPtr= AIsFunction( 1 , "?GetPixelPtr@@YAKXZ" ) ; 17 GET PIXELS POINTER 
    DB_Basic2D\GetPixelPitch= AIsFunction( 1 , "?GetPixelPitch@@YAKXZ" ) ; 18 GET PIXELS PITCH 
    CloseLibrary( 1 )
   Else
    SUCCESS.l = 0
   Endif
  ProcedureReturn SUCCESS
 EndProcedure

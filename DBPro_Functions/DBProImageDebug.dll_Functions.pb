; DarkBasic Professional RC2PBIncludes Ver 1.1 File - COMMANDS INITIALIZING
; By Frederic Cordier - 07.02.13
;
Procedure.l CheckImage()
  SUCCESS.l = 1
  If OpenLibrary( 1, "DBProImageDebug.dll")
    DB_Image\LoadEx= AIsFunction( 1 , "?LoadEx@@YAXPADH@Z" ) ; 1 LOAD IMAGE Filename, Image Number
    DB_Image\SaveEx= AIsFunction( 1 , "?SaveEx@@YAXPADH@Z" ) ; 2 SAVE IMAGE Filename, Image Number
    DB_Image\GrabImageEx= AIsFunction( 1 , "?GrabImageEx@@YAXHHHHH@Z" ) ; 3 GET IMAGE Image Number, Left, Top, Right, Bottom
    DB_Image\PasteEx= AIsFunction( 1 , "?PasteEx@@YAXHHH@Z" ) ; 4 PASTE IMAGE Image Number, X, Y
    DB_Image\DeleteEx= AIsFunction( 1 , "?DeleteEx@@YAXH@Z" ) ; 5 DELETE IMAGE Image Number
    DB_Image\GetExistEx= AIsFunction( 1 , "?GetExistEx@@YAHH@Z" ) ; 6 IMAGE EXIST Image Number
    DB_Image\SetColorKey= AIsFunction( 1 , "?SetColorKey@@YAXHHH@Z" ) ; 7 SET IMAGE COLORKEY Red Value, Green Value, Blue Value
    DB_Image\PasteEx1= AIsFunction( 1 , "?PasteEx@@YAXHHHH@Z" ) ; 8 PASTE IMAGE Image Number, X, Y, Transparency
    DB_Image\RotateImageEx= AIsFunction( 1 , "?RotateImageEx@@YAXHH@Z" ) ; 9 ROTATE IMAGE Image Number, Angle
    DB_Image\LoadEx1= AIsFunction( 1 , "?LoadEx@@YAXPADHH@Z" ) ; 10 LOAD IMAGE Filename, Image Number, Texture Flag
    DB_Image\GrabImageEx1= AIsFunction( 1 , "?GrabImageEx@@YAXHHHHHH@Z" ) ; 11 GET IMAGE Image Number, Left, Top, Right, Bottom, Texture Flag
    DB_Image\SaveIconFromImage= AIsFunction( 1 , "?SaveIconFromImage@@YAXPADH@Z" ) ; 12 SAVE ICON FROM IMAGE Icon Filename, Image Number
    DB_Image\FreeIcon= AIsFunction( 1 , "?FreeIcon@@YAXK@Z" ) ; 13 DELETE ICON Icon Handle
    DB_Image\LoadIconA= AIsFunction( 1 , "?LoadIconA@@YAKPAD@Z" ) ; 14 LOAD ICON Icon Filename
    DB_Image\SaveEx1= AIsFunction( 1 , "?SaveEx@@YAXPADHH@Z" ) ; 15 SAVE IMAGE Filename, Image Number, Compression Mode
    DB_Image\GetWidth= AIsFunction( 1 , "?GetWidth@@YAHH@Z" ) ; 16 IMAGE WIDTH Image Number
    DB_Image\GetHeight= AIsFunction( 1 , "?GetHeight@@YAHH@Z" ) ; 17 IMAGE HEIGHT Image Number
    DB_Image\LoadEx2= AIsFunction( 1 , "?LoadEx@@YAXPADHHH@Z" ) ; 18 LOAD IMAGE Filename, Image Number, Texture Flag, Divide Texture Size
    CloseLibrary( 1 )
   Else
    SUCCESS.l = 0
   Endif
  ProcedureReturn SUCCESS
 EndProcedure

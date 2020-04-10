; DarkBasic Professional RC2PBIncludes Ver 1.1 File - COMMANDS INITIALIZING
; By Frederic Cordier - 07.02.13
;
Procedure.l CheckTextExtends()
  SUCCESS.l = 0
  If OpenLibrary( 1, "DBProTextExtends.dll")
    SUCCESS = 1
   Else
    If OpenLibrary( 1, "eXtends_Texts.dll" )
      SUCCESS = 1
     EndIf
   EndIf
  If SUCCESS = 1
    TextExtends\STR_Init= AIsFunction( 1 , "STR_Init" ) ; 1 STR Initialized 
    TextExtends\STR_ExtractFileName= AIsFunction( 1 , "STR_ExtractFileName" ) ; 2 STR Extract Filename TextString
    TextExtends\STR_ExtractDrawer= AIsFunction( 1 , "STR_ExtractDrawer" ) ; 3 STR Extract Drawer TextString
    TextExtends\STR_GetFileWithoutExtension= AIsFunction( 1 , "STR_GetFileWithoutExtension" ) ; 4 STR Remove File Extention FileName
    TextExtends\STR_GetFileExtension= AIsFunction( 1 , "STR_GetFileExtension" ) ; 5 STR Get File Extension FileName
    TextExtends\STR_GetCharPosition= AIsFunction( 1 , "STR_GetCharPosition" ) ; 6 STR Find Char TextString, Char, Counter
    TextExtends\STR_GetLeftFrom= AIsFunction( 1 , "STR_GetLeftFrom" ) ; 7 STR Get Left From TextString, Char
    TextExtends\STR_GetRightFrom= AIsFunction( 1 , "STR_GetRightFrom" ) ; 8 STR Get Right From TextString, Char
    TextExtends\STR_GetMiddle= AIsFunction( 1 , "STR_GetMiddle" ) ; 9 STR Get Middle TextString, StartPosition, Length
    CloseLibrary( 1 )
   Else
    SUCCESS.l = 0
   EndIf
  ProcedureReturn SUCCESS
 EndProcedure

; IDE Options = PureBasic 4.20 Beta 2 (Windows - x86)
; CursorPosition = 8
; Folding = -
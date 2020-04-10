; DarkBasic Professional RC2PBIncludes Ver 1.1 File - COMMANDS INITIALIZING
; By Frederic Cordier - 07.02.13
;
Procedure.l CheckText()
  SUCCESS.l = 1
  If OpenLibrary( 1, "DBProTextDebug.dll")
    DB_Text\Asc= AIsFunction( 1 , "?Asc@@YAHK@Z" ) ; 1 ASC String
    DB_Text\Bin= AIsFunction( 1 , "?Bin@@YAKKH@Z" ) ; 2 BIN$ Value
    DB_Text\Chr= AIsFunction( 1 , "?Chr@@YAKKH@Z" ) ; 3 CHR$ Value
    DB_Text\Hex= AIsFunction( 1 , "?Hex@@YAKKH@Z" ) ; 4 HEX$ Value
    DB_Text\Left= AIsFunction( 1 , "?Left@@YAKKKH@Z" ) ; 5 LEFT$ String,Value
    DB_Text\Len= AIsFunction( 1 , "?Len@@YAHK@Z" ) ; 6 LEN String
    DB_Text\Lower= AIsFunction( 1 , "?Lower@@YAKKK@Z" ) ; 7 LOWER$ String
    DB_Text\Mid= AIsFunction( 1 , "?Mid@@YAKKKH@Z" ) ; 8 MID$ String,Value
    DB_Text\Right= AIsFunction( 1 , "?Right@@YAKKKH@Z" ) ; 9 RIGHT$ String,Value
    DB_Text\Str= AIsFunction( 1 , "?Str@@YAKKM@Z" ) ; 10 STR$ Value
    DB_Text\Upper= AIsFunction( 1 , "?Upper@@YAKKK@Z" ) ; 11 UPPER$ String
    DB_Text\ValF= AIsFunction( 1 , "?ValF@@YAKK@Z" ) ; 12 VAL String
    DB_Text\PerformChecklistForFonts= AIsFunction( 1 , "?PerformChecklistForFonts@@YAXXZ" ) ; 14 PERFORM CHECKLIST FOR FONTS 
    DB_Text\BasicText= AIsFunction( 1 , "?BasicText@@YAXHHK@Z" ) ; 15 TEXT X,Y,String
    DB_Text\CenterText= AIsFunction( 1 , "?CenterText@@YAXHHK@Z" ) ; 16 CENTER TEXT X,Y,String
    DB_Text\SetTextToOpaque= AIsFunction( 1 , "?SetTextToOpaque@@YAXXZ" ) ; 17 SET TEXT OPAQUE 
    DB_Text\SetTextToTransparent= AIsFunction( 1 , "?SetTextToTransparent@@YAXXZ" ) ; 18 SET TEXT TRANSPARENT 
    DB_Text\SetBasicTextFont= AIsFunction( 1 , "?SetBasicTextFont@@YAXK@Z" ) ; 19 SET TEXT FONT Fontname
    DB_Text\SetBasicTextFont1= AIsFunction( 1 , "?SetBasicTextFont@@YAXKH@Z" ) ; 20 SET TEXT FONT Fontname, Charset Value
    DB_Text\SetTextSize= AIsFunction( 1 , "?SetTextSize@@YAXH@Z" ) ; 21 SET TEXT SIZE Point size
    DB_Text\SetTextToNormal= AIsFunction( 1 , "?SetTextToNormal@@YAXXZ" ) ; 22 SET TEXT TO NORMAL 
    DB_Text\SetTextToItalic= AIsFunction( 1 , "?SetTextToItalic@@YAXXZ" ) ; 23 SET TEXT TO ITALIC 
    DB_Text\SetTextToBold= AIsFunction( 1 , "?SetTextToBold@@YAXXZ" ) ; 24 SET TEXT TO BOLD 
    DB_Text\SetTextToBoldItalic= AIsFunction( 1 , "?SetTextToBoldItalic@@YAXXZ" ) ; 25 SET TEXT TO BOLDITALIC 
    DB_Text\TextBackgroundType= AIsFunction( 1 , "?TextBackgroundType@@YAHXZ" ) ; 26 TEXT BACKGROUND TYPE 
    DB_Text\TextFont= AIsFunction( 1 , "?TextFont@@YAKK@Z" ) ; 27 TEXT FONT$ 
    DB_Text\TextSize= AIsFunction( 1 , "?TextSize@@YAHXZ" ) ; 28 TEXT SIZE 
    DB_Text\TextStyle= AIsFunction( 1 , "?TextStyle@@YAHXZ" ) ; 29 TEXT STYLE 
    DB_Text\TextWidth= AIsFunction( 1 , "?TextWidth@@YAHK@Z" ) ; 30 TEXT WIDTH String
    DB_Text\TextHeight= AIsFunction( 1 , "?TextHeight@@YAHK@Z" ) ; 31 TEXT HEIGHT String
    DB_Text\Spaces= AIsFunction( 1 , "?Spaces@@YAKKH@Z" ) ; 32 SPACE$ Number of Spaces
    DB_Text\Str1= AIsFunction( 1 , "?Str@@YAKKH@Z" ) ; 33 STR$ Value
    DB_Text\StrDouble= AIsFunction( 1 , "?StrDouble@@YAKKN@Z" ) ; 34 STR$ Double Float
    DB_Text\Append= AIsFunction( 1 , "?Append@@YAXKK@Z" ) ; 35 APPEND$ string A, string B
    DB_Text\Reverse= AIsFunction( 1 , "?Reverse@@YAXK@Z" ) ; 36 REVERSE$ string
    DB_Text\FindFirstChar= AIsFunction( 1 , "?FindFirstChar@@YAHKK@Z" ) ; 37 FIND FIRST CHAR$ source, char
    DB_Text\FindLastChar= AIsFunction( 1 , "?FindLastChar@@YAHKK@Z" ) ; 38 FIND LAST CHAR$ source, char
    DB_Text\FindSubString= AIsFunction( 1 , "?FindSubString@@YAHKK@Z" ) ; 39 FIND SUB STRING$ source, string
    DB_Text\CompareCase= AIsFunction( 1 , "?CompareCase@@YAHKK@Z" ) ; 40 COMPARE CASE$ string A, string B
    DB_Text\FirstToken= AIsFunction( 1 , "?FirstToken@@YAKKKK@Z" ) ; 41 FIRST TOKEN$ source, delim
    DB_Text\NextToken= AIsFunction( 1 , "?NextToken@@YAKKK@Z" ) ; 42 NEXT TOKEN$ delim
    DB_Text\StrEx= AIsFunction( 1 , "?StrEx@@YAKKMH@Z" ) ; 43 STR$ Value, Decimal Places
    DB_Text\StrDoubleInt= AIsFunction( 1 , "?StrDoubleInt@@YAKK_J@Z" ) ; 44 STR$ Double Integer
    CloseLibrary( 1 )
   Else
    SUCCESS.l = 0
   Endif
  ProcedureReturn SUCCESS
 EndProcedure

; DarkBasic Professional RC2PBIncludes Ver 1.1 File - COMMANDS INITIALIZING
; By Frederic Cordier - 07.02.13
;
Procedure.l CheckMusicExtends()
  SUCCESS.l = 0
  If OpenLibrary( 1, "DBProMusicExtends.dll")
    SUCCESS = 1
   Else
    If OpenLibrary( 1, "eXtends_Musics.dll" )
      SUCCESS = 1
     EndIf
   EndIf
  If SUCCESS = 1
    MusicExtends\MSC_Init= AIsFunction( 1 , "MSC_Init" ) ; 1 MSC Initialized 
    MusicExtends\MSC_Clear= AIsFunction( 1 , "MSC_Clear" ) ; 2 MSC Clear 
    MusicExtends\MSC_Count= AIsFunction( 1 , "MSC_Count" ) ; 3 MSC Get Count 
    MusicExtends\MSC_Delete= AIsFunction( 1 , "MSC_Delete" ) ; 4 MSC Delete Music Music  Number
    MusicExtends\MSC_DynamicLoad= AIsFunction( 1 , "MSC_DynamicLoad" ) ; 5 MSC Load Music Filename$
    CloseLibrary( 1 )
   Else
    SUCCESS.l = 0
   EndIf
  ProcedureReturn SUCCESS
 EndProcedure

; IDE Options = PureBasic 4.20 Beta 2 (Windows - x86)
; CursorPosition = 8
; Folding = -
; DarkBasic Professional RC2PBIncludes Ver 1.1 File - COMMANDS INITIALIZING
; By Frederic Cordier - 07.02.13
;
Procedure.l CheckExtends()
  SUCCESS.l = 1
  If OpenLibrary( 1, "DBProExtends.dll")
    ZExtends\ExtInitialized= AIsFunction( 1 , "ExtInitialized" ) ; 1 EXT Initialized 
    CloseLibrary( 1 )
   Else
    SUCCESS.l = 0
   EndIf
  ProcedureReturn SUCCESS
 EndProcedure

; IDE Options = PureBasic 4.20 Beta 2 (Windows - x86)
; CursorPosition = 5
; Folding = -
; DarkBasic Professional RC2PBIncludes Ver 1.1 File - COMMANDS INITIALIZING
; By Frederic Cordier - 07.02.13
;
Procedure.l CheckVector4Extends()
  SUCCESS.l = 0
  If OpenLibrary( 1, "DBProVector4Extends.dll")
    SUCCESS = 1
   Else
    If OpenLibrary( 1, "eXtends_Vectors4_3D.dll" )
      SUCCESS = 1
     EndIf
   EndIf
  If SUCCESS = 1
    Vector4Extends\Vector4_Init= AIsFunction( 1 , "Vector4_Init" ) ; 1 V3D Initialized V4 
    Vector4Extends\V3D4_Delete= AIsFunction( 1 , "V3D4_Delete" ) ; 3 V3D Delete Vector4 Vector4 Number
    Vector4Extends\V3D4_DynamicMakeVector4= AIsFunction( 1 , "V3D4_DynamicMakeVector4" ) ; 4 V3D Make Vector4 
    CloseLibrary( 1 )
   Else
    SUCCESS.l = 0
   EndIf
  ProcedureReturn SUCCESS
 EndProcedure

; IDE Options = PureBasic 4.20 Beta 2 (Windows - x86)
; CursorPosition = 4
; Folding = -
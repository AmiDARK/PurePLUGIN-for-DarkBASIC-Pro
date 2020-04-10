; DarkBasic Professional RC2PBIncludes Ver 1.1 File - COMMANDS INITIALIZING
; By Frederic Cordier - 07.02.13
;
Procedure.l CheckVector3Extends()
  SUCCESS.l = 0
  If OpenLibrary( 1, "DBProVector3Extends.dll")
    SUCCESS = 1
   Else
    If OpenLibrary( 1, "eXtends_Vectors3_3D.dll" )
      SUCCESS = 1
     EndIf
   EndIf
  If SUCCESS = 1
    Vector3Extends\Vector3_Init= AIsFunction( 1 , "Vector3_Init" ) ; 1 V3D Initialized V3 
    Vector3Extends\V3D3_Delete= AIsFunction( 1 , "V3D3_Delete" ) ; 3 V3D Delete Vector3 Vector3 Number
    Vector3Extends\V3D3_DynamicMakeVector3= AIsFunction( 1 , "V3D3_DynamicMakeVector3" ) ; 4 V3D Make Vector3 
    CloseLibrary( 1 )
   Else
    SUCCESS.l = 0
   EndIf
  ProcedureReturn SUCCESS
 EndProcedure

; IDE Options = PureBasic 4.20 Beta 2 (Windows - x86)
; CursorPosition = 22
; Folding = -
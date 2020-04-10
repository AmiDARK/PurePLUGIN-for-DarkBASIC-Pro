; DarkBasic Professional RC2PBIncludes Ver 1.1 File - COMMANDS INITIALIZING
; By Frederic Cordier - 07.02.13
;
Procedure.l CheckMesh3DExtends()
  SUCCESS.l = 0
  If OpenLibrary( 1, "DBProMesh3DExtends.dll")
    SUCCESS = 1
   Else
    If OpenLibrary( 1, "eXtends_Meshes3D.dll" )
      SUCCESS = 1
     EndIf
   EndIf
  If SUCCESS = 1
    Mesh3DExtends\Mesh3D_Init= AIsFunction( 1 , "Mesh3D_Init" ) ; 1 M3D Initialized 
    Mesh3DExtends\M3D_DynamicLoad= AIsFunction( 1 , "M3D_DynamicLoad" ) ; 2 M3D Load Mesh FileName$
    Mesh3DExtends\M3D_Delete= AIsFunction( 1 , "M3D_Delete" ) ; 3 M3D Delete Mesh Mesh Number
    Mesh3DExtends\M3D_DynamicMakeFromObject= AIsFunction( 1 , "M3D_DynamicMakeFromObject" ) ; 4 M3D Make Mesh From Object Source Object
    Mesh3DExtends\M3D_DynamicMakeFromMemblock= AIsFunction( 1 , "M3D_DynamicMakeFromMemblock" ) ; 5 M3D Make Mesh From Memblock Source Memblock
    CloseLibrary( 1 )
   Else
    SUCCESS.l = 0
   EndIf
  ProcedureReturn SUCCESS
 EndProcedure

; IDE Options = PureBasic 4.20 Beta 2 (Windows - x86)
; CursorPosition = 8
; Folding = -
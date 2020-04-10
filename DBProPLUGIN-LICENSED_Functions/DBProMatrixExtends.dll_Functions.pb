; DarkBasic Professional RC2PBIncludes Ver 1.1 File - COMMANDS INITIALIZING
; By Frederic Cordier - 07.02.13
;
Procedure.l CheckMatrixExtends()
  SUCCESS.l = 0
  If OpenLibrary( 1, "DBProMatrixExtends.dll")
    SUCCESS = 1
   Else
    If OpenLibrary( 1, "eXtends_Matrixes3D.dll" )
      SUCCESS = 1
     EndIf
   EndIf
  If SUCCESS = 1
    MatrixExtends\MTX_Init= AIsFunction( 1 , "MTX_Init" ) ; 1 MTX Initialized 
    MatrixExtends\MTX_Clear= AIsFunction( 1 , "MTX_Clear" ) ; 2 MTX Clear All Matrix 
    MatrixExtends\MTX_Count= AIsFunction( 1 , "MTX_Count" ) ; 3 MTX Exist Matrix Count 
    MatrixExtends\MTX_Delete= AIsFunction( 1 , "MTX_Delete" ) ; 4 MTX Delete Matrix Camera Number
    MatrixExtends\MTX_DynamicMake= AIsFunction( 1 , "MTX_DynamicMake" ) ; 5 MTX Make Matrix Width, Height, XTiles, ZTiles
    CloseLibrary( 1 )
   Else
    SUCCESS.l = 0
   EndIf
  ProcedureReturn SUCCESS
 EndProcedure

; IDE Options = PureBasic 4.20 Beta 2 (Windows - x86)
; CursorPosition = 8
; Folding = -
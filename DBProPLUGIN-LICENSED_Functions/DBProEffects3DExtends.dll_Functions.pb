; DarkBasic Professional RC2PBIncludes Ver 1.1 File - COMMANDS INITIALIZING
; By Frederic Cordier - 07.02.13
;
Procedure.l CheckEffects3DExtends()
  SUCCESS.l = 0
  If OpenLibrary( 1, "DBProEffects3DExtends.dll")
    SUCCESS = 1
   Else
    If OpenLibrary( 1, "eXtends_Shaders3D.dll" )
      SUCCESS = 1
     EndIf
   EndIf
  If SUCCESS = 1
    Effects3DExtends\Effects_Init= AIsFunction( 1 , "Effects_Init" ) ; 1 E3D Initialized 
    Effects3DExtends\E3D_DynamicLoadEx= AIsFunction( 1 , "E3D_DynamicLoadEx" ) ; 2 E3D Load Effect FileName$, TextureFlag
    Effects3DExtends\E3D_Delete= AIsFunction( 1 , "E3D_Delete" ) ; 3 E3D Delete Effect Effect Number
    Effects3DExtends\E3D_Clear= AIsFunction( 1 , "E3D_Clear" ) ; 4 E3D Clear All Effects 
    Effects3DExtends\E3D_Count= AIsFunction( 1 , "E3D_Count" ) ; 5 E3D Get Effect Count 
    CloseLibrary( 1 )
   Else
    SUCCESS.l = 0
   EndIf
  ProcedureReturn SUCCESS
 EndProcedure

; IDE Options = PureBasic 4.20 Beta 2 (Windows - x86)
; CursorPosition = 8
; Folding = -
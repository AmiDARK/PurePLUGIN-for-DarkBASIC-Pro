; DarkBasic Professional RC2PBIncludes Ver 1.1 File - COMMANDS INITIALIZING
; By Frederic Cordier - 07.02.13
;
Procedure.l CheckSoundExtends()
  SUCCESS.l = 0
  If OpenLibrary( 1, "DBProSoundExtends.dll")
    SUCCESS = 1
   Else
    If OpenLibrary( 1, "eXtends_Sounds.dll" )
      SUCCESS = 1
     EndIf
   EndIf
  If SUCCESS = 1
    SoundExtends\SND_Init= AIsFunction( 1 , "SND_Init" ) ; 1 SND Initialized 
    SoundExtends\SND_Clear= AIsFunction( 1 , "SND_Clear" ) ; 2 SND Clear 
    SoundExtends\SND_Count= AIsFunction( 1 , "SND_Count" ) ; 3 SND Get Count 
    SoundExtends\SND_Delete= AIsFunction( 1 , "SND_Delete" ) ; 4 SND Delete Sound Sound Number
    SoundExtends\SND_DynamicLoad= AIsFunction( 1 , "SND_DynamicLoad" ) ; 5 SND Load Sound Filename$
    SoundExtends\SND_MakeSoundFromMemblock= AIsFunction( 1 , "SND_MakeSoundFromMemblock" ) ; 6 SND Make Sound From Memblock Memblock Number
    SoundExtends\SND_DynamicLoad3D= AIsFunction( 1 , "SND_DynamicLoad3D" ) ; 7 SND Load Sound3D Filename$
    CloseLibrary( 1 )
   Else
    SUCCESS.l = 0
   EndIf
  ProcedureReturn SUCCESS
 EndProcedure

; IDE Options = PureBasic 4.20 Beta 2 (Windows - x86)
; CursorPosition = 8
; Folding = -
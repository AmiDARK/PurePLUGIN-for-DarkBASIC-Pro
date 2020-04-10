; DarkBasic Professional RC2PBIncludes Ver 1.1 File - COMMANDS INITIALIZING
; By Frederic Cordier - 07.02.13
;
Procedure.l CheckParticles3DExtends()
  SUCCESS.l = 0
  If OpenLibrary( 1, "DBProParticles3DExtends.dll")
    SUCCESS = 1
   Else
    If OpenLibrary( 1, "eXtends_Particles3D.dll" )
      SUCCESS = 1
     EndIf
   EndIf
  If SUCCESS = 1
    Particles3DExtends\Particles3D_Init= AIsFunction( 1 , "Particles3D_Init" ) ; 1 P3D Initialized 
    Particles3DExtends\P3D_AddParticles= AIsFunction( 1 , "P3D_AddParticles" ) ; 2 P3D Add Particle Count, Texture, ParticleSize
    Particles3DExtends\P3D_PositionParticles= AIsFunction( 1 , "P3D_PositionParticles" ) ; 3 P3D Position Emitter ParticleID, XPos, YPos, ZPos
    Particles3DExtends\P3D_SetEmitterRange= AIsFunction( 1 , "P3D_SetEmitterRange" ) ; 4 P3D Set Particle Area ParticleID, XSize, YSize, ZSize
    Particles3DExtends\P3D_SetParticlePath= AIsFunction( 1 , "P3D_SetParticlePath" ) ; 5 P3D Set Primitive Mode ParticleID, XAdd, YAdd, ZAdd
    Particles3DExtends\P3D_SetAsFlames= AIsFunction( 1 , "P3D_SetAsFlames" ) ; 6 P3D Set As Flames Particle ParticleID
    Particles3DExtends\P3D_SetAsSmoke= AIsFunction( 1 , "P3D_SetAsSmoke" ) ; 7 P3D Set As Smoke Particle ParticleID
    Particles3DExtends\P3D_SetAsRain= AIsFunction( 1 , "P3D_SetAsRain" ) ; 8 P3D Set As Rain Particle ParticleID
    Particles3DExtends\P3D_SetAsSnow= AIsFunction( 1 , "P3D_SetAsSnow" ) ; 9 P3D Set As Snow Particle ParticleID
    Particles3DExtends\P3D_SetAsPrimitive= AIsFunction( 1 , "P3D_SetAsPrimitive" ) ; 10 P3D Set As Primitive Particle ParticleID
    Particles3DExtends\P3D_UpdateParticles= AIsFunction( 1 , "P3D_UpdateParticles" ) ; 11 P3D Update Particles 
    Particles3DExtends\P3D_GetParticleExist= AIsFunction( 1 , "P3D_GetParticleExist" ) ; 12 P3D Get Particle Exist ParticleID
    Particles3DExtends\P3D_Clear= AIsFunction( 1 , "P3D_Clear" ) ; 13 P3D Clear Particles 
    Particles3DExtends\P3D_DeleteParticle= AIsFunction( 1 , "P3D_DeleteParticle" ) ; 14 P3D Delete Particle ParticleID
    Particles3DExtends\P3D_GetParticleCount= AIsFunction( 1 , "P3D_GetParticleCount" ) ; 15 P3D Get Particle Count ParticleID
    Particles3DExtends\P3D_GetParticleXRange= AIsFunction( 1 , "P3D_GetParticleXRange" ) ; 16 P3D Get Particle XRange ParticleID
    Particles3DExtends\P3D_GetParticleYRange= AIsFunction( 1 , "P3D_GetParticleYRange" ) ; 17 P3D Get Particle YRange ParticleID
    Particles3DExtends\P3D_GetParticleZRange= AIsFunction( 1 , "P3D_GetParticleZRange" ) ; 18 P3D Get Particle ZRange ParticleID
    Particles3DExtends\P3D_GetParticleXPosition= AIsFunction( 1 , "P3D_GetParticleXPosition" ) ; 19 P3D Get Particle XPos ParticleID
    Particles3DExtends\P3D_GetParticleYPosition= AIsFunction( 1 , "P3D_GetParticleYPosition" ) ; 20 P3D Get Particle YPos ParticleID
    Particles3DExtends\P3D_GetParticleZPosition= AIsFunction( 1 , "P3D_GetParticleZPosition" ) ; 21 P3D Get Particle ZPos ParticleID
    Particles3DExtends\P3D_GetParticleType= AIsFunction( 1 , "P3D_GetParticleType" ) ; 22 P3D Get Particle Type ParticleID
    Particles3DExtends\P3D_GetParticleSize= AIsFunction( 1 , "P3D_GetParticleSize" ) ; 23 P3D Get Particle Size ParticleID
    Particles3DExtends\P3D_GetParticleXPath= AIsFunction( 1 , "P3D_GetParticleXPath" ) ; 24 P3D Get Particle XSpeed ParticleID
    Particles3DExtends\P3D_GetParticleYPath= AIsFunction( 1 , "P3D_GetParticleYPath" ) ; 25 P3D Get Particle YSpeed ParticleID
    Particles3DExtends\P3D_GetParticleZPath= AIsFunction( 1 , "P3D_GetParticleZPath" ) ; 26 P3D Get Particle ZSpeed ParticleID
    Particles3DExtends\P3D_HideParticle= AIsFunction( 1 , "P3D_HideParticle" ) ; 27 P3D Hide Particle ParticleID
    Particles3DExtends\P3D_ShowParticle= AIsFunction( 1 , "P3D_ShowParticle" ) ; 28 P3D Show Particle ParticleID
    Particles3DExtends\P3D_SetAsSparkle= AIsFunction( 1 , "P3D_SetAsSparkle" ) ; 29 P3D Set As Sparkle Particle ParticleID
    Particles3DExtends\P3D_SetParticleImage= AIsFunction( 1 , "P3D_SetParticleImage" ) ; 30 P3D Set Particle Texture ParticleID, ImageID
    CloseLibrary( 1 )
   Else
    SUCCESS.l = 0
   EndIf
  ProcedureReturn SUCCESS
 EndProcedure

; IDE Options = PureBasic 4.20 Beta 2 (Windows - x86)
; CursorPosition = 8
; Folding = -
; DarkBasic Professional RC2PBIncludes Ver 1.1 File - COMMANDS INITIALIZING
; By Frederic Cordier - 07.02.13
;
Procedure.l CheckParticles()
  SUCCESS.l = 1
  If OpenLibrary( 1, "DBProParticlesDebug.dll")
    DB_Particles\CreateSnowEffect= AIsFunction( 1 , "?CreateSnowEffect@@YAXHHHMMMMMM@Z" ) ; 1 MAKE SNOW PARTICLES Particle Number, Image Number, Frequency, X, Y, Z, Width, Height, Depth
    DB_Particles\CreateEx= AIsFunction( 1 , "?CreateEx@@YAXHHHM@Z" ) ; 2 MAKE PARTICLES Particle Number, Image Number, Frequency, Radius
    DB_Particles\CreateFireEffect= AIsFunction( 1 , "?CreateFireEffect@@YAXHHHMMMMMM@Z" ) ; 3 MAKE FIRE PARTICLES Particle Number, Image Number, Frequency, X, Y, Z, Width, Height, Depth
    DB_Particles\DeleteEx= AIsFunction( 1 , "?DeleteEx@@YAXH@Z" ) ; 4 DELETE PARTICLES Particle Number
    DB_Particles\GetExist= AIsFunction( 1 , "?GetExist@@YAHH@Z" ) ; 5 PARTICLES EXIST Particle Number
    DB_Particles\GetPositionXEx= AIsFunction( 1 , "?GetPositionXEx@@YAKH@Z" ) ; 6 PARTICLES POSITION X Particle Number
    DB_Particles\GetPositionYEx= AIsFunction( 1 , "?GetPositionYEx@@YAKH@Z" ) ; 7 PARTICLES POSITION Y Particle Number
    DB_Particles\GetPositionZEx= AIsFunction( 1 , "?GetPositionZEx@@YAKH@Z" ) ; 8 PARTICLES POSITION Z Particle Number
    DB_Particles\Hide= AIsFunction( 1 , "?Hide@@YAXH@Z" ) ; 9 HIDE PARTICLES Particle Number
    DB_Particles\SetPosition= AIsFunction( 1 , "?SetPosition@@YAXHMMM@Z" ) ; 10 POSITION PARTICLES Particle Number, X, Y, Z
    DB_Particles\SetColorEx= AIsFunction( 1 , "?SetColorEx@@YAXHHHH@Z" ) ; 11 COLOR PARTICLES Particle Number, Red, Green, Blue
    DB_Particles\SetNumberOfEmmissions= AIsFunction( 1 , "?SetNumberOfEmmissions@@YAXHH@Z" ) ; 12 SET PARTICLE EMISSIONS Particle Number, Frequency
    DB_Particles\SetSecondsPerFrame= AIsFunction( 1 , "?SetSecondsPerFrame@@YAXHM@Z" ) ; 13 SET PARTICLE SPEED Particle Number, Seconds Per Frame
    DB_Particles\SetVelocity= AIsFunction( 1 , "?SetVelocity@@YAXHM@Z" ) ; 15 SET PARTICLE VELOCITY Particle Number, Velocity Value
    DB_Particles\Show= AIsFunction( 1 , "?Show@@YAXH@Z" ) ; 16 SHOW PARTICLES Particle Number
    DB_Particles\SetRotation= AIsFunction( 1 , "?SetRotation@@YAXHMMM@Z" ) ; 17 ROTATE PARTICLES Particle Number, X, Y, Z
    DB_Particles\SetGravity= AIsFunction( 1 , "?SetGravity@@YAXHM@Z" ) ; 18 SET PARTICLE GRAVITY Particle Number, Gravity Value
    DB_Particles\SetChaos= AIsFunction( 1 , "?SetChaos@@YAXHM@Z" ) ; 19 SET PARTICLE CHAOS Particle Number, Chaos Value
    DB_Particles\SetLife= AIsFunction( 1 , "?SetLife@@YAXHH@Z" ) ; 20 SET PARTICLE LIFE Particle Number, Life Percentage
    DB_Particles\SetFloor= AIsFunction( 1 , "?SetFloor@@YAXHH@Z" ) ; 21 SET PARTICLE FLOOR Particle Number, Floor Flag
    DB_Particles\SetEmitPosition= AIsFunction( 1 , "?SetEmitPosition@@YAXHMMM@Z" ) ; 22 POSITION PARTICLE EMISSIONS Particle Number, X, Y, Z
    DB_Particles\SetPositionVector3= AIsFunction( 1 , "?SetPositionVector3@@YAXHH@Z" ) ; 23 POSITION PARTICLES Particle Number, Vector
    DB_Particles\SetRotationVector3= AIsFunction( 1 , "?SetRotationVector3@@YAXHH@Z" ) ; 24 ROTATE PARTICLES Particle Number, Vector
    DB_Particles\GetPositionVector3= AIsFunction( 1 , "?GetPositionVector3@@YAXHH@Z" ) ; 25 SET VECTOR3 TO PARTICLES POSITION Vector, Particle Number
    DB_Particles\GetRotationVector3= AIsFunction( 1 , "?GetRotationVector3@@YAXHH@Z" ) ; 26 SET VECTOR3 TO PARTICLES ROTATION Vector, Particle Number
    DB_Particles\GhostOn= AIsFunction( 1 , "?GhostOn@@YAXHH@Z" ) ; 27 GHOST PARTICLES ON Particle Number, Ghost Mode
    DB_Particles\GhostOff= AIsFunction( 1 , "?GhostOff@@YAXH@Z" ) ; 28 GHOST PARTICLES OFF Particle Number
    DB_Particles\Ghost= AIsFunction( 1 , "?Ghost@@YAXHHM@Z" ) ; 29 GHOST PARTICLES ON Particle Number, Ghost Mode, Percentage
    CloseLibrary( 1 )
   Else
    SUCCESS.l = 0
   Endif
  ProcedureReturn SUCCESS
 EndProcedure

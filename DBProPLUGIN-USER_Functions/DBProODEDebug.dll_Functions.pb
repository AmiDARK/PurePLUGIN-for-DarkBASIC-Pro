; DarkBasic Professional RC2PBIncludes Ver 1.0 File - COMMANDS INITIALIZING
; By Frederic Cordier - 07.02.13
;
Procedure.l CheckODE()
  SUCCESS.l = 1
  If OpenLibrary( 1, "DBProODEDebug.dll")
    DB_ODE\ODE_Start= AIsFunction( 1 , "?ODE_Start@@YAXXZ" ) ; 1 ODE START 
    DB_ODE\ODE_Update= AIsFunction( 1 , "?ODE_Update@@YAXXZ" ) ; 2 ODE UPDATE 
    DB_ODE\ODE_SetWorldGravity= AIsFunction( 1 , "?ODE_SetWorldGravity@@YAXMMM@Z" ) ; 3 ODE SET WORLD GRAVITY 
    DB_ODE\ODE_SetWorldERP= AIsFunction( 1 , "?ODE_SetWorldERP@@YAXM@Z" ) ; 4 ODE SET WORLD ERP 
    DB_ODE\ODE_SetWorldCFM= AIsFunction( 1 , "?ODE_SetWorldCFM@@YAXM@Z" ) ; 5 ODE SET WORLD CFM 
    DB_ODE\ODE_SetWorldStep= AIsFunction( 1 , "?ODE_SetWorldStep@@YAXM@Z" ) ; 6 ODE SET WORLD STEP 
    DB_ODE\ODE_SetWorldQuickStepNumIterations= AIsFunction( 1 , "?ODE_SetWorldQuickStepNumIterations@@YAXH@Z" ) ; 7 ODE SET WORLD QUICK STEP NUM ITERATIONS 
    DB_ODE\ODE_SetStepMode= AIsFunction( 1 , "?ODE_SetStepMode@@YAXH@Z" ) ; 8 ODE SET STEP MODE 
    DB_ODE\ODE_CreateStaticBox= AIsFunction( 1 , "?ODE_CreateStaticBox@@YAXH@Z" ) ; 10 ODE CREATE STATIC BOX 
    DB_ODE\ODE_CreateStaticTriangleMesh= AIsFunction( 1 , "?ODE_CreateStaticTriangleMesh@@YAXH@Z" ) ; 11 ODE CREATE STATIC TRIANGLE MESH 
    DB_ODE\ODE_CreateDynamicSphere= AIsFunction( 1 , "?ODE_CreateDynamicSphere@@YAXH@Z" ) ; 12 ODE CREATE DYNAMIC SPHERE 
    DB_ODE\ODE_CreateDynamicBox= AIsFunction( 1 , "?ODE_CreateDynamicBox@@YAXH@Z" ) ; 13 ODE CREATE DYNAMIC BOX 
    DB_ODE\ODE_CreateDynamicBox1= AIsFunction( 1 , "?ODE_CreateDynamicBox@@YAXHMMM@Z" ) ; 14 ODE CREATE DYNAMIC BOX 
    DB_ODE\ODE_CreateDynamicTriangleMesh= AIsFunction( 1 , "?ODE_CreateDynamicTriangleMesh@@YAXH@Z" ) ; 15 ODE CREATE DYNAMIC TRIANGLE MESH 
    DB_ODE\ODE_DestroyObject= AIsFunction( 1 , "?ODE_DestroyObject@@YAXH@Z" ) ; 16 ODE DESTROY OBJECT 
    DB_ODE\ODE_SetLinearVelocity= AIsFunction( 1 , "?ODE_SetLinearVelocity@@YAXHMMM@Z" ) ; 17 ODE SET LINEAR VELOCITY 
    DB_ODE\ODE_SetAngularVelocity= AIsFunction( 1 , "?ODE_SetAngularVelocity@@YAXHMMM@Z" ) ; 18 ODE SET ANGULAR VELOCITY 
    DB_ODE\ODE_SetBodyRotation= AIsFunction( 1 , "?ODE_SetBodyRotation@@YAXHMMM@Z" ) ; 19 ODE SET BODY ROTATION 
    DB_ODE\ODE_SetBodyMass= AIsFunction( 1 , "?ODE_SetBodyMass@@YAXHM@Z" ) ; 20 ODE SET BODY MASS 
    DB_ODE\ODE_SetSurfaceMode= AIsFunction( 1 , "?ODE_SetSurfaceMode@@YAXHHH@Z" ) ; 21 ODE SETSURFACE MODE 
    DB_ODE\ODE_SetSurfaceModeContactMu2= AIsFunction( 1 , "?ODE_SetSurfaceModeContactMu2@@YAXHH@Z" ) ; 22 ODE SETSURFACE MODE CONTACT MU2 
    DB_ODE\ODE_SetSurfaceModeContactMu21= AIsFunction( 1 , "?ODE_SetSurfaceModeContactMu2@@YAXHH@Z" ) ; 23 ODE SETSURFACE MODE CONTACT BOUNCE 
    DB_ODE\ODE_SetSurfaceModeContactMu22= AIsFunction( 1 , "?ODE_SetSurfaceModeContactMu2@@YAXHH@Z" ) ; 24 ODE SETSURFACE MODE CONTACT SOFT ERP 
    DB_ODE\ODE_SetSurfaceModeContactSoftCFM= AIsFunction( 1 , "?ODE_SetSurfaceModeContactSoftCFM@@YAXHH@Z" ) ; 25 ODE SETSURFACE MODE CONTACT SOFT CFM 
    DB_ODE\ODE_SetSurfaceModeContactMotion1= AIsFunction( 1 , "?ODE_SetSurfaceModeContactMotion1@@YAXHH@Z" ) ; 26 ODE SETSURFACE MODE CONTACT MOTION1 
    DB_ODE\ODE_SetSurfaceModeContactMotion2= AIsFunction( 1 , "?ODE_SetSurfaceModeContactMotion2@@YAXHH@Z" ) ; 27 ODE SETSURFACE MODE CONTACT MOTION2 
    DB_ODE\ODE_SetSurfaceModeContactSlip1= AIsFunction( 1 , "?ODE_SetSurfaceModeContactSlip1@@YAXHH@Z" ) ; 28 ODE SETSURFACE MODE CONTACT SLIP1 
    DB_ODE\ODE_SetSurfaceModeContactSlip2= AIsFunction( 1 , "?ODE_SetSurfaceModeContactSlip2@@YAXHH@Z" ) ; 29 ODE SETSURFACE MODE CONTACT SLIP2 
    DB_ODE\ODE_SetSurfaceModeContactApprox0= AIsFunction( 1 , "?ODE_SetSurfaceModeContactApprox0@@YAXHH@Z" ) ; 30 ODE SETSURFACE MODE CONTACT APPROX0 
    DB_ODE\ODE_SetSurfaceModeContactApprox11= AIsFunction( 1 , "?ODE_SetSurfaceModeContactApprox11@@YAXHH@Z" ) ; 31 ODE SETSURFACE MODE CONTACT APPROX11 
    DB_ODE\ODE_SetSurfaceModeContactApprox12= AIsFunction( 1 , "?ODE_SetSurfaceModeContactApprox12@@YAXHH@Z" ) ; 32 ODE SETSURFACE MODE CONTACT APPROX12 
    DB_ODE\ODE_SetSurfaceModeContactApprox1= AIsFunction( 1 , "?ODE_SetSurfaceModeContactApprox1@@YAXHH@Z" ) ; 33 ODE SETSURFACE MODE CONTACT APPROX1 
    DB_ODE\ODE_SetContact= AIsFunction( 1 , "?ODE_SetContact@@YAXHHM@Z" ) ; 34 ODE SET CONTACT 
    DB_ODE\ODE_SetContactMu2= AIsFunction( 1 , "?ODE_SetContactMu2@@YAXHM@Z" ) ; 35 ODE SET CONTACT MU2 
    DB_ODE\ODE_SetContactFDir1= AIsFunction( 1 , "?ODE_SetContactFDir1@@YAXHM@Z" ) ; 36 ODE SET CONTACT FDIR1 
    DB_ODE\ODE_SetContactBounce= AIsFunction( 1 , "?ODE_SetContactBounce@@YAXHM@Z" ) ; 37 ODE SET CONTACT BOUNCE 
    DB_ODE\ODE_SetContactVelocity= AIsFunction( 1 , "?ODE_SetContactVelocity@@YAXHM@Z" ) ; 38 ODE SET CONTACT VELOCITY 
    DB_ODE\ODE_SetContactSoftERP= AIsFunction( 1 , "?ODE_SetContactSoftERP@@YAXHM@Z" ) ; 39 ODE SET CONTACT SOFT ERP 
    DB_ODE\ODE_SetContactSoftCFM= AIsFunction( 1 , "?ODE_SetContactSoftCFM@@YAXHM@Z" ) ; 40 ODE SET CONTACT SOFT CFM 
    DB_ODE\ODE_SetContactMotion1= AIsFunction( 1 , "?ODE_SetContactMotion1@@YAXHM@Z" ) ; 41 ODE SET CONTACT MOTION1 
    DB_ODE\ODE_SetContactMotion2= AIsFunction( 1 , "?ODE_SetContactMotion2@@YAXHM@Z" ) ; 42 ODE SET CONTACT MOTION2 
    DB_ODE\ODE_SetContactSlip1= AIsFunction( 1 , "?ODE_SetContactSlip1@@YAXHM@Z" ) ; 43 ODE SET CONTACT SLIP1 
    DB_ODE\ODE_SetContactSlip2= AIsFunction( 1 , "?ODE_SetContactSlip2@@YAXHM@Z" ) ; 44 ODE SET CONTACT SLIP2 
    DB_ODE\ODE_CreateStaticUniverse= AIsFunction( 1 , "?ODE_CreateStaticUniverse@@YAXXZ" ) ; 45 ODE CREATE STATIC UNIVERSE 
    DB_ODE\ODE_CollisionMessageExists= AIsFunction( 1 , "?ODE_CollisionMessageExists@@YAHXZ" ) ; 46 ODE COLLISION MESSAGE EXISTS 
    DB_ODE\ODE_CollisionGetMessage= AIsFunction( 1 , "?ODE_CollisionGetMessage@@YAXXZ" ) ; 47 ODE COLLISION GET MESSAGE 
    DB_ODE\ODE_GetObjectA= AIsFunction( 1 , "?ODE_GetObjectA@@YAHXZ" ) ; 48 ODE GET OBJECT A 
    DB_ODE\ODE_GetObjectB= AIsFunction( 1 , "?ODE_GetObjectB@@YAHXZ" ) ; 49 ODE GET OBJECT B 
    DB_ODE\ODE_GetObjectAVelocityX= AIsFunction( 1 , "?ODE_GetObjectAVelocityX@@YAKXZ" ) ; 50 ODE GET OBJECT A VELOCITY X 
    DB_ODE\ODE_GetObjectAVelocityY= AIsFunction( 1 , "?ODE_GetObjectAVelocityY@@YAKXZ" ) ; 51 ODE GET OBJECT A VELOCITY Y 
    DB_ODE\ODE_GetObjectAVelocityZ= AIsFunction( 1 , "?ODE_GetObjectAVelocityZ@@YAKXZ" ) ; 52 ODE GET OBJECT A VELOCITY Z 
    DB_ODE\ODE_GetObjectBVelocityX= AIsFunction( 1 , "?ODE_GetObjectBVelocityX@@YAKXZ" ) ; 53 ODE GET OBJECT B VELOCITY X 
    DB_ODE\ODE_GetObjectBVelocityY= AIsFunction( 1 , "?ODE_GetObjectBVelocityY@@YAKXZ" ) ; 54 ODE GET OBJECT B VELOCITY Y 
    DB_ODE\ODE_GetObjectBVelocityZ= AIsFunction( 1 , "?ODE_GetObjectBVelocityZ@@YAKXZ" ) ; 55 ODE GET OBJECT B VELOCITY Z 
    DB_ODE\ODE_GetBodyLinearVelocityX= AIsFunction( 1 , "?ODE_GetBodyLinearVelocityX@@YAKH@Z" ) ; 56 ODE GET BODY LINEAR VELOCITY X 
    DB_ODE\ODE_GetBodyLinearVelocityY= AIsFunction( 1 , "?ODE_GetBodyLinearVelocityY@@YAKH@Z" ) ; 57 ODE GET BODY LINEAR VELOCITY Y 
    DB_ODE\ODE_GetBodyLinearVelocityZ= AIsFunction( 1 , "?ODE_GetBodyLinearVelocityZ@@YAKH@Z" ) ; 58 ODE GET BODY LINEAR VELOCITY Z 
    DB_ODE\ODE_CreateDynamicCylinder= AIsFunction( 1 , "?ODE_CreateDynamicCylinder@@YAXH@Z" ) ; 59 ODE CREATE DYNAMIC CYLINDER 
    DB_ODE\ODE_GetObjectAAngularVelocityX= AIsFunction( 1 , "?ODE_GetObjectAAngularVelocityX@@YAKXZ" ) ; 60 ODE GET OBJECT A ANGULAR VELOCITY X 
    DB_ODE\ODE_GetObjectAAngularVelocityY= AIsFunction( 1 , "?ODE_GetObjectAAngularVelocityY@@YAKXZ" ) ; 61 ODE GET OBJECT A ANGULAR VELOCITY Y 
    DB_ODE\ODE_GetObjectAAngularVelocityZ= AIsFunction( 1 , "?ODE_GetObjectAAngularVelocityZ@@YAKXZ" ) ; 62 ODE GET OBJECT A ANGULAR VELOCITY Z 
    DB_ODE\ODE_GetObjectBAngularVelocityX= AIsFunction( 1 , "?ODE_GetObjectBAngularVelocityX@@YAKXZ" ) ; 63 ODE GET OBJECT B ANGULAR VELOCITY X 
    DB_ODE\ODE_GetObjectBAngularVelocityY= AIsFunction( 1 , "?ODE_GetObjectBAngularVelocityY@@YAKXZ" ) ; 64 ODE GET OBJECT B ANGULAR VELOCITY Y 
    DB_ODE\ODE_GetObjectBAngularVelocityZ= AIsFunction( 1 , "?ODE_GetObjectBAngularVelocityZ@@YAKXZ" ) ; 65 ODE GET OBJECT B ANGULAR VELOCITY Z 
    DB_ODE\ODE_SetGravity= AIsFunction( 1 , "?ODE_SetGravity@@YAXHH@Z" ) ; 66 ODE SET GRAVITY 
    DB_ODE\ODE_End= AIsFunction( 1 , "?ODE_End@@YAXXZ" ) ; 67 ODE END 
    DB_ODE\ODE_AddBodyForce= AIsFunction( 1 , "?ODE_AddBodyForce@@YAXHMMMMMM@Z" ) ; 68 ODE ADD FORCE 
    DB_ODE\ODE_GetBodyHeight= AIsFunction( 1 , "?ODE_GetBodyHeight@@YAKH@Z" ) ; 69 ODE GET BODY HEIGHT 
    DB_ODE\ODE_GetBodyAdjustmentX= AIsFunction( 1 , "?ODE_GetBodyAdjustmentX@@YAKH@Z" ) ; 71 ODE GET BODY ADJUSTMENT X 
    DB_ODE\ODE_GetBodyAdjustmentY= AIsFunction( 1 , "?ODE_GetBodyAdjustmentY@@YAKH@Z" ) ; 72 ODE GET BODY ADJUSTMENT Y 
    DB_ODE\ODE_GetBodyAdjustmentZ= AIsFunction( 1 , "?ODE_GetBodyAdjustmentZ@@YAKH@Z" ) ; 73 ODE GET BODY ADJUSTMENT Z 
    DB_ODE\ODE_SetBodyResponse= AIsFunction( 1 , "?ODE_SetBodyResponse@@YAXHH@Z" ) ; 74 ODE SET RESPONSE 
    DB_ODE\ODE_GetObjectAContact= AIsFunction( 1 , "?ODE_GetObjectAContact@@YAKXZ" ) ; 75 ODE GET OBJECT A CONTACT 
    DB_ODE\ODE_GetObjectBContact= AIsFunction( 1 , "?ODE_GetObjectBContact@@YAKXZ" ) ; 76 ODE GET OBJECT B CONTACT 
    CloseLibrary( 1 )
   Else
    SUCCESS.l = 0
   EndIf
  ProcedureReturn SUCCESS
 EndProcedure

; IDE Options = PureBasic 4.10 Beta 2 (Windows - x86)
; CursorPosition = 81
; FirstLine = 43
; Folding = -
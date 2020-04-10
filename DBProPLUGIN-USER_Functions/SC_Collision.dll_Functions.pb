; DarkBasic Professional RC2PBIncludes Ver 1.0 File - COMMANDS INITIALIZING
; By Frederic Cordier - 07.02.13
;
Procedure.l CheckSC_Collision()
  SUCCESS.l = 1
  If OpenLibrary( 1, "SC_Collision.dll")
    SC_Collision\setupObject= AIsFunction( 1 , "?setupObject@@YAXHHH@Z" ) ; 1 SC_setupObject Object Number, Group, Object Type
    SC_Collision\setupComplexObject= AIsFunction( 1 , "?setupComplexObject@@YAXHHH@Z" ) ; 2 SC_setupComplexObject Object Number, Group, Faces Per Node (recommend 2-4)
    SC_Collision\collectData= AIsFunction( 1 , "?collectData@@YAXHHH@Z" ) ; 3 SC_setupTerrainCollision Terrain Number, Group Number, A Free Object
    SC_Collision\updateObject= AIsFunction( 1 , "?updateObject@@YAXH@Z" ) ; 4 SC_updateObject Object Number
    SC_Collision\removeObject= AIsFunction( 1 , "?removeObject@@YAXH@Z" ) ; 5 SC_removeObject Object Number
    SC_Collision\set_object_collision_on= AIsFunction( 1 , "?set_object_collision_on@@YAXH@Z" ) ; 10 SC_setObjectCollisionOn Object Number
    SC_Collision\set_object_collision_off= AIsFunction( 1 , "?set_object_collision_off@@YAXH@Z" ) ; 11 SC_setObjectCollisionOff Object Number
    SC_Collision\collisionstatus= AIsFunction( 1 , "?collisionstatus@@YAKH@Z" ) ; 12 SC_collisionstatus Object Number
    SC_Collision\allowObjectScaling= AIsFunction( 1 , "?allowObjectScaling@@YAXH@Z" ) ; 13 SC_allowObjectScaling Object Number
    SC_Collision\setMaxCollisions= AIsFunction( 1 , "?setMaxCollisions@@YAXH@Z" ) ; 15 SC_setMaxCollisions Max Number of Collisions
    SC_Collision\intersectObject= AIsFunction( 1 , "?intersectObject@@YAKHMMMMMMH@Z" ) ; 20 SC_rayCast Object Num, x1,y1,z1, x2,y2,z2, Exclude Object
    SC_Collision\intersectGroup= AIsFunction( 1 , "?intersectGroup@@YAKHMMMMMMH@Z" ) ; 21 SC_rayCastGroup Group Num, x1,y1,z1, x2,y2,z2, Exclude Object
    SC_Collision\allIntersectObject= AIsFunction( 1 , "?allIntersectObject@@YAKHMMMMMMH@Z" ) ; 22 SC_multipleRayCast Object Num, x1,y1,z1, x2,y2,z2, Exclude Object
    SC_Collision\allIntersectGroup= AIsFunction( 1 , "?allIntersectGroup@@YAKHMMMMMMH@Z" ) ; 23 SC_multipleRayCastGroup Group Num, x1,y1,z1, x2,y2,z2, Exclude Object
    SC_Collision\sphereIntersectObject= AIsFunction( 1 , "?sphereIntersectObject@@YAKHMMMMMMMH@Z" ) ; 24 SC_sphereCast Object Num, x1,y1,z1, x2,y2,z2, Radius, Exclude Object
    SC_Collision\sphereIntersectGroup= AIsFunction( 1 , "?sphereIntersectGroup@@YAKHMMMMMMMH@Z" ) ; 25 SC_sphereCastGroup Group Num, x1,y1,z1, x2,y2,z2, Radius, Exclude Object
    SC_Collision\sphereSlideObject= AIsFunction( 1 , "?sphereSlideObject@@YAKHMMMMMMMH@Z" ) ; 26 SC_sphereSlide Object Num, x1,y1,z1, x2,y2,z2, Radius, Exclude Object
    SC_Collision\sphereSlideGroup= AIsFunction( 1 , "?sphereSlideGroup@@YAKHMMMMMMMH@Z" ) ; 27 SC_sphereSlideGroup Group Num, x1,y1,z1, x2,y2,z2, Radius, Exclude Object
    SC_Collision\objectCollision= AIsFunction( 1 , "?objectCollision@@YAKHH@Z" ) ; 28 SC_ObjectCollision Object Num, Object Num
    SC_Collision\groupCollision= AIsFunction( 1 , "?groupCollision@@YAKHH@Z" ) ; 29 SC_GroupCollision Object Num, Group Num
    SC_Collision\getStaticCollisionX= AIsFunction( 1 , "?getStaticCollisionX@@YAKXZ" ) ; 40 SC_getStaticCollisionX 
    SC_Collision\getStaticCollisionY= AIsFunction( 1 , "?getStaticCollisionY@@YAKXZ" ) ; 41 SC_getStaticCollisionY 
    SC_Collision\getStaticCollisionZ= AIsFunction( 1 , "?getStaticCollisionZ@@YAKXZ" ) ; 42 SC_getStaticCollisionZ 
    SC_Collision\getCollisionNormalX= AIsFunction( 1 , "?getCollisionNormalX@@YAKXZ" ) ; 43 SC_getCollisionNormalX 
    SC_Collision\getCollisionNormalY= AIsFunction( 1 , "?getCollisionNormalY@@YAKXZ" ) ; 44 SC_getCollisionNormalY 
    SC_Collision\getCollisionNormalZ= AIsFunction( 1 , "?getCollisionNormalZ@@YAKXZ" ) ; 45 SC_getCollisionNormalZ 
    SC_Collision\getCollisionBounceX= AIsFunction( 1 , "?getCollisionBounceX@@YAKXZ" ) ; 46 SC_getCollisionBounceX 
    SC_Collision\getCollisionBounceY= AIsFunction( 1 , "?getCollisionBounceY@@YAKXZ" ) ; 47 SC_getCollisionBounceY 
    SC_Collision\getCollisionBounceZ= AIsFunction( 1 , "?getCollisionBounceZ@@YAKXZ" ) ; 48 SC_getCollisionBounceZ 
    SC_Collision\getCollisionSlideX= AIsFunction( 1 , "?getCollisionSlideX@@YAKXZ" ) ; 49 SC_getCollisionSlideX 
    SC_Collision\getCollisionSlideY= AIsFunction( 1 , "?getCollisionSlideY@@YAKXZ" ) ; 50 SC_getCollisionSlideY 
    SC_Collision\getCollisionSlideZ= AIsFunction( 1 , "?getCollisionSlideZ@@YAKXZ" ) ; 51 SC_getCollisionSlideZ 
    SC_Collision\getDistance= AIsFunction( 1 , "?getDistance@@YAKXZ" ) ; 52 SC_getCollisionDistance 
    SC_Collision\getObjectHit= AIsFunction( 1 , "?getObjectHit@@YAKXZ" ) ; 53 SC_getObjectHit 
    SC_Collision\getGroupHit= AIsFunction( 1 , "?getGroupHit@@YAKXZ" ) ; 54 SC_getGroupHit 
    SC_Collision\getFaceHit= AIsFunction( 1 , "?getFaceHit@@YAKXZ" ) ; 55 SC_getFaceHit 
    SC_Collision\getNumCollisions= AIsFunction( 1 , "?getNumCollisions@@YAKXZ" ) ; 56 SC_getNumCollisions 
    SC_Collision\getStaticCollisionX1= AIsFunction( 1 , "?getStaticCollisionX@@YAKH@Z" ) ; 60 SC_getStaticCollisionX Collision Number
    SC_Collision\getStaticCollisionY1= AIsFunction( 1 , "?getStaticCollisionY@@YAKH@Z" ) ; 61 SC_getStaticCollisionY Collision Number
    SC_Collision\getStaticCollisionZ1= AIsFunction( 1 , "?getStaticCollisionZ@@YAKH@Z" ) ; 62 SC_getStaticCollisionZ Collision Number
    SC_Collision\getCollisionNormalX1= AIsFunction( 1 , "?getCollisionNormalX@@YAKH@Z" ) ; 63 SC_getCollisionNormalX Collision Number
    SC_Collision\getCollisionNormalY1= AIsFunction( 1 , "?getCollisionNormalY@@YAKH@Z" ) ; 64 SC_getCollisionNormalY Collision Number
    SC_Collision\getCollisionNormalZ1= AIsFunction( 1 , "?getCollisionNormalZ@@YAKH@Z" ) ; 65 SC_getCollisionNormalZ Collision Number
    SC_Collision\getCollisionBounceX1= AIsFunction( 1 , "?getCollisionBounceX@@YAKH@Z" ) ; 66 SC_getCollisionBounceX Collision Number
    SC_Collision\getCollisionBounceY1= AIsFunction( 1 , "?getCollisionBounceY@@YAKH@Z" ) ; 67 SC_getCollisionBounceY Collision Number
    SC_Collision\getCollisionBounceZ1= AIsFunction( 1 , "?getCollisionBounceZ@@YAKH@Z" ) ; 68 SC_getCollisionBounceZ Collision Number
    SC_Collision\getCollisionSlideX1= AIsFunction( 1 , "?getCollisionSlideX@@YAKH@Z" ) ; 69 SC_getCollisionSlideX 
    SC_Collision\getCollisionSlideY1= AIsFunction( 1 , "?getCollisionSlideY@@YAKH@Z" ) ; 70 SC_getCollisionSlideY 
    SC_Collision\getCollisionSlideZ1= AIsFunction( 1 , "?getCollisionSlideZ@@YAKH@Z" ) ; 71 SC_getCollisionSlideZ 
    SC_Collision\getDistance1= AIsFunction( 1 , "?getDistance@@YAKH@Z" ) ; 72 SC_getCollisionDistance Collision Number
    SC_Collision\getObjectHit1= AIsFunction( 1 , "?getObjectHit@@YAKH@Z" ) ; 73 SC_getObjectHit Collision Number
    SC_Collision\getGroupHit1= AIsFunction( 1 , "?getGroupHit@@YAKH@Z" ) ; 74 SC_getGroupHit Collision Number
    SC_Collision\getFaceHit1= AIsFunction( 1 , "?getFaceHit@@YAKH@Z" ) ; 75 SC_getFaceHit Collision Number
    SC_Collision\getCount= AIsFunction( 1 , "?getCount@@YAKXZ" ) ; 80 SC_getObjectCount 
    SC_Collision\getRayCount= AIsFunction( 1 , "?getRayCount@@YAKXZ" ) ; 81 SC_getRayCount 
    SC_Collision\drawObjectBounds= AIsFunction( 1 , "?drawObjectBounds@@YAXH@Z" ) ; 82 SC_drawObjectBounds Object Num
    SC_Collision\removeVisualBounds= AIsFunction( 1 , "?removeVisualBounds@@YAXH@Z" ) ; 83 SC_removeVisualBounds Object Num
    SC_Collision\intersectObjectOld= AIsFunction( 1 , "?intersectObjectOld@@YAKHMMMMMM@Z" ) ; 84 SC_intersectObject Object Num, x1,y1,z1, x2,y2,z2
    CloseLibrary( 1 )
   Else
    SUCCESS.l = 0
   EndIf
  ProcedureReturn SUCCESS
 EndProcedure

; IDE Options = PureBasic 4.10 Beta 2 (Windows - x86)
; CursorPosition = 65
; FirstLine = 27
; Folding = -
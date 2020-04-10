; DarkBasic Professional RC2PBIncludes Ver 1.0 File - COMMANDS WRAPPING
; By Frederic Cordier - 07.02.13
;
; *********************************************************************
Procedure SC_setupObject( ObjectNumber.l, Group.l, ObjectType.l )
  CallCFunctionFast( *SC_Collision\setupObject, ObjectNumber, Group, ObjectType )
 EndProcedure
;
; *********************************************************************
Procedure SC_setupComplexObject( ObjectNumber.l, Group.l, FacesPerNoderecommend24.l )
  CallCFunctionFast( *SC_Collision\setupComplexObject, ObjectNumber, Group, FacesPerNoderecommend24 )
 EndProcedure
;
; *********************************************************************
Procedure SC_collectData( TerrainNumber.l, GroupNumber.l, AFreeObject.l )
  CallCFunctionFast( *SC_Collision\collectData, TerrainNumber, GroupNumber, AFreeObject )
 EndProcedure
;
; *********************************************************************
Procedure SC_updateObject( ObjectNumber.l )
  CallCFunctionFast( *SC_Collision\updateObject, ObjectNumber )
 EndProcedure
;
; *********************************************************************
Procedure SC_removeObject( ObjectNumber.l )
  CallCFunctionFast( *SC_Collision\removeObject, ObjectNumber )
 EndProcedure
;
; *********************************************************************
Procedure SC_set_object_collision_on( ObjectNumber.l )
  CallCFunctionFast( *SC_Collision\set_object_collision_on, ObjectNumber )
 EndProcedure
;
; *********************************************************************
Procedure SC_set_object_collision_off( ObjectNumber.l )
  CallCFunctionFast( *SC_Collision\set_object_collision_off, ObjectNumber )
 EndProcedure
;
; *********************************************************************
Procedure.l SC_collisionstatus( ObjectNumber.l )
  Retour.l = CallCFunctionFast( *SC_Collision\collisionstatus, ObjectNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure SC_allowObjectScaling( ObjectNumber.l )
  CallCFunctionFast( *SC_Collision\allowObjectScaling, ObjectNumber )
 EndProcedure
;
; *********************************************************************
Procedure SC_setMaxCollisions( MaxNumberofCollisions.l )
  CallCFunctionFast( *SC_Collision\setMaxCollisions, MaxNumberofCollisions )
 EndProcedure
;
; *********************************************************************
Procedure.l SC_intersectObject( ObjectNum.l, x1.f, y1.f, z1.f, x2.f, y2.f, z2.f, ExcludeObject.l )
  Retour.l = CallCFunctionFast( *SC_Collision\intersectObject, ObjectNum, x1, y1, z1, x2, y2, z2, ExcludeObject )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l SC_intersectGroup( GroupNum.l, x1.f, y1.f, z1.f, x2.f, y2.f, z2.f, ExcludeObject.l )
  Retour.l = CallCFunctionFast( *SC_Collision\intersectGroup, GroupNum, x1, y1, z1, x2, y2, z2, ExcludeObject )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l SC_allIntersectObject( ObjectNum.l, x1.f, y1.f, z1.f, x2.f, y2.f, z2.f, ExcludeObject.l )
  Retour.l = CallCFunctionFast( *SC_Collision\allIntersectObject, ObjectNum, x1, y1, z1, x2, y2, z2, ExcludeObject )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l SC_allIntersectGroup( GroupNum.l, x1.f, y1.f, z1.f, x2.f, y2.f, z2.f, ExcludeObject.l )
  Retour.l = CallCFunctionFast( *SC_Collision\allIntersectGroup, GroupNum, x1, y1, z1, x2, y2, z2, ExcludeObject )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l SC_sphereIntersectObject( ObjectNum.l, x1.f, y1.f, z1.f, x2.f, y2.f, z2.f, Radius.f, ExcludeObject.l )
  Retour.l = CallCFunctionFast( *SC_Collision\sphereIntersectObject, ObjectNum, x1, y1, z1, x2, y2, z2, Radius, ExcludeObject )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l SC_sphereIntersectGroup( GroupNum.l, x1.f, y1.f, z1.f, x2.f, y2.f, z2.f, Radius.f, ExcludeObject.l )
  Retour.l = CallCFunctionFast( *SC_Collision\sphereIntersectGroup, GroupNum, x1, y1, z1, x2, y2, z2, Radius, ExcludeObject )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l SC_sphereSlideObject( ObjectNum.l, x1.f, y1.f, z1.f, x2.f, y2.f, z2.f, Radius.f, ExcludeObject.l )
  Retour.l = CallCFunctionFast( *SC_Collision\sphereSlideObject, ObjectNum, x1, y1, z1, x2, y2, z2, Radius, ExcludeObject )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l SC_sphereSlideGroup( GroupNum.l, x1.f, y1.f, z1.f, x2.f, y2.f, z2.f, Radius.f, ExcludeObject.l )
  Retour.l = CallCFunctionFast( *SC_Collision\sphereSlideGroup, GroupNum, x1, y1, z1, x2, y2, z2, Radius, ExcludeObject )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l SC_objectCollision( ObjectNum.l, ObjectNum2.l )
  Retour.l = CallCFunctionFast( *SC_Collision\objectCollision, ObjectNum, ObjectNum2 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l SC_groupCollision( ObjectNum.l, GroupNum.l )
  Retour.l = CallCFunctionFast( *SC_Collision\groupCollision, ObjectNum, GroupNum )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.f SC_getStaticCollisionX()
  Retour.l = CallCFunctionFast( *SC_Collision\getStaticCollisionX )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f SC_getStaticCollisionY()
  Retour.l = CallCFunctionFast( *SC_Collision\getStaticCollisionY )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f SC_getStaticCollisionZ()
  Retour.l = CallCFunctionFast( *SC_Collision\getStaticCollisionZ )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f SC_getllisionCollisionNormalX()
  Retour.l = CallCFunctionFast( *SC_Collision\getCollisionNormalX )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f SC_getllisionCollisionNormalY()
  Retour.l = CallCFunctionFast( *SC_Collision\getCollisionNormalY )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f SC_getllisionCollisionNormalZ()
  Retour.l = CallCFunctionFast( *SC_Collision\getCollisionNormalZ )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f SC_getllisionCollisionBounc()
  Retour.l = CallCFunctionFast( *SC_Collision\getCollisionBounceX )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f SC_getllisionCollisionBounceY()
  Retour.l = CallCFunctionFast( *SC_Collision\getCollisionBounceY )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f SC_getllisionCollisionBounceZ()
  Retour.l = CallCFunctionFast( *SC_Collision\getCollisionBounceZ )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f SC_getllisionCollisionSlid()
  Retour.l = CallCFunctionFast( *SC_Collision\getCollisionSlideX )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f SC_getllisionCollisionSlideY()
  Retour.l = CallCFunctionFast( *SC_Collision\getCollisionSlideY )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f SC_getllisionCollisionSlideZ()
  Retour.l = CallCFunctionFast( *SC_Collision\getCollisionSlideZ )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f SC_getDistance()
  Retour.l = CallCFunctionFast( *SC_Collision\getDistance )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.l SC_getObjectHit()
  Retour.l = CallCFunctionFast( *SC_Collision\getObjectHit )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l SC_getGroupHit()
  Retour.l = CallCFunctionFast( *SC_Collision\getGroupHit )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l SC_getFaceHit()
  Retour.l = CallCFunctionFast( *SC_Collision\getFaceHit )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l SC_getNumCollisions()
  Retour.l = CallCFunctionFast( *SC_Collision\getNumCollisions )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.f SC_getStaticCollisionX1( CollisionNumber.l )
  Retour.l = CallCFunctionFast( *SC_Collision\getStaticCollisionX1, CollisionNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f SC_getStaticCollisionY1( CollisionNumber.l )
  Retour.l = CallCFunctionFast( *SC_Collision\getStaticCollisionY1, CollisionNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f SC_getStaticCollisionZ1( CollisionNumber.l )
  Retour.l = CallCFunctionFast( *SC_Collision\getStaticCollisionZ1, CollisionNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f SC_getllisionCollisionNormalX1( CollisionNumber.l )
  Retour.l = CallCFunctionFast( *SC_Collision\getCollisionNormalX1, CollisionNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f SC_getllisionCollisionNormalY1( CollisionNumber.l )
  Retour.l = CallCFunctionFast( *SC_Collision\getCollisionNormalY1, CollisionNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f SC_getllisionCollisionNormalZ1( CollisionNumber.l )
  Retour.l = CallCFunctionFast( *SC_Collision\getCollisionNormalZ1, CollisionNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f SC_getllisionCollisionBounc1( CollisionNumber.l )
  Retour.l = CallCFunctionFast( *SC_Collision\getCollisionBounceX1, CollisionNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f SC_getllisionCollisionBounceY1( CollisionNumber.l )
  Retour.l = CallCFunctionFast( *SC_Collision\getCollisionBounceY1, CollisionNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f SC_getllisionCollisionBounceZ1( CollisionNumber.l )
  Retour.l = CallCFunctionFast( *SC_Collision\getCollisionBounceZ1, CollisionNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f SC_getllisionCollisionSlid1( Param1.l )
  Retour.l = CallCFunctionFast( *SC_Collision\getCollisionSlideX1, Param1 )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f SC_getllisionCollisionSlideY1( Param1.l )
  Retour.l = CallCFunctionFast( *SC_Collision\getCollisionSlideY1, Param1 )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f SC_getllisionCollisionSlideZ1( Param1.l )
  Retour.l = CallCFunctionFast( *SC_Collision\getCollisionSlideZ1, Param1 )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f SC_getDistance1( CollisionNumber.l )
  Retour.l = CallCFunctionFast( *SC_Collision\getDistance1, CollisionNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.l SC_getObjectHit1( CollisionNumber.l )
  Retour.l = CallCFunctionFast( *SC_Collision\getObjectHit1, CollisionNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l SC_getGroupHit1( CollisionNumber.l )
  Retour.l = CallCFunctionFast( *SC_Collision\getGroupHit1, CollisionNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l SC_getFaceHit1( CollisionNumber.l )
  Retour.l = CallCFunctionFast( *SC_Collision\getFaceHit1, CollisionNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l SC_getCount()
  Retour.l = CallCFunctionFast( *SC_Collision\getCount )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l SC_getRayCount()
  Retour.l = CallCFunctionFast( *SC_Collision\getRayCount )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure SC_drawObjectBounds( ObjectNum.l )
  CallCFunctionFast( *SC_Collision\drawObjectBounds, ObjectNum )
 EndProcedure
;
; *********************************************************************
Procedure SC_removeVisualBounds( ObjectNum.l )
  CallCFunctionFast( *SC_Collision\removeVisualBounds, ObjectNum )
 EndProcedure
;
; *********************************************************************
Procedure.f SC_intersectObjectOld( ObjectNum.l, x1.f, y1.f, z1.f, x2.f, y2.f, z2.f )
  Retour.l = CallCFunctionFast( *SC_Collision\intersectObjectOld, ObjectNum, x1, y1, z1, x2, y2, z2 )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;

; IDE Options = PureBasic v4.02 (Windows - x86)
; CursorPosition = 362
; FirstLine = 320
; Folding = ----------
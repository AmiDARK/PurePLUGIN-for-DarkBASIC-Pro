; DarkBasic Professional RC2PBIncludes Ver 1.0 File - COMMANDS INITIALIZING
; By Frederic Cordier - 07.02.13
;
Procedure.l CheckGameFX()
  SUCCESS.l = 1
  If OpenLibrary( 1, "DBProGameFX.dll")
    DB_GameFX\CreateNodeTree= AIsFunction( 1 , "?CreateNodeTree@@YAXMMM@Z" ) ; 101 SET STATIC UNIVERSE X, Y, Z
    DB_GameFX\AddNodeTreeObject= AIsFunction( 1 , "?AddNodeTreeObject@@YAXHHHHH@Z" ) ; 102 MAKE STATIC OBJECT Object Number, Collision, Arbitary Value, Cast Shadow, Portal Blocker
    DB_GameFX\AddNodeTreeLimb= AIsFunction( 1 , "?AddNodeTreeLimb@@YAXHHHHHH@Z" ) ; 103 MAKE STATIC LIMB Object Number, Limb Number, Collision, Arbitary Value, Cast Shadow, Portal Blocker
    DB_GameFX\DeleteNodeTree= AIsFunction( 1 , "?DeleteNodeTree@@YAXXZ" ) ; 104 DELETE STATIC OBJECTS 
    DB_GameFX\RemoveNodeTreeObject= AIsFunction( 1 , "?RemoveNodeTreeObject@@YAXH@Z" ) ; 105 DELETE STATIC OBJECT Object Number
    DB_GameFX\SetNodeTreePortalsOn= AIsFunction( 1 , "?SetNodeTreePortalsOn@@YAXXZ" ) ; 106 SET STATIC PORTALS ON 
    DB_GameFX\SetNodeTreePortalsOff= AIsFunction( 1 , "?SetNodeTreePortalsOff@@YAXXZ" ) ; 107 SET STATIC PORTALS OFF 
    DB_GameFX\BuildNodeTreePortals= AIsFunction( 1 , "?BuildNodeTreePortals@@YAXXZ" ) ; 108 BUILD STATIC PORTALS 
    DB_GameFX\SetNodeTreeWireframeOn= AIsFunction( 1 , "?SetNodeTreeWireframeOn@@YAXXZ" ) ; 109 SET STATIC OBJECTS WIREFRAME ON 
    DB_GameFX\SetNodeTreeWireframeOff= AIsFunction( 1 , "?SetNodeTreeWireframeOff@@YAXXZ" ) ; 110 SET STATIC OBJECTS WIREFRAME OFF 
    DB_GameFX\GetStaticLineOfSight= AIsFunction( 1 , "?GetStaticLineOfSight@@YAHMMMMMMMM@Z" ) ; 111 STATIC LINE OF SIGHT X1, Y1, Z1, X2, Y2, Z2, Width, Accuracy
    DB_GameFX\GetStaticHit= AIsFunction( 1 , "?GetStaticHit@@YAHMMMMMMMMMMMM@Z" ) ; 112 GET STATIC COLLISION HIT OX1, OY1, OZ1, OX2, OY2, OZ2, NX1, NY1, NZ1, NX2, NY2, NZ2
    DB_GameFX\GetStaticRayCast= AIsFunction( 1 , "?GetStaticRayCast@@YAHMMMMMM@Z" ) ; 113 STATIC RAYCAST X1, Y1, Z1, X2, Y2, Z2
    DB_GameFX\GetStaticVolumeCast= AIsFunction( 1 , "?GetStaticVolumeCast@@YAHMMMMMMM@Z" ) ; 114 STATIC VOLUME X1, Y1, Z1, X2, Y2, Z2, Size
    DB_GameFX\GetStaticX= AIsFunction( 1 , "?GetStaticX@@YAKXZ" ) ; 115 GET STATIC COLLISION X 
    DB_GameFX\GetStaticY= AIsFunction( 1 , "?GetStaticY@@YAKXZ" ) ; 116 GET STATIC COLLISION Y 
    DB_GameFX\GetStaticZ= AIsFunction( 1 , "?GetStaticZ@@YAKXZ" ) ; 117 GET STATIC COLLISION Z 
    DB_GameFX\GetStaticColCount= AIsFunction( 1 , "?GetStaticColCount@@YAHXZ" ) ; 118 GET STATIC COLLISION COUNT 
    DB_GameFX\GetStaticColValue= AIsFunction( 1 , "?GetStaticColValue@@YAHXZ" ) ; 119 GET STATIC COLLISION VALUE 
    DB_GameFX\GetStaticFloor= AIsFunction( 1 , "?GetStaticFloor@@YAHXZ" ) ; 120 GET STATIC COLLISION FLOOR 
    DB_GameFX\AddStaticObjectsToLightMapPool= AIsFunction( 1 , "?AddStaticObjectsToLightMapPool@@YAXXZ" ) ; 121 ADD STATIC OBJECTS TO LIGHT MAP POOL 
    DB_GameFX\AddObjectToLightMapPool= AIsFunction( 1 , "?AddObjectToLightMapPool@@YAXH@Z" ) ; 122 ADD OBJECT TO LIGHT MAP POOL Object Number
    DB_GameFX\AddLightMapLight= AIsFunction( 1 , "?AddLightMapLight@@YAXMMMMMMMMH@Z" ) ; 123 ADD LIGHT MAP LIGHT X, Y, Z, Radius, Red, Green, Blue, Brightness, Shadow
    DB_GameFX\CreateLightMaps= AIsFunction( 1 , "?CreateLightMaps@@YAXHHK@Z" ) ; 124 CREATE LIGHT MAPS Texture Size, Texture Quality, LightMapSavePath
    DB_GameFX\FlushLightMaps= AIsFunction( 1 , "?FlushLightMaps@@YAXXZ" ) ; 125 FLUSH LIGHT MAPS 
    DB_GameFX\AddLimbToLightMapPool= AIsFunction( 1 , "?AddLimbToLightMapPool@@YAXHH@Z" ) ; 126 ADD LIMB TO LIGHT MAP POOL 
    DB_GameFX\FlushLightMapLights= AIsFunction( 1 , "?FlushLightMapLights@@YAXXZ" ) ; 127 DELETE LIGHT MAP LIGHTS 
    DB_GameFX\AddNodeTreeScorch= AIsFunction( 1 , "?AddNodeTreeScorch@@YAXMH@Z" ) ; 128 ADD STATIC SCORCH Scorch Size, Scorch Type
    DB_GameFX\LoadNodeTreeObjects= AIsFunction( 1 , "?LoadNodeTreeObjects@@YAXKH@Z" ) ; 129 LOAD STATIC OBJECTS Filename, Divide Texture Size
    DB_GameFX\SetNodeTreeScorchTexture= AIsFunction( 1 , "?SetNodeTreeScorchTexture@@YAXHHH@Z" ) ; 130 SET STATIC SCORCH Image Number, Width, Height
    DB_GameFX\AddNodeTreeLight= AIsFunction( 1 , "?AddNodeTreeLight@@YAXHMMMM@Z" ) ; 131 SET SHADOW LIGHT Light Number, X, Y, Z, Range
    DB_GameFX\SetGlobalShadowsOff= AIsFunction( 1 , "?SetGlobalShadowsOff@@YAXXZ" ) ; 132 SET GLOBAL SHADOWS OFF 
    DB_GameFX\SetGlobalShadowsOn= AIsFunction( 1 , "?SetGlobalShadowsOn@@YAXXZ" ) ; 133 SET GLOBAL SHADOWS ON 
    DB_GameFX\SetShadowShades= AIsFunction( 1 , "?SetShadowShades@@YAXH@Z" ) ; 134 SET GLOBAL SHADOW SHADES Number Of Shades
    DB_GameFX\SetShadowColor= AIsFunction( 1 , "?SetShadowColor@@YAXHHHH@Z" ) ; 135 SET GLOBAL SHADOW COLOR Red, Green, Blue, Alpha
    DB_GameFX\SetShadowPosition= AIsFunction( 1 , "?SetShadowPosition@@YAXHMMM@Z" ) ; 136 SET SHADOW POSITION Mode, X, Y, Z
    DB_GameFX\PeformCSGUnion= AIsFunction( 1 , "?PeformCSGUnion@@YAXHH@Z" ) ; 137 PERFORM CSG UNION Target Object, Brush Object
    DB_GameFX\PeformCSGDifference= AIsFunction( 1 , "?PeformCSGDifference@@YAXHH@Z" ) ; 138 PERFORM CSG DIFFERENCE Target Object, Brush Object
    DB_GameFX\PeformCSGIntersection= AIsFunction( 1 , "?PeformCSGIntersection@@YAXHH@Z" ) ; 139 PERFORM CSG INTERSECTION Target Object, Brush Object
    DB_GameFX\PeformCSGClip= AIsFunction( 1 , "?PeformCSGClip@@YAXHH@Z" ) ; 140 PERFORM CSG CLIP Target Object, Brush Object
    DB_GameFX\PeformCSGUnionOnVertexData= AIsFunction( 1 , "?PeformCSGUnionOnVertexData@@YAXH@Z" ) ; 141 PERFORM CSG UNION ON VERTEXDATA Brush Mesh
    DB_GameFX\PeformCSGDifferenceOnVertexData= AIsFunction( 1 , "?PeformCSGDifferenceOnVertexData@@YAXH@Z" ) ; 142 PERFORM CSG DIFFERENCE ON VERTEXDATA Brush Mesh
    DB_GameFX\PeformCSGIntersectionOnVertexData= AIsFunction( 1 , "?PeformCSGIntersectionOnVertexData@@YAXH@Z" ) ; 143 PERFORM CSG INTERSECTION ON VERTEXDATA Brush Mesh
    DB_GameFX\ReduceMesh= AIsFunction( 1 , "?ReduceMesh@@YAXHHHHHH@Z" ) ; 144 REDUCE MESH Mesh Number, Block Mode, Near Mode, GX, GY, GZ
    DB_GameFX\AttachObjectToNodeTree= AIsFunction( 1 , "?AttachObjectToNodeTree@@YAXH@Z" ) ; 145 ATTACH OBJECT TO STATIC Object Number
    DB_GameFX\ObjectBlocking= AIsFunction( 1 , "?ObjectBlocking@@YAHHMMMMMM@Z" ) ; 146 OBJECT BLOCKING Object, X1, Y1, Z1, X2, Y2, Z2
    DB_GameFX\DetachObjectFromNodeTree= AIsFunction( 1 , "?DetachObjectFromNodeTree@@YAXH@Z" ) ; 147 DETACH OBJECT FROM STATIC Object Number
    DB_GameFX\AddLODToObject= AIsFunction( 1 , "?AddLODToObject@@YAXHHHM@Z" ) ; 148 ADD LOD TO OBJECT Object Number, LOD Object, LOD Level, LOD Distance
    DB_GameFX\SaveNodeTreeObjects= AIsFunction( 1 , "?SaveNodeTreeObjects@@YAXK@Z" ) ; 149 SAVE STATIC OBJECTS Filename
    DB_GameFX\MakeNodeTreeCollisionBox= AIsFunction( 1 , "?MakeNodeTreeCollisionBox@@YAXMMMMMM@Z" ) ; 150 MAKE STATIC COLLISION BOX X1, Y1, Z1, X2, Y2, Z2
   Else
    SUCCESS.l = 0
   EndIf
  ProcedureReturn SUCCESS
 EndProcedure

; IDE Options = PureBasic v4.00 (Windows - x86)
; CursorPosition = 55
; FirstLine = 6
; Folding = -
; DarkBasic Professional RC2PBIncludes Ver 1.0 File - COMMANDS INITIALIZING
; By Frederic Cordier - 07.02.13
;
Procedure.l CheckDKAVM()
  SUCCESS.l = 1
  If OpenLibrary( 1, "DKAVM.dll")
    DKAVM\DK_Basic3D_GetLimbCount= AIsFunction( 1 , "DK_Basic3D_GetLimbCount" ) ; 1 DK GET LIMB COUNT Object Number
    DKAVM\DK_Basic3D_GetFVF= AIsFunction( 1 , "DK_Basic3D_GetFVF" ) ; 2 DK GET OBJECT FVF Object Number
    DKAVM\DK_Basic3D_GetWireFrame= AIsFunction( 1 , "DK_Basic3D_GetWireFrame" ) ; 3 DK GET OBJECT WIREFRAME Object Number
    DKAVM\DK_Basic3D_GetCull= AIsFunction( 1 , "DK_Basic3D_GetCull" ) ; 4 DK GET OBJECT CULL Object Number
    DKAVM\DK_Basic3D_GetLight= AIsFunction( 1 , "DK_Basic3D_GetLight" ) ; 5 DK GET OBJECT LIGHT Object Number
    DKAVM\DK_Basic3D_GetAmbient= AIsFunction( 1 , "DK_Basic3D_GetAmbient" ) ; 6 DK GET OBJECT AMBIENT Object Number
    DKAVM\DK_Basic3D_GetFog= AIsFunction( 1 , "DK_Basic3D_GetFog" ) ; 7 DK GET OBJECT FOG Object Number
    DKAVM\DK_Basic3D_GetTransparency= AIsFunction( 1 , "DK_Basic3D_GetTransparency" ) ; 8 DK GET OBJECT TRANSPARENCY Object Number
    DKAVM\DK_Basic3D_GetGhost= AIsFunction( 1 , "DK_Basic3D_GetGhost" ) ; 9 DK GET OBJECT GHOST Object Number
    DKAVM\DK_Basic3D_GetLimbVertexCount= AIsFunction( 1 , "DK_Basic3D_GetLimbVertexCount" ) ; 10 DK GET LIMB VERTEX COUNT Object Number, Limb Number
    DKAVM\DK_Basic3D_GetLimbWireFrame= AIsFunction( 1 , "DK_Basic3D_GetLimbWireFrame" ) ; 11 DK GET LIMB WIREFRAME Object Number, Limb Number
    DKAVM\DK_Basic3D_GetLimbCull= AIsFunction( 1 , "DK_Basic3D_GetLimbCull" ) ; 12 DK GET LIMB CULL Object Number, Limb Number
    DKAVM\DK_Basic3D_GetLimbLight= AIsFunction( 1 , "DK_Basic3D_GetLimbLight" ) ; 13 DK GET LIMB LIGHT Object Number, Limb Number
    DKAVM\DK_Basic3D_GetLimbAmbient= AIsFunction( 1 , "DK_Basic3D_GetLimbAmbient" ) ; 14 DK GET LIMB AMBIENT Object Number, Limb Number
    DKAVM\DK_Basic3D_GetLimbFog= AIsFunction( 1 , "DK_Basic3D_GetLimbFog" ) ; 15 DK GET LIMB FOG Object Number, Limb Number
    DKAVM\DK_Basic3D_GetLimbTransparency= AIsFunction( 1 , "DK_Basic3D_GetLimbTransparency" ) ; 16 DK GET LIMB TRANSPARENCY Object Number, Limb Number
    DKAVM\DK_Basic3D_GetLimbGhost= AIsFunction( 1 , "DK_Basic3D_GetLimbGhost" ) ; 17 DK GET LIMB GHOST Object Number, Limb Number
    DKAVM\DK_Basic3D_GetLimbFVF= AIsFunction( 1 , "DK_Basic3D_GetLimbFVF" ) ; 18 DK GET LIMB FVF Object Number, Limb Number
    DKAVM\DK_Basic3D_ConvertObjectLimbToVertsList= AIsFunction( 1 , "DK_Basic3D_ConvertObjectLimbToVertsList" ) ; 19 DK CONVERT LIMB MESH TO VERTS LIST Object Number, Limb Number
    DKAVM\DK_Basic3D_LimbMatrix= AIsFunction( 1 , "DK_Basic3D_LimbMatrix" ) ; 20 DK LIMB MATRIX4 Matrix4Result, Object Number, Limb Number
    DKAVM\DK_Basic3D_GetLimbPrimitiveT= AIsFunction( 1 , "DK_Basic3D_GetLimbPrimitiveT" ) ; 21 DK GET LIMB PRIMITIVE TYPE Object Number, Limb Number
    DKAVM\DK_Basic3D_LimbSharedVerts= AIsFunction( 1 , "DK_Basic3D_LimbSharedVerts" ) ; 22 DK LIMB SHARED VERTS Object Number, Limb Number
    DKAVM\DK_Basic3D_GetVertexPositionX= AIsFunction( 1 , "DK_Basic3D_GetVertexPositionX" ) ; 23 DK GET VERTEX POSITION X Object Number, Limb Number, Vertex Number
    DKAVM\DK_Basic3D_GetVertexPositionY= AIsFunction( 1 , "DK_Basic3D_GetVertexPositionY" ) ; 24 DK GET VERTEX POSITION Y Object Number, Limb Number, Vertex Number
    DKAVM\DK_Basic3D_GetVertexPositionZ= AIsFunction( 1 , "DK_Basic3D_GetVertexPositionZ" ) ; 25 DK GET VERTEX POSITION Z Object Number, Limb Number, Vertex Number
    DKAVM\DK_Basic3D_SetVector3ToVertexPosition= AIsFunction( 1 , "DK_Basic3D_SetVector3ToVertexPosition" ) ; 26 DK SET VECTOR3 TO VERTEX POSITION Vector3Result, Object Number, Limb Number, Vertex Number
    DKAVM\DK_Basic3D_SetVertexPosition= AIsFunction( 1 , "DK_Basic3D_SetVertexPosition" ) ; 27 DK SET VERTEX POSITION Object Number, Limb Number, Vertex Number, X, Y, Z
    DKAVM\DK_Basic3D_SetVertexPositionToVector= AIsFunction( 1 , "DK_Basic3D_SetVertexPositionToVector" ) ; 28 DK SET VERTEX POSITION Object Number, Limb Number, Vertex Number, Vector3Source
    DKAVM\DK_Basic3D_GetVertexNormalsX= AIsFunction( 1 , "DK_Basic3D_GetVertexNormalsX" ) ; 29 DK GET VERTEX NORMALS X Object Number, Limb Number, Vertex Number
    DKAVM\DK_Basic3D_GetVertexNormalsY= AIsFunction( 1 , "DK_Basic3D_GetVertexNormalsY" ) ; 30 DK GET VERTEX NORMALS Y Object Number, Limb Number, Vertex Number
    DKAVM\DK_Basic3D_GetVertexNormalsZ= AIsFunction( 1 , "DK_Basic3D_GetVertexNormalsZ" ) ; 31 DK GET VERTEX NORMALS Z Object Number, Limb Number, Vertex Number
    DKAVM\DK_Basic3D_SetVector3ToVertexNormals= AIsFunction( 1 , "DK_Basic3D_SetVector3ToVertexNormals" ) ; 32 DK SET VECTOR3 TO VERTEX NORMALS Vector3Result, Object Number, Limb Number, Vertex Number
    DKAVM\DK_Basic3D_GetVertexDiffuse= AIsFunction( 1 , "DK_Basic3D_GetVertexDiffuse" ) ; 33 DK GET VERTEX DIFFUSE Object Number, Limb Number, Vertex Number
    DKAVM\DK_Basic3D_GetVertexU= AIsFunction( 1 , "DK_Basic3D_GetVertexU" ) ; 34 DK GET VERTEX U Object Number, Limb Number, Vertex Number, TextureStageNumber
    DKAVM\DK_Basic3D_GetVertexV= AIsFunction( 1 , "DK_Basic3D_GetVertexV" ) ; 35 DK GET VERTEX V Object Number, Limb Number, Vertex Number, TextureStageNumber
    DKAVM\DK_Basic3D_SetVector2ToVertexUV= AIsFunction( 1 , "DK_Basic3D_SetVector2ToVertexUV" ) ; 36 DK SET VECTOR2 TO VERTEX UV Vector2Result, Object Number, Limb Number, Vertex Number, TextureStageNumber
    DKAVM\DK_Basic3D_SetVertexNormals= AIsFunction( 1 , "DK_Basic3D_SetVertexNormals" ) ; 37 DK SET VERTEX NORMALS Object Number, Limb Number, Vertex Number, X, Y, Z
    DKAVM\DK_Basic3D_SetVertexNormalsToVector= AIsFunction( 1 , "DK_Basic3D_SetVertexNormalsToVector" ) ; 38 DK SET VERTEX NORMALS Object Number, Limb Number, Vertex Number, Vector3Source
    DKAVM\DK_Basic3D_SetVertexDiffuse= AIsFunction( 1 , "DK_Basic3D_SetVertexDiffuse" ) ; 39 DK SET VERTEX DIFFUSE Object Number, Limb Number, Vertex Number, Diffuse
    DKAVM\DK_Basic3D_SetVertexUV= AIsFunction( 1 , "DK_Basic3D_SetVertexUV" ) ; 40 DK SET VERTEX UV Object Number, Limb Number, Vertex Number, TextureStageNumber, U, V
    DKAVM\DK_Basic3D_SetVertexUVToVector= AIsFunction( 1 , "DK_Basic3D_SetVertexUVToVector" ) ; 41 DK SET VERTEX UV Object Number, Limb Number, Vertex Number, TextureStageNumber, Vector2Source
    DKAVM\DK_Basic3D_CalculateLimbBounds= AIsFunction( 1 , "DK_Basic3D_CalculateLimbBounds" ) ; 42 DK CALCULATEATE LIMB BOUNDS Object Number, Limb Number
    CloseLibrary( 1 )
   Else
    SUCCESS.l = 0
   EndIf
  ProcedureReturn SUCCESS
 EndProcedure

; IDE Options = PureBasic 4.10 Beta 2 (Windows - x86)
; CursorPosition = 49
; FirstLine = 11
; Folding = -
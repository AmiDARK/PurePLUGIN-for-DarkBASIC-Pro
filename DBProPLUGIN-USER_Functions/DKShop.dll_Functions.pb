; DarkBasic Professional RC2PBIncludes Ver 1.0 File - COMMANDS INITIALIZING
; By Frederic Cordier - 07.02.13
;
Procedure.l CheckDKSHOP()
  SUCCESS.l = 1
  If OpenLibrary( 1, "DKShop.dll")
    DKSHOP\DK_Basic3D_PickLimb= AIsFunction( 1 , "DK_Basic3D_PickLimb" ) ; 2 DK PICK LIMB Camera Number, X, Y, Object Number, Limb Start, Limb End
    DKSHOP\DK_Basic3D_GetPickVectorX= AIsFunction( 1 , "DK_Basic3D_GetPickVectorX" ) ; 3 DK GET PICK VECTOR X 
    DKSHOP\DK_Basic3D_GetPickVectorY= AIsFunction( 1 , "DK_Basic3D_GetPickVectorY" ) ; 4 DK GET PICK VECTOR Y 
    DKSHOP\DK_Basic3D_GetPickVectorZ= AIsFunction( 1 , "DK_Basic3D_GetPickVectorZ" ) ; 5 DK GET PICK VECTOR Z 
    DKSHOP\DK_Basic3D_GetPickVectorD= AIsFunction( 1 , "DK_Basic3D_GetPickVectorD" ) ; 6 DK GET PICK DISTANCE 
    DKSHOP\DK_GetPickPoly= AIsFunction( 1 , "DK_GetPickPoly" ) ; 7 DK GET PICK POLY 
    DKSHOP\DK_Camera_GetCameraFOV= AIsFunction( 1 , "DK_Camera_GetCameraFOV" ) ; 8 DK GET CAMERA FOV Camera Number
    DKSHOP\DK_Camera_GetCameraNear= AIsFunction( 1 , "DK_Camera_GetCameraNear" ) ; 9 DK GET CAMERA NEAR Camera Number
    DKSHOP\DK_Camera_GetCameraFar= AIsFunction( 1 , "DK_Camera_GetCameraFar" ) ; 10 DK GET CAMERA FAR Camera Number
    DKSHOP\DK_Camera_GetCameraViewX= AIsFunction( 1 , "DK_Camera_GetCameraViewX" ) ; 11 DK GET CAMERA VIEW X Camera Number
    DKSHOP\DK_Camera_GetCameraViewY= AIsFunction( 1 , "DK_Camera_GetCameraViewY" ) ; 12 DK GET CAMERA VIEW Y Camera Number
    DKSHOP\DK_Camera_GetCameraWidth= AIsFunction( 1 , "DK_Camera_GetCameraWidth" ) ; 13 DK GET CAMERA VIEW WIDTH Camera Number
    DKSHOP\DK_Camera_GetCameraHeight= AIsFunction( 1 , "DK_Camera_GetCameraHeight" ) ; 14 DK GET CAMERA VIEW HEIGHT Camera Number
    DKSHOP\DK_Camera_GetCameraAspect= AIsFunction( 1 , "DK_Camera_GetCameraAspect" ) ; 15 DK GET CAMERA ASPECT Camera Number
    DKSHOP\DK_Camera_Convert3DTo2D= AIsFunction( 1 , "DK_Camera_Convert3DTo2D" ) ; 16 DK CONVERT 3D TO 2D Camera Number, X, Y, Z
    DKSHOP\DK_Camera_Convert3DTo2DVector= AIsFunction( 1 , "DK_Camera_Convert3DTo2DVector" ) ; 17 DK CONVERT 3D TO 2D Camera Number, Vector3Source
    DKSHOP\DK_Camera_Convert2DTo3D= AIsFunction( 1 , "DK_Camera_Convert2DTo3D" ) ; 18 DK CONVERT 2D TO 3D Camera Number, X, Y, Distance
    DKSHOP\DK_Matrix_IntersectMatrix= AIsFunction( 1 , "DK_Matrix_IntersectMatrix" ) ; 19 DK INTERSECT MATRIX Matrix Number, X, Y, Z, ToX, ToY, ToZ
    DKSHOP\DK_Matrix_PickMatrix= AIsFunction( 1 , "DK_Matrix_PickMatrix" ) ; 20 DK PICK MATRIX Camera Number, X, Y, Matrix Start, Matrix End
    DKSHOP\DK_Vectors_GetMatrixElement= AIsFunction( 1 , "DK_Vectors_GetMatrixElement" ) ; 21 DK GET MATRIX4 ELEMENT Matrix4Source, Element Number
    DKSHOP\DK_Vectors_SetMatrixElement= AIsFunction( 1 , "DK_Vectors_SetMatrixElement" ) ; 22 DK SET MATRIX4 ELEMENT Matrix4Result, Element Number, Value
    DKSHOP\DK_Vectors_SetProjectionMatrix= AIsFunction( 1 , "DK_Vectors_SetProjectionMatrix" ) ; 23 DK SET PROJECTION MATRIX4 Camera Number, Matrix4Source
    DKSHOP\DK_Basic3D_IntersectLimb= AIsFunction( 1 , "DK_Basic3D_IntersectLimb" ) ; 24 DK INTERSECT LIMB Object Number, Limb Number, X, Y, Z, ToX, ToY, ToZ
    CloseLibrary( 1 )
   Else
    SUCCESS.l = 0
   EndIf
  ProcedureReturn SUCCESS
 EndProcedure

; IDE Options = PureBasic 4.10 Beta 2 (Windows - x86)
; CursorPosition = 30
; Folding = -
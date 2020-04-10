; DarkBasic Professional RC2PBIncludes Ver 1.0 File - COMMANDS WRAPPING
; By Frederic Cordier - 07.02.13
;
; *********************************************************************
Procedure.l DK_Basic3D_PickLimb( CameraNumber.l, X.l, Y.l, ObjectNumber.l, LimbStart.l, LimbEnd.l )
  Retour.l = CallCFunctionFast( *DKSHOP\DK_Basic3D_PickLimb, CameraNumber, X, Y, ObjectNumber, LimbStart, LimbEnd )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.f DK_Basic3D_GetPickVectorX()
  Retour.l = CallCFunctionFast( *DKSHOP\DK_Basic3D_GetPickVectorX )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DK_Basic3D_GetPickVectorY()
  Retour.l = CallCFunctionFast( *DKSHOP\DK_Basic3D_GetPickVectorY )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DK_Basic3D_GetPickVectorZ()
  Retour.l = CallCFunctionFast( *DKSHOP\DK_Basic3D_GetPickVectorZ )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DK_Basic3D_GetPickVectorD()
  Retour.l = CallCFunctionFast( *DKSHOP\DK_Basic3D_GetPickVectorD )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.l DK_GetPickPoly()
  Retour.l = CallCFunctionFast( *DKSHOP\DK_GetPickPoly )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.d DK_Camera_GetCameraFOV( CameraNumber.l )
  Retour.d = CallCFunctionFast( *DKSHOP\DK_Camera_GetCameraFOV, CameraNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.d DK_Camera_GetCameraNear( CameraNumber.l )
  Retour.d = CallCFunctionFast( *DKSHOP\DK_Camera_GetCameraNear, CameraNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.d DK_Camera_GetCameraFar( CameraNumber.l )
  Retour.d = CallCFunctionFast( *DKSHOP\DK_Camera_GetCameraFar, CameraNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DK_Camera_GetCameraViewX( CameraNumber.l )
  Retour.l = CallCFunctionFast( *DKSHOP\DK_Camera_GetCameraViewX, CameraNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DK_Camera_GetCameraViewY( CameraNumber.l )
  Retour.l = CallCFunctionFast( *DKSHOP\DK_Camera_GetCameraViewY, CameraNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DK_Camera_GetCameraWidth( CameraNumber.l )
  Retour.l = CallCFunctionFast( *DKSHOP\DK_Camera_GetCameraWidth, CameraNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DK_Camera_GetCameraHeight( CameraNumber.l )
  Retour.l = CallCFunctionFast( *DKSHOP\DK_Camera_GetCameraHeight, CameraNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.d DK_Camera_GetCameraAspect( CameraNumber.l )
  Retour.d = CallCFunctionFast( *DKSHOP\DK_Camera_GetCameraAspect, CameraNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DK_Camera_Convert3DTo2D( CameraNumber.l, X.f, Y.f, Z.f )
  CallCFunctionFast( *DKSHOP\DK_Camera_Convert3DTo2D, CameraNumber, X, Y, Z )
 EndProcedure
;
; *********************************************************************
Procedure DK_Camera_Convert3DTo2DVector( CameraNumber.l, Vector3Source.l )
  CallCFunctionFast( *DKSHOP\DK_Camera_Convert3DTo2DVector, CameraNumber, Vector3Source )
 EndProcedure
;
; *********************************************************************
Procedure DK_Camera_Convert2DTo3D( CameraNumber.l, X.l, Y.l, Distance.f )
  CallCFunctionFast( *DKSHOP\DK_Camera_Convert2DTo3D, CameraNumber, X, Y, Distance )
 EndProcedure
;
; *********************************************************************
Procedure.d DK_Matrix_IntersectMatrix( MatrixNumber.l, X.f, Y.f, Z.f, ToX.f, ToY.f, ToZ.f )
  Retour.d = CallCFunctionFast( *DKSHOP\DK_Matrix_IntersectMatrix, MatrixNumber, X, Y, Z, ToX, ToY, ToZ )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DK_Matrix_PickMatrix( CameraNumber.l, X.l, Y.l, MatrixStart.l, MatrixEnd.l )
  Retour.l = CallCFunctionFast( *DKSHOP\DK_Matrix_PickMatrix, CameraNumber, X, Y, MatrixStart, MatrixEnd )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.d DK_Vectors_GetMatrixElement( Matrix4Source.l, ElementNumber.l )
  Retour.d = CallCFunctionFast( *DKSHOP\DK_Vectors_GetMatrixElement, Matrix4Source, ElementNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DK_Vectors_SetMatrixElement( Matrix4Result.l, ElementNumber.l, Value.f )
  CallCFunctionFast( *DKSHOP\DK_Vectors_SetMatrixElement, Matrix4Result, ElementNumber, Value )
 EndProcedure
;
; *********************************************************************
Procedure DK_Vectors_SetProjectionMatrix( CameraNumber.l, Matrix4Source.l )
  CallCFunctionFast( *DKSHOP\DK_Vectors_SetProjectionMatrix, CameraNumber, Matrix4Source )
 EndProcedure
;
; *********************************************************************
Procedure.d DK_Basic3D_IntersectLimb( ObjectNumber.l, LimbNumber.l, X.f, Y.f, Z.f, ToX.f, ToY.f, ToZ.f )
  Retour.d = CallCFunctionFast( *DKSHOP\DK_Basic3D_IntersectLimb, ObjectNumber, LimbNumber, X, Y, Z, ToX, ToY, ToZ )
  ProcedureReturn Retour
 EndProcedure
;

; IDE Options = PureBasic v4.02 (Windows - x86)
; CursorPosition = 136
; FirstLine = 94
; Folding = ----
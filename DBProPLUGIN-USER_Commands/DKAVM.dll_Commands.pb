; DarkBasic Professional RC2PBIncludes Ver 1.0 File - COMMANDS WRAPPING
; By Frederic Cordier - 07.02.13
;
; *********************************************************************
Procedure.l DK_Basic3D_GetLimbCount( ObjectNumber.l )
  Retour.l = CallCFunctionFast( *DKAVM\DK_Basic3D_GetLimbCount, ObjectNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DK_Basic3D_GetFVF( ObjectNumber.l )
  Retour.l = CallCFunctionFast( *DKAVM\DK_Basic3D_GetFVF, ObjectNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DK_Basic3D_GetWireFrame( ObjectNumber.l )
  Retour.l = CallCFunctionFast( *DKAVM\DK_Basic3D_GetWireFrame, ObjectNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DK_Basic3D_GetCull( ObjectNumber.l )
  Retour.l = CallCFunctionFast( *DKAVM\DK_Basic3D_GetCull, ObjectNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DK_Basic3D_GetLight( ObjectNumber.l )
  Retour.l = CallCFunctionFast( *DKAVM\DK_Basic3D_GetLight, ObjectNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DK_Basic3D_GetAmbient( ObjectNumber.l )
  Retour.l = CallCFunctionFast( *DKAVM\DK_Basic3D_GetAmbient, ObjectNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DK_Basic3D_GetFog( ObjectNumber.l )
  Retour.l = CallCFunctionFast( *DKAVM\DK_Basic3D_GetFog, ObjectNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DK_Basic3D_GetTransparency( ObjectNumber.l )
  Retour.l = CallCFunctionFast( *DKAVM\DK_Basic3D_GetTransparency, ObjectNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DK_Basic3D_GetGhost( ObjectNumber.l )
  Retour.l = CallCFunctionFast( *DKAVM\DK_Basic3D_GetGhost, ObjectNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DK_Basic3D_GetLimbVertexCount( ObjectNumber.l, LimbNumber.l )
  Retour.l = CallCFunctionFast( *DKAVM\DK_Basic3D_GetLimbVertexCount, ObjectNumber, LimbNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DK_Basic3D_GetLimbWireFrame( ObjectNumber.l, LimbNumber.l )
  Retour.l = CallCFunctionFast( *DKAVM\DK_Basic3D_GetLimbWireFrame, ObjectNumber, LimbNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DK_Basic3D_GetLimbCull( ObjectNumber.l, LimbNumber.l )
  Retour.l = CallCFunctionFast( *DKAVM\DK_Basic3D_GetLimbCull, ObjectNumber, LimbNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DK_Basic3D_GetLimbLight( ObjectNumber.l, LimbNumber.l )
  Retour.l = CallCFunctionFast( *DKAVM\DK_Basic3D_GetLimbLight, ObjectNumber, LimbNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DK_Basic3D_GetLimbAmbient( ObjectNumber.l, LimbNumber.l )
  Retour.l = CallCFunctionFast( *DKAVM\DK_Basic3D_GetLimbAmbient, ObjectNumber, LimbNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DK_Basic3D_GetLimbFog( ObjectNumber.l, LimbNumber.l )
  Retour.l = CallCFunctionFast( *DKAVM\DK_Basic3D_GetLimbFog, ObjectNumber, LimbNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DK_Basic3D_GetLimbTransparency( ObjectNumber.l, LimbNumber.l )
  Retour.l = CallCFunctionFast( *DKAVM\DK_Basic3D_GetLimbTransparency, ObjectNumber, LimbNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DK_Basic3D_GetLimbGhost( ObjectNumber.l, LimbNumber.l )
  Retour.l = CallCFunctionFast( *DKAVM\DK_Basic3D_GetLimbGhost, ObjectNumber, LimbNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DK_Basic3D_GetLimbFVF( ObjectNumber.l, LimbNumber.l )
  Retour.l = CallCFunctionFast( *DKAVM\DK_Basic3D_GetLimbFVF, ObjectNumber, LimbNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DK_Basic3D_ConvertObjectLimbToVertsList( ObjectNumber.l, LimbNumber.l )
  CallCFunctionFast( *DKAVM\DK_Basic3D_ConvertObjectLimbToVertsList, ObjectNumber, LimbNumber )
 EndProcedure
;
; *********************************************************************
Procedure DK_Basic3D_LimbMatrix( Matrix4Result.l, ObjectNumber.l, LimbNumber.l )
  CallCFunctionFast( *DKAVM\DK_Basic3D_LimbMatrix, Matrix4Result, ObjectNumber, LimbNumber )
 EndProcedure
;
; *********************************************************************
Procedure.l DK_Basic3D_GetLimbPrimitiveT( ObjectNumber.l, LimbNumber.l )
  Retour.l = CallCFunctionFast( *DKAVM\DK_Basic3D_GetLimbPrimitiveT, ObjectNumber, LimbNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DK_Basic3D_LimbSharedVerts( ObjectNumber.l, LimbNumber.l )
  Retour.l = CallCFunctionFast( *DKAVM\DK_Basic3D_LimbSharedVerts, ObjectNumber, LimbNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.f DK_Basic3D_GetVertexPositionX( ObjectNumber.l, LimbNumber.l, VertexNumber.l )
  Retour.l = CallCFunctionFast( *DKAVM\DK_Basic3D_GetVertexPositionX, ObjectNumber, LimbNumber, VertexNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DK_Basic3D_GetVertexPositionY( ObjectNumber.l, LimbNumber.l, VertexNumber.l )
  Retour.l = CallCFunctionFast( *DKAVM\DK_Basic3D_GetVertexPositionY, ObjectNumber, LimbNumber, VertexNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DK_Basic3D_GetVertexPositionZ( ObjectNumber.l, LimbNumber.l, VertexNumber.l )
  Retour.l = CallCFunctionFast( *DKAVM\DK_Basic3D_GetVertexPositionZ, ObjectNumber, LimbNumber, VertexNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure DK_Basic3D_SetVector3ToVertexPosition( Vector3Result.l, ObjectNumber.l, LimbNumber.l, VertexNumber.l )
  CallCFunctionFast( *DKAVM\DK_Basic3D_SetVector3ToVertexPosition, Vector3Result, ObjectNumber, LimbNumber, VertexNumber )
 EndProcedure
;
; *********************************************************************
Procedure DK_Basic3D_SetVertexPosition( ObjectNumber.l, LimbNumber.l, VertexNumber.l, X.f, Y.f, Z.f )
  CallCFunctionFast( *DKAVM\DK_Basic3D_SetVertexPosition, ObjectNumber, LimbNumber, VertexNumber, X, Y, Z )
 EndProcedure
;
; *********************************************************************
Procedure DK_Basic3D_SetVertexPositionToVector( ObjectNumber.l, LimbNumber.l, VertexNumber.l, Vector3Source.l )
  CallCFunctionFast( *DKAVM\DK_Basic3D_SetVertexPositionToVector, ObjectNumber, LimbNumber, VertexNumber, Vector3Source )
 EndProcedure
;
; *********************************************************************
Procedure.f DK_Basic3D_GetVertexNormalsX( ObjectNumber.l, LimbNumber.l, VertexNumber.l )
  Retour.l = CallCFunctionFast( *DKAVM\DK_Basic3D_GetVertexNormalsX, ObjectNumber, LimbNumber, VertexNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DK_Basic3D_GetVertexNormalsY( ObjectNumber.l, LimbNumber.l, VertexNumber.l )
  Retour.l = CallCFunctionFast( *DKAVM\DK_Basic3D_GetVertexNormalsY, ObjectNumber, LimbNumber, VertexNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DK_Basic3D_GetVertexNormalsZ( ObjectNumber.l, LimbNumber.l, VertexNumber.l )
  Retour.l = CallCFunctionFast( *DKAVM\DK_Basic3D_GetVertexNormalsZ, ObjectNumber, LimbNumber, VertexNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure DK_Basic3D_SetVector3ToVertexNormals( Vector3Result.l, ObjectNumber.l, LimbNumber.l, VertexNumber.l )
  CallCFunctionFast( *DKAVM\DK_Basic3D_SetVector3ToVertexNormals, Vector3Result, ObjectNumber, LimbNumber, VertexNumber )
 EndProcedure
;
; *********************************************************************
Procedure.l DK_Basic3D_GetVertexDiffuse( ObjectNumber.l, LimbNumber.l, VertexNumber.l )
  Retour.l = CallCFunctionFast( *DKAVM\DK_Basic3D_GetVertexDiffuse, ObjectNumber, LimbNumber, VertexNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.f DK_Basic3D_GetVertexU( ObjectNumber.l, LimbNumber.l, VertexNumber.l, TextureStageNumber.l )
  Retour.l = CallCFunctionFast( *DKAVM\DK_Basic3D_GetVertexU, ObjectNumber, LimbNumber, VertexNumber, TextureStageNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DK_Basic3D_GetVertexV( ObjectNumber.l, LimbNumber.l, VertexNumber.l, TextureStageNumber.l )
  Retour.l = CallCFunctionFast( *DKAVM\DK_Basic3D_GetVertexV, ObjectNumber, LimbNumber, VertexNumber, TextureStageNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure DK_Basic3D_SetVector2ToVertexUV( Vector2Result.l, ObjectNumber.l, LimbNumber.l, VertexNumber.l, TextureStageNumber.l )
  CallCFunctionFast( *DKAVM\DK_Basic3D_SetVector2ToVertexUV, Vector2Result, ObjectNumber, LimbNumber, VertexNumber, TextureStageNumber )
 EndProcedure
;
; *********************************************************************
Procedure DK_Basic3D_SetVertexNormals( ObjectNumber.l, LimbNumber.l, VertexNumber.l, X.f, Y.f, Z.f )
  CallCFunctionFast( *DKAVM\DK_Basic3D_SetVertexNormals, ObjectNumber, LimbNumber, VertexNumber, X, Y, Z )
 EndProcedure
;
; *********************************************************************
Procedure DK_Basic3D_SetVertexNormalsToVector( ObjectNumber.l, LimbNumber.l, VertexNumber.l, Vector3Source.l )
  CallCFunctionFast( *DKAVM\DK_Basic3D_SetVertexNormalsToVector, ObjectNumber, LimbNumber, VertexNumber, Vector3Source )
 EndProcedure
;
; *********************************************************************
Procedure DK_Basic3D_SetVertexDiffuse( ObjectNumber.l, LimbNumber.l, VertexNumber.l, Diffuse.l )
  CallCFunctionFast( *DKAVM\DK_Basic3D_SetVertexDiffuse, ObjectNumber, LimbNumber, VertexNumber, Diffuse )
 EndProcedure
;
; *********************************************************************
Procedure DK_Basic3D_SetVertexUV( ObjectNumber.l, LimbNumber.l, VertexNumber.l, TextureStageNumber.l, U.f, V.f )
  CallCFunctionFast( *DKAVM\DK_Basic3D_SetVertexUV, ObjectNumber, LimbNumber, VertexNumber, TextureStageNumber, U, V )
 EndProcedure
;
; *********************************************************************
Procedure DK_Basic3D_SetVertexUVToVector( ObjectNumber.l, LimbNumber.l, VertexNumber.l, TextureStageNumber.l, Vector2Source.l )
  CallCFunctionFast( *DKAVM\DK_Basic3D_SetVertexUVToVector, ObjectNumber, LimbNumber, VertexNumber, TextureStageNumber, Vector2Source )
 EndProcedure
;
; *********************************************************************
Procedure DK_Basic3D_CalculateLimbBounds( ObjectNumber.l, LimbNumber.l )
  CallCFunctionFast( *DKAVM\DK_Basic3D_CalculateLimbBounds, ObjectNumber, LimbNumber )
 EndProcedure
;

; IDE Options = PureBasic v4.02 (Windows - x86)
; CursorPosition = 58
; FirstLine = 37
; Folding = --------
; DarkBasic Professional RC2PBIncludes Ver 1.0 File - COMMANDS WRAPPING
; By Frederic Cordier - 07.02.13
;
; *********************************************************************
Procedure.l GetObjectEffect( Param1.l, Param2.l )
  Retour.l = CallCFunctionFast( *DB_ShaderData\GetObjectEffect, Param1, Param2 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure SaveEffect( Param0.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param0PTR.l, Len( Param0 ) + 1 ) ; CreateString
  PokeS( Param0PTR, Param0 )
  CallCFunctionFast( *DB_ShaderData\SaveEffect, Param0PTR )
 EndProcedure
;
; *********************************************************************
Procedure.l GetTextureStageInUse( Param1.l, Param2.l, Param3.l )
  Retour.l = CallCFunctionFast( *DB_ShaderData\GetTextureStageInUse, Param1, Param2, Param3 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l GetEffectTextureCount()
  Retour.l = CallCFunctionFast( *DB_ShaderData\GetEffectTextureCount )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l GetExternalParameterColumns( Param1.l )
  Retour.l = CallCFunctionFast( *DB_ShaderData\GetExternalParameterColumns, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l GetExternalParameterRows( Param1.l )
  Retour.l = CallCFunctionFast( *DB_ShaderData\GetExternalParameterRows, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l CountExternalParameters()
  Retour.l = CallCFunctionFast( *DB_ShaderData\CountExternalParameters )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure ReleaseEffectPointer()
  CallCFunctionFast( *DB_ShaderData\ReleaseEffectPointer )
 EndProcedure
;
; *********************************************************************
Procedure.s GetExternalParameterName( Param1.l )
  Retour.l = CallCFunctionFast( *DB_ShaderData\GetExternalParameterName, 0, Param1 )
  If Retour <> 0
    RetourSTR.s = PeekS( Retour )
    CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
   Else
    RetourSTR = ""
   EndIf
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure.l GetExternalParameterType( Param1.l )
  Retour.l = CallCFunctionFast( *DB_ShaderData\GetExternalParameterType, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.s GetExternalParameterSemantic( Param1.l )
  Retour.l = CallCFunctionFast( *DB_ShaderData\GetExternalParameterSemantic, 0, Param1 )
  If Retour <> 0
    RetourSTR.s = PeekS( Retour )
    CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
   Else
    RetourSTR = ""
   EndIf
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure.l GetExternalParameterAnnotationCount( Param1.l )
  Retour.l = CallCFunctionFast( *DB_ShaderData\GetExternalParameterAnnotationCount, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.s GetEffectDescription()
  Retour.l = CallCFunctionFast( *DB_ShaderData\GetEffectDescription, 0)
  If Retour <> 0
    RetourSTR.s = PeekS( Retour )
    CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
   Else
    RetourSTR = ""
   EndIf
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure.s GetEffectImage()
  Retour.l = CallCFunctionFast( *DB_ShaderData\GetEffectImage, 0 )
  If Retour <> 0
    RetourSTR.s = PeekS( Retour )
    CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
   Else
    RetourSTR = ""
   EndIf
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure SetMatrix4( Param0.l, Param1.l, Param2.l, Param3.f )
  CallCFunctionFast( *DB_ShaderData\SetMatrix4, Param0, Param1, Param2, Param3 )
 EndProcedure
;
; *********************************************************************
Procedure.f GetMatrix4( Param1.l, Param2.l, Param3.l )
  Retour.l = CallCFunctionFast( *DB_ShaderData\GetMatrix4, Param1, Param2, Param3 )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f GetEffectParameterFloatValue( Param1.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param1PTR.l, Len( Param1 ) + 1 ) ; CreateString
  PokeS( Param1PTR, Param1 )
  Retour.l = CallCFunctionFast( *DB_ShaderData\GetEffectParameterFloatValue, Param1PTR )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure GetEffectParameterVectorValue( Param0.s, Param1.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param0PTR.l, Len( Param0 ) + 1 ) ; CreateString
  PokeS( Param0PTR, Param0 )
  CallCFunctionFast( *DB_ShaderData\GetEffectParameterVectorValue, Param0PTR, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure.l DebugCompileEffect( Param1.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param1PTR.l, Len( Param1 ) + 1 ) ; CreateString
  PokeS( Param1PTR, Param1 )
  Retour.l = CallCFunctionFast( *DB_ShaderData\DebugCompileEffect, Param1PTR )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.s GetEffectErrorString( Param1.l )
  Retour.l = CallCFunctionFast( *DB_ShaderData\GetEffectErrorString, 0, Param1 )
  If Retour <> 0
    RetourSTR.s = PeekS( Retour )
    CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
   Else
    RetourSTR = ""
   EndIf
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure Render()
  CallCFunctionFast( *DB_ShaderData\Render )
 EndProcedure
;
; *********************************************************************
Procedure ReleaseErrorPointer()
  CallCFunctionFast( *DB_ShaderData\ReleaseErrorPointer )
 EndProcedure
;
; *********************************************************************
Procedure.s FindDefaultTechnique()
  Retour.l = CallCFunctionFast( *DB_ShaderData\FindDefaultTechnique, 0 )
  If Retour <> 0
    RetourSTR.s = PeekS( Retour )
    CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
   Else
    RetourSTR = ""
   EndIf
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure.s FindLightTechnique( Param1.l )
  Retour.l = CallCFunctionFast( *DB_ShaderData\FindLightTechnique, 0, Param1 )
  If Retour <> 0
    RetourSTR.s = PeekS( Retour )
    CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
   Else
    RetourSTR = ""
   EndIf
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure SetEffectConstantVectorElement( Param0.s, Param1.l, Param2.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param0PTR.l, Len( Param0 ) + 1 ) ; CreateString
  PokeS( Param0PTR, Param0 )
  CallCFunctionFast( *DB_ShaderData\SetEffectConstantVectorElement, Param0PTR, Param1, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure MakerDataDynamicCubeMap( Param0.l, Param1.l )
  CallCFunctionFast( *DB_ShaderData\MakeDynamicCubeMap, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure DeleteDynamicCubeMap( Param0.l )
  CallCFunctionFast( *DB_ShaderData\DeleteDynamicCubeMap, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure RenderDynamicCubeMap( Param0.l, Param1.l, Param2.f, Param3.f, Param4.f )
  CallCFunctionFast( *DB_ShaderData\RenderDynamicCubeMap, Param0, Param1, Param2, Param3, Param4 )
 EndProcedure
;
; *********************************************************************
Procedure ApplyCubeMapToObject( Param0.l, Param1.l, Param2.l )
  CallCFunctionFast( *DB_ShaderData\ApplyCubeMapToObject, Param0, Param1, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure OnResetDevice()
  CallCFunctionFast( *DB_ShaderData\OnResetDevice )
 EndProcedure
;
; *********************************************************************
Procedure ApplyCubeMapToObject1( Param0.l, Param1.l, Param2.l, Param3.l )
  CallCFunctionFast( *DB_ShaderData\ApplyCubeMapToObject1, Param0, Param1, Param2, Param3 )
 EndProcedure
;
; *********************************************************************
Procedure.s GetEffectTextureName( Param1.l )
  Retour.l = CallCFunctionFast( *DB_ShaderData\GetEffectTextureName, 0, Param1 )
  If Retour <> 0
    RetourSTR.s = PeekS( Retour )
    CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
   Else
    RetourSTR = ""
   EndIf
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure MakerDatarDataDynamicCubeMap1( Param0.l, Param1.l, Param2.l )
  CallCFunctionFast( *DB_ShaderData\MakeDynamicCubeMap1, Param0, Param1, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure.l GetEffectParameterCount()
  Retour.l = CallCFunctionFast( *DB_ShaderData\GetEffectParameterCount )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure RemoveCameraFromImage( Param0.l )
  CallCFunctionFast( *DB_ShaderData\RemoveCameraFromImage, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure.l DynamicCubeMapExist( Param1.l )
  Retour.l = CallCFunctionFast( *DB_ShaderData\DynamicCubeMapExist, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.s GetParameterAnnotationString( Param1.s, Param2.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param1PTR.l, Len( Param1 ) + 1 ) ; CreateString
  PokeS( Param1PTR, Param1 )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param2PTR.l, Len( Param2 ) + 1 ) ; CreateString
  PokeS( Param2PTR, Param2 )
  Retour.l = CallCFunctionFast( *DB_ShaderData\GetParameterAnnotationString, 0, Param1PTR, Param2PTR )
  If Retour <> 0
    RetourSTR.s = PeekS( Retour )
    CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
   Else
    RetourSTR = ""
   EndIf
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure.f GetParameterAnnotationFloat( Param1.s, Param2.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param1PTR.l, Len( Param1 ) + 1 ) ; CreateString
  PokeS( Param1PTR, Param1 )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param2PTR.l, Len( Param2 ) + 1 ) ; CreateString
  PokeS( Param2PTR, Param2 )
  Retour.l = CallCFunctionFast( *DB_ShaderData\GetParameterAnnotationFloat, Param1PTR, Param2PTR )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure LoadCameraEffect( Param0.s, Param1.l, Param2.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param0PTR.l, Len( Param0 ) + 1 ) ; CreateString
  PokeS( Param0PTR, Param0 )
  CallCFunctionFast( *DB_ShaderData\LoadCameraEffect, Param0PTR, Param1, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure DeleteCameraEffect( Param0.l )
  CallCFunctionFast( *DB_ShaderData\DeleteCameraEffect, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure SetCameraEffect( Param0.l, Param1.l, Param2.l )
  CallCFunctionFast( *DB_ShaderData\SetCameraEffect, Param0, Param1, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure RemoveCameraEffect( Param0.l )
  CallCFunctionFast( *DB_ShaderData\RemoveCameraEffect, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure SyncCamera( Param0.l )
  CallCFunctionFast( *DB_ShaderData\SyncCamera, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure SetCameraToSurface( Param0.l )
  CallCFunctionFast( *DB_ShaderData\SetCameraToSurface, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure.l CameraEffectExist( Param1.l )
  Retour.l = CallCFunctionFast( *DB_ShaderData\CameraEffectExist, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l GetCameraEffect( Param1.l )
  Retour.l = CallCFunctionFast( *DB_ShaderData\GetCameraEffect, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure SetCameraEffectConstantFloat( Param0.l, Param1.s, Param2.f )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param1PTR.l, Len( Param1 ) + 1 ) ; CreateString
  PokeS( Param1PTR, Param1 )
  CallCFunctionFast( *DB_ShaderData\SetCameraEffectConstantFloat, Param0, Param1PTR, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure SetCameraEffectConstantInt( Param0.l, Param1.s, Param2.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param1PTR.l, Len( Param1 ) + 1 ) ; CreateString
  PokeS( Param1PTR, Param1 )
  CallCFunctionFast( *DB_ShaderData\SetCameraEffectConstantInt, Param0, Param1PTR, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure SetCameraEffectConstantVector( Param0.l, Param1.s, Param2.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param1PTR.l, Len( Param1 ) + 1 ) ; CreateString
  PokeS( Param1PTR, Param1 )
  CallCFunctionFast( *DB_ShaderData\SetCameraEffectConstantVector, Param0, Param1PTR, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure CheckData()
  CallCFunctionFast( *DB_ShaderData\CheckData )
 EndProcedure
;
; *********************************************************************
Procedure.l IsLightingShader()
  Retour.l = CallCFunctionFast( *DB_ShaderData\IsLightingShader )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l IsDynamicTexture( Param1.l )
  Retour.l = CallCFunctionFast( *DB_ShaderData\IsDynamicTexture, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.s GetDynamicTextureName( Param1.l )
  Retour.l = CallCFunctionFast( *DB_ShaderData\GetDynamicTextureName, 0, Param1 )
  If Retour <> 0
    RetourSTR.s = PeekS( Retour )
    CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
   Else
    RetourSTR = ""
   EndIf
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure.l IsAlphaMappingShader()
  Retour.l = CallCFunctionFast( *DB_ShaderData\IsAlphaMappingShader )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l GetTextureType( Param1.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param1PTR.l, Len( Param1 ) + 1 ) ; CreateString
  PokeS( Param1PTR, Param1 )
  Retour.l = CallCFunctionFast( *DB_ShaderData\GetTextureType, Param1PTR )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l GetParameterAnnotationExist( Param1.s, Param2.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param1PTR.l, Len( Param1 ) + 1 ) ; CreateString
  PokeS( Param1PTR, Param1 )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param2PTR.l, Len( Param2 ) + 1 ) ; CreateString
  PokeS( Param2PTR, Param2 )
  Retour.l = CallCFunctionFast( *DB_ShaderData\GetParameterAnnotationExist, Param1PTR, Param2PTR )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l GetVertexShaderVersion()
  Retour.l = CallCFunctionFast( *DB_ShaderData\GetVertexShaderVersion )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l GetPixelShaderVersion()
  Retour.l = CallCFunctionFast( *DB_ShaderData\GetPixelShaderVersion )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.s GetTextureFileName( Param1.l, Param2.l, Param3.l )
  Retour.l = CallCFunctionFast( *DB_ShaderData\GetTextureFileName, 0, Param1, Param2, Param3 )
  If Retour <> 0
    RetourSTR.s = PeekS( Retour )
    CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
   Else
    RetourSTR = ""
   EndIf
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure OnResetDevice1()
  CallCFunctionFast( *DB_ShaderData\OnResetDevice1 )
 EndProcedure
;

; IDE Options = PureBasic v4.02 (Windows - x86)
; CursorPosition = 52
; FirstLine = 49
; Folding = -----------
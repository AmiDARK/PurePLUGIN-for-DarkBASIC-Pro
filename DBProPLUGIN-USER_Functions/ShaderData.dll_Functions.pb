; DarkBasic Professional RC2PBIncludes Ver 1.0 File - COMMANDS INITIALIZING
; By Frederic Cordier - 07.02.13
;
Procedure.l CheckShaderData()
  SUCCESS.l = 1
  If OpenLibrary( 1, "ShaderData.dll")
    DB_ShaderData\GetObjectEffect= AIsFunction( 1 , "?GetObjectEffect@@YAHHH@Z" ) ; 101 Get Object Effect 
    DB_ShaderData\SaveEffect= AIsFunction( 1 , "?SaveEffect@@YAXPAD@Z" ) ; 102 Save Effect 
    DB_ShaderData\GetTextureStageInUse= AIsFunction( 1 , "?GetTextureStageInUse@@YAHHHH@Z" ) ; 103 Get Texture Stage In Use 
    DB_ShaderData\GetEffectTextureCount= AIsFunction( 1 , "?GetEffectTextureCount@@YAHXZ" ) ; 104 Get Effect Texture Count 
    DB_ShaderData\GetExternalParameterColumns= AIsFunction( 1 , "?GetExternalParameterColumns@@YAHH@Z" ) ; 105 Get External Parameter Columns 
    DB_ShaderData\GetExternalParameterRows= AIsFunction( 1 , "?GetExternalParameterRows@@YAHH@Z" ) ; 106 Get External Parameter Rows 
    DB_ShaderData\CountExternalParameters= AIsFunction( 1 , "?CountExternalParameters@@YAHXZ" ) ; 107 Count External Parameters 
    DB_ShaderData\ReleaseEffectPointer= AIsFunction( 1 , "?ReleaseEffectPointer@@YAXXZ" ) ; 108 Release Effect Pointer 
    DB_ShaderData\GetExternalParameterName= AIsFunction( 1 , "?GetExternalParameterName@@YAKKH@Z" ) ; 109 Get External Parameter Name 
    DB_ShaderData\GetExternalParameterType= AIsFunction( 1 , "?GetExternalParameterType@@YAHH@Z" ) ; 110 Get External Parameter Type 
    DB_ShaderData\GetExternalParameterSemantic= AIsFunction( 1 , "?GetExternalParameterSemantic@@YAKKH@Z" ) ; 111 Get External Parameter Semantic 
    DB_ShaderData\GetExternalParameterAnnotationCount= AIsFunction( 1 , "?GetExternalParameterAnnotationCount@@YAHH@Z" ) ; 112 Get External Parameter Annotation Count 
    DB_ShaderData\GetEffectDescription= AIsFunction( 1 , "?GetEffectDescription@@YAKK@Z" ) ; 113 Get Effect Description 
    DB_ShaderData\GetEffectImage= AIsFunction( 1 , "?GetEffectImage@@YAKK@Z" ) ; 114 Get Effect Image 
    DB_ShaderData\SetMatrix4= AIsFunction( 1 , "?SetMatrix4@@YAXHHHM@Z" ) ; 115 Set Matrix4 
    DB_ShaderData\GetMatrix4= AIsFunction( 1 , "?GetMatrix4@@YAKHHH@Z" ) ; 116 Get Matrix4 
    DB_ShaderData\GetEffectParameterFloatValue= AIsFunction( 1 , "?GetEffectParameterFloatValue@@YAKK@Z" ) ; 117 Get Effect Parameter Float Value 
    DB_ShaderData\GetEffectParameterVectorValue= AIsFunction( 1 , "?GetEffectParameterVectorValue@@YAXKH@Z" ) ; 118 Get Effect Parameter Vector Value 
    DB_ShaderData\DebugCompileEffect= AIsFunction( 1 , "?DebugCompileEffect@@YAHK@Z" ) ; 119 Debug Compile Effect 
    DB_ShaderData\GetEffectErrorString= AIsFunction( 1 , "?GetEffectErrorString@@YAKKH@Z" ) ; 120 Get Effect Error String 
    DB_ShaderData\Render= AIsFunction( 1 , "?Render@@YAXXZ" ) ; 121 Render 
    DB_ShaderData\ReleaseErrorPointer= AIsFunction( 1 , "?ReleaseErrorPointer@@YAXXZ" ) ; 122 Release Error Pointer 
    DB_ShaderData\FindDefaultTechnique= AIsFunction( 1 , "?FindDefaultTechnique@@YAKK@Z" ) ; 123 Find Default Technique 
    DB_ShaderData\FindLightTechnique= AIsFunction( 1 , "?FindLightTechnique@@YAKKH@Z" ) ; 124 Find Light Technique 
    DB_ShaderData\SetEffectConstantVectorElement= AIsFunction( 1 , "?SetEffectConstantVectorElement@@YAXKHH@Z" ) ; 125 Set Effect Constant Vector Element 
    DB_ShaderData\MakeDynamicCubeMap= AIsFunction( 1 , "?MakeDynamicCubeMap@@YAXHH@Z" ) ; 126 Make Dynamic Cube Map 
    DB_ShaderData\DeleteDynamicCubeMap= AIsFunction( 1 , "?DeleteDynamicCubeMap@@YAXH@Z" ) ; 127 Delete Dynamic Cube Map 
    DB_ShaderData\RenderDynamicCubeMap= AIsFunction( 1 , "?RenderDynamicCubeMap@@YAXHHMMM@Z" ) ; 128 Render Dynamic Cube Map 
    DB_ShaderData\ApplyCubeMapToObject= AIsFunction( 1 , "?ApplyCubeMapToObject@@YAXHHH@Z" ) ; 129 Apply Cube Map To Object 
    DB_ShaderData\OnResetDevice= AIsFunction( 1 , "?OnResetDevice@@YAXXZ" ) ; 130 On Reset Device 
    DB_ShaderData\ApplyCubeMapToObject1= AIsFunction( 1 , "?ApplyCubeMapToObject@@YAXHHHH@Z" ) ; 131 Apply Cube Map To Object 
    DB_ShaderData\GetEffectTextureName= AIsFunction( 1 , "?GetEffectTextureName@@YAKKH@Z" ) ; 132 Get Effect Texture Name 
    DB_ShaderData\MakeDynamicCubeMap1= AIsFunction( 1 , "?MakeDynamicCubeMap@@YAXHHH@Z" ) ; 133 Make Dynamic Cube Map 
    DB_ShaderData\GetEffectParameterCount= AIsFunction( 1 , "?GetEffectParameterCount@@YAHXZ" ) ; 134 Get Effect Parameter Count 
    DB_ShaderData\RemoveCameraFromImage= AIsFunction( 1 , "?RemoveCameraFromImage@@YAXH@Z" ) ; 135 Remove Camera From Image 
    DB_ShaderData\DynamicCubeMapExist= AIsFunction( 1 , "?DynamicCubeMapExist@@YAHH@Z" ) ; 136 Dynamic Cube Map Exist 
    DB_ShaderData\GetParameterAnnotationString= AIsFunction( 1 , "?GetParameterAnnotationString@@YAKKKK@Z" ) ; 137 Get Parameter Annotation String 
    DB_ShaderData\GetParameterAnnotationFloat= AIsFunction( 1 , "?GetParameterAnnotationFloat@@YAKKK@Z" ) ; 138 Get Parameter Annotation Float 
    DB_ShaderData\LoadCameraEffect= AIsFunction( 1 , "?LoadCameraEffect@@YAXPADHH@Z" ) ; 139 Load Camera Effect 
    DB_ShaderData\DeleteCameraEffect= AIsFunction( 1 , "?DeleteCameraEffect@@YAXH@Z" ) ; 140 Delete Camera Effect 
    DB_ShaderData\SetCameraEffect= AIsFunction( 1 , "?SetCameraEffect@@YAXHHH@Z" ) ; 141 Set Camera Effect 
    DB_ShaderData\RemoveCameraEffect= AIsFunction( 1 , "?RemoveCameraEffect@@YAXH@Z" ) ; 142 Remove Camera Effect 
    DB_ShaderData\SyncCamera= AIsFunction( 1 , "?SyncCamera@@YAXH@Z" ) ; 143 Sync Camera 
    DB_ShaderData\SetCameraToSurface= AIsFunction( 1 , "?SetCameraToSurface@@YAXH@Z" ) ; 144 Set Camera To Surface 
    DB_ShaderData\CameraEffectExist= AIsFunction( 1 , "?CameraEffectExist@@YAHH@Z" ) ; 145 Camera Effect Exist 
    DB_ShaderData\GetCameraEffect= AIsFunction( 1 , "?GetCameraEffect@@YAHH@Z" ) ; 146 Get Camera Effect 
    DB_ShaderData\SetCameraEffectConstantFloat= AIsFunction( 1 , "?SetCameraEffectConstantFloat@@YAXHPADM@Z" ) ; 147 Set Camera Effect Constant Float 
    DB_ShaderData\SetCameraEffectConstantInt= AIsFunction( 1 , "?SetCameraEffectConstantInt@@YAXHPADH@Z" ) ; 148 Set Camera Effect Constant Integer 
    DB_ShaderData\SetCameraEffectConstantVector= AIsFunction( 1 , "?SetCameraEffectConstantVector@@YAXHPADH@Z" ) ; 149 Set Camera Effect Constant Vector 
    DB_ShaderData\CheckData= AIsFunction( 1 , "?CheckData@@YAXXZ" ) ; 150 Check Data 
    DB_ShaderData\IsLightingShader= AIsFunction( 1 , "?IsLightingShader@@YAHXZ" ) ; 151 Is Lighting Shader 
    DB_ShaderData\IsDynamicTexture= AIsFunction( 1 , "?IsDynamicTexture@@YAHH@Z" ) ; 152 Is Dynamic Texture 
    DB_ShaderData\GetDynamicTextureName= AIsFunction( 1 , "?GetDynamicTextureName@@YAKKH@Z" ) ; 153 Get Dynamic Texture Name 
    DB_ShaderData\IsAlphaMappingShader= AIsFunction( 1 , "?IsAlphaMappingShader@@YAHXZ" ) ; 154 Is Alpha Mapping Shader 
    DB_ShaderData\GetTextureType= AIsFunction( 1 , "?GetTextureType@@YAHK@Z" ) ; 155 Get Texture Type 
    DB_ShaderData\GetParameterAnnotationExist= AIsFunction( 1 , "?GetParameterAnnotationExist@@YAHKK@Z" ) ; 156 Get Parameter Annotation Exist 
    DB_ShaderData\GetVertexShaderVersion= AIsFunction( 1 , "?GetVertexShaderVersion@@YAHXZ" ) ; 157 Get Effect VS Version 
    DB_ShaderData\GetPixelShaderVersion= AIsFunction( 1 , "?GetPixelShaderVersion@@YAHXZ" ) ; 158 Get Effect PS Version 
    DB_ShaderData\GetTextureFileName= AIsFunction( 1 , "?GetTextureFileName@@YAKKHHH@Z" ) ; 159 Get Model Texture Name 
    DB_ShaderData\OnResetDevice1= AIsFunction( 1 , "?OnResetDevice@@YAXXZ" ) ; 160 Reload Display Pointer 
    CloseLibrary( 1 )
   Else
    SUCCESS.l = 0
   EndIf
  ProcedureReturn SUCCESS
 EndProcedure

; IDE Options = PureBasic 4.10 Beta 2 (Windows - x86)
; CursorPosition = 67
; FirstLine = 25
; Folding = -
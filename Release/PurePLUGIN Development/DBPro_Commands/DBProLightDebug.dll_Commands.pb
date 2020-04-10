; DarkBasic Professional RC2PBIncludes Ver 1. File - COMMANDS WRAPPING
; By Frederic Cordier - 07.02.13
;
; *********************************************************************
Procedure DBMakeLight( LightNumber.l )
  CallCFunctionFast( *DB_Light\MakeEx, LightNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBDeleteLight( LightNumber.l )
  CallCFunctionFast( *DB_Light\DeleteEx, LightNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSetLightColor( LightNumber.l, ColorValue.l )
  CallCFunctionFast( *DB_Light\SetColor, LightNumber, ColorValue )
 EndProcedure
;
; *********************************************************************
Procedure DBSetLightColor1( LightNumber.l, Red.l, Green.l, Blue.l )
  CallCFunctionFast( *DB_Light\SetColorEx, LightNumber, Red, Green, Blue )
 EndProcedure
;
; *********************************************************************
Procedure DBShowLight( LightNumber.l )
  CallCFunctionFast( *DB_Light\Show, LightNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBHideLight( LightNumber.l )
  CallCFunctionFast( *DB_Light\Hide, LightNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBPointLight( LightNumber.l, X.f, Y.f, Z.f )
  CallCFunctionFast( *DB_Light\Point, LightNumber, X, Y, Z )
 EndProcedure
;
; *********************************************************************
Procedure DBPositionLight( LightNumber.l, X.f, Y.f, Z.f )
  CallCFunctionFast( *DB_Light\Position, LightNumber, X, Y, Z )
 EndProcedure
;
; *********************************************************************
Procedure DBRotateLight( LightNumber.l, XAngle.f, YAngle.f, ZAngle.f )
  CallCFunctionFast( *DB_Light\Rotate, LightNumber, XAngle, YAngle, ZAngle )
 EndProcedure
;
; *********************************************************************
Procedure DBSetDirectional( LightNumber.l, NX.f, NY.f, NZ.f )
  CallCFunctionFast( *DB_Light\SetDirectional, LightNumber, NX, NY, NZ )
 EndProcedure
;
; *********************************************************************
Procedure DBSetLightRange( LightNumber.l, Distance.f )
  CallCFunctionFast( *DB_Light\SetRange, LightNumber, Distance )
 EndProcedure
;
; *********************************************************************
Procedure DBSetLightToObjectOrientation( LightNumber.l, ObjectNumber.l )
  CallCFunctionFast( *DB_Light\SetToObjectOrientation, LightNumber, ObjectNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSetToObject( LightNumber.l, ObjectNumber.l )
  CallCFunctionFast( *DB_Light\SetToObject, LightNumber, ObjectNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSetPointLight( LightNumber.l, X.f, Y.f, Z.f )
  CallCFunctionFast( *DB_Light\SetPoint, LightNumber, X, Y, Z )
 EndProcedure
;
; *********************************************************************
Procedure DBSetSpotLight( LightNumber.l, InnerAngle.f, OuterAngle.f )
  CallCFunctionFast( *DB_Light\SetSpot, LightNumber, InnerAngle, OuterAngle )
 EndProcedure
;
; *********************************************************************
Procedure DBSetAmbientLight( Percentage.l )
  CallCFunctionFast( *DB_Light\SetAmbient, Percentage )
 EndProcedure
;
; *********************************************************************
Procedure DBSetAmbientLightColor( ColorValue.l )
  CallCFunctionFast( *DB_Light\SetAmbientColor, ColorValue )
 EndProcedure
;
; *********************************************************************
Procedure DBFogOn()
  CallCFunctionFast( *DB_Light\FogOn )
 EndProcedure
;
; *********************************************************************
Procedure DBFogOff()
  CallCFunctionFast( *DB_Light\FogOff )
 EndProcedure
;
; *********************************************************************
Procedure DBSetFogColor( ColorValue.l )
  CallCFunctionFast( *DB_Light\SetFogColor, ColorValue )
 EndProcedure
;
; *********************************************************************
Procedure DBSetFogColor1( Red.l, Green.l, Blue.l )
  CallCFunctionFast( *DB_Light\SetFogColorEx, Red, Green, Blue )
 EndProcedure
;
; *********************************************************************
Procedure DBSetFogDistance( Distance.l )
  CallCFunctionFast( *DB_Light\SetFogDistance, Distance )
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetLightXDirection( LightNumber.l )
  Retour.l = CallCFunctionFast( *DB_Light\GetXDirectionEx, LightNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetLightYDirection( LightNumber.l )
  Retour.l = CallCFunctionFast( *DB_Light\GetYDirectionEx, LightNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetLightZDirection( LightNumber.l )
  Retour.l = CallCFunctionFast( *DB_Light\GetZDirectionEx, LightNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetLightXPosition( LightNumber.l )
  Retour.l = CallCFunctionFast( *DB_Light\GetXPositionEx, LightNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetLightYPosition( LightNumber.l )
  Retour.l = CallCFunctionFast( *DB_Light\GetYPositionEx, LightNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetLightZPosition( LightNumber.l )
  Retour.l = CallCFunctionFast( *DB_Light\GetZPositionEx, LightNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetLightExist( LightNumber.l )
  Retour.l = CallCFunctionFast( *DB_Light\GetExistEx, LightNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetLightRange( LightNumber.l )
  Retour.l = CallCFunctionFast( *DB_Light\GetRangeEx, LightNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetLightType( LightNumber.l )
  Retour.l = CallCFunctionFast( *DB_Light\GetTypeEx, LightNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetVisible1( LightNumber.l )
  Retour.l = CallCFunctionFast( *DB_Light\GetVisibleEx, LightNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DBSetNormalizationOff()
  CallCFunctionFast( *DB_Light\SetNormalizationOff )
 EndProcedure
;
; *********************************************************************
Procedure DBSetNormalizationOn()
  CallCFunctionFast( *DB_Light\SetNormalizationOn )
 EndProcedure
;
; *********************************************************************
Procedure DBSetLightPositionVector3( LightNumber.l, Vector.l )
  CallCFunctionFast( *DB_Light\SetPositionVector3, LightNumber, Vector )
 EndProcedure
;
; *********************************************************************
Procedure DBSetLightRotationVector3( LightNumber.l, Vector.l )
  CallCFunctionFast( *DB_Light\SetRotationVector3, LightNumber, Vector )
 EndProcedure
;
; *********************************************************************
Procedure DBGetPositionVector31( Vector.l, LightNumber.l )
  CallCFunctionFast( *DB_Light\GetPositionVector3, Vector, LightNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBGetRotationVector31( Vector.l, LightNumber.l )
  CallCFunctionFast( *DB_Light\GetRotationVector3, Vector, LightNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSetFogDistance1( StartDistance.l, EndDistance.l )
  CallCFunctionFast( *DB_Light\SetFogDistance1, StartDistance, EndDistance )
 EndProcedure
;

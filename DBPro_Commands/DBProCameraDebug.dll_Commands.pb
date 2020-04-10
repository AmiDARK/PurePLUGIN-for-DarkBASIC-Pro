; DarkBasic Professional RC2PBIncludes Ver 1. File - COMMANDS WRAPPING
; By Frederic Cordier - 07.02.13
;
; *********************************************************************
Procedure DBClearCameraView( ColorValue.l )
  CallCFunctionFast( *DB_Camera\ClearView, ColorValue )
 EndProcedure
;
; *********************************************************************
Procedure DBSetAutoCamOn()
  CallCFunctionFast( *DB_Camera\SetAutoCamOn )
 EndProcedure
;
; *********************************************************************
Procedure DBSetAutoCamOff()
  CallCFunctionFast( *DB_Camera\SetAutoCamOff )
 EndProcedure
;
; *********************************************************************
Procedure DBMoveCamera( DistanceValue.f )
  CallCFunctionFast( *DB_Camera\Move, DistanceValue )
 EndProcedure
;
; *********************************************************************
Procedure DBPitchCameraUp( AngleValue.f )
  CallCFunctionFast( *DB_Camera\PitchUp, AngleValue )
 EndProcedure
;
; *********************************************************************
Procedure DBPitchCameraDown( AngleValue.f )
  CallCFunctionFast( *DB_Camera\PitchDown, AngleValue )
 EndProcedure
;
; *********************************************************************
Procedure DBTurnCameraLeft( AngleValue.f )
  CallCFunctionFast( *DB_Camera\TurnLeft, AngleValue )
 EndProcedure
;
; *********************************************************************
Procedure DBTurnCameraRight( AngleValue.f )
  CallCFunctionFast( *DB_Camera\TurnRight, AngleValue )
 EndProcedure
;
; *********************************************************************
Procedure DBRollCameraLeft( AngleValue.f )
  CallCFunctionFast( *DB_Camera\RollLeft, AngleValue )
 EndProcedure
;
; *********************************************************************
Procedure DBRollCameraRight( AngleValue.f )
  CallCFunctionFast( *DB_Camera\RollRight, AngleValue )
 EndProcedure
;
; *********************************************************************
Procedure DBPointCamera( X.f, Y.f, Z.f )
  CallCFunctionFast( *DB_Camera\Point, X, Y, Z )
 EndProcedure
;
; *********************************************************************
Procedure DBPositionCamera( X.f, Y.f, Z.f )
  CallCFunctionFast( *DB_Camera\Position, X, Y, Z )
 EndProcedure
;
; *********************************************************************
Procedure DBSetCameraRotation( XAngle.f, YAngle.f, ZAngle.f )
  CallCFunctionFast( *DB_Camera\SetRotate, XAngle, YAngle, ZAngle )
 EndProcedure
;
; *********************************************************************
Procedure DBSetCameraFOV( FieldOfViewAngle.f )
  CallCFunctionFast( *DB_Camera\SetFOV, FieldOfViewAngle )
 EndProcedure
;
; *********************************************************************
Procedure DBSetCameraRange( NearValue.f, FarValue.f )
  CallCFunctionFast( *DB_Camera\SetRange, NearValue, FarValue )
 EndProcedure
;
; *********************************************************************
Procedure DBSetCameraView( Left.l, Top.l, Right.l, Bottom.l )
  CallCFunctionFast( *DB_Camera\SetView, Left, Top, Right, Bottom )
 EndProcedure
;
; *********************************************************************
Procedure DBSetCameraRotationXYZ()
  CallCFunctionFast( *DB_Camera\SetRotationXYZ )
 EndProcedure
;
; *********************************************************************
Procedure DBSetCameraRotationZYX()
  CallCFunctionFast( *DB_Camera\SetRotationZYX )
 EndProcedure
;
; *********************************************************************
Procedure DBFollowCamera( X.f, Y.f, Z.f, Angle.f, Distance.f, Height.f, Smooth.f, Collision.l )
  CallCFunctionFast( *DB_Camera\Follow, X, Y, Z, Angle, Distance, Height, Smooth, Collision )
 EndProcedure
;
; *********************************************************************
Procedure DBSetCameraToObjectOrientation( ObjectNumber.l )
  CallCFunctionFast( *DB_Camera\SetToObjectOrientation, ObjectNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSetXRotate( XAngle.f )
  CallCFunctionFast( *DB_Camera\SetXRotate, XAngle )
 EndProcedure
;
; *********************************************************************
Procedure DBSetYRotate( YAngle.f )
  CallCFunctionFast( *DB_Camera\SetYRotate, YAngle )
 EndProcedure
;
; *********************************************************************
Procedure DBSetZRotate( ZAngle.f )
  CallCFunctionFast( *DB_Camera\SetZRotate, ZAngle )
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetCameraXPosition()
  Retour.l = CallCFunctionFast( *DB_Camera\GetXPositionEx )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetCameraYPosition()
  Retour.l = CallCFunctionFast( *DB_Camera\GetYPositionEx )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetCameraZPosition()
  Retour.l = CallCFunctionFast( *DB_Camera\GetZPositionEx )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetXAngle()
  Retour.l = CallCFunctionFast( *DB_Camera\GetXAngleEx )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetYAngle()
  Retour.l = CallCFunctionFast( *DB_Camera\GetYAngleEx )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetZAngle()
  Retour.l = CallCFunctionFast( *DB_Camera\GetZAngleEx )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure DBClearCameraView1( CameraNumber.l, ColorValue.l )
  CallCFunctionFast( *DB_Camera\ClearViewEx, CameraNumber, ColorValue )
 EndProcedure
;
; *********************************************************************
Procedure DBMoveCamera1( CameraNumber.l, DistanceValue.f )
  CallCFunctionFast( *DB_Camera\Move1, CameraNumber, DistanceValue )
 EndProcedure
;
; *********************************************************************
Procedure DBPitchCameraUp1( CameraNumber.l, AngleValue.f )
  CallCFunctionFast( *DB_Camera\PitchUp1, CameraNumber, AngleValue )
 EndProcedure
;
; *********************************************************************
Procedure DBBackdropOn()
  CallCFunctionFast( *DB_Camera\BackdropOn )
 EndProcedure
;
; *********************************************************************
Procedure DBBackdropOff()
  CallCFunctionFast( *DB_Camera\BackdropOff )
 EndProcedure
;
; *********************************************************************
Procedure DBBackdropColor( ColorValue.l )
  CallCFunctionFast( *DB_Camera\BackdropColor, ColorValue )
 EndProcedure
;
; *********************************************************************
Procedure DBBackdropTexture( ImageNumber.l )
  CallCFunctionFast( *DB_Camera\BackdropTexture, ImageNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBBackdropScroll( U.l, V.l )
  CallCFunctionFast( *DB_Camera\BackdropScroll, U, V )
 EndProcedure
;
; *********************************************************************
Procedure DBMakeCamera( CameraNumber.l )
  CallCFunctionFast( *DB_Camera\CreateEx, CameraNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBDeleteCamera( CameraNumber.l )
  CallCFunctionFast( *DB_Camera\DestroyEx, CameraNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSetCurrentCamera( CameraNumber.l )
  CallCFunctionFast( *DB_Camera\SetCurrentCamera, CameraNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBPitchCameraDown1( CameraNumber.l, AngleValue.f )
  CallCFunctionFast( *DB_Camera\PitchDown1, CameraNumber, AngleValue )
 EndProcedure
;
; *********************************************************************
Procedure DBTurnCameraLeft1( CameraNumber.l, AngleValue.f )
  CallCFunctionFast( *DB_Camera\TurnLeft1, CameraNumber, AngleValue )
 EndProcedure
;
; *********************************************************************
Procedure DBTurnCameraRight1( CameraNumber.l, AngleValue.f )
  CallCFunctionFast( *DB_Camera\TurnRight1, CameraNumber, AngleValue )
 EndProcedure
;
; *********************************************************************
Procedure DBRollCameraLeft1( CameraNumber.l, AngleValue.f )
  CallCFunctionFast( *DB_Camera\RollLeft1, CameraNumber, AngleValue )
 EndProcedure
;
; *********************************************************************
Procedure DBRollCameraRight1( CameraNumber.l, AngleValue.f )
  CallCFunctionFast( *DB_Camera\RollRight1, CameraNumber, AngleValue )
 EndProcedure
;
; *********************************************************************
Procedure DBPointCamera1( CameraNumber.l, X.f, Y.f, Z.f )
  CallCFunctionFast( *DB_Camera\Point1, CameraNumber, X, Y, Z )
 EndProcedure
;
; *********************************************************************
Procedure DBPositionCamera1( CameraNumber.l, X.f, Y.f, Z.f )
  CallCFunctionFast( *DB_Camera\Position1, CameraNumber, X, Y, Z )
 EndProcedure
;
; *********************************************************************
Procedure DBSetCameraRotation1( CameraNumber.l, XAngle.f, YAngle.f, ZAngle.f )
  CallCFunctionFast( *DB_Camera\SetRotate1, CameraNumber, XAngle, YAngle, ZAngle )
 EndProcedure
;
; *********************************************************************
Procedure DBSetCameraFOV1( CameraNumber.l, FieldOfViewAngle.f )
  CallCFunctionFast( *DB_Camera\SetFOV1, CameraNumber, FieldOfViewAngle )
 EndProcedure
;
; *********************************************************************
Procedure DBSetCameraRange1( CameraNumber.l, NearValue.f, FarValue.f )
  CallCFunctionFast( *DB_Camera\SetRange1, CameraNumber, NearValue, FarValue )
 EndProcedure
;
; *********************************************************************
Procedure DBSetCameraView1( CameraNumber.l, Left.l, Top.l, Right.l, Bottom.l )
  CallCFunctionFast( *DB_Camera\SetView1, CameraNumber, Left, Top, Right, Bottom )
 EndProcedure
;
; *********************************************************************
Procedure DBSetCameraRotationXYZ1( CameraNumber.l )
  CallCFunctionFast( *DB_Camera\SetRotationXYZ1, CameraNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSetCameraRotationZYX1( CameraNumber.l )
  CallCFunctionFast( *DB_Camera\SetRotationZYX1, CameraNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBFollowCamera1( CameraNumber.l, X.f, Y.f, Z.f, Angle.f, Distance.f, Height.f, Smooth.f, Collision.l )
  CallCFunctionFast( *DB_Camera\Follow1, CameraNumber, X, Y, Z, Angle, Distance, Height, Smooth, Collision )
 EndProcedure
;
; *********************************************************************
Procedure DBSetCameraToObjectOrientation1( CameraNumber.l, ObjectNumber.l )
  CallCFunctionFast( *DB_Camera\SetToObjectOrientation1, CameraNumber, ObjectNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSetXRotate1( CameraNumber.l, XAngle.f )
  CallCFunctionFast( *DB_Camera\SetXRotate1, CameraNumber, XAngle )
 EndProcedure
;
; *********************************************************************
Procedure DBSetYRotate1( CameraNumber.l, YAngle.f )
  CallCFunctionFast( *DB_Camera\SetYRotate1, CameraNumber, YAngle )
 EndProcedure
;
; *********************************************************************
Procedure DBSetZRotate1( CameraNumber.l, ZAngle.f )
  CallCFunctionFast( *DB_Camera\SetZRotate1, CameraNumber, ZAngle )
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetCameraXPosition1( CameraNumber.l )
  Retour.l = CallCFunctionFast( *DB_Camera\GetXPositionEx1, CameraNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetCameraYPosition1( CameraNumber.l )
  Retour.l = CallCFunctionFast( *DB_Camera\GetYPositionEx1, CameraNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetCameraZPosition1( CameraNumber.l )
  Retour.l = CallCFunctionFast( *DB_Camera\GetZPositionEx1, CameraNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetXAngle1( CameraNumber.l )
  Retour.l = CallCFunctionFast( *DB_Camera\GetXAngleEx1, CameraNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetYAngle1( CameraNumber.l )
  Retour.l = CallCFunctionFast( *DB_Camera\GetYAngleEx1, CameraNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetZAngle1( CameraNumber.l )
  Retour.l = CallCFunctionFast( *DB_Camera\GetZAngleEx1, CameraNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure DBBackdropOn1( CameraNumber.l )
  CallCFunctionFast( *DB_Camera\BackdropOn1, CameraNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBBackdropOff1( CameraNumber.l )
  CallCFunctionFast( *DB_Camera\BackdropOff1, CameraNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBBackdropColor1( CameraNumber.l, ColorValue.l )
  CallCFunctionFast( *DB_Camera\BackdropColor1, CameraNumber, ColorValue )
 EndProcedure
;
; *********************************************************************
Procedure DBBackdropTexture1( CameraNumber.l, ImageNumber.l )
  CallCFunctionFast( *DB_Camera\BackdropTexture1, CameraNumber, ImageNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBBackdropScroll1( CameraNumber.l, U.l, V.l )
  CallCFunctionFast( *DB_Camera\BackdropScroll1, CameraNumber, U, V )
 EndProcedure
;
; *********************************************************************
Procedure DBSetCameraToImage( CameraNumber.l, ImageNumber.l, Width.l, Height.l )
  CallCFunctionFast( *DB_Camera\SetCameraToImage, CameraNumber, ImageNumber, Width, Height )
 EndProcedure
;
; *********************************************************************
Procedure DBControlCameraWithArrowKeys( CameraNumber.l, MoveSpeed.f, TurnSpeed.f )
  CallCFunctionFast( *DB_Camera\ControlWithArrowKeys, CameraNumber, MoveSpeed, TurnSpeed )
 EndProcedure
;
; *********************************************************************
Procedure DBSetCameraPositionVector3( CameraNumber.l, Vector.l )
  CallCFunctionFast( *DB_Camera\SetPositionVector3, CameraNumber, Vector )
 EndProcedure
;
; *********************************************************************
Procedure DBSetCameraRotationVector3( CameraNumber.l, Vector.l )
  CallCFunctionFast( *DB_Camera\SetRotationVector3, CameraNumber, Vector )
 EndProcedure
;
; *********************************************************************
Procedure DBGetPositionVector3( Vector.l, CameraNumber.l )
  CallCFunctionFast( *DB_Camera\GetPositionVector3, Vector, CameraNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBGetRotationVector3( Vector.l, CameraNumber.l )
  CallCFunctionFast( *DB_Camera\GetRotationVector3, Vector, CameraNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSetAspect( AspectRatio.f )
  CallCFunctionFast( *DB_Camera\SetAspect, AspectRatio )
 EndProcedure
;
; *********************************************************************
Procedure DBSetAspect1( CameraNumber.l, AspectRatio.f )
  CallCFunctionFast( *DB_Camera\SetAspect1, CameraNumber, AspectRatio )
 EndProcedure
;
; *********************************************************************
Procedure DBSetCameraToImage1( CameraNumber.l, ImageNumber.l, Width.l, Height.l, GenerateAlpha.l )
  CallCFunctionFast( *DB_Camera\SetCameraToImageEx, CameraNumber, ImageNumber, Width, Height, GenerateAlpha )
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetCameraExist( CameraNumber.l )
  Retour.l = CallCFunctionFast( *DB_Camera\GetExistEx, CameraNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DBSetClip( CameraNumber.l, ClipOnOff.l, X.f, Y.f, Z.f, NX.f, NY.f, NZ.f )
  CallCFunctionFast( *DB_Camera\SetClip, CameraNumber, ClipOnOff, X, Y, Z, NX, NY, NZ )
 EndProcedure
;

; DarkBasic Professional RC2PBIncludes Ver 1. File - COMMANDS WRAPPING
; By Frederic Cordier - 07.02.13
;
; *********************************************************************
Procedure DBInk( ForegroundColor.l, BackgroundColor.l )
  CallCFunctionFast( *DB_Basic2D\Ink, ForegroundColor, BackgroundColor )
 EndProcedure
;
; *********************************************************************
Procedure DBBox( Left.l, Top.l, Right.l, Bottom.l )
  CallCFunctionFast( *DB_Basic2D\Box, Left, Top, Right, Bottom )
 EndProcedure
;
; *********************************************************************
Procedure DBDot( X.l, Y.l )
  CallCFunctionFast( *DB_Basic2D\Dot, X, Y )
 EndProcedure
;
; *********************************************************************
Procedure DBCircle( X.l, Y.l, Radius.l )
  CallCFunctionFast( *DB_Basic2D\Circle, X, Y, Radius )
 EndProcedure
;
; *********************************************************************
Procedure DBElipse( X.l, Y.l, XRadius.l, YRadius.l )
  CallCFunctionFast( *DB_Basic2D\Elipse, X, Y, XRadius, YRadius )
 EndProcedure
;
; *********************************************************************
Procedure DBLine( X1.l, Y1.l, X2.l, Y2.l )
  CallCFunctionFast( *DB_Basic2D\Line, X1, Y1, X2, Y2 )
 EndProcedure
;
; *********************************************************************
Procedure.l DBRgb( RedValue.l, GreenValue.l, BlueValue.l )
  Retour.l = CallCFunctionFast( *DB_Basic2D\Rgb, RedValue, GreenValue, BlueValue )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBRgbR( RedValue.l )
  Retour.l = CallCFunctionFast( *DB_Basic2D\RgbR, RedValue )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBRgbG( GreenValue.l )
  Retour.l = CallCFunctionFast( *DB_Basic2D\RgbG, GreenValue )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBRgbB( BlueValue.l )
  Retour.l = CallCFunctionFast( *DB_Basic2D\RgbB, BlueValue )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DBClearRgb( ColorValue.l )
  CallCFunctionFast( *DB_Basic2D\ClearRgb, ColorValue )
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetPoint( X.l, Y.l )
  Retour.l = CallCFunctionFast( *DB_Basic2D\GetPoint, X, Y )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DBLock()
  CallCFunctionFast( *DB_Basic2D\Lock )
 EndProcedure
;
; *********************************************************************
Procedure DBUnlock()
  CallCFunctionFast( *DB_Basic2D\Unlock )
 EndProcedure
;
; *********************************************************************
Procedure DBBoxGradient( Left.l, Top.l, Right.l, Bottom.l, Color1.l, Color2.l, Color3.l, Color4.l )
  CallCFunctionFast( *DB_Basic2D\BoxGradient, Left, Top, Right, Bottom, Color1, Color2, Color3, Color4 )
 EndProcedure
;
; *********************************************************************
Procedure DBDot1( X.l, Y.l, ColorValue.l )
  CallCFunctionFast( *DB_Basic2D\Dot1, X, Y, ColorValue )
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetPixelPtr()
  Retour.l = CallCFunctionFast( *DB_Basic2D\GetPixelPtr )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetPixelPitch()
  Retour.l = CallCFunctionFast( *DB_Basic2D\GetPixelPitch )
  ProcedureReturn Retour
 EndProcedure
;

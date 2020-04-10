; DarkBasic Professional RC2PBIncludes Ver 1.0 File - COMMANDS WRAPPING
; By Frederic Cordier - 07.02.13
;
; *********************************************************************
Procedure EZrotate_Set( CurrentX.d, CurrentY.d, CurrentZ.d )
  CallCFunctionFast( *EZRotateBasic\EZrotate_Set, CurrentX, CurrentY, CurrentZ )
 EndProcedure
;
; *********************************************************************
Procedure.d EZrotate_GetX()
  Retour.d = CallCFunctionFast( *EZRotateBasic\EZrotate_GetX )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.d EZrotate_GetY()
  Retour.d = CallCFunctionFast( *EZRotateBasic\EZrotate_GetY )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.d EZrotate_GetZ()
  Retour.d = CallCFunctionFast( *EZRotateBasic\EZrotate_GetZ )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure EZrotate_GX( Angle.d )
  CallCFunctionFast( *EZRotateBasic\EZrotate_GX, Angle )
 EndProcedure
;
; *********************************************************************
Procedure EZrotate_GY( Angle.d )
  CallCFunctionFast( *EZRotateBasic\EZrotate_GY, Angle )
 EndProcedure
;
; *********************************************************************
Procedure EZrotate_GZ( Angle.d )
  CallCFunctionFast( *EZRotateBasic\EZrotate_GZ, Angle )
 EndProcedure
;
; *********************************************************************
Procedure.d EZrotate_GetMatXX()
  Retour.d = CallCFunctionFast( *EZRotateBasic\EZrotate_GetMatXX )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.d EZrotate_GetMatXY()
  Retour.d = CallCFunctionFast( *EZRotateBasic\EZrotate_GetMatXY )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.d EZrotate_GetMatXZ()
  Retour.d = CallCFunctionFast( *EZRotateBasic\EZrotate_GetMatXZ )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.d EZrotate_GetMatYX()
  Retour.d = CallCFunctionFast( *EZRotateBasic\EZrotate_GetMatYX )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.d EZrotate_GetMatYY()
  Retour.d = CallCFunctionFast( *EZRotateBasic\EZrotate_GetMatYY )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.d EZrotate_GetMatYZ()
  Retour.d = CallCFunctionFast( *EZRotateBasic\EZrotate_GetMatYZ )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.d EZrotate_GetMatZX()
  Retour.d = CallCFunctionFast( *EZRotateBasic\EZrotate_GetMatZX )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.d EZrotate_GetMatZY()
  Retour.d = CallCFunctionFast( *EZRotateBasic\EZrotate_GetMatZY )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.d EZrotate_GetMatZZ()
  Retour.d = CallCFunctionFast( *EZRotateBasic\EZrotate_GetMatZZ )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure EZrotate_LX( Angle.d )
  CallCFunctionFast( *EZRotateBasic\EZrotate_LX, Angle )
 EndProcedure
;
; *********************************************************************
Procedure EZrotate_LY( Angle.d )
  CallCFunctionFast( *EZRotateBasic\EZrotate_LY, Angle )
 EndProcedure
;
; *********************************************************************
Procedure EZrotate_LZ( Angle.d )
  CallCFunctionFast( *EZRotateBasic\EZrotate_LZ, Angle )
 EndProcedure
;
; *********************************************************************
Procedure EZrotate_SetMatRowX( MatrixXX.d, MatrixXY.d, MatrixXZ.d )
  CallCFunctionFast( *EZRotateBasic\EZrotate_SetMatRowX, MatrixXX, MatrixXY, MatrixXZ )
 EndProcedure
;
; *********************************************************************
Procedure EZrotate_SetMatRowY( MatrixYX.d, MatrixYY.d, MatrixYZ.d )
  CallCFunctionFast( *EZRotateBasic\EZrotate_SetMatRowY, MatrixYX, MatrixYY, MatrixYZ )
 EndProcedure
;
; *********************************************************************
Procedure EZrotate_SetMatRowZ( MatrixZX.d, MatrixZY.d, MatrixZZ.d )
  CallCFunctionFast( *EZRotateBasic\EZrotate_SetMatRowZ, MatrixZX, MatrixZY, MatrixZZ )
 EndProcedure
;

; IDE Options = PureBasic 4.10 Beta 2 (Windows - x86)
; Folding = ----
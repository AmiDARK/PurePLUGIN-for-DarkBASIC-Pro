; ***************************************************************************************
; Simple error requester
Procedure DisplayErrorMessage()
  MessageRequester( "PurePLUGIN Warning", "If you see that message it's because a command was not found and redirected here to prevent from crashs" )
 EndProcedure
; ***************************************************************************************
; Internal use.
Procedure.l AIsFunction( OpenDLL.l, FunctionName$ )
  Retour.l = GetFunction( OpenDLL, FunctionName$ )
  If DebugMode = 1
;    UseFile( 2 )
    WriteStringN( 2, FunctionName$ + " : " + Str( Retour ) )
   EndIf
  If Retour = 0
    If PurePLUGIN\DebugMODE = 1
      MessageRequester( "Warning, Function not found :", FunctionName$, 0 )
     EndIf
    OpenLibrary( 2, "PurePLUGIN.dll" )
    Retour = GetFunction( 2, "PurePLUGIN_NotFound" )
    CloseLibrary( 2 )
   EndIf
  ProcedureReturn Retour
 EndProcedure
; ***************************************************************************************
; Simply calculate distance between 2 points.
Procedure.f GetDistance( X1.f, Y1.f, Z1.f, X2.f, Y2.f, Z2.f )
  XDist.f = X1 - X2 : YDist.f = Y1 - Y2 : ZDist.f = Z1 - Z2
  Dist.f = Sqr( ( XDist*XDist ) + ( YDist*YDist ) + ( ZDist*ZDist ) )
  ProcedureReturn Dist
 EndProcedure
; ***************************************************************************************
; Simply calculate distance between 2 points.
Procedure.f GetDistance2D( X1.f, Y1.f, X2.f, Y2.f )
  XDist.f = X1 - X2 : YDist.f = Y1 - Y2 
  Dist.f = Sqr( ( XDist*XDist ) + ( YDist*YDist ) )
  ProcedureReturn Dist
 EndProcedure
; *************************************************************************************** Convert Degrees 2 Radians
; Convert degree into radian.
Procedure.f Deg2Rad( Angle.f )
  AngleFinal.f = ( Angle.f * 3.14159265 ) / 180.0
  ProcedureReturn AngleFinal
 EndProcedure
; *************************************************************************************** Convert Radians 2 Degrees
; Convert Radian into degree.
Procedure.f Rad2Deg( Angle.f )
  AngleFinal.f = ( Angle.f * 180 ) / 3.14159265
  ProcedureReturn AngleFinal
 EndProcedure
; *************************************************************************************** Read Unsigned Byte from file.
; Read unsigned byte.
Procedure.l ReadUByte( FileID.l )
  VALUE.l = ReadByte( FileID ) & $FF
  ProcedureReturn VALUE
 EndProcedure
; ***************************************************************************************
Procedure GetPPVersion()
  If OpenLibrary( 2, "PurePLUGIN.dll" )
    FunctionPTR.l = AIsFunction( 2, "GetPurePLUGINVersion" )
    If FunctionPTR > 0
      PurePLUGIN\Version = CallCFunctionFast(  FunctionPTR )
     Else
      PurePLUGIN\Version = 1 : PurePLUGIN\Revision = 0
     EndIf
    FunctionPTR.l = AIsFunction( 2, "GetPurePLUGINRevision" )
    If FunctionPTR > 0
      PurePLUGIN\Revision = CallCFunctionFast( FunctionPTR )
     EndIf
    CloseLibrary( 2 )
   Else
    PurePLUGIN\Version = 0 : PurePLUGIN\Revision = 0
   EndIf
 EndProcedure
; ***************************************************************************************
; IDE Options = PureBasic v4.02 (Windows - x86)
; CursorPosition = 64
; FirstLine = 31
; Folding = --
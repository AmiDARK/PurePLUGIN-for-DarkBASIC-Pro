; DarkBasic Professional RC2PBIncludes Ver 1. File - COMMANDS WRAPPING
; By Frederic Cordier - 07.02.13
;
; *********************************************************************
Procedure.l DBGetDisplayFPS()
  Retour.l = CallCFunctionFast( *DB_Setup\GetDisplayFPS )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DBLockSetupBackbuffer()
  CallCFunctionFast( *DB_Setup\LockBackbuffer )
 EndProcedure
;
; *********************************************************************
Procedure DBUnlockBackbuffer()
  CallCFunctionFast( *DB_Setup\UnlockBackbuffer )
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetBackbufferPtr()
  Retour.l = CallCFunctionFast( *DB_Setup\GetBackbufferPtr )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetBackbufferWidth()
  Retour.l = CallCFunctionFast( *DB_Setup\GetBackbufferWidth )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetBackbufferHeight()
  Retour.l = CallCFunctionFast( *DB_Setup\GetBackbufferHeight )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetBackbufferDepth()
  Retour.l = CallCFunctionFast( *DB_Setup\GetBackbufferDepth )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetBackbufferPitch()
  Retour.l = CallCFunctionFast( *DB_Setup\GetBackbufferPitch )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBCheckDisplayMode( Width.l, Height.l, Depth.l )
  Retour.l = CallCFunctionFast( *DB_Setup\CheckDisplayMode, Width, Height, Depth )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.s DBCurrentGraphicsCard()
  Retour.l = CallCFunctionFast( *DB_Setup\CurrentGraphicsCard, ExtraPARAM.l )
  RetourSTR.s = PeekS( Retour )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure.l DBEmulationMode()
  Retour.l = CallCFunctionFast( *DB_Setup\EmulationMode )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DBPerformChecklistForDisplayModes()
  CallCFunctionFast( *DB_Setup\PerformChecklistForDisplayModes )
 EndProcedure
;
; *********************************************************************
Procedure DBPerformChecklistForGraphicsCards()
  CallCFunctionFast( *DB_Setup\PerformChecklistForGraphicsCards )
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetDisplayDepth()
  Retour.l = CallCFunctionFast( *DB_Setup\GetDisplayDepth )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetDisplayHeight()
  Retour.l = CallCFunctionFast( *DB_Setup\GetDisplayHeight )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetDisplayInvalid()
  Retour.l = CallCFunctionFast( *DB_Setup\GetDisplayInvalid )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetDisplayType()
  Retour.l = CallCFunctionFast( *DB_Setup\GetDisplayType )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetDisplayWidth()
  Retour.l = CallCFunctionFast( *DB_Setup\GetDisplayWidth )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DBSetDisplayMode( Width.l, Height.l, Depth.l )
  CallCFunctionFast( *DB_Setup\SetDisplayModeEx, Width, Height, Depth )
 EndProcedure
;
; *********************************************************************
Procedure DBSetEmulationOn()
  CallCFunctionFast( *DB_Setup\SetEmulationOn )
 EndProcedure
;
; *********************************************************************
Procedure DBSetEmulationOff()
  CallCFunctionFast( *DB_Setup\SetEmulationOff )
 EndProcedure
;
; *********************************************************************
Procedure DBSetGamma( Red.l, Green.l, Blue.l )
  CallCFunctionFast( *DB_Setup\SetGamma, Red, Green, Blue )
 EndProcedure
;
; *********************************************************************
Procedure DBSetGraphicsCard( Cardname.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @CardnamePTR.l, Len( Cardname ) + 1 ) ; CreateString
  PokeS( CardnamePTR, Cardname )
  CallCFunctionFast( *DB_Setup\SetGraphicsCard, CardnamePTR )
 EndProcedure
;
; *********************************************************************
Procedure DBShowSetupWindow()
  CallCFunctionFast( *DB_Setup\ShowWindow )
 EndProcedure
;
; *********************************************************************
Procedure DBHideSetupWindow()
  CallCFunctionFast( *DB_Setup\HideWindow )
 EndProcedure
;
; *********************************************************************
Procedure DBMaximiseWindow()
  CallCFunctionFast( *DB_Setup\MaximiseWindow )
 EndProcedure
;
; *********************************************************************
Procedure DBMinimiseWindow()
  CallCFunctionFast( *DB_Setup\MinimiseWindow )
 EndProcedure
;
; *********************************************************************
Procedure DBRestoreWindow()
  CallCFunctionFast( *DB_Setup\RestoreWindow )
 EndProcedure
;
; *********************************************************************
Procedure DBSetWindowSettings( Style.l, Caption.l, IconNumber.l )
  CallCFunctionFast( *DB_Setup\SetWindowSettings, Style, Caption, IconNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSetWindowModeOn()
  CallCFunctionFast( *DB_Setup\SetWindowModeOn )
 EndProcedure
;
; *********************************************************************
Procedure DBSetWindowModeOff()
  CallCFunctionFast( *DB_Setup\SetWindowModeOff )
 EndProcedure
;
; *********************************************************************
Procedure DBSetWindowSize( Width.l, Height.l )
  CallCFunctionFast( *DB_Setup\SetWindowSize, Width, Height )
 EndProcedure
;
; *********************************************************************
Procedure DBSetSetupwPosition( X.l, Y.l )
  CallCFunctionFast( *DB_Setup\SetWindowPosition, X, Y )
 EndProcedure
;
; *********************************************************************
Procedure DBSetWindowTitle( CaptionString.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @CaptionStringPTR.l, Len( CaptionString ) + 1 ) ; CreateString
  PokeS( CaptionStringPTR, CaptionString )
  CallCFunctionFast( *DB_Setup\SetWindowTitle, CaptionStringPTR )
 EndProcedure
;
; *********************************************************************
Procedure.l DBWindowExist( WindowName.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @WindowNamePTR.l, Len( WindowName ) + 1 ) ; CreateString
  PokeS( WindowNamePTR, WindowName )
  Retour.l = CallCFunctionFast( *DB_Setup\WindowExist, WindowNamePTR )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DBWindowToBack()
  CallCFunctionFast( *DB_Setup\WindowToBack )
 EndProcedure
;
; *********************************************************************
Procedure DBWindowToFront()
  CallCFunctionFast( *DB_Setup\WindowToFront )
 EndProcedure
;
; *********************************************************************
Procedure DBWindowToFront1( WindowName.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @WindowNamePTR.l, Len( WindowName ) + 1 ) ; CreateString
  PokeS( WindowNamePTR, WindowName )
  CallCFunctionFast( *DB_Setup\WindowToFront1, WindowNamePTR )
 EndProcedure
;
; *********************************************************************
Procedure DBWindowToBack1( WindowName.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @WindowNamePTR.l, Len( WindowName ) + 1 ) ; CreateString
  PokeS( WindowNamePTR, WindowName )
  CallCFunctionFast( *DB_Setup\WindowToBack1, WindowNamePTR )
 EndProcedure
;
; *********************************************************************
Procedure DBSetDisplayModeVSYNC( Width.l, Height.l, Depth.l, VSyncOn.l )
  CallCFunctionFast( *DB_Setup\SetDisplayModeVSYNC, Width, Height, Depth, VSyncOn )
 EndProcedure
;

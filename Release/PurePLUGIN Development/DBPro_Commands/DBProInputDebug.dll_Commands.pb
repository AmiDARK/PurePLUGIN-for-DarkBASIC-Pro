; DarkBasic Professional RC2PBIncludes Ver 1. File - COMMANDS WRAPPING
; By Frederic Cordier - 07.02.13
;
; *********************************************************************
Procedure.l DBScanCode()
  Retour.l = CallCFunctionFast( *DB_Input\ScanCode )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBKeyState( Scancode.l )
  Retour.l = CallCFunctionFast( *DB_Input\KeyState, Scancode )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DBWriteToClipboard( String.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @StringPTR.l, Len( String ) + 1 ) ; CreateString
  PokeS( StringPTR, String )
  CallCFunctionFast( *DB_Input\WriteToClipboard, StringPTR )
 EndProcedure
;
; *********************************************************************
Procedure.s DBGetClipboard()
  Retour.l = CallCFunctionFast( *DB_Input\GetClipboard, ExtraPARAM.l )
  RetourSTR.s = PeekS( Retour )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure DBWriteToRegistry( FolderName.s, KeyName.s, Value.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FolderNamePTR.l, Len( FolderName ) + 1 ) ; CreateString
  PokeS( FolderNamePTR, FolderName )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @KeyNamePTR.l, Len( KeyName ) + 1 ) ; CreateString
  PokeS( KeyNamePTR, KeyName )
  CallCFunctionFast( *DB_Input\WriteToRegistry, FolderNamePTR, KeyNamePTR, Value )
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetRegistry( FolderName.s, KeyName.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FolderNamePTR.l, Len( FolderName ) + 1 ) ; CreateString
  PokeS( FolderNamePTR, FolderName )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @KeyNamePTR.l, Len( KeyName ) + 1 ) ; CreateString
  PokeS( KeyNamePTR, KeyName )
  Retour.l = CallCFunctionFast( *DB_Input\GetRegistry, FolderNamePTR, KeyNamePTR )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DBClearEntryBuffer()
  CallCFunctionFast( *DB_Input\ClearEntryBuffer )
 EndProcedure
;
; *********************************************************************
Procedure.s DBGetEntry()
  Retour.l = CallCFunctionFast( *DB_Input\GetEntry, ExtraPARAM.l )
  RetourSTR.s = PeekS( Retour )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetMouseClick()
  Retour.l = CallCFunctionFast( *DB_Input\GetMouseClick )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetMouseMov()
  Retour.l = CallCFunctionFast( *DB_Input\GetMouseMoveX )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetMouseMoveY()
  Retour.l = CallCFunctionFast( *DB_Input\GetMouseMoveY )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetMouseMoveZ()
  Retour.l = CallCFunctionFast( *DB_Input\GetMouseMoveZ )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetMouse()
  Retour.l = CallCFunctionFast( *DB_Input\GetMouseX )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetMouseY()
  Retour.l = CallCFunctionFast( *DB_Input\GetMouseY )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetMouseZ()
  Retour.l = CallCFunctionFast( *DB_Input\GetMouseZ )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DBHideInputMouse()
  CallCFunctionFast( *DB_Input\HideMouse )
 EndProcedure
;
; *********************************************************************
Procedure DBShowInputMouse()
  CallCFunctionFast( *DB_Input\ShowMouse )
 EndProcedure
;
; *********************************************************************
Procedure DBPositionMouse( X.l, Y.l )
  CallCFunctionFast( *DB_Input\PositionMouse, X, Y )
 EndProcedure
;
; *********************************************************************
Procedure.l DBUpKey()
  Retour.l = CallCFunctionFast( *DB_Input\UpKey )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBDownKey()
  Retour.l = CallCFunctionFast( *DB_Input\DownKey )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBLeftKey()
  Retour.l = CallCFunctionFast( *DB_Input\LeftKey )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBRightKey()
  Retour.l = CallCFunctionFast( *DB_Input\RightKey )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBControlKey()
  Retour.l = CallCFunctionFast( *DB_Input\ControlKey )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBShiftKey()
  Retour.l = CallCFunctionFast( *DB_Input\ShiftKey )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBReturnKey()
  Retour.l = CallCFunctionFast( *DB_Input\ReturnKey )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBEscapeKey()
  Retour.l = CallCFunctionFast( *DB_Input\EscapeKey )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBSpaceKey()
  Retour.l = CallCFunctionFast( *DB_Input\SpaceKey )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBJoystickUp()
  Retour.l = CallCFunctionFast( *DB_Input\JoystickUp )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBJoystickDown()
  Retour.l = CallCFunctionFast( *DB_Input\JoystickDown )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBJoystickLeft()
  Retour.l = CallCFunctionFast( *DB_Input\JoystickLeft )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBJoystickRight()
  Retour.l = CallCFunctionFast( *DB_Input\JoystickRight )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBJoystickX()
  Retour.l = CallCFunctionFast( *DB_Input\JoystickX )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBJoystickY()
  Retour.l = CallCFunctionFast( *DB_Input\JoystickY )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBJoystickZ()
  Retour.l = CallCFunctionFast( *DB_Input\JoystickZ )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBJoystickFireA()
  Retour.l = CallCFunctionFast( *DB_Input\JoystickFireA )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBJoystickFireB()
  Retour.l = CallCFunctionFast( *DB_Input\JoystickFireB )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBJoystickFireC()
  Retour.l = CallCFunctionFast( *DB_Input\JoystickFireC )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBJoystickFireD()
  Retour.l = CallCFunctionFast( *DB_Input\JoystickFireD )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBJoystickFireXL( ButtonNumber.l )
  Retour.l = CallCFunctionFast( *DB_Input\JoystickFireXL, ButtonNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBJoystickSliderA()
  Retour.l = CallCFunctionFast( *DB_Input\JoystickSliderA )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBJoystickSliderB()
  Retour.l = CallCFunctionFast( *DB_Input\JoystickSliderB )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBJoystickSliderC()
  Retour.l = CallCFunctionFast( *DB_Input\JoystickSliderC )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBJoystickSliderD()
  Retour.l = CallCFunctionFast( *DB_Input\JoystickSliderD )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBJoystickTwistX()
  Retour.l = CallCFunctionFast( *DB_Input\JoystickTwistX )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBJoystickTwistY()
  Retour.l = CallCFunctionFast( *DB_Input\JoystickTwistY )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBJoystickTwistZ()
  Retour.l = CallCFunctionFast( *DB_Input\JoystickTwistZ )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBJoystickHatAngle( HatNumber.l )
  Retour.l = CallCFunctionFast( *DB_Input\JoystickHatAngle, HatNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DBForceUp( MagnitudeValue.l )
  CallCFunctionFast( *DB_Input\ForceUp, MagnitudeValue )
 EndProcedure
;
; *********************************************************************
Procedure DBForceDown( MagnitudeValue.l )
  CallCFunctionFast( *DB_Input\ForceDown, MagnitudeValue )
 EndProcedure
;
; *********************************************************************
Procedure DBForceLeft( MagnitudeValue.l )
  CallCFunctionFast( *DB_Input\ForceLeft, MagnitudeValue )
 EndProcedure
;
; *********************************************************************
Procedure DBForceRight( MagnitudeValue.l )
  CallCFunctionFast( *DB_Input\ForceRight, MagnitudeValue )
 EndProcedure
;
; *********************************************************************
Procedure DBForceAngle( MagnitudeValue.l, AngleValue.l, DelayValue.l )
  CallCFunctionFast( *DB_Input\ForceAngle, MagnitudeValue, AngleValue, DelayValue )
 EndProcedure
;
; *********************************************************************
Procedure DBForceNoEffect()
  CallCFunctionFast( *DB_Input\ForceNoEffect )
 EndProcedure
;
; *********************************************************************
Procedure DBForceWaterEffect( MagnitudeValue.l, DelayValue.l )
  CallCFunctionFast( *DB_Input\ForceWaterEffect, MagnitudeValue, DelayValue )
 EndProcedure
;
; *********************************************************************
Procedure DBForceShoot( MagnitudeValue.l, DelayValue.l )
  CallCFunctionFast( *DB_Input\ForceShoot, MagnitudeValue, DelayValue )
 EndProcedure
;
; *********************************************************************
Procedure DBForceChainsaw( MagnitudeValue.l, DelayValue.l )
  CallCFunctionFast( *DB_Input\ForceChainsaw, MagnitudeValue, DelayValue )
 EndProcedure
;
; *********************************************************************
Procedure DBForceImpact( MagnitudeValue.l, DelayValue.l )
  CallCFunctionFast( *DB_Input\ForceImpact, MagnitudeValue, DelayValue )
 EndProcedure
;
; *********************************************************************
Procedure DBForceAutoCenterOn()
  CallCFunctionFast( *DB_Input\ForceAutoCenterOn )
 EndProcedure
;
; *********************************************************************
Procedure DBForceAutoCenterOff()
  CallCFunctionFast( *DB_Input\ForceAutoCenterOff )
 EndProcedure
;
; *********************************************************************
Procedure DBPerformChecklistControlDevices()
  CallCFunctionFast( *DB_Input\PerformChecklistControlDevices )
 EndProcedure
;
; *********************************************************************
Procedure DBSetControlDevice( DeviceName.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @DeviceNamePTR.l, Len( DeviceName ) + 1 ) ; CreateString
  PokeS( DeviceNamePTR, DeviceName )
  CallCFunctionFast( *DB_Input\SetControlDevice, DeviceNamePTR )
 EndProcedure
;
; *********************************************************************
Procedure.s DBGetControlDevice()
  Retour.l = CallCFunctionFast( *DB_Input\GetControlDevice, ExtraPARAM.l )
  RetourSTR.s = PeekS( Retour )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure.l DBControlDevic()
  Retour.l = CallCFunctionFast( *DB_Input\ControlDeviceX )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBControlDeviceY()
  Retour.l = CallCFunctionFast( *DB_Input\ControlDeviceY )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBControlDeviceZ()
  Retour.l = CallCFunctionFast( *DB_Input\ControlDeviceZ )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DBChangeMouse( CursorNumber.l )
  CallCFunctionFast( *DB_Input\ChangeMouse, CursorNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBWriteToRegistryS( FolderName.s, KeyName.s, String.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FolderNamePTR.l, Len( FolderName ) + 1 ) ; CreateString
  PokeS( FolderNamePTR, FolderName )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @KeyNamePTR.l, Len( KeyName ) + 1 ) ; CreateString
  PokeS( KeyNamePTR, KeyName )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @StringPTR.l, Len( String ) + 1 ) ; CreateString
  PokeS( StringPTR, String )
  CallCFunctionFast( *DB_Input\WriteToRegistryS, FolderNamePTR, KeyNamePTR, StringPTR )
 EndProcedure
;
; *********************************************************************
Procedure.s DBGetRegistryS( FolderName.s, KeyName.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FolderNamePTR.l, Len( FolderName ) + 1 ) ; CreateString
  PokeS( FolderNamePTR, FolderName )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @KeyNamePTR.l, Len( KeyName ) + 1 ) ; CreateString
  PokeS( KeyNamePTR, KeyName )
  Retour.l = CallCFunctionFast( *DB_Input\GetRegistryS, ExtraPARAM.l, FolderNamePTR, KeyNamePTR )
  RetourSTR.s = PeekS( Retour )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure.s DBGetEntry1( AutoBackspaceMode.l )
  Retour.l = CallCFunctionFast( *DB_Input\GetEntryEx, ExtraPARAM.l, AutoBackspaceMode )
  RetourSTR.s = PeekS( Retour )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure DBSetControlDevice1( DeviceName.s, DeviceIndex.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @DeviceNamePTR.l, Len( DeviceName ) + 1 ) ; CreateString
  PokeS( DeviceNamePTR, DeviceName )
  CallCFunctionFast( *DB_Input\SetControlDeviceEx, DeviceNamePTR, DeviceIndex )
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetKeyState( Param1.l )
  Retour.l = CallCFunctionFast( *DB_Input\GetKeyStateEx, Param1 )
  ProcedureReturn Retour
 EndProcedure
;

; DarkBasic Professional RC2PBIncludes Ver 1. File - COMMANDS WRAPPING
; By Frederic Cordier - 07.02.13
;
; *********************************************************************
Procedure DBPrintR( PrintStatements.q )
  CallCFunctionFast( *DB_Core\PrintR, PrintStatements )
 EndProcedure
;
; *********************************************************************
Procedure DBPrintO( PrintStatements.d )
  CallCFunctionFast( *DB_Core\PrintO, PrintStatements )
 EndProcedure
;
; *********************************************************************
Procedure.f DBCeilFF( Value.f )
  Retour.l = CallCFunctionFast( *DB_Core\CeilFF, Value )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBFloorFF( Value.f )
  Retour.l = CallCFunctionFast( *DB_Core\FloorFF, Value )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure DBPrintS( PrintStatements.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @PrintStatementsPTR.l, Len( PrintStatements ) + 1 ) ; CreateString
  PokeS( PrintStatementsPTR, PrintStatements )
  CallCFunctionFast( *DB_Core\PrintS, PrintStatementsPTR )
 EndProcedure
;
; *********************************************************************
Procedure DBPrint0()
  CallCFunctionFast( *DB_Core\Print0 )
 EndProcedure
;
; *********************************************************************
Procedure DBPrintCR( PrintStatements.q )
  CallCFunctionFast( *DB_Core\PrintCR, PrintStatements )
 EndProcedure
;
; *********************************************************************
Procedure DBPrintCO( PrintStatements.d )
  CallCFunctionFast( *DB_Core\PrintCO, PrintStatements )
 EndProcedure
;
; *********************************************************************
Procedure DBPrintCS( PrintStatements.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @PrintStatementsPTR.l, Len( PrintStatements ) + 1 ) ; CreateString
  PokeS( PrintStatementsPTR, PrintStatements )
  CallCFunctionFast( *DB_Core\PrintCS, PrintStatementsPTR )
 EndProcedure
;
; *********************************************************************
Procedure DBCls()
  CallCFunctionFast( *DB_Core\Cls )
 EndProcedure
;
; *********************************************************************
Procedure DBSetCursor( X.l, Y.l )
  CallCFunctionFast( *DB_Core\SetCursor, X, Y )
 EndProcedure
;
; *********************************************************************
Procedure.l DBRndLL( RangeValue.l )
  Retour.l = CallCFunctionFast( *DB_Core\RndLL, RangeValue )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.s DBGetDXVer()
  Retour.l = CallCFunctionFast( *DB_Core\GetDXVer, ExtraPARAM.l )
  RetourSTR.s = PeekS( Retour )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure.l DBTimerL()
  Retour.l = CallCFunctionFast( *DB_Core\TimerL )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.f DBCosFF( Value.f )
  Retour.l = CallCFunctionFast( *DB_Core\CosFF, Value )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.s DBInkey()
  Retour.l = CallCFunctionFast( *DB_Core\InkeyS, ExtraPARAM.l )
  RetourSTR.s = PeekS( Retour )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure DBSyncSleep( FlagProcessorFriendly.l )
  CallCFunctionFast( *DB_Core\SyncSleep, FlagProcessorFriendly )
 EndProcedure
;
; *********************************************************************
Procedure DBSyncOn()
  CallCFunctionFast( *DB_Core\SyncOn )
 EndProcedure
;
; *********************************************************************
Procedure DBSyncOff()
  CallCFunctionFast( *DB_Core\SyncOff )
 EndProcedure
;
; *********************************************************************
Procedure DBSync()
  CallCFunctionFast( *DB_Core\Sync )
 EndProcedure
;
; *********************************************************************
Procedure DBSyncRate( Rate.l )
  CallCFunctionFast( *DB_Core\SyncRate, Rate )
 EndProcedure
;
; *********************************************************************
Procedure DBSyncMask( IgnoreCameraMask.l )
  CallCFunctionFast( *DB_Core\SyncMask, IgnoreCameraMask )
 EndProcedure
;
; *********************************************************************
Procedure.f DBAcosFF( Value.f )
  Retour.l = CallCFunctionFast( *DB_Core\AcosFF, Value )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBAsinFF( Value.f )
  Retour.l = CallCFunctionFast( *DB_Core\AsinFF, Value )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBAtanFF( Value.f )
  Retour.l = CallCFunctionFast( *DB_Core\AtanFF, Value )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBAtan2FFF( DistanceX.f, DistanceY.f )
  Retour.l = CallCFunctionFast( *DB_Core\Atan2FFF, DistanceX, DistanceY )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBSinFF( Value.f )
  Retour.l = CallCFunctionFast( *DB_Core\SinFF, Value )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBTanFF( Value.f )
  Retour.l = CallCFunctionFast( *DB_Core\TanFF, Value )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBHcosFF( Value.f )
  Retour.l = CallCFunctionFast( *DB_Core\HcosFF, Value )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBHsinFF( Value.f )
  Retour.l = CallCFunctionFast( *DB_Core\HsinFF, Value )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBHtanFF( Value.f )
  Retour.l = CallCFunctionFast( *DB_Core\HtanFF, Value )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBSqrtFF( Value.f )
  Retour.l = CallCFunctionFast( *DB_Core\SqrtFF, Value )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure DBRandomize( SeedValue.l )
  CallCFunctionFast( *DB_Core\Randomize, SeedValue )
 EndProcedure
;
; *********************************************************************
Procedure.f DBAbsFF( Value.f )
  Retour.l = CallCFunctionFast( *DB_Core\AbsFF, Value )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.s DBCl()
  Retour.l = CallCFunctionFast( *DB_Core\Cl, ExtraPARAM.l )
  RetourSTR.s = PeekS( Retour )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure.s DBGetDate()
  Retour.l = CallCFunctionFast( *DB_Core\GetDate, ExtraPARAM.l )
  RetourSTR.s = PeekS( Retour )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure.s DBGetTime()
  Retour.l = CallCFunctionFast( *DB_Core\GetTime, ExtraPARAM.l )
  RetourSTR.s = PeekS( Retour )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure.l DBIntLF( Value.f )
  Retour.l = CallCFunctionFast( *DB_Core\IntLF, Value )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DBSleepL( Number.l )
  CallCFunctionFast( *DB_Core\SleepL, Number )
 EndProcedure
;
; *********************************************************************
Procedure DBWaitForKey()
  CallCFunctionFast( *DB_Core\WaitForKey )
 EndProcedure
;
; *********************************************************************
Procedure DBWaitForKey1()
  CallCFunctionFast( *DB_Core\WaitForKey1 )
 EndProcedure
;
; *********************************************************************
Procedure DBWaitForMouse()
  CallCFunctionFast( *DB_Core\WaitForMouse )
 EndProcedure
;
; *********************************************************************
Procedure DBWaitForMouse1()
  CallCFunctionFast( *DB_Core\WaitForMouse1 )
 EndProcedure
;
; *********************************************************************
Procedure DBSleepL1( Param0.l )
  CallCFunctionFast( *DB_Core\SleepL1, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure.f DBExpFF( Value.f )
  Retour.l = CallCFunctionFast( *DB_Core\ExpFF, Value )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure DBSaveArray( Filename.s, ArrayName0 )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FilenamePTR.l, Len( Filename ) + 1 ) ; CreateString
  PokeS( FilenamePTR, Filename )
  CallCFunctionFast( *DB_Core\SaveArray, FilenamePTR, ArrayName0 )
 EndProcedure
;
; *********************************************************************
Procedure DBLoadArray( Filename.s, ArrayName0 )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FilenamePTR.l, Len( Filename ) + 1 ) ; CreateString
  PokeS( FilenamePTR, Filename )
  CallCFunctionFast( *DB_Core\LoadArray, FilenamePTR, ArrayName0 )
 EndProcedure
;
; *********************************************************************
Procedure DBFastSync()
  CallCFunctionFast( *DB_Core\FastSync )
 EndProcedure
;
; *********************************************************************
Procedure DBPrintR1( Param0 )
  CallCFunctionFast( *DB_Core\PrintR1, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure DBPrintCR1( Param0 )
  CallCFunctionFast( *DB_Core\PrintCR1, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure.f DBCurveValueFFFF( DestinationValue.f, CurrentValue.f, SpeedValue.f )
  Retour.l = CallCFunctionFast( *DB_Core\CurveValueFFFF, DestinationValue, CurrentValue, SpeedValue )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBWrapValueFF( AngleValue.f )
  Retour.l = CallCFunctionFast( *DB_Core\WrapValueFF, AngleValue )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBNewXValueFFFF( CurrentXValue.f, AngleValue.f, StepValue.f )
  Retour.l = CallCFunctionFast( *DB_Core\NewXValueFFFF, CurrentXValue, AngleValue, StepValue )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBNewYValueFFFF( CurrentYValue.f, AngleValue.f, StepValue.f )
  Retour.l = CallCFunctionFast( *DB_Core\NewYValueFFFF, CurrentYValue, AngleValue, StepValue )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBNewZValueFFFF( CurrentZValue.f, AngleValue.f, StepValue.f )
  Retour.l = CallCFunctionFast( *DB_Core\NewZValueFFFF, CurrentZValue, AngleValue, StepValue )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBCurveAngleFFFF( DestinationValue.f, CurrentValue.f, SpeedValue.f )
  Retour.l = CallCFunctionFast( *DB_Core\CurveAngleFFFF, DestinationValue, CurrentValue, SpeedValue )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure DBArrayIndexToBottom( ArrayName0 )
  CallCFunctionFast( *DB_Core\ArrayIndexToBottom, ArrayName0 )
 EndProcedure
;
; *********************************************************************
Procedure DBArrayIndexToTop( ArrayName0 )
  CallCFunctionFast( *DB_Core\ArrayIndexToTop, ArrayName0 )
 EndProcedure
;
; *********************************************************************
Procedure.l DBArrayIndexValid( ArrayName0 )
  Retour.l = CallCFunctionFast( *DB_Core\ArrayIndexValid, ArrayName0 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DBNextArrayInd( ArrayName0 )
  CallCFunctionFast( *DB_Core\NextArrayIndex, ArrayName0 )
 EndProcedure
;
; *********************************************************************
Procedure DBPreviousArrayInd( ArrayName0 )
  CallCFunctionFast( *DB_Core\PreviousArrayIndex, ArrayName0 )
 EndProcedure
;
; *********************************************************************
Procedure.l DBArrayCount( ArrayName0 )
  Retour.l = CallCFunctionFast( *DB_Core\ArrayCount, ArrayName0 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DBArrayInsertAtBottom( ArrayName0, Index, Param2.l )
  CallCFunctionFast( *DB_Core\ArrayInsertAtBottom1, ArrayName0, Index, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure DBArrayInsertAtTop( ArrayName0, Index, Param2.l )
  CallCFunctionFast( *DB_Core\ArrayInsertAtTop1, ArrayName0, Index, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure DBArrayInsertAtElement( ArrayName0, Index, Param2.l )
  CallCFunctionFast( *DB_Core\ArrayInsertAtElement, ArrayName0, Index, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure DBArrayDeleteElement( ArrayName0 )
  CallCFunctionFast( *DB_Core\ArrayDeleteElement, ArrayName0 )
 EndProcedure
;
; *********************************************************************
Procedure DBArrayDeleteElement1( ArrayName0, Index.l )
  CallCFunctionFast( *DB_Core\ArrayDeleteElement1, ArrayName0, Index )
 EndProcedure
;
; *********************************************************************
Procedure DBEmptyArray( ArrayName0 )
  CallCFunctionFast( *DB_Core\EmptyArray, ArrayName0 )
 EndProcedure
;
; *********************************************************************
Procedure DBRemoveFromQueue( ArrayName0 )
  CallCFunctionFast( *DB_Core\RemoveFromQueue, ArrayName0 )
 EndProcedure
;
; *********************************************************************
Procedure DBPopFromStack( ArrayName0 )
  CallCFunctionFast( *DB_Core\PopFromStack, ArrayName0 )
 EndProcedure
;
; *********************************************************************
Procedure DBArrayIndexToQueue( ArrayName0 )
  CallCFunctionFast( *DB_Core\ArrayIndexToQueue, ArrayName0 )
 EndProcedure
;
; *********************************************************************
Procedure DBArrayIndexToStack( ArrayName0 )
  CallCFunctionFast( *DB_Core\ArrayIndexToStack, ArrayName0 )
 EndProcedure
;
; *********************************************************************
Procedure DBDrawToBack()
  CallCFunctionFast( *DB_Core\DrawToBack )
 EndProcedure
;
; *********************************************************************
Procedure DBDrawToFront()
  CallCFunctionFast( *DB_Core\DrawToFront )
 EndProcedure
;
; *********************************************************************
Procedure DBDrawSpritesFirst()
  CallCFunctionFast( *DB_Core\DrawSpritesFirst )
 EndProcedure
;
; *********************************************************************
Procedure DBDrawSpritesLast()
  CallCFunctionFast( *DB_Core\DrawSpritesLast )
 EndProcedure
;
; *********************************************************************
Procedure DBFillByteMemory( MemoryAddress.l, FillByte, SizeInBytes.l )
  CallCFunctionFast( *DB_Core\FillByteMemory, MemoryAddress, FillByte, SizeInBytes )
 EndProcedure
;
; *********************************************************************
Procedure DBCopyByteMemory( MemoryDestination.l, MemorySource.l, SizeInBytes.l )
  CallCFunctionFast( *DB_Core\CopyByteMemory, MemoryDestination, MemorySource, SizeInBytes )
 EndProcedure
;
; *********************************************************************
Procedure.l DBMakeCoreByteMemory( SizeInBytes.l )
  Retour.l = CallCFunctionFast( *DB_Core\MakeByteMemory, SizeInBytes )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DBDeleteByteMemory( MemoryAddress.l )
  CallCFunctionFast( *DB_Core\DeleteByteMemory, MemoryAddress )
 EndProcedure
;
; *********************************************************************
Procedure DBBreak()
  CallCFunctionFast( *DB_Core\Break )
 EndProcedure
;
; *********************************************************************
Procedure DBBreakS( DebugString.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @DebugStringPTR.l, Len( DebugString ) + 1 ) ; CreateString
  PokeS( DebugStringPTR, DebugString )
  CallCFunctionFast( *DB_Core\BreakS, DebugStringPTR )
 EndProcedure
;
; *********************************************************************
Procedure.s DBFreeStringSS()
  Retour.l = CallCFunctionFast( *DB_Core\FreeStringSS, ExtraPARAM.l )
  RetourSTR.s = PeekS( Retour )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure DBAlwaysActiveOn()
  CallCFunctionFast( *DB_Core\AlwaysActiveOn )
 EndProcedure
;
; *********************************************************************
Procedure DBAlwaysActiveOff()
  CallCFunctionFast( *DB_Core\AlwaysActiveOff )
 EndProcedure
;
; *********************************************************************
Procedure.q DBPerformanceTimer()
  Retour.q = CallCFunctionFast( *DB_Core\PerformanceTimer )
  ProcedureReturn Retour
 EndProcedure
;

; IDE Options = PureBasic 4.10 Beta 2 (Windows - x86)
; CursorPosition = 505
; FirstLine = 468
; Folding = ---------------
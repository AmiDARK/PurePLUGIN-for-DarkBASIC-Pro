; DarkBasic Professional RC2PBIncludes Ver 1. File - COMMANDS WRAPPING
; By Frederic Cordier - 07.02.13
;
; *********************************************************************
Procedure DBChangeMeshFromMemblock( MeshNumber.l, MemblockNumber.l )
  CallCFunctionFast( *DB_Memblocks\ChangeMeshFromMemblock, MeshNumber, MemblockNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBCopyMemblock( _From.l, _To.l, PosFrom.l, PosTo.l, Bytes.l )
  CallCFunctionFast( *DB_Memblocks\CopyMemblock, _From, _To, PosFrom, PosTo, Bytes )
 EndProcedure
;
; *********************************************************************
Procedure DBCreateBitmapFromMemblock( BitmapNumber.l, MemblockNumber.l )
  CallCFunctionFast( *DB_Memblocks\CreateBitmapFromMemblock, BitmapNumber, MemblockNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBCreateImageFromMemblock( ImageNumber.l, MemblockNumber.l )
  CallCFunctionFast( *DB_Memblocks\CreateImageFromMemblock, ImageNumber, MemblockNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBCreateMemblockFromBitmap( MemblockNumber.l, BitmapNumber.l )
  CallCFunctionFast( *DB_Memblocks\CreateMemblockFromBitmap, MemblockNumber, BitmapNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBCreateMemblockFromImage( MemblockNumber.l, ImageNumber.l )
  CallCFunctionFast( *DB_Memblocks\CreateMemblockFromImage, MemblockNumber, ImageNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBCreateMemblockFromMesh( MemblockNumber.l, MeshNumber.l )
  CallCFunctionFast( *DB_Memblocks\CreateMemblockFromMesh, MemblockNumber, MeshNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBCreateMemblockFromSound( MemblockNumber.l, SoundNumber.l )
  CallCFunctionFast( *DB_Memblocks\CreateMemblockFromSound, MemblockNumber, SoundNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBCreateMeshFromMemblock( MeshNumber.l, MemblockNumber.l )
  CallCFunctionFast( *DB_Memblocks\CreateMeshFromMemblock, MeshNumber, MemblockNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBCreateSoundFromMemblock( SoundNumber.l, MemblockNumber.l )
  CallCFunctionFast( *DB_Memblocks\CreateSoundFromMemblock, SoundNumber, MemblockNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBDeleteMemblock( MemblockNumber.l )
  CallCFunctionFast( *DB_Memblocks\DeleteMemblock, MemblockNumber )
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetMemblockPtr( MemblockNumber.l )
  Retour.l = CallCFunctionFast( *DB_Memblocks\GetMemblockPtr, MemblockNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetMemblockSize( MemblockNumber.l )
  Retour.l = CallCFunctionFast( *DB_Memblocks\GetMemblockSize, MemblockNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DBMakeMemblock( MemblockNumber.l, SizeinBytes.l )
  CallCFunctionFast( *DB_Memblocks\MakeMemblock, MemblockNumber, SizeinBytes )
 EndProcedure
;
; *********************************************************************
Procedure.l DBMemblockExist( MemblockNumber.l )
  Retour.l = CallCFunctionFast( *DB_Memblocks\MemblockExist, MemblockNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBReadMemblockByte( MemblockNumber.l, Position.l )
;  Retour.l = CallCFunctionFast( *DB_Memblocks\ReadMemblockByte, MemblockNumber, Position )
  Adr.l = DBGetMemblockPtr( MemblockNumber ) + Position
  Retour = PeekB( Adr )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBReadMemblockDWord( MemblockNumber.l, Position.l )
  Retour.l = CallCFunctionFast( *DB_Memblocks\ReadMemblockDWord, MemblockNumber, Position )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.f DBReadMemblockFloat( MemblockNumber.l, Position.l )
  Retour.l = CallCFunctionFast( *DB_Memblocks\ReadMemblockFloat, MemblockNumber, Position )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.l DBReadMemblockWordLLL( MemblockNumber.l, Position.l )
  Retour.l = CallCFunctionFast( *DB_Memblocks\ReadMemblockWordLLL, MemblockNumber, Position )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DBWriteMemblockByte( MemblockNumber.l, Position.l, Byte.l )
;  CallCFunctionFast( *DB_Memblocks\WriteMemblockByte, MemblockNumber, Position, Byte )
  Adr.l = DBGetMemblockPtr( MemblockNumber ) + Position
  PokeB( Adr, Byte )
 EndProcedure
;
; *********************************************************************
Procedure DBWriteMemblockDWord( MemblockNumber.l, Position.l, DWord.l )
  CallCFunctionFast( *DB_Memblocks\WriteMemblockDWord, MemblockNumber, Position, DWord )
 EndProcedure
;
; *********************************************************************
Procedure DBWriteMemblockFloat( MemblockNumber.l, Position.l, Float.f )
  CallCFunctionFast( *DB_Memblocks\WriteMemblockFloat, MemblockNumber, Position, Float )
 EndProcedure
;
; *********************************************************************
Procedure DBWriteMemblockWord( MemblockNumber.l, Position.l, Word.l )
  CallCFunctionFast( *DB_Memblocks\WriteMemblockWord, MemblockNumber, Position, Word )
 EndProcedure
;
; *********************************************************************
Procedure DBCreateMemblockFromArray( MemblockNumber.l, ArrayName0 )
  CallCFunctionFast( *DB_Memblocks\CreateMemblockFromArray, MemblockNumber, ArrayName0 )
 EndProcedure
;
; *********************************************************************
Procedure DBCreateArrayFromMemblock( ArrayName0, MemblockNumber.l )
  CallCFunctionFast( *DB_Memblocks\CreateArrayFromMemblock, ArrayName0, MemblockNumber )
 EndProcedure
;

; IDE Options = PureBasic 4.10 Beta 2 (Windows - x86)
; CursorPosition = 112
; FirstLine = 98
; Folding = -----
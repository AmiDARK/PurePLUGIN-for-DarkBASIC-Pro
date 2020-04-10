; DarkBasic Professional RC2PBIncludes Ver 1. File - COMMANDS WRAPPING
; By Frederic Cordier - 07.02.13
;
; *********************************************************************
Procedure DBPerformChecklistForNetConnections()
  CallCFunctionFast( *DB_Multiplayer\PerformChecklistForNetConnections )
 EndProcedure
;
; *********************************************************************
Procedure DBSetNetConnections( ConnectionNumber.l )
  CallCFunctionFast( *DB_Multiplayer\SetNetConnections, ConnectionNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSetNetConnections1( ConnectionNumber.l, AddressData.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @AddressDataPTR.l, Len( AddressData ) + 1 ) ; CreateString
  PokeS( AddressDataPTR, AddressData )
  CallCFunctionFast( *DB_Multiplayer\SetNetConnectionsEx, ConnectionNumber, AddressDataPTR )
 EndProcedure
;
; *********************************************************************
Procedure DBPerformChecklistForNetSessions()
  CallCFunctionFast( *DB_Multiplayer\PerformChecklistForNetSessions )
 EndProcedure
;
; *********************************************************************
Procedure DBCreateNetGame( Gamename.s, Playername.s, NumberOfPlayers.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @GamenamePTR.l, Len( Gamename ) + 1 ) ; CreateString
  PokeS( GamenamePTR, Gamename )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @PlayernamePTR.l, Len( Playername ) + 1 ) ; CreateString
  PokeS( PlayernamePTR, Playername )
  CallCFunctionFast( *DB_Multiplayer\CreateNetGame, GamenamePTR, PlayernamePTR, NumberOfPlayers )
 EndProcedure
;
; *********************************************************************
Procedure DBCreateNetGame1( Gamename.s, Playername.s, NumberOfPlayers.l, Flag.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @GamenamePTR.l, Len( Gamename ) + 1 ) ; CreateString
  PokeS( GamenamePTR, Gamename )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @PlayernamePTR.l, Len( Playername ) + 1 ) ; CreateString
  PokeS( PlayernamePTR, Playername )
  CallCFunctionFast( *DB_Multiplayer\CreateNetGameEx, GamenamePTR, PlayernamePTR, NumberOfPlayers, Flag )
 EndProcedure
;
; *********************************************************************
Procedure DBJoinNetGame( SessionNumber.l, Playername.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @PlayernamePTR.l, Len( Playername ) + 1 ) ; CreateString
  PokeS( PlayernamePTR, Playername )
  CallCFunctionFast( *DB_Multiplayer\JoinNetGame, SessionNumber, PlayernamePTR )
 EndProcedure
;
; *********************************************************************
Procedure DBCloseNetGame()
  CallCFunctionFast( *DB_Multiplayer\CloseNetGame )
 EndProcedure
;
; *********************************************************************
Procedure DBPerformChecklistForNetPlayers()
  CallCFunctionFast( *DB_Multiplayer\PerformChecklistForNetPlayers )
 EndProcedure
;
; *********************************************************************
Procedure DBCreatePlayer( Playername.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @PlayernamePTR.l, Len( Playername ) + 1 ) ; CreateString
  PokeS( PlayernamePTR, Playername )
  CallCFunctionFast( *DB_Multiplayer\CreatePlayer, PlayernamePTR )
 EndProcedure
;
; *********************************************************************
Procedure.l DBCreatePlayer1( Playername.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @PlayernamePTR.l, Len( Playername ) + 1 ) ; CreateString
  PokeS( PlayernamePTR, Playername )
  Retour.l = CallCFunctionFast( *DB_Multiplayer\CreatePlayerEx, PlayernamePTR )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DBDestroyPlayer( PlayerNumber.l )
  CallCFunctionFast( *DB_Multiplayer\DestroyPlayer, PlayerNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSendNetMsgL( PlayerNumber.l, IntegerValue.l )
  CallCFunctionFast( *DB_Multiplayer\SendNetMsgL, PlayerNumber, IntegerValue )
 EndProcedure
;
; *********************************************************************
Procedure DBSendNetMsgF( PlayerNumber.l, FloatValue.f )
  CallCFunctionFast( *DB_Multiplayer\SendNetMsgF, PlayerNumber, FloatValue )
 EndProcedure
;
; *********************************************************************
Procedure DBSendNetMsgS( PlayerNumber.l, String.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @StringPTR.l, Len( String ) + 1 ) ; CreateString
  PokeS( StringPTR, String )
  CallCFunctionFast( *DB_Multiplayer\SendNetMsgS, PlayerNumber, StringPTR )
 EndProcedure
;
; *********************************************************************
Procedure DBSendNetMsgMemblock( PlayerNumber.l, MemblockNumber.l )
  CallCFunctionFast( *DB_Multiplayer\SendNetMsgMemblock, PlayerNumber, MemblockNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSendNetMsgMemblock1( PlayerNumber.l, MemblockNumber.l, GuarenteePacket.l )
  CallCFunctionFast( *DB_Multiplayer\SendNetMsgMemblockEx, PlayerNumber, MemblockNumber, GuarenteePacket )
 EndProcedure
;
; *********************************************************************
Procedure DBSendNetMsgImage( PlayerNumber.l, ImageNumber.l, GuarenteePacket.l )
  CallCFunctionFast( *DB_Multiplayer\SendNetMsgImage, PlayerNumber, ImageNumber, GuarenteePacket )
 EndProcedure
;
; *********************************************************************
Procedure DBSendNetMsgBitmap( PlayerNumber.l, BitmapNumber.l, GuarenteePacket.l )
  CallCFunctionFast( *DB_Multiplayer\SendNetMsgBitmap, PlayerNumber, BitmapNumber, GuarenteePacket )
 EndProcedure
;
; *********************************************************************
Procedure DBSendNetMsgSound( PlayerNumber.l, SoundNumber.l, GuarenteePacket.l )
  CallCFunctionFast( *DB_Multiplayer\SendNetMsgSound, PlayerNumber, SoundNumber, GuarenteePacket )
 EndProcedure
;
; *********************************************************************
Procedure DBSendNetMsgMesh( PlayerNumber.l, MeshNumber.l, GuarenteePacket.l )
  CallCFunctionFast( *DB_Multiplayer\SendNetMsgMesh, PlayerNumber, MeshNumber, GuarenteePacket )
 EndProcedure
;
; *********************************************************************
Procedure DBGetNetMsg()
  CallCFunctionFast( *DB_Multiplayer\GetNetMsg )
 EndProcedure
;
; *********************************************************************
Procedure.l DBNetMsgInteger()
  Retour.l = CallCFunctionFast( *DB_Multiplayer\NetMsgInteger )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.f DBNetMsgFloat()
  Retour.l = CallCFunctionFast( *DB_Multiplayer\NetMsgFloat )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.s DBNetMsgString()
  Retour.l = CallCFunctionFast( *DB_Multiplayer\NetMsgString, ExtraPARAM.l )
  RetourSTR.s = PeekS( Retour )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure DBNetMsgImage( ImageNumber.l )
  CallCFunctionFast( *DB_Multiplayer\NetMsgImage, ImageNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBNetMsgMesh( MeshNumber.l )
  CallCFunctionFast( *DB_Multiplayer\NetMsgMesh, MeshNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBNetMsgSound( SoundNumber.l )
  CallCFunctionFast( *DB_Multiplayer\NetMsgSound, SoundNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBNetMsgMemblock( MemblockNumber.l )
  CallCFunctionFast( *DB_Multiplayer\NetMsgMemblock, MemblockNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBNetMsgBitmap( BitmapNumber.l )
  CallCFunctionFast( *DB_Multiplayer\NetMsgBitmap, BitmapNumber )
 EndProcedure
;
; *********************************************************************
Procedure.l DBNetSessionExists()
  Retour.l = CallCFunctionFast( *DB_Multiplayer\NetSessionExists )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBNetSessionIsNowHosting()
  Retour.l = CallCFunctionFast( *DB_Multiplayer\NetSessionIsNowHosting )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBNetSessionLost()
  Retour.l = CallCFunctionFast( *DB_Multiplayer\NetSessionLost )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBNetMsgExists()
  Retour.l = CallCFunctionFast( *DB_Multiplayer\NetMsgExists )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBNetMsgPlayerFrom()
  Retour.l = CallCFunctionFast( *DB_Multiplayer\NetMsgPlayerFrom )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBNetMsgPlayerTo()
  Retour.l = CallCFunctionFast( *DB_Multiplayer\NetMsgPlayerTo )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBNetMsgType()
  Retour.l = CallCFunctionFast( *DB_Multiplayer\NetMsgType )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBNetPlayerDestroyed()
  Retour.l = CallCFunctionFast( *DB_Multiplayer\NetPlayerDestroyed )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBNetPlayerCreated()
  Retour.l = CallCFunctionFast( *DB_Multiplayer\NetPlayerCreated )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBMagicNetGame( Gamename.s, Playername.s, NumberOfPlayers.l, GameType.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @GamenamePTR.l, Len( Gamename ) + 1 ) ; CreateString
  PokeS( GamenamePTR, Gamename )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @PlayernamePTR.l, Len( Playername ) + 1 ) ; CreateString
  PokeS( PlayernamePTR, Playername )
  Retour.l = CallCFunctionFast( *DB_Multiplayer\MagicNetGame, GamenamePTR, PlayernamePTR, NumberOfPlayers, GameType )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBNetBufferSize()
  Retour.l = CallCFunctionFast( *DB_Multiplayer\NetBufferSize )
  ProcedureReturn Retour
 EndProcedure
;

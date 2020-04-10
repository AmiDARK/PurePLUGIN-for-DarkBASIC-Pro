; DarkBasic Professional RC2PBIncludes Ver 1.0 File - COMMANDS WRAPPING
; By Frederic Cordier - 07.02.13
;
; *********************************************************************
Procedure DBMultiplayerStart()
  CallCFunctionFast( *DB_MultiplayerPlus\MultiplayerStart )
 EndProcedure
;
; *********************************************************************
Procedure DBMultiplayerSetDebugState( Param0.l )
  CallCFunctionFast( *DB_MultiplayerPlus\MultiplayerSetDebugState, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure DBMultiplayerDisplayDebug( Param0.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param0PTR.l, Len( Param0 ) + 1 ) ; CreateString
  PokeS( Param0PTR, Param0 )
  CallCFunctionFast( *DB_MultiplayerPlus\MultiplayerDisplayDebug, Param0PTR )
 EndProcedure
;
; *********************************************************************
Procedure DBMultiplayerCreateTCPServer( Param0.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param0PTR.l, Len( Param0 ) + 1 ) ; CreateString
  PokeS( Param0PTR, Param0 )
  CallCFunctionFast( *DB_MultiplayerPlus\MultiplayerCreateTCPServer, Param0PTR )
 EndProcedure
;
; *********************************************************************
Procedure DBMultiplayerCreateTCPServer1( Param0.s, Param1.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param0PTR.l, Len( Param0 ) + 1 ) ; CreateString
  PokeS( Param0PTR, Param0 )
  CallCFunctionFast( *DB_MultiplayerPlus\MultiplayerCreateTCPServer1, Param0PTR, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure DBMultiplayerConnectToTCPServer( Param0.s, Param1.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param0PTR.l, Len( Param0 ) + 1 ) ; CreateString
  PokeS( Param0PTR, Param0 )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param1PTR.l, Len( Param1 ) + 1 ) ; CreateString
  PokeS( Param1PTR, Param1 )
  CallCFunctionFast( *DB_MultiplayerPlus\MultiplayerConnectToTCPServer, Param0PTR, Param1PTR )
 EndProcedure
;
; *********************************************************************
Procedure DBMultiplayerConnectToTCPServer1( Param0.s, Param1.s, Param2.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param0PTR.l, Len( Param0 ) + 1 ) ; CreateString
  PokeS( Param0PTR, Param0 )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param1PTR.l, Len( Param1 ) + 1 ) ; CreateString
  PokeS( Param1PTR, Param1 )
  CallCFunctionFast( *DB_MultiplayerPlus\MultiplayerConnectToTCPServer1, Param0PTR, Param1PTR, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure DBMultiplayerDisconnect()
  CallCFunctionFast( *DB_MultiplayerPlus\MultiplayerDisconnect )
 EndProcedure
;
; *********************************************************************
Procedure DBMultiplayerSendFromPlayer( Param0.l )
  CallCFunctionFast( *DB_MultiplayerPlus\MultiplayerSendFromPlayer, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure DBMultiplayerSendMessageInteger( Param0.l )
  CallCFunctionFast( *DB_MultiplayerPlus\MultiplayerSendMessageInteger, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure DBMultiplayerSendMessageFloat( Param0.f )
  CallCFunctionFast( *DB_MultiplayerPlus\MultiplayerSendMessageFloat, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure DBMultiplayerSendMessageString( Param0.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param0PTR.l, Len( Param0 ) + 1 ) ; CreateString
  PokeS( Param0PTR, Param0 )
  CallCFunctionFast( *DB_MultiplayerPlus\MultiplayerSendMessageString, Param0PTR )
 EndProcedure
;
; *********************************************************************
Procedure DBMultiplayerSendMessageMemblock( Param0.l )
  CallCFunctionFast( *DB_MultiplayerPlus\MultiplayerSendMessageMemblock, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure.l DBMultiplayerMessageExists()
  Retour.l = CallCFunctionFast( *DB_MultiplayerPlus\MultiplayerMessageExists )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DBMultiplayerGetMessage()
  CallCFunctionFast( *DB_MultiplayerPlus\MultiplayerGetMessage )
 EndProcedure
;
; *********************************************************************
Procedure.l DBMultiplayerGetMessageType()
  Retour.l = CallCFunctionFast( *DB_MultiplayerPlus\MultiplayerGetMessageType )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBMultiplayerGetMessageInteger()
  Retour.l = CallCFunctionFast( *DB_MultiplayerPlus\MultiplayerGetMessageInteger )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.f DBMultiplayerGetMessageFloat()
  Retour.l = CallCFunctionFast( *DB_MultiplayerPlus\MultiplayerGetMessageFloat )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.s DBMultiplayerGetMessageString()
  Retour.l = CallCFunctionFast( *DB_MultiplayerPlus\MultiplayerGetMessageString, 0 )
  If Retour <> 0
    RetourSTR.s = PeekS( Retour )
    CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
   Else
    RetourSTR = ""
   EndIf
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure DBMultiplayerGetMessageMemblock( Param0.l )
  CallCFunctionFast( *DB_MultiplayerPlus\MultiplayerGetMessageMemblock, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure.l DBMultiplayerGetMessagePlayerFrom()
  Retour.l = CallCFunctionFast( *DB_MultiplayerPlus\MultiplayerGetMessagePlayerFrom )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBMultiplayerGetPlayerCount()
  Retour.l = CallCFunctionFast( *DB_MultiplayerPlus\MultiplayerGetPlayerCount )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.s DBMultiplayerGetPlayerName( Param1.l )
  Retour.l = CallCFunctionFast( *DB_MultiplayerPlus\MultiplayerGetPlayerName, 0, Param1 )
  If Retour <> 0
    RetourSTR.s = PeekS( Retour )
    CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
   Else
    RetourSTR = ""
   EndIf
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure.l DBMultiplayerGetPlayerID( Param1.l )
  Retour.l = CallCFunctionFast( *DB_MultiplayerPlus\MultiplayerGetPlayerID, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBMultiplayerGetID()
  Retour.l = CallCFunctionFast( *DB_MultiplayerPlus\MultiplayerGetID )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DBMultiplayerSendMessageInteger1( Param0.l, Param1.l )
  CallCFunctionFast( *DB_MultiplayerPlus\MultiplayerSendMessageInteger1, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure DBMultiplayerSendMessageFloat1( Param0.f, Param1.l )
  CallCFunctionFast( *DB_MultiplayerPlus\MultiplayerSendMessageFloat1, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure DBMultiplayerSendMessageString1( Param0.s, Param1.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param0PTR.l, Len( Param0 ) + 1 ) ; CreateString
  PokeS( Param0PTR, Param0 )
  CallCFunctionFast( *DB_MultiplayerPlus\MultiplayerSendMessageString1, Param0PTR, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure DBMultiplayerSendMessageMemblock1( Param0.l, Param1.l )
  CallCFunctionFast( *DB_MultiplayerPlus\MultiplayerSendMessageMemblock1, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure.s DBMultiplayerGetIPAddress()
  Retour.l = CallCFunctionFast( *DB_MultiplayerPlus\MultiplayerGetIPAddress, 0 )
  If Retour <> 0
    RetourSTR.s = PeekS( Retour )
    CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
   Else
    RetourSTR = ""
   EndIf
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure.l DBMultiplayerGetConnection()
  Retour.l = CallCFunctionFast( *DB_MultiplayerPlus\MultiplayerGetConnection )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DBMultiplayerStartVoiceServer()
  CallCFunctionFast( *DB_MultiplayerPlus\MultiplayerStartVoiceServer )
 EndProcedure
;
; *********************************************************************
Procedure.l DBMultiplayerGetQueueSize( Param1.l )
  Retour.l = CallCFunctionFast( *DB_MultiplayerPlus\MultiplayerGetQueueSize, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DBMultiplayerSendMessageMemblock2( Param0.l, Param1.l, Param2.l )
  CallCFunctionFast( *DB_MultiplayerPlus\MultiplayerSendMessageMemblock2, Param0, Param1, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure DBMultiplayerSendToPlayer( Param0.l )
  CallCFunctionFast( *DB_MultiplayerPlus\MultiplayerSendToPlayer, Param0 )
 EndProcedure
;

; IDE Options = PureBasic v4.02 (Windows - x86)
; CursorPosition = 115
; FirstLine = 112
; Folding = ------
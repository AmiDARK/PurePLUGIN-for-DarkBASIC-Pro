; DarkBasic Professional RC2PBIncludes Ver 1.0 File - COMMANDS INITIALIZING
; By Frederic Cordier - 07.02.13
;
Procedure.l CheckMultiplayerPlus()
  SUCCESS.l = 1
  If OpenLibrary( 1, "DBProMultiplayerPlusDebug.dll")
    DB_MultiplayerPlus\MultiplayerStart= AIsFunction( 1 , "?MultiplayerStart@@YAXXZ" ) ; 1 MULTIPLAYER START 
    DB_MultiplayerPlus\MultiplayerSetDebugState= AIsFunction( 1 , "?MultiplayerSetDebugState@@YAXH@Z" ) ; 2 MULTIPLAYER SET DEBUG STATE 
    DB_MultiplayerPlus\MultiplayerDisplayDebug= AIsFunction( 1 , "?MultiplayerDisplayDebug@@YAXPAD@Z" ) ; 3 MULTIPLAYER DISPLAY DEBUG 
    DB_MultiplayerPlus\MultiplayerCreateTCPServer= AIsFunction( 1 , "?MultiplayerCreateTCPServer@@YAXPAD@Z" ) ; 4 MULTIPLAYER CREATE TCP SERVER 
    DB_MultiplayerPlus\MultiplayerCreateTCPServer1= AIsFunction( 1 , "?MultiplayerCreateTCPServer@@YAXPADK@Z" ) ; 5 MULTIPLAYER CREATE TCP SERVER 
    DB_MultiplayerPlus\MultiplayerConnectToTCPServer= AIsFunction( 1 , "?MultiplayerConnectToTCPServer@@YAXPAD0@Z" ) ; 6 MULTIPLAYER CONNECT TO TCP SERVER 
    DB_MultiplayerPlus\MultiplayerConnectToTCPServer1= AIsFunction( 1 , "?MultiplayerConnectToTCPServer@@YAXPAD0K@Z" ) ; 7 MULTIPLAYER CONNECT TO TCP SERVER 
    DB_MultiplayerPlus\MultiplayerDisconnect= AIsFunction( 1 , "?MultiplayerDisconnect@@YAXXZ" ) ; 8 MULTIPLAYER DISCONNECT %
    DB_MultiplayerPlus\MultiplayerSendFromPlayer= AIsFunction( 1 , "?MultiplayerSendFromPlayer@@YAXK@Z" ) ; 9 MULTIPLAYER SEND FROM PLAYER 
    DB_MultiplayerPlus\MultiplayerSendMessageInteger= AIsFunction( 1 , "?MultiplayerSendMessageInteger@@YAXH@Z" ) ; 10 MULTIPLAYER SEND MESSAGE INTEGER 
    DB_MultiplayerPlus\MultiplayerSendMessageFloat= AIsFunction( 1 , "?MultiplayerSendMessageFloat@@YAXM@Z" ) ; 11 MULTIPLAYER SEND MESSAGE FLOAT 
    DB_MultiplayerPlus\MultiplayerSendMessageString= AIsFunction( 1 , "?MultiplayerSendMessageString@@YAXPAD@Z" ) ; 12 MULTIPLAYER SEND MESSAGE STRING 
    DB_MultiplayerPlus\MultiplayerSendMessageMemblock= AIsFunction( 1 , "?MultiplayerSendMessageMemblock@@YAXH@Z" ) ; 13 MULTIPLAYER SEND MESSAGE MEMBLOCK 
    DB_MultiplayerPlus\MultiplayerMessageExists= AIsFunction( 1 , "?MultiplayerMessageExists@@YAHXZ" ) ; 14 MULTIPLAYER MESSAGE EXISTS 
    DB_MultiplayerPlus\MultiplayerGetMessage= AIsFunction( 1 , "?MultiplayerGetMessage@@YAXXZ" ) ; 15 MULTIPLAYER GET MESSAGE 
    DB_MultiplayerPlus\MultiplayerGetMessageType= AIsFunction( 1 , "?MultiplayerGetMessageType@@YAHXZ" ) ; 16 MULTIPLAYER GET MESSAGE TYPE 
    DB_MultiplayerPlus\MultiplayerGetMessageInteger= AIsFunction( 1 , "?MultiplayerGetMessageInteger@@YAHXZ" ) ; 17 MULTIPLAYER GET MESSAGE INTEGER 
    DB_MultiplayerPlus\MultiplayerGetMessageFloat= AIsFunction( 1 , "?MultiplayerGetMessageFloat@@YAMXZ" ) ; 18 MULTIPLAYER GET MESSAGE FLOAT 
    DB_MultiplayerPlus\MultiplayerGetMessageString= AIsFunction( 1 , "?MultiplayerGetMessageString@@YAKK@Z" ) ; 19 MULTIPLAYER GET MESSAGE STRING 
    DB_MultiplayerPlus\MultiplayerGetMessageMemblock= AIsFunction( 1 , "?MultiplayerGetMessageMemblock@@YAXH@Z" ) ; 20 MULTIPLAYER GET MESSAGE MEMBLOCK 
    DB_MultiplayerPlus\MultiplayerGetMessagePlayerFrom= AIsFunction( 1 , "?MultiplayerGetMessagePlayerFrom@@YAKXZ" ) ; 21 MULTIPLAYER GET MESSAGE PLAYER FROM 
    DB_MultiplayerPlus\MultiplayerGetPlayerCount= AIsFunction( 1 , "?MultiplayerGetPlayerCount@@YAHXZ" ) ; 22 MULTIPLAYER GET PLAYER COUNT 
    DB_MultiplayerPlus\MultiplayerGetPlayerName= AIsFunction( 1 , "?MultiplayerGetPlayerName@@YAKKH@Z" ) ; 23 MULTIPLAYER GET PLAYER NAME 
    DB_MultiplayerPlus\MultiplayerGetPlayerID= AIsFunction( 1 , "?MultiplayerGetPlayerID@@YAKH@Z" ) ; 24 MULTIPLAYER GET PLAYER ID 
    DB_MultiplayerPlus\MultiplayerGetID= AIsFunction( 1 , "?MultiplayerGetID@@YAKXZ" ) ; 25 MULTIPLAYER GET ID 
    DB_MultiplayerPlus\MultiplayerSendMessageInteger1= AIsFunction( 1 , "?MultiplayerSendMessageInteger@@YAXHH@Z" ) ; 26 MULTIPLAYER SEND MESSAGE INTEGER 
    DB_MultiplayerPlus\MultiplayerSendMessageFloat1= AIsFunction( 1 , "?MultiplayerSendMessageFloat@@YAXMH@Z" ) ; 27 MULTIPLAYER SEND MESSAGE FLOAT 
    DB_MultiplayerPlus\MultiplayerSendMessageString1= AIsFunction( 1 , "?MultiplayerSendMessageString@@YAXPADH@Z" ) ; 28 MULTIPLAYER SEND MESSAGE STRING 
    DB_MultiplayerPlus\MultiplayerSendMessageMemblock1= AIsFunction( 1 , "?MultiplayerSendMessageMemblock@@YAXHH@Z" ) ; 29 MULTIPLAYER SEND MESSAGE MEMBLOCK 
    DB_MultiplayerPlus\MultiplayerGetIPAddress= AIsFunction( 1 , "?MultiplayerGetIPAddress@@YAKXZ" ) ; 30 MULTIPLAYER GET IP ADDRESS 
    DB_MultiplayerPlus\MultiplayerGetConnection= AIsFunction( 1 , "?MultiplayerGetConnection@@YAHXZ" ) ; 31 MULTIPLAYER GET CONNECTION 
    DB_MultiplayerPlus\MultiplayerStartVoiceServer= AIsFunction( 1 , "?MultiplayerStartVoiceServer@@YAXXZ" ) ; 32 MULTIPLAYER START VOICE SERVER 
    DB_MultiplayerPlus\MultiplayerGetQueueSize= AIsFunction( 1 , "?MultiplayerGetQueueSize@@YAHH@Z" ) ; 33 MULTIPLAYER GET QUEUE SIZE 
    DB_MultiplayerPlus\MultiplayerSendMessageMemblock2= AIsFunction( 1 , "?MultiplayerSendMessageMemblock@@YAXHHH@Z" ) ; 34 MULTIPLAYER SEND MESSAGE MEMBLOCK 
    DB_MultiplayerPlus\MultiplayerSendToPlayer= AIsFunction( 1 , "?MultiplayerSendToPlayer@@YAXH@Z" ) ; 35 MULTIPLAYER SEND MESSAGE TO 
    CloseLibrary( 1 )
   Else
    SUCCESS.l = 0
   EndIf
  ProcedureReturn SUCCESS
 EndProcedure

; IDE Options = PureBasic 4.10 Beta 2 (Windows - x86)
; CursorPosition = 42
; Folding = -
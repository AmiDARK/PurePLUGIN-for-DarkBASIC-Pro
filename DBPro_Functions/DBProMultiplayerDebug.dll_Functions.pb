; DarkBasic Professional RC2PBIncludes Ver 1.1 File - COMMANDS INITIALIZING
; By Frederic Cordier - 07.02.13
;
Procedure.l CheckMultiplayer()
  SUCCESS.l = 1
  If OpenLibrary( 1, "DBProMultiplayerDebug.dll")
    DB_Multiplayer\PerformChecklistForNetConnections= AIsFunction( 1 , "?PerformChecklistForNetConnections@@YAXXZ" ) ; 1 PERFORM CHECKLIST FOR NET CONNECTIONS 
    DB_Multiplayer\SetNetConnections= AIsFunction( 1 , "?SetNetConnections@@YAXH@Z" ) ; 2 SET NET CONNECTION Connection Number
    DB_Multiplayer\SetNetConnectionsEx= AIsFunction( 1 , "?SetNetConnectionsEx@@YAXHPAD@Z" ) ; 3 SET NET CONNECTION Connection Number,Address Data
    DB_Multiplayer\PerformChecklistForNetSessions= AIsFunction( 1 , "?PerformChecklistForNetSessions@@YAXXZ" ) ; 4 PERFORM CHECKLIST FOR NET SESSIONS 
    DB_Multiplayer\CreateNetGame= AIsFunction( 1 , "?CreateNetGame@@YAXPAD0H@Z" ) ; 5 CREATE NET GAME Gamename, Playername, Number Of Players
    DB_Multiplayer\CreateNetGameEx= AIsFunction( 1 , "?CreateNetGameEx@@YAXPAD0HH@Z" ) ; 6 CREATE NET GAME Gamename, Playername, Number Of Players, Flag
    DB_Multiplayer\JoinNetGame= AIsFunction( 1 , "?JoinNetGame@@YAXHPAD@Z" ) ; 7 JOIN NET GAME Session Number, Playername
    DB_Multiplayer\CloseNetGame= AIsFunction( 1 , "?CloseNetGame@@YAXXZ" ) ; 8 FREE NET GAME 
    DB_Multiplayer\PerformChecklistForNetPlayers= AIsFunction( 1 , "?PerformChecklistForNetPlayers@@YAXXZ" ) ; 9 PERFORM CHECKLIST FOR NET PLAYERS 
    DB_Multiplayer\CreatePlayer= AIsFunction( 1 , "?CreatePlayer@@YAXPAD@Z" ) ; 10 CREATE NET PLAYER Playername
    DB_Multiplayer\CreatePlayerEx= AIsFunction( 1 , "?CreatePlayerEx@@YAHPAD@Z" ) ; 11 CREATE NET PLAYER Playername
    DB_Multiplayer\DestroyPlayer= AIsFunction( 1 , "?DestroyPlayer@@YAXH@Z" ) ; 12 FREE NET PLAYER Player Number
    DB_Multiplayer\SendNetMsgL= AIsFunction( 1 , "?SendNetMsgL@@YAXHH@Z" ) ; 13 SEND NET MESSAGE INTEGER Player Number, Integer Value
    DB_Multiplayer\SendNetMsgF= AIsFunction( 1 , "?SendNetMsgF@@YAXHK@Z" ) ; 14 SEND NET MESSAGE FLOAT Player Number, Float Value
    DB_Multiplayer\SendNetMsgS= AIsFunction( 1 , "?SendNetMsgS@@YAXHPAD@Z" ) ; 15 SEND NET MESSAGE STRING Player Number, String
    DB_Multiplayer\SendNetMsgMemblock= AIsFunction( 1 , "?SendNetMsgMemblock@@YAXHH@Z" ) ; 16 SEND NET MESSAGE MEMBLOCK Player Number, Memblock Number
    DB_Multiplayer\SendNetMsgMemblockEx= AIsFunction( 1 , "?SendNetMsgMemblockEx@@YAXHHH@Z" ) ; 17 SEND NET MESSAGE MEMBLOCK Player Number, Memblock Number, Guarentee Packet
    DB_Multiplayer\SendNetMsgImage= AIsFunction( 1 , "?SendNetMsgImage@@YAXHHH@Z" ) ; 18 SEND NET MESSAGE IMAGE Player Number, Image Number, Guarentee Packet
    DB_Multiplayer\SendNetMsgBitmap= AIsFunction( 1 , "?SendNetMsgBitmap@@YAXHHH@Z" ) ; 19 SEND NET MESSAGE BITMAP Player Number, Bitmap Number, Guarentee Packet
    DB_Multiplayer\SendNetMsgSound= AIsFunction( 1 , "?SendNetMsgSound@@YAXHHH@Z" ) ; 20 SEND NET MESSAGE SOUND Player Number, Sound Number, Guarentee Packet
    DB_Multiplayer\SendNetMsgMesh= AIsFunction( 1 , "?SendNetMsgMesh@@YAXHHH@Z" ) ; 21 SEND NET MESSAGE MESH Player Number, Mesh Number, Guarentee Packet
    DB_Multiplayer\GetNetMsg= AIsFunction( 1 , "?GetNetMsg@@YAXXZ" ) ; 22 GET NET MESSAGE 
    DB_Multiplayer\NetMsgInteger= AIsFunction( 1 , "?NetMsgInteger@@YAHXZ" ) ; 23 NET MESSAGE INTEGER 
    DB_Multiplayer\NetMsgFloat= AIsFunction( 1 , "?NetMsgFloat@@YAKXZ" ) ; 24 NET MESSAGE FLOAT 
    DB_Multiplayer\NetMsgString= AIsFunction( 1 , "?NetMsgString@@YAKK@Z" ) ; 25 NET MESSAGE STRING$ 
    DB_Multiplayer\NetMsgImage= AIsFunction( 1 , "?NetMsgImage@@YAXH@Z" ) ; 26 NET MESSAGE IMAGE Image Number
    DB_Multiplayer\NetMsgMesh= AIsFunction( 1 , "?NetMsgMesh@@YAXH@Z" ) ; 27 NET MESSAGE MESH Mesh Number
    DB_Multiplayer\NetMsgSound= AIsFunction( 1 , "?NetMsgSound@@YAXH@Z" ) ; 28 NET MESSAGE SOUND Sound Number
    DB_Multiplayer\NetMsgMemblock= AIsFunction( 1 , "?NetMsgMemblock@@YAXH@Z" ) ; 29 NET MESSAGE MEMBLOCK Memblock Number
    DB_Multiplayer\NetMsgBitmap= AIsFunction( 1 , "?NetMsgBitmap@@YAXH@Z" ) ; 30 NET MESSAGE BITMAP Bitmap Number
    DB_Multiplayer\NetSessionExists= AIsFunction( 1 , "?NetSessionExists@@YAHXZ" ) ; 31 NET GAME EXISTS 
    DB_Multiplayer\NetSessionIsNowHosting= AIsFunction( 1 , "?NetSessionIsNowHosting@@YAHXZ" ) ; 32 NET GAME NOW HOSTING 
    DB_Multiplayer\NetSessionLost= AIsFunction( 1 , "?NetSessionLost@@YAHXZ" ) ; 33 NET GAME LOST 
    DB_Multiplayer\NetMsgExists= AIsFunction( 1 , "?NetMsgExists@@YAHXZ" ) ; 34 NET MESSAGE EXISTS 
    DB_Multiplayer\NetMsgPlayerFrom= AIsFunction( 1 , "?NetMsgPlayerFrom@@YAHXZ" ) ; 35 NET MESSAGE PLAYER FROM 
    DB_Multiplayer\NetMsgPlayerTo= AIsFunction( 1 , "?NetMsgPlayerTo@@YAHXZ" ) ; 36 NET MESSAGE PLAYER TO 
    DB_Multiplayer\NetMsgType= AIsFunction( 1 , "?NetMsgType@@YAHXZ" ) ; 37 NET MESSAGE TYPE 
    DB_Multiplayer\NetPlayerDestroyed= AIsFunction( 1 , "?NetPlayerDestroyed@@YAHXZ" ) ; 38 NET PLAYER DESTROYED 
    DB_Multiplayer\NetPlayerCreated= AIsFunction( 1 , "?NetPlayerCreated@@YAHXZ" ) ; 39 NET PLAYER CREATED 
    DB_Multiplayer\MagicNetGame= AIsFunction( 1 , "?MagicNetGame@@YAHKKHH@Z" ) ; 40 DEFAULT NET GAME Gamename, Playername, Number Of Players, Game Type
    DB_Multiplayer\NetBufferSize= AIsFunction( 1 , "?NetBufferSize@@YAHXZ" ) ; 41 NET BUFFER SIZE 
    CloseLibrary( 1 )
   Else
    SUCCESS.l = 0
   Endif
  ProcedureReturn SUCCESS
 EndProcedure

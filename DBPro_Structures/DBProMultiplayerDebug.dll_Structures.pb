; DarkBasic Professional RC2PBIncludes Ver 1.1 File - STRUCTURES SETUP
; By Frederic Cordier - 07.02.13
;
Structure DB_MultiplayerStruct
  PerformChecklistForNetConnections.l : SetNetConnections.l : SetNetConnectionsEx.l : PerformChecklistForNetSessions.l
  CreateNetGame.l : CreateNetGameEx.l : JoinNetGame.l : CloseNetGame.l
  PerformChecklistForNetPlayers.l : CreatePlayer.l : CreatePlayerEx.l : DestroyPlayer.l
  SendNetMsgL.l : SendNetMsgF.l : SendNetMsgS.l : SendNetMsgMemblock.l
  SendNetMsgMemblockEx.l : SendNetMsgImage.l : SendNetMsgBitmap.l : SendNetMsgSound.l
  SendNetMsgMesh.l : GetNetMsg.l : NetMsgInteger.l : NetMsgFloat.l
  NetMsgString.l : NetMsgImage.l : NetMsgMesh.l : NetMsgSound.l
  NetMsgMemblock.l : NetMsgBitmap.l : NetSessionExists.l : NetSessionIsNowHosting.l
  NetSessionLost.l : NetMsgExists.l : NetMsgPlayerFrom.l : NetMsgPlayerTo.l
  NetMsgType.l : NetPlayerDestroyed.l : NetPlayerCreated.l : MagicNetGame.l
  NetBufferSize.l : SpaceSPARE02.l : SpaceSPARE03.l : SpaceSPARE04.l
  SpaceSPARE05.l : SpaceSPARE06.l : SpaceSPARE07.l : SpaceSPARE08.l
  SpaceSPARE09.l : SpaceSPARE10.l : SpaceSPARE11.l : SpaceSPARE12.l
  SpaceSPARE13.l : SpaceSPARE14.l : SpaceSPARE15.l : SpaceSPARE16.l

 EndStructure

; IDE Options = PureBasic 4.10 Beta 2 (Windows - x86)
; CursorPosition = 17
; Folding = -
; DarkBasic Professional RC2PBIncludes Ver 1.1 File - COMMANDS INITIALIZING
; By Frederic Cordier - 07.02.13
;
Procedure.l CheckFTP()
  SUCCESS.l = 1
  If OpenLibrary( 1, "DBProFTPDebug.dll")
    DB_FTP\Connect= AIsFunction( 1 , "?Connect@@YAXKKK@Z" ) ; 1 FTP CONNECT Url String, User String, Password String
    DB_FTP\DeleteFileA= AIsFunction( 1 , "?DeleteFileA@@YAXK@Z" ) ; 2 FTP DELETE FILE Ftp Filename String
    DB_FTP\Disconnect= AIsFunction( 1 , "?Disconnect@@YAXXZ" ) ; 3 FTP DISCONNECT 
    DB_FTP\DisconnectEx= AIsFunction( 1 , "?DisconnectEx@@YAXH@Z" ) ; 4 FTP DISCONNECT Dial-Up-Disconnect Flag
    DB_FTP\FindFirst= AIsFunction( 1 , "?FindFirst@@YAXXZ" ) ; 5 FTP FIND FIRST 
    DB_FTP\FindNext= AIsFunction( 1 , "?FindNext@@YAXXZ" ) ; 6 FTP FIND NEXT 
    DB_FTP\GetDir= AIsFunction( 1 , "?GetDir@@YAKK@Z" ) ; 7 GET FTP DIR$ 
    DB_FTP\GetError= AIsFunction( 1 , "?GetError@@YAKK@Z" ) ; 8 GET FTP ERROR$ 
    DB_FTP\GetFailure= AIsFunction( 1 , "?GetFailure@@YAHXZ" ) ; 9 GET FTP FAILURE 
    DB_FTP\GetFile= AIsFunction( 1 , "?GetFile@@YAXKK@Z" ) ; 10 FTP GET FILE Ftp Filename String
    DB_FTP\GetFile1= AIsFunction( 1 , "?GetFile@@YAXKKH@Z" ) ; 11 FTP GET FILE Ftp Filename String, Local Filename String, GrabInBits Flag
    DB_FTP\GetFileName= AIsFunction( 1 , "?GetFileName@@YAKK@Z" ) ; 12 GET FTP FILE NAME$ 
    DB_FTP\GetFileSize= AIsFunction( 1 , "?GetFileSize@@YAHXZ" ) ; 13 GET FTP FILE SIZE 
    DB_FTP\GetFileType= AIsFunction( 1 , "?GetFileType@@YAHXZ" ) ; 14 GET FTP FILE TYPE 
    DB_FTP\GetProgress= AIsFunction( 1 , "?GetProgress@@YAHXZ" ) ; 15 GET FTP PROGRESS 
    DB_FTP\GetStatus= AIsFunction( 1 , "?GetStatus@@YAHXZ" ) ; 16 GET FTP STATUS 
    DB_FTP\Proceed= AIsFunction( 1 , "?Proceed@@YAXXZ" ) ; 17 FTP PROCEED 
    DB_FTP\PutFile= AIsFunction( 1 , "?PutFile@@YAXK@Z" ) ; 18 FTP PUT FILE Local Filename String
    DB_FTP\SetDir= AIsFunction( 1 , "?SetDir@@YAXK@Z" ) ; 19 FTP SET DIR Directory String
    DB_FTP\Terminate= AIsFunction( 1 , "?Terminate@@YAXXZ" ) ; 20 FTP TERMINATE 
    DB_FTP\ConnectEx= AIsFunction( 1 , "?ConnectEx@@YAXKKKH@Z" ) ; 21 FTP CONNECT Url String, User String, Password String, Window Mode
    DB_FTP\HTTPConnect= AIsFunction( 1 , "?HTTPConnect@@YAXK@Z" ) ; 22 HTTP CONNECT URL String
    DB_FTP\HTTPDisconnect= AIsFunction( 1 , "?HTTPDisconnect@@YAXXZ" ) ; 23 HTTP DISCONNECT 
    DB_FTP\HTTPRequestData= AIsFunction( 1 , "?HTTPRequestData@@YAKKKKK@Z" ) ; 24 HTTP REQUEST DATA Verb, Object, String To Send
    CloseLibrary( 1 )
   Else
    SUCCESS.l = 0
   Endif
  ProcedureReturn SUCCESS
 EndProcedure

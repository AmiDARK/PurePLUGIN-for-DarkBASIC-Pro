; DarkBasic Professional RC2PBIncludes Ver 1. File - COMMANDS WRAPPING
; By Frederic Cordier - 07.02.13
;
; *********************************************************************
Procedure DBFTPConnect( UrlString.s, UserString.s, PasswordString.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @UrlStringPTR.l, Len( UrlString ) + 1 ) ; CreateString
  PokeS( UrlStringPTR, UrlString )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @UserStringPTR.l, Len( UserString ) + 1 ) ; CreateString
  PokeS( UserStringPTR, UserString )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @PasswordStringPTR.l, Len( PasswordString ) + 1 ) ; CreateString
  PokeS( PasswordStringPTR, PasswordString )
  CallCFunctionFast( *DB_FTP\Connect, UrlStringPTR, UserStringPTR, PasswordStringPTR )
 EndProcedure
;
; *********************************************************************
Procedure DBFTPDeleteFileA( FtpFilenameString.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FtpFilenameStringPTR.l, Len( FtpFilenameString ) + 1 ) ; CreateString
  PokeS( FtpFilenameStringPTR, FtpFilenameString )
  CallCFunctionFast( *DB_FTP\DeleteFileA, FtpFilenameStringPTR )
 EndProcedure
;
; *********************************************************************
Procedure DBFTPDisconnect()
  CallCFunctionFast( *DB_FTP\Disconnect )
 EndProcedure
;
; *********************************************************************
Procedure DBFTPFTPDisconnect1( DialUpDisconnectFlag.l )
  CallCFunctionFast( *DB_FTP\DisconnectEx, DialUpDisconnectFlag )
 EndProcedure
;
; *********************************************************************
Procedure DBFTPFindFirst()
  CallCFunctionFast( *DB_FTP\FindFirst )
 EndProcedure
;
; *********************************************************************
Procedure DBFTPFindNext()
  CallCFunctionFast( *DB_FTP\FindNext )
 EndProcedure
;
; *********************************************************************
Procedure.s DBGetFTPDir()
  Retour.l = CallCFunctionFast( *DB_FTP\GetDir, ExtraPARAM.l )
  RetourSTR.s = PeekS( Retour )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure.s DBGetFTPError()
  Retour.l = CallCFunctionFast( *DB_FTP\GetError, ExtraPARAM.l )
  RetourSTR.s = PeekS( Retour )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetFTPFailure()
  Retour.l = CallCFunctionFast( *DB_FTP\GetFailure )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DBGetFTPFile( FtpFilenameString.s, Param1.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FtpFilenameStringPTR.l, Len( FtpFilenameString ) + 1 ) ; CreateString
  PokeS( FtpFilenameStringPTR, FtpFilenameString )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param1PTR.l, Len( Param1 ) + 1 ) ; CreateString
  PokeS( Param1PTR, Param1 )
  CallCFunctionFast( *DB_FTP\GetFile, FtpFilenameStringPTR, Param1PTR )
 EndProcedure
;
; *********************************************************************
Procedure DBGetFTPFTPFile1( FtpFilenameString.s, LocalFilenameString.s, GrabInBitsFlag.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FtpFilenameStringPTR.l, Len( FtpFilenameString ) + 1 ) ; CreateString
  PokeS( FtpFilenameStringPTR, FtpFilenameString )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @LocalFilenameStringPTR.l, Len( LocalFilenameString ) + 1 ) ; CreateString
  PokeS( LocalFilenameStringPTR, LocalFilenameString )
  CallCFunctionFast( *DB_FTP\GetFile1, FtpFilenameStringPTR, LocalFilenameStringPTR, GrabInBitsFlag )
 EndProcedure
;
; *********************************************************************
Procedure.s DBGetFTPFileName()
  Retour.l = CallCFunctionFast( *DB_FTP\GetFileName, ExtraPARAM.l )
  RetourSTR.s = PeekS( Retour )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetFTPFTPFileSize()
  Retour.l = CallCFunctionFast( *DB_FTP\GetFileSize )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetFTPFileType()
  Retour.l = CallCFunctionFast( *DB_FTP\GetFileType )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetFTPProgress()
  Retour.l = CallCFunctionFast( *DB_FTP\GetProgress )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetFTPStatus()
  Retour.l = CallCFunctionFast( *DB_FTP\GetStatus )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DBFTPProceed()
  CallCFunctionFast( *DB_FTP\Proceed )
 EndProcedure
;
; *********************************************************************
Procedure DBFTPPutFile( LocalFilenameString.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @LocalFilenameStringPTR.l, Len( LocalFilenameString ) + 1 ) ; CreateString
  PokeS( LocalFilenameStringPTR, LocalFilenameString )
  CallCFunctionFast( *DB_FTP\PutFile, LocalFilenameStringPTR )
 EndProcedure
;
; *********************************************************************
Procedure DBSetFTPDir( DirectoryString.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @DirectoryStringPTR.l, Len( DirectoryString ) + 1 ) ; CreateString
  PokeS( DirectoryStringPTR, DirectoryString )
  CallCFunctionFast( *DB_FTP\SetDir, DirectoryStringPTR )
 EndProcedure
;
; *********************************************************************
Procedure DBFTPTerminate()
  CallCFunctionFast( *DB_FTP\Terminate )
 EndProcedure
;
; *********************************************************************
Procedure DBFTPFTPConnect1( UrlString.s, UserString.s, PasswordString.s, WindowMode.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @UrlStringPTR.l, Len( UrlString ) + 1 ) ; CreateString
  PokeS( UrlStringPTR, UrlString )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @UserStringPTR.l, Len( UserString ) + 1 ) ; CreateString
  PokeS( UserStringPTR, UserString )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @PasswordStringPTR.l, Len( PasswordString ) + 1 ) ; CreateString
  PokeS( PasswordStringPTR, PasswordString )
  CallCFunctionFast( *DB_FTP\ConnectEx, UrlStringPTR, UserStringPTR, PasswordStringPTR, WindowMode )
 EndProcedure
;
; *********************************************************************
Procedure DBHTTPConnect( URLString.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @URLStringPTR.l, Len( URLString ) + 1 ) ; CreateString
  PokeS( URLStringPTR, URLString )
  CallCFunctionFast( *DB_FTP\HTTPConnect, URLStringPTR )
 EndProcedure
;
; *********************************************************************
Procedure DBHTTPDisconnect()
  CallCFunctionFast( *DB_FTP\HTTPDisconnect )
 EndProcedure
;
; *********************************************************************
Procedure.s DBHTTPRequestData( Verb.s, Object.s, StringToSend.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @VerbPTR.l, Len( Verb ) + 1 ) ; CreateString
  PokeS( VerbPTR, Verb )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @ObjectPTR.l, Len( Object ) + 1 ) ; CreateString
  PokeS( ObjectPTR, Object )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @StringToSendPTR.l, Len( StringToSend ) + 1 ) ; CreateString
  PokeS( StringToSendPTR, StringToSend )
  Retour.l = CallCFunctionFast( *DB_FTP\HTTPRequestData, ExtraPARAM.l, VerbPTR, ObjectPTR, StringToSendPTR )
  RetourSTR.s = PeekS( Retour )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
  ProcedureReturn RetourSTR
 EndProcedure
;

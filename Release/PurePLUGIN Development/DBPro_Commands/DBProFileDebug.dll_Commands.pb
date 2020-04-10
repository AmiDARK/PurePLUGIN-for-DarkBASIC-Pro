; DarkBasic Professional RC2PBIncludes Ver 1. File - COMMANDS WRAPPING
; By Frederic Cordier - 07.02.13
;
; *********************************************************************
Procedure.s DBAppname()
  Retour.l = CallCFunctionFast( *DB_File\Appname, ExtraPARAM.l )
  RetourSTR.s = PeekS( Retour )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure.s DBWindir()
  Retour.l = CallCFunctionFast( *DB_File\Windir, ExtraPARAM.l )
  RetourSTR.s = PeekS( Retour )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure DBChecklistForDrives()
  CallCFunctionFast( *DB_File\ChecklistForDrives )
 EndProcedure
;
; *********************************************************************
Procedure DBChecklistForFiles()
  CallCFunctionFast( *DB_File\ChecklistForFiles )
 EndProcedure
;
; *********************************************************************
Procedure DBCloseFile( FileNumber.l )
  CallCFunctionFast( *DB_File\CloseFile, FileNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBCopyFileA( SourceFilename.s, DestinationFilename.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @SourceFilenamePTR.l, Len( SourceFilename ) + 1 ) ; CreateString
  PokeS( SourceFilenamePTR, SourceFilename )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @DestinationFilenamePTR.l, Len( DestinationFilename ) + 1 ) ; CreateString
  PokeS( DestinationFilenamePTR, DestinationFilename )
  CallCFunctionFast( *DB_File\CopyFileA, SourceFilenamePTR, DestinationFilenamePTR )
 EndProcedure
;
; *********************************************************************
Procedure DBDeleteDir( DirectoryName.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @DirectoryNamePTR.l, Len( DirectoryName ) + 1 ) ; CreateString
  PokeS( DirectoryNamePTR, DirectoryName )
  CallCFunctionFast( *DB_File\DeleteDir, DirectoryNamePTR )
 EndProcedure
;
; *********************************************************************
Procedure DBDeleteFileA( Filename.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FilenamePTR.l, Len( Filename ) + 1 ) ; CreateString
  PokeS( FilenamePTR, Filename )
  CallCFunctionFast( *DB_File\DeleteFileA, FilenamePTR )
 EndProcedure
;
; *********************************************************************
Procedure DBDir()
  CallCFunctionFast( *DB_File\Dir )
 EndProcedure
;
; *********************************************************************
Procedure DBDriveList()
  CallCFunctionFast( *DB_File\DriveList )
 EndProcedure
;
; *********************************************************************
Procedure DBExecuteFile( Filename.s, Commandline.s, Directory.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FilenamePTR.l, Len( Filename ) + 1 ) ; CreateString
  PokeS( FilenamePTR, Filename )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @CommandlinePTR.l, Len( Commandline ) + 1 ) ; CreateString
  PokeS( CommandlinePTR, Commandline )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @DirectoryPTR.l, Len( Directory ) + 1 ) ; CreateString
  PokeS( DirectoryPTR, Directory )
  CallCFunctionFast( *DB_File\ExecuteFile, FilenamePTR, CommandlinePTR, DirectoryPTR )
 EndProcedure
;
; *********************************************************************
Procedure DBExecuteFile1( Filename.s, Commandline.s, Directory.s, WaitFlag.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FilenamePTR.l, Len( Filename ) + 1 ) ; CreateString
  PokeS( FilenamePTR, Filename )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @CommandlinePTR.l, Len( Commandline ) + 1 ) ; CreateString
  PokeS( CommandlinePTR, Commandline )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @DirectoryPTR.l, Len( Directory ) + 1 ) ; CreateString
  PokeS( DirectoryPTR, Directory )
  CallCFunctionFast( *DB_File\ExecuteFileEx, FilenamePTR, CommandlinePTR, DirectoryPTR, WaitFlag )
 EndProcedure
;
; *********************************************************************
Procedure.l DBFileEnd( FileNumber.l )
  Retour.l = CallCFunctionFast( *DB_File\FileEnd, FileNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetFileExist( Filename.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FilenamePTR.l, Len( Filename ) + 1 ) ; CreateString
  PokeS( FilenamePTR, Filename )
  Retour.l = CallCFunctionFast( *DB_File\FileExist, FilenamePTR )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBFileOpen( FileNumber.l )
  Retour.l = CallCFunctionFast( *DB_File\FileOpen, FileNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBFileSize( Filename.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FilenamePTR.l, Len( Filename ) + 1 ) ; CreateString
  PokeS( FilenamePTR, Filename )
  Retour.l = CallCFunctionFast( *DB_File\FileSize, FilenamePTR )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DBFindFirst()
  CallCFunctionFast( *DB_File\FindFirst )
 EndProcedure
;
; *********************************************************************
Procedure DBFindNext()
  CallCFunctionFast( *DB_File\FindNext )
 EndProcedure
;
; *********************************************************************
Procedure.s DBGetDir()
  Retour.l = CallCFunctionFast( *DB_File\GetDir, ExtraPARAM.l )
  RetourSTR.s = PeekS( Retour )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure.s DBGetFileDate()
  Retour.l = CallCFunctionFast( *DB_File\GetFileDate, ExtraPARAM.l )
  RetourSTR.s = PeekS( Retour )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure.s DBGetFileName()
  Retour.l = CallCFunctionFast( *DB_File\GetFileName, ExtraPARAM.l )
  RetourSTR.s = PeekS( Retour )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetFileType()
  Retour.l = CallCFunctionFast( *DB_File\GetFileType )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DBMakeFileDir( DirectoryName.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @DirectoryNamePTR.l, Len( DirectoryName ) + 1 ) ; CreateString
  PokeS( DirectoryNamePTR, DirectoryName )
  CallCFunctionFast( *DB_File\MakeDir, DirectoryNamePTR )
 EndProcedure
;
; *********************************************************************
Procedure DBMakeFile( Filename.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FilenamePTR.l, Len( Filename ) + 1 ) ; CreateString
  PokeS( FilenamePTR, Filename )
  CallCFunctionFast( *DB_File\MakeFile, FilenamePTR )
 EndProcedure
;
; *********************************************************************
Procedure DBMakeMemblockFromFile( MemblockNumber.l, FileNumber.l )
  CallCFunctionFast( *DB_File\MakeMemblockFromFile, MemblockNumber, FileNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBMoveFileA( SourceFilename.s, DestinationFilename.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @SourceFilenamePTR.l, Len( SourceFilename ) + 1 ) ; CreateString
  PokeS( SourceFilenamePTR, SourceFilename )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @DestinationFilenamePTR.l, Len( DestinationFilename ) + 1 ) ; CreateString
  PokeS( DestinationFilenamePTR, DestinationFilename )
  CallCFunctionFast( *DB_File\MoveFileA, SourceFilenamePTR, DestinationFilenamePTR )
 EndProcedure
;
; *********************************************************************
Procedure DBOpenToRead( FileNumber.l, Filename.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FilenamePTR.l, Len( Filename ) + 1 ) ; CreateString
  PokeS( FilenamePTR, Filename )
  CallCFunctionFast( *DB_File\OpenToRead, FileNumber, FilenamePTR )
 EndProcedure
;
; *********************************************************************
Procedure DBOpenToWrite( FileNumber.l, Filename.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FilenamePTR.l, Len( Filename ) + 1 ) ; CreateString
  PokeS( FilenamePTR, Filename )
  CallCFunctionFast( *DB_File\OpenToWrite, FileNumber, FilenamePTR )
 EndProcedure
;
; *********************************************************************
Procedure.l DBPathExist( PathString.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @PathStringPTR.l, Len( PathString ) + 1 ) ; CreateString
  PokeS( PathStringPTR, PathString )
  Retour.l = CallCFunctionFast( *DB_File\PathExist, PathStringPTR )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DBReadDirBlock( FileNumber.l, FoldertoRead.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FoldertoReadPTR.l, Len( FoldertoRead ) + 1 ) ; CreateString
  PokeS( FoldertoReadPTR, FoldertoRead )
  CallCFunctionFast( *DB_File\ReadDirBlock, FileNumber, FoldertoReadPTR )
 EndProcedure
;
; *********************************************************************
Procedure DBReadFileBlock( FileNumber.l, FilenametoRead.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FilenametoReadPTR.l, Len( FilenametoRead ) + 1 ) ; CreateString
  PokeS( FilenametoReadPTR, FilenametoRead )
  CallCFunctionFast( *DB_File\ReadFileBlock, FileNumber, FilenametoReadPTR )
 EndProcedure
;
; *********************************************************************
Procedure DBReadMemblock( FileNumber.l, MemblockNumber.l )
  CallCFunctionFast( *DB_File\ReadMemblock, FileNumber, MemblockNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBRenameFile( SourceFilename.s, NewFilename.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @SourceFilenamePTR.l, Len( SourceFilename ) + 1 ) ; CreateString
  PokeS( SourceFilenamePTR, SourceFilename )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @NewFilenamePTR.l, Len( NewFilename ) + 1 ) ; CreateString
  PokeS( NewFilenamePTR, NewFilename )
  CallCFunctionFast( *DB_File\RenameFile, SourceFilenamePTR, NewFilenamePTR )
 EndProcedure
;
; *********************************************************************
Procedure DBSetDir( Path.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @PathPTR.l, Len( Path ) + 1 ) ; CreateString
  PokeS( PathPTR, Path )
  CallCFunctionFast( *DB_File\SetDir, PathPTR )
 EndProcedure
;
; *********************************************************************
Procedure DBWriteWord( FileNumber.l, Variable.l )
  CallCFunctionFast( *DB_File\WriteWord, FileNumber, Variable )
 EndProcedure
;
; *********************************************************************
Procedure DBWriteByte( FileNumber.l, Variable.l )
  CallCFunctionFast( *DB_File\WriteByte, FileNumber, Variable )
 EndProcedure
;
; *********************************************************************
Procedure DBWriteLong( FileNumber.l, Variable.l )
  CallCFunctionFast( *DB_File\WriteLong, FileNumber, Variable )
 EndProcedure
;
; *********************************************************************
Procedure DBWriteDirBlock( FileNumber.l, FoldertoCreate.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FoldertoCreatePTR.l, Len( FoldertoCreate ) + 1 ) ; CreateString
  PokeS( FoldertoCreatePTR, FoldertoCreate )
  CallCFunctionFast( *DB_File\WriteDirBlock, FileNumber, FoldertoCreatePTR )
 EndProcedure
;
; *********************************************************************
Procedure DBWriteFileBlock( FileNumber.l, FilenametoCreate.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FilenametoCreatePTR.l, Len( FilenametoCreate ) + 1 ) ; CreateString
  PokeS( FilenametoCreatePTR, FilenametoCreate )
  CallCFunctionFast( *DB_File\WriteFileBlock, FileNumber, FilenametoCreatePTR )
 EndProcedure
;
; *********************************************************************
Procedure DBWriteFloat( FileNumber.l, Variable.f )
  CallCFunctionFast( *DB_File\WriteFloat, FileNumber, Variable )
 EndProcedure
;
; *********************************************************************
Procedure DBWriteLong1( FileNumber.l, Variable.l )
  CallCFunctionFast( *DB_File\WriteLong1, FileNumber, Variable )
 EndProcedure
;
; *********************************************************************
Procedure DBWriteMemblock( FileNumber.l, MemblockNumber.l )
  CallCFunctionFast( *DB_File\WriteMemblock, FileNumber, MemblockNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBWriteString( FileNumber.l, String.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @StringPTR.l, Len( String ) + 1 ) ; CreateString
  PokeS( StringPTR, String )
  CallCFunctionFast( *DB_File\WriteString, FileNumber, StringPTR )
 EndProcedure
;
; *********************************************************************
Procedure DBSkipBytes( FileNumber.l, BytesToSkip.l )
  CallCFunctionFast( *DB_File\SkipBytes, FileNumber, BytesToSkip )
 EndProcedure
;
; *********************************************************************
Procedure DBWriteByteToFile( Filename.s, Position.l, ByteValue.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FilenamePTR.l, Len( Filename ) + 1 ) ; CreateString
  PokeS( FilenamePTR, Filename )
  CallCFunctionFast( *DB_File\WriteByteToFile, FilenamePTR, Position, ByteValue )
 EndProcedure
;
; *********************************************************************
Procedure.l DBReadByteFromFile( Filename.s, Position.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FilenamePTR.l, Len( Filename ) + 1 ) ; CreateString
  PokeS( FilenamePTR, Filename )
  Retour.l = CallCFunctionFast( *DB_File\ReadByteFromFile, FilenamePTR, Position )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DBSetDir1( Path.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @PathPTR.l, Len( Path ) + 1 ) ; CreateString
  PokeS( PathPTR, Path )
  CallCFunctionFast( *DB_File\SetDir1, PathPTR )
 EndProcedure
;
; *********************************************************************
Procedure.s DBGetFileCreation()
  Retour.l = CallCFunctionFast( *DB_File\GetFileCreation, ExtraPARAM.l )
  RetourSTR.s = PeekS( Retour )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure DBMakeFileFileFromMemblock( FileNumber.l, MemblockNumber.l )
  CallCFunctionFast( *DB_File\MakeFileFromMemblock, FileNumber, MemblockNumber )
 EndProcedure
;
; *********************************************************************
Procedure.l DBExecuteFileIndi( Filename.s, Commandline.s, Directory.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FilenamePTR.l, Len( Filename ) + 1 ) ; CreateString
  PokeS( FilenamePTR, Filename )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @CommandlinePTR.l, Len( Commandline ) + 1 ) ; CreateString
  PokeS( CommandlinePTR, Commandline )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @DirectoryPTR.l, Len( Directory ) + 1 ) ; CreateString
  PokeS( DirectoryPTR, Directory )
  Retour.l = CallCFunctionFast( *DB_File\ExecuteFileIndi, FilenamePTR, CommandlinePTR, DirectoryPTR )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DBStopExecutable( ExecutableID.l )
  CallCFunctionFast( *DB_File\StopExecutable, ExecutableID )
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetExecutableRunning( ExecutableID.l )
  Retour.l = CallCFunctionFast( *DB_File\GetExecutableRunning, ExecutableID )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DBWriteFilemapValue( FilemapName.s, Value.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FilemapNamePTR.l, Len( FilemapName ) + 1 ) ; CreateString
  PokeS( FilemapNamePTR, FilemapName )
  CallCFunctionFast( *DB_File\WriteFilemapValue, FilemapNamePTR, Value )
 EndProcedure
;
; *********************************************************************
Procedure DBWriteFilemapString( FilemapName.s, String.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FilemapNamePTR.l, Len( FilemapName ) + 1 ) ; CreateString
  PokeS( FilemapNamePTR, FilemapName )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @StringPTR.l, Len( String ) + 1 ) ; CreateString
  PokeS( StringPTR, String )
  CallCFunctionFast( *DB_File\WriteFilemapString, FilemapNamePTR, StringPTR )
 EndProcedure
;
; *********************************************************************
Procedure.l DBReadFilemapValue( FilemapName.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FilemapNamePTR.l, Len( FilemapName ) + 1 ) ; CreateString
  PokeS( FilemapNamePTR, FilemapName )
  Retour.l = CallCFunctionFast( *DB_File\ReadFilemapValue, FilemapNamePTR )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.s DBReadFilemapString( Param1.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param1PTR.l, Len( Param1 ) + 1 ) ; CreateString
  PokeS( Param1PTR, Param1 )
  Retour.l = CallCFunctionFast( *DB_File\ReadFilemapString, ExtraPARAM.l, Param1PTR )
  RetourSTR.s = PeekS( Retour )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure.l DBExecuteFileIndi1( Filename.s, Commandline.s, Directory.s, Priority.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FilenamePTR.l, Len( Filename ) + 1 ) ; CreateString
  PokeS( FilenamePTR, Filename )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @CommandlinePTR.l, Len( Commandline ) + 1 ) ; CreateString
  PokeS( CommandlinePTR, Commandline )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @DirectoryPTR.l, Len( Directory ) + 1 ) ; CreateString
  PokeS( DirectoryPTR, Directory )
  Retour.l = CallCFunctionFast( *DB_File\ExecuteFileIndi1, FilenamePTR, CommandlinePTR, DirectoryPTR, Priority )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBReadByte( ChannelID.l )
  Retour.l = CallCFunctionFast( *DB_File\ReadByte, ChannelID )
  ProcedureReturn Retour 
 EndProcedure
;
; *********************************************************************
Procedure.l DBReadWord( ChannelID.l )
  Retour.l = CallCFunctionFast( *DB_File\ReadWord, ChannelID )
  ProcedureReturn Retour 
 EndProcedure
;
; *********************************************************************
Procedure.l DBReadLong( ChannelID.l )
  Retour.l = CallCFunctionFast( *DB_File\ReadLong, ChannelID )
  ProcedureReturn Retour 
 EndProcedure
;
; *********************************************************************
Procedure.s DBReadString( ChannelID.l )
  Retour.l = CallCFunctionFast( *DB_File\ReadString, ChannelID, @OldString.s )
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
Procedure.f DBReadFloat( ChannelID.l )
  Retour.l = CallCFunctionFast( *DB_File\ReadFloat, ChannelID )
  RetourF = PeekF( @Retour )
  ProcedureReturn RetourF
 EndProcedure

; IDE Options = PureBasic 4.10 Beta 2 (Windows - x86)
; CursorPosition = 416
; FirstLine = 396
; Folding = -----------
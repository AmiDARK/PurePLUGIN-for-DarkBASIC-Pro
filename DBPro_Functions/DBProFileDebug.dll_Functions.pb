; DarkBasic Professional RC2PBIncludes Ver 1.1 File - COMMANDS INITIALIZING
; By Frederic Cordier - 07.02.13
;
Procedure.l CheckFile()
  SUCCESS.l = 1
  If OpenLibrary( 1, "DBProFileDebug.dll")
    DB_File\Appname= AIsFunction( 1 , "?Appname@@YAKK@Z" ) ; 1 APPNAME$ 
    DB_File\Windir= AIsFunction( 1 , "?Windir@@YAKK@Z" ) ; 2 WINDIR$ 
    DB_File\ChecklistForDrives= AIsFunction( 1 , "?ChecklistForDrives@@YAXXZ" ) ; 3 PERFORM CHECKLIST FOR DRIVES 
    DB_File\ChecklistForFiles= AIsFunction( 1 , "?ChecklistForFiles@@YAXXZ" ) ; 4 PERFORM CHECKLIST FOR FILES 
    DB_File\CloseFile= AIsFunction( 1 , "?CloseFile@@YAXH@Z" ) ; 5 CLOSE FILE File Number
    DB_File\CopyFileA= AIsFunction( 1 , "?CopyFileA@@YAXKK@Z" ) ; 6 COPY FILE Source Filename, Destination Filename
    DB_File\DeleteDir= AIsFunction( 1 , "?DeleteDir@@YAXK@Z" ) ; 7 DELETE DIRECTORY Directory Name
    DB_File\DeleteFileA= AIsFunction( 1 , "?DeleteFileA@@YAXK@Z" ) ; 8 DELETE FILE Filename
    DB_File\Dir= AIsFunction( 1 , "?Dir@@YAXXZ" ) ; 9 DIR 
    DB_File\DriveList= AIsFunction( 1 , "?DriveList@@YAXXZ" ) ; 10 DRIVELIST 
    DB_File\ExecuteFile= AIsFunction( 1 , "?ExecuteFile@@YAXKKK@Z" ) ; 11 EXECUTE FILE Filename, Commandline, Directory
    DB_File\ExecuteFileEx= AIsFunction( 1 , "?ExecuteFileEx@@YAXKKKH@Z" ) ; 12 EXECUTE FILE Filename, Commandline, Directory, Wait Flag
    DB_File\FileEnd= AIsFunction( 1 , "?FileEnd@@YAHH@Z" ) ; 13 FILE END File Number
    DB_File\FileExist= AIsFunction( 1 , "?FileExist@@YAHK@Z" ) ; 14 FILE EXIST Filename
    DB_File\FileOpen= AIsFunction( 1 , "?FileOpen@@YAHH@Z" ) ; 15 FILE OPEN File Number
    DB_File\FileSize= AIsFunction( 1 , "?FileSize@@YAHK@Z" ) ; 16 FILE SIZE Filename
    DB_File\FindFirst= AIsFunction( 1 , "?FindFirst@@YAXXZ" ) ; 17 FIND FIRST 
    DB_File\FindNext= AIsFunction( 1 , "?FindNext@@YAXXZ" ) ; 18 FIND NEXT 
    DB_File\GetDir= AIsFunction( 1 , "?GetDir@@YAKK@Z" ) ; 19 GET DIR$ 
    DB_File\GetFileDate= AIsFunction( 1 , "?GetFileDate@@YAKK@Z" ) ; 20 GET FILE DATE$ 
    DB_File\GetFileName= AIsFunction( 1 , "?GetFileName@@YAKK@Z" ) ; 21 GET FILE NAME$ 
    DB_File\GetFileType= AIsFunction( 1 , "?GetFileType@@YAHXZ" ) ; 22 GET FILE TYPE 
    DB_File\MakeDir= AIsFunction( 1 , "?MakeDir@@YAXK@Z" ) ; 23 MAKE DIRECTORY Directory Name
    DB_File\MakeFile= AIsFunction( 1 , "?MakeFile@@YAXK@Z" ) ; 24 MAKE FILE Filename
    DB_File\MakeMemblockFromFile= AIsFunction( 1 , "?MakeMemblockFromFile@@YAXHH@Z" ) ; 25 MAKE MEMBLOCK FROM FILE Memblock Number, File Number
    DB_File\MoveFileA= AIsFunction( 1 , "?MoveFileA@@YAXKK@Z" ) ; 26 MOVE FILE Source Filename, Destination Filename
    DB_File\OpenToRead= AIsFunction( 1 , "?OpenToRead@@YAXHK@Z" ) ; 27 OPEN TO READ File Number, Filename
    DB_File\OpenToWrite= AIsFunction( 1 , "?OpenToWrite@@YAXHK@Z" ) ; 28 OPEN TO WRITE File Number, Filename
    DB_File\PathExist= AIsFunction( 1 , "?PathExist@@YAHK@Z" ) ; 29 PATH EXIST Path String
    DB_File\ReadByte= AIsFunction( 1 , "?ReadByte@@YAHH@Z" ) ; 30 READ BYTE File Number, Variable
    DB_File\ReadLong= AIsFunction( 1 , "?ReadLong@@YAHH@Z" ) ; 31 READ FILE File Number, Variable
    DB_File\ReadDirBlock= AIsFunction( 1 , "?ReadDirBlock@@YAXHK@Z" ) ; 32 READ DIRBLOCK File Number, Folder to Read
    DB_File\ReadFileBlock= AIsFunction( 1 , "?ReadFileBlock@@YAXHK@Z" ) ; 33 READ FILEBLOCK File Number, Filename to Read
    DB_File\ReadFloat= AIsFunction( 1 , "?ReadFloat@@YAKH@Z" ) ; 34 READ FLOAT File Number, Variable
    DB_File\ReadLong1= AIsFunction( 1 , "?ReadLong@@YAHH@Z" ) ; 35 READ LONG File Number, Variable
    DB_File\ReadMemblock= AIsFunction( 1 , "?ReadMemblock@@YAXHH@Z" ) ; 36 READ MEMBLOCK File Number, Memblock Number
    DB_File\ReadString= AIsFunction( 1 , "?ReadString@@YAKHK@Z" ) ; 37 READ STRING File Number, Variable String
    DB_File\ReadWord= AIsFunction( 1 , "?ReadWord@@YAHH@Z" ) ; 38 READ WORD File Number, Variable
    DB_File\RenameFile= AIsFunction( 1 , "?RenameFile@@YAXKK@Z" ) ; 39 RENAME FILE Source Filename, New Filename
    DB_File\SetDir= AIsFunction( 1 , "?SetDir@@YAXK@Z" ) ; 40 SET DIR Path$
    DB_File\WriteWord= AIsFunction( 1 , "?WriteWord@@YAXHH@Z" ) ; 41 WRITE WORD File Number, Variable
    DB_File\WriteByte= AIsFunction( 1 , "?WriteByte@@YAXHH@Z" ) ; 42 WRITE BYTE File Number, Variable
    DB_File\WriteLong= AIsFunction( 1 , "?WriteLong@@YAXHH@Z" ) ; 43 WRITE LONG File Number, Variable
    DB_File\WriteDirBlock= AIsFunction( 1 , "?WriteDirBlock@@YAXHK@Z" ) ; 44 WRITE DIRBLOCK File Number, Folder to Create
    DB_File\WriteFileBlock= AIsFunction( 1 , "?WriteFileBlock@@YAXHK@Z" ) ; 45 WRITE FILEBLOCK File Number, Filename to Create
    DB_File\WriteFloat= AIsFunction( 1 , "?WriteFloat@@YAXHM@Z" ) ; 46 WRITE FLOAT File Number, Variable
    DB_File\WriteLong1= AIsFunction( 1 , "?WriteLong@@YAXHH@Z" ) ; 47 WRITE FILE File Number, Variable
    DB_File\WriteMemblock= AIsFunction( 1 , "?WriteMemblock@@YAXHH@Z" ) ; 48 WRITE MEMBLOCK File Number, Memblock Number
    DB_File\WriteString= AIsFunction( 1 , "?WriteString@@YAXHK@Z" ) ; 49 WRITE STRING File Number, String
    DB_File\SkipBytes= AIsFunction( 1 , "?SkipBytes@@YAXHH@Z" ) ; 50 SKIP BYTES File Number, Bytes To Skip
    DB_File\WriteByteToFile= AIsFunction( 1 , "?WriteByteToFile@@YAXKHH@Z" ) ; 51 WRITE BYTE TO FILE Filename, Position, ByteValue
    DB_File\ReadByteFromFile= AIsFunction( 1 , "?ReadByteFromFile@@YAHKH@Z" ) ; 52 READ BYTE FROM FILE Filename, Position
    DB_File\SetDir1= AIsFunction( 1 , "?SetDir@@YAXK@Z" ) ; 53 CD Path$
    DB_File\GetFileCreation= AIsFunction( 1 , "?GetFileCreation@@YAKK@Z" ) ; 54 GET FILE CREATION$ 
    DB_File\MakeFileFromMemblock= AIsFunction( 1 , "?MakeFileFromMemblock@@YAXHH@Z" ) ; 55 MAKE FILE FROM MEMBLOCK File Number, Memblock Number
    DB_File\ExecuteFileIndi= AIsFunction( 1 , "?ExecuteFileIndi@@YAKKKK@Z" ) ; 56 EXECUTE EXECUTABLE Filename, Commandline, Directory
    DB_File\StopExecutable= AIsFunction( 1 , "?StopExecutable@@YAXK@Z" ) ; 57 STOP EXECUTABLE Executable ID
    DB_File\GetExecutableRunning= AIsFunction( 1 , "?GetExecutableRunning@@YAHK@Z" ) ; 58 EXECUTABLE RUNNING Executable ID
    DB_File\WriteFilemapValue= AIsFunction( 1 , "?WriteFilemapValue@@YAXKK@Z" ) ; 59 WRITE FILEMAP VALUE Filemap Name, Value
    DB_File\WriteFilemapString= AIsFunction( 1 , "?WriteFilemapString@@YAXKK@Z" ) ; 60 WRITE FILEMAP STRING Filemap Name, String
    DB_File\ReadFilemapValue= AIsFunction( 1 , "?ReadFilemapValue@@YAKK@Z" ) ; 61 READ FILEMAP VALUE Filemap Name
    DB_File\ReadFilemapString= AIsFunction( 1 , "?ReadFilemapString@@YAKKK@Z" ) ; 62 READ FILEMAP STRING 
    DB_File\ExecuteFileIndi1= AIsFunction( 1 , "?ExecuteFileIndi@@YAKKKKH@Z" ) ; 63 EXECUTE EXECUTABLE Filename, Commandline, Directory, Priority
    DB_File\ReadByte1= AIsFunction( 1 , "?ReadByte@@YAHH@Z" ) ; 64 READ BYTE File Number, Variable
    DB_File\ReadWord1= AIsFunction( 1 , "?ReadWord@@YAHH@Z" ) ; 65 READ WORD File Number, Variable
    DB_File\ReadLong2= AIsFunction( 1 , "?ReadLong@@YAHH@Z" ) ; 66 READ LONG File Number, Variable
    CloseLibrary( 1 )
   Else
    SUCCESS.l = 0
   Endif
  ProcedureReturn SUCCESS
 EndProcedure

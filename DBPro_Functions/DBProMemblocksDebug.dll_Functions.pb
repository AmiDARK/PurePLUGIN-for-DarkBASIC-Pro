; DarkBasic Professional RC2PBIncludes Ver 1.1 File - COMMANDS INITIALIZING
; By Frederic Cordier - 07.02.13
;
Procedure.l CheckMemblocks()
  SUCCESS.l = 1
  If OpenLibrary( 1, "DBProMemblocksDebug.dll")
    DB_Memblocks\ChangeMeshFromMemblock= AIsFunction( 1 , "?ChangeMeshFromMemblock@@YAXHH@Z" ) ; 1 CHANGE MESH FROM MEMBLOCK Mesh Number,Memblock Number
    DB_Memblocks\CopyMemblock= AIsFunction( 1 , "?CopyMemblock@@YAXHHHHH@Z" ) ; 2 COPY MEMBLOCK From,To,PosFrom,PosTo,Bytes
    DB_Memblocks\CreateBitmapFromMemblock= AIsFunction( 1 , "?CreateBitmapFromMemblock@@YAXHH@Z" ) ; 3 MAKE BITMAP FROM MEMBLOCK Bitmap Number,Memblock Number
    DB_Memblocks\CreateImageFromMemblock= AIsFunction( 1 , "?CreateImageFromMemblock@@YAXHH@Z" ) ; 4 MAKE IMAGE FROM MEMBLOCK Image Number, Memblock Number
    DB_Memblocks\CreateMemblockFromBitmap= AIsFunction( 1 , "?CreateMemblockFromBitmap@@YAXHH@Z" ) ; 5 MAKE MEMBLOCK FROM BITMAP Memblock Number, Bitmap Number
    DB_Memblocks\CreateMemblockFromImage= AIsFunction( 1 , "?CreateMemblockFromImage@@YAXHH@Z" ) ; 6 MAKE MEMBLOCK FROM IMAGE Memblock Number,Image Number
    DB_Memblocks\CreateMemblockFromMesh= AIsFunction( 1 , "?CreateMemblockFromMesh@@YAXHH@Z" ) ; 7 MAKE MEMBLOCK FROM MESH Memblock Number,Mesh Number
    DB_Memblocks\CreateMemblockFromSound= AIsFunction( 1 , "?CreateMemblockFromSound@@YAXHH@Z" ) ; 8 MAKE MEMBLOCK FROM SOUND Memblock Number, Sound Number
    DB_Memblocks\CreateMeshFromMemblock= AIsFunction( 1 , "?CreateMeshFromMemblock@@YAXHH@Z" ) ; 9 MAKE MESH FROM MEMBLOCK Mesh Number, Memblock Number
    DB_Memblocks\CreateSoundFromMemblock= AIsFunction( 1 , "?CreateSoundFromMemblock@@YAXHH@Z" ) ; 10 MAKE SOUND FROM MEMBLOCK Sound Number, Memblock Number
    DB_Memblocks\DeleteMemblock= AIsFunction( 1 , "?DeleteMemblock@@YAXH@Z" ) ; 11 DELETE MEMBLOCK Memblock Number
    DB_Memblocks\GetMemblockPtr= AIsFunction( 1 , "?GetMemblockPtr@@YAKH@Z" ) ; 12 GET MEMBLOCK PTR Memblock Number
    DB_Memblocks\GetMemblockSize= AIsFunction( 1 , "?GetMemblockSize@@YAHH@Z" ) ; 13 GET MEMBLOCK SIZE Memblock Number
    DB_Memblocks\MakeMemblock= AIsFunction( 1 , "?MakeMemblock@@YAXHH@Z" ) ; 14 MAKE MEMBLOCK Memblock Number, Size in Bytes
    DB_Memblocks\MemblockExist= AIsFunction( 1 , "?MemblockExist@@YAHH@Z" ) ; 15 MEMBLOCK EXIST Memblock Number
    DB_Memblocks\ReadMemblockByte= AIsFunction( 1 , "?ReadMemblockByte@@YAHHH@Z" ) ; 16 MEMBLOCK BYTE Memblock Number, Position
    DB_Memblocks\ReadMemblockDWord= AIsFunction( 1 , "?ReadMemblockDWord@@YAKHH@Z" ) ; 17 MEMBLOCK DWORD Memblock Number, Position
    DB_Memblocks\ReadMemblockFloat= AIsFunction( 1 , "?ReadMemblockFloat@@YAKHH@Z" ) ; 18 MEMBLOCK FLOAT Memblock Number, Position
    DB_Memblocks\ReadMemblockWordLLL= AIsFunction( 1 , "?ReadMemblockWordLLL@@YAHHH@Z" ) ; 19 MEMBLOCK WORD Memblock Number, Position
    DB_Memblocks\WriteMemblockByte= AIsFunction( 1 , "?WriteMemblockByte@@YAXHHH@Z" ) ; 20 WRITE MEMBLOCK BYTE Memblock Number, Position, Byte
    DB_Memblocks\WriteMemblockDWord= AIsFunction( 1 , "?WriteMemblockDWord@@YAXHHK@Z" ) ; 21 WRITE MEMBLOCK DWORD Memblock Number, Position, DWord
    DB_Memblocks\WriteMemblockFloat= AIsFunction( 1 , "?WriteMemblockFloat@@YAXHHM@Z" ) ; 22 WRITE MEMBLOCK FLOAT Memblock Number, Position, Float
    DB_Memblocks\WriteMemblockWord= AIsFunction( 1 , "?WriteMemblockWord@@YAXHHH@Z" ) ; 23 WRITE MEMBLOCK WORD Memblock Number, Position, Word
    DB_Memblocks\CreateMemblockFromArray= AIsFunction( 1 , "?CreateMemblockFromArray@@YAXHK@Z" ) ; 24 MAKE MEMBLOCK FROM ARRAY Memblock Number, Array Name(0)
    DB_Memblocks\CreateArrayFromMemblock= AIsFunction( 1 , "?CreateArrayFromMemblock@@YAXKH@Z" ) ; 25 MAKE ARRAY FROM MEMBLOCK Array Name(0), Memblock Number
    CloseLibrary( 1 )
   Else
    SUCCESS.l = 0
   Endif
  ProcedureReturn SUCCESS
 EndProcedure

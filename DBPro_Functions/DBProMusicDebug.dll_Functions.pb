; DarkBasic Professional RC2PBIncludes Ver 1.1 File - COMMANDS INITIALIZING
; By Frederic Cordier - 07.02.13
;
Procedure.l CheckMusic()
  SUCCESS.l = 1
  If OpenLibrary( 1, "DBProMusicDebug.dll")
    DB_Music\LoadMusic= AIsFunction( 1 , "?LoadMusic@@YAXPADH@Z" ) ; 1 LOAD MUSIC Filename,Music Number
    DB_Music\LoopMusic= AIsFunction( 1 , "?LoopMusic@@YAXH@Z" ) ; 2 LOOP MUSIC Music Number
    DB_Music\DeleteMusic= AIsFunction( 1 , "?DeleteMusic@@YAXH@Z" ) ; 3 DELETE MUSIC Music Number
    DB_Music\LoadCDMusic= AIsFunction( 1 , "?LoadCDMusic@@YAXHH@Z" ) ; 4 LOAD CDMUSIC Track Number,Music Number
    DB_Music\PauseMusic= AIsFunction( 1 , "?PauseMusic@@YAXH@Z" ) ; 5 PAUSE MUSIC Music Number
    DB_Music\PlayMusic= AIsFunction( 1 , "?PlayMusic@@YAXH@Z" ) ; 6 PLAY MUSIC Music Number
    DB_Music\ResumeMusic= AIsFunction( 1 , "?ResumeMusic@@YAXH@Z" ) ; 7 RESUME MUSIC Music Number
    DB_Music\SetMusicVolume= AIsFunction( 1 , "?SetMusicVolume@@YAXHH@Z" ) ; 8 SET MUSIC VOLUME Music Number,Volume
    DB_Music\StopMusic= AIsFunction( 1 , "?StopMusic@@YAXH@Z" ) ; 9 STOP MUSIC Music Number
    DB_Music\GetMusicExist= AIsFunction( 1 , "?GetMusicExist@@YAHH@Z" ) ; 10 MUSIC EXIST Music Number
    DB_Music\GetMusicLooping= AIsFunction( 1 , "?GetMusicLooping@@YAHH@Z" ) ; 11 MUSIC LOOPING Music Number
    DB_Music\GetMusicPaused= AIsFunction( 1 , "?GetMusicPaused@@YAHH@Z" ) ; 12 MUSIC PAUSED Music Number
    DB_Music\GetMusicPlaying= AIsFunction( 1 , "?GetMusicPlaying@@YAHH@Z" ) ; 13 MUSIC PLAYING Music Number
    DB_Music\GetNumberOfCDTracks= AIsFunction( 1 , "?GetNumberOfCDTracks@@YAHXZ" ) ; 14 GET NUMBER OF CD TRACKS 
    DB_Music\GetMusicSpeed= AIsFunction( 1 , "?GetMusicSpeed@@YAHH@Z" ) ; 15 MUSIC SPEED Music Number
    DB_Music\GetMusicVolume= AIsFunction( 1 , "?GetMusicVolume@@YAHH@Z" ) ; 16 MUSIC VOLUME Music Number
    DB_Music\SetMusicSpeed= AIsFunction( 1 , "?SetMusicSpeed@@YAXHH@Z" ) ; 17 SET MUSIC SPEED Music Number,Speed
    CloseLibrary( 1 )
   Else
    SUCCESS.l = 0
   Endif
  ProcedureReturn SUCCESS
 EndProcedure

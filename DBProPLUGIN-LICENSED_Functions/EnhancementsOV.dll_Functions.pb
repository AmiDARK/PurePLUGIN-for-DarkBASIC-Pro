; DarkBasic Professional RC2PBIncludes Ver 1.0 File - COMMANDS INITIALIZING
; By Frederic Cordier - 07.02.13
;
Procedure.l CheckEnhancementsOV()
  SUCCESS.l = 1
  If OpenLibrary( 1, "EnhancementsOV.dll")
    DB_EnhancementsOV\LoadOggVorbis= AIsFunction( 1 , "?LoadOggVorbis@@YAXKH@Z" ) ; 1 LOAD OGG VORBIS Filename, ID
    DB_EnhancementsOV\DeleteOggVorbis= AIsFunction( 1 , "?DeleteOggVorbis@@YAXH@Z" ) ; 2 DELETE OGG VORBIS ID
    DB_EnhancementsOV\PlayOggVorbis= AIsFunction( 1 , "?PlayOggVorbis@@YAXH@Z" ) ; 3 PLAY OGG VORBIS ID
    DB_EnhancementsOV\LoopOggVorbis= AIsFunction( 1 , "?LoopOggVorbis@@YAXH@Z" ) ; 4 LOOP OGG VORBIS ID
    DB_EnhancementsOV\StopOggVorbis= AIsFunction( 1 , "?StopOggVorbis@@YAXH@Z" ) ; 5 STOP OGG VORBIS ID
    DB_EnhancementsOV\PauseOggVorbis= AIsFunction( 1 , "?PauseOggVorbis@@YAXH@Z" ) ; 6 PAUSE OGG VORBIS ID
    DB_EnhancementsOV\ResumeOggVorbis= AIsFunction( 1 , "?ResumeOggVorbis@@YAXH@Z" ) ; 7 RESUME OGG VORBIS ID
    DB_EnhancementsOV\SetOggVorbisVolume= AIsFunction( 1 , "?SetOggVorbisVolume@@YAXHH@Z" ) ; 8 SET OGG VORBIS VOLUME ID, Volume
    DB_EnhancementsOV\EncodeToOggVorbis= AIsFunction( 1 , "?EncodeToOggVorbis@@YAXKK@Z" ) ; 9 ENCODE TO OGG VORBIS Input File, Output File
    DB_EnhancementsOV\EncodeToOggVorbis1= AIsFunction( 1 , "?EncodeToOggVorbis@@YAXKKM@Z" ) ; 10 ENCODE TO OGG VORBIS Input File, Output File, Quality
    DB_EnhancementsOV\GetOggVorbisExists= AIsFunction( 1 , "?GetOggVorbisExists@@YAHH@Z" ) ; 11 GET OGG VORBIS EXISTS ID
    DB_EnhancementsOV\GetOggVorbisState= AIsFunction( 1 , "?GetOggVorbisState@@YAHH@Z" ) ; 12 GET OGG VORBIS STATE ID
    DB_EnhancementsOV\GetOggVorbisVolume= AIsFunction( 1 , "?GetOggVorbisVolume@@YAHH@Z" ) ; 13 GET OGG VORBIS VOLUME ID
   Else
    SUCCESS.l = 0
   EndIf
  ProcedureReturn SUCCESS
 EndProcedure

; IDE Options = PureBasic v4.00 (Windows - x86)
; CursorPosition = 18
; Folding = -
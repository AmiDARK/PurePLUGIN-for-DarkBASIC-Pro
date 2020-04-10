; DarkBasic Professional RC2PBIncludes Ver 1.1 File - COMMANDS INITIALIZING
; By Frederic Cordier - 07.02.13
;
Procedure.l CheckAnimation()
  SUCCESS.l = 1
  If OpenLibrary( 1, "DBProAnimationDebug.dll")
    DB_Animation\LoadAnimation= AIsFunction( 1 , "?LoadAnimation@@YAXKH@Z" ) ; 1 LOAD ANIMATION Filename,Animation Number
    DB_Animation\PlayAnimation= AIsFunction( 1 , "?PlayAnimation@@YAXH@Z" ) ; 2 PLAY ANIMATION Animation Number
    DB_Animation\LoopAnimation= AIsFunction( 1 , "?LoopAnimation@@YAXH@Z" ) ; 3 LOOP ANIMATION Animation Number
    DB_Animation\DeleteAnimation= AIsFunction( 1 , "?DeleteAnimation@@YAXH@Z" ) ; 4 DELETE ANIMATION Animation Number
    DB_Animation\StopAnimation= AIsFunction( 1 , "?StopAnimation@@YAXH@Z" ) ; 5 STOP ANIMATION Animation Number
    DB_Animation\PauseAnimation= AIsFunction( 1 , "?PauseAnimation@@YAXH@Z" ) ; 6 PAUSE ANIMATION Animation Number
    DB_Animation\ResumeAnimation= AIsFunction( 1 , "?ResumeAnimation@@YAXH@Z" ) ; 7 RESUME ANIMATION Animation Number
    DB_Animation\PlayAnimation1= AIsFunction( 1 , "?PlayAnimation@@YAXHHH@Z" ) ; 8 PLAY ANIMATION Animation Number,X,Y
    DB_Animation\PlayAnimation2= AIsFunction( 1 , "?PlayAnimation@@YAXHHHHH@Z" ) ; 9 PLAY ANIMATION Animation Number,X,Y,X,Y
    DB_Animation\PlayAnimationToBitmap= AIsFunction( 1 , "?PlayAnimationToBitmap@@YAXHHHHHH@Z" ) ; 10 PLAY ANIMATION Animation Number,Bitmap Number,X,Y,X,Y
    DB_Animation\LoopAnimationToBitmap= AIsFunction( 1 , "?LoopAnimationToBitmap@@YAXHHHHHH@Z" ) ; 11 LOOP ANIMATION Animation Number,Bitmap Number,X,Y,X,Y
    DB_Animation\PlaceAnimation= AIsFunction( 1 , "?PlaceAnimation@@YAXHHHHH@Z" ) ; 12 PLACE ANIMATION Animation Number,X,Y,X,Y
    DB_Animation\AnimationExist= AIsFunction( 1 , "?AnimationExist@@YAHH@Z" ) ; 13 ANIMATION EXIST Animation Number
    DB_Animation\AnimationHeight= AIsFunction( 1 , "?AnimationHeight@@YAHH@Z" ) ; 14 ANIMATION HEIGHT Animation Number
    DB_Animation\AnimationLooping= AIsFunction( 1 , "?AnimationLooping@@YAHH@Z" ) ; 15 ANIMATION LOOPING Animation Number
    DB_Animation\AnimationPaused= AIsFunction( 1 , "?AnimationPaused@@YAHH@Z" ) ; 16 ANIMATION PAUSED Animation Number
    DB_Animation\AnimationPlaying= AIsFunction( 1 , "?AnimationPlaying@@YAHH@Z" ) ; 17 ANIMATION PLAYING Animation Number
    DB_Animation\AnimationPositionX= AIsFunction( 1 , "?AnimationPositionX@@YAHH@Z" ) ; 18 ANIMATION POSITION X Animation Number
    DB_Animation\AnimationPositionY= AIsFunction( 1 , "?AnimationPositionY@@YAHH@Z" ) ; 19 ANIMATION POSITION Y Animation Number
    DB_Animation\AnimationWidth= AIsFunction( 1 , "?AnimationWidth@@YAHH@Z" ) ; 20 ANIMATION WIDTH Animation Number
    DB_Animation\SetAnimationVolume= AIsFunction( 1 , "?SetAnimationVolume@@YAXHH@Z" ) ; 21 SET ANIMATION VOLUME Animation Number, Volume
    DB_Animation\SetAnimationSpeed= AIsFunction( 1 , "?SetAnimationSpeed@@YAXHH@Z" ) ; 22 SET ANIMATION SPEED Animation Number, Speed
    DB_Animation\AnimationVolume= AIsFunction( 1 , "?AnimationVolume@@YAHH@Z" ) ; 23 ANIMATION VOLUME Animation Number
    DB_Animation\AnimationSpeed= AIsFunction( 1 , "?AnimationSpeed@@YAHH@Z" ) ; 24 ANIMATION SPEED Animation Number
    DB_Animation\PlayAnimationToImage= AIsFunction( 1 , "?PlayAnimationToImage@@YAXHHHHHH@Z" ) ; 25 PLAY ANIMATION TO IMAGE Animation Number,Image,Left,Top,Right,Bottom
    DB_Animation\LoadDVDAnimation= AIsFunction( 1 , "?LoadDVDAnimation@@YAXH@Z" ) ; 26 LOAD DVD ANIMATION Animation Number
    DB_Animation\SetDVDChapter= AIsFunction( 1 , "?SetDVDChapter@@YAXHHH@Z" ) ; 27 SET DVD CHAPTER Animation Number, Title Number, Chapter Number
    DB_Animation\TotalDVDChapters= AIsFunction( 1 , "?TotalDVDChapters@@YAHHH@Z" ) ; 28 TOTAL DVD CHAPTERS Animation Number, Title Number
    CloseLibrary( 1 )
   Else
    SUCCESS.l = 0
   Endif
  ProcedureReturn SUCCESS
 EndProcedure

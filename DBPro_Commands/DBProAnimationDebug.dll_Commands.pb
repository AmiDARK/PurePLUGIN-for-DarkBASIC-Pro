; DarkBasic Professional RC2PBIncludes Ver 1. File - COMMANDS WRAPPING
; By Frederic Cordier - 07.02.13
;
; *********************************************************************
Procedure DBLoadAnimation( Filename.s, AnimationNumber.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FilenamePTR.l, Len( Filename ) + 1 ) ; CreateString
  PokeS( FilenamePTR, Filename )
  CallCFunctionFast( *DB_Animation\LoadAnimation, FilenamePTR, AnimationNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBPlayAnimation( AnimationNumber.l )
  CallCFunctionFast( *DB_Animation\PlayAnimation, AnimationNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBLoopAnimation( AnimationNumber.l )
  CallCFunctionFast( *DB_Animation\LoopAnimation, AnimationNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBDeleteAnimation( AnimationNumber.l )
  CallCFunctionFast( *DB_Animation\DeleteAnimation, AnimationNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBStopAnimation( AnimationNumber.l )
  CallCFunctionFast( *DB_Animation\StopAnimation, AnimationNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBPauseAnimation( AnimationNumber.l )
  CallCFunctionFast( *DB_Animation\PauseAnimation, AnimationNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBResumeAnimation( AnimationNumber.l )
  CallCFunctionFast( *DB_Animation\ResumeAnimation, AnimationNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBPlayAnimation1( AnimationNumber.l, X.l, Y.l )
  CallCFunctionFast( *DB_Animation\PlayAnimation1, AnimationNumber, X, Y )
 EndProcedure
;
; *********************************************************************
Procedure DBPlayAnimation2( AnimationNumber.l, X.l, Y.l, X2.l, Y2.l )
  CallCFunctionFast( *DB_Animation\PlayAnimation2, AnimationNumber, X, Y, X2, Y2 )
 EndProcedure
;
; *********************************************************************
Procedure DBPlayAnimationToBitmap( AnimationNumber.l, BitmapNumber.l, X.l, Y.l, X2.l, Y2.l )
  CallCFunctionFast( *DB_Animation\PlayAnimationToBitmap, AnimationNumber, BitmapNumber, X, Y, X2, Y2 )
 EndProcedure
;
; *********************************************************************
Procedure DBLoopAnimationToBitmap( AnimationNumber.l, BitmapNumber.l, X.l, Y.l, X2.l, Y2.l )
  CallCFunctionFast( *DB_Animation\LoopAnimationToBitmap, AnimationNumber, BitmapNumber, X, Y, X2, Y2 )
 EndProcedure
;
; *********************************************************************
Procedure DBPlaceAnimation( AnimationNumber.l, X.l, Y.l, X2.l, Y2.l )
  CallCFunctionFast( *DB_Animation\PlaceAnimation, AnimationNumber, X, Y, X2, Y2 )
 EndProcedure
;
; *********************************************************************
Procedure.l DBAnimationExist( AnimationNumber.l )
  Retour.l = CallCFunctionFast( *DB_Animation\AnimationExist, AnimationNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBAnimationHeight( AnimationNumber.l )
  Retour.l = CallCFunctionFast( *DB_Animation\AnimationHeight, AnimationNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBAnimationLooping( AnimationNumber.l )
  Retour.l = CallCFunctionFast( *DB_Animation\AnimationLooping, AnimationNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBAnimationPaused( AnimationNumber.l )
  Retour.l = CallCFunctionFast( *DB_Animation\AnimationPaused, AnimationNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBAnimationPlaying( AnimationNumber.l )
  Retour.l = CallCFunctionFast( *DB_Animation\AnimationPlaying, AnimationNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBAnimationPositionX( AnimationNumber.l )
  Retour.l = CallCFunctionFast( *DB_Animation\AnimationPositionX, AnimationNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBAnimationPositionY( AnimationNumber.l )
  Retour.l = CallCFunctionFast( *DB_Animation\AnimationPositionY, AnimationNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBAnimationWidth( AnimationNumber.l )
  Retour.l = CallCFunctionFast( *DB_Animation\AnimationWidth, AnimationNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DBSetAnimationVolume( AnimationNumber.l, Volume.l )
  CallCFunctionFast( *DB_Animation\SetAnimationVolume, AnimationNumber, Volume )
 EndProcedure
;
; *********************************************************************
Procedure DBSetAnimationSpeed( AnimationNumber.l, Speed.l )
  CallCFunctionFast( *DB_Animation\SetAnimationSpeed, AnimationNumber, Speed )
 EndProcedure
;
; *********************************************************************
Procedure.l DBAnimationVolume( AnimationNumber.l )
  Retour.l = CallCFunctionFast( *DB_Animation\AnimationVolume, AnimationNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBAnimationSpeed( AnimationNumber.l )
  Retour.l = CallCFunctionFast( *DB_Animation\AnimationSpeed, AnimationNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DBPlayAnimationToImage( AnimationNumber.l, Image.l, Left.l, Top.l, Right.l, Bottom.l )
  CallCFunctionFast( *DB_Animation\PlayAnimationToImage, AnimationNumber, Image, Left, Top, Right, Bottom )
 EndProcedure
;
; *********************************************************************
Procedure DBLoadDVDAnimation( AnimationNumber.l )
  CallCFunctionFast( *DB_Animation\LoadDVDAnimation, AnimationNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSetDVDChapter( AnimationNumber.l, TitleNumber.l, ChapterNumber.l )
  CallCFunctionFast( *DB_Animation\SetDVDChapter, AnimationNumber, TitleNumber, ChapterNumber )
 EndProcedure
;
; *********************************************************************
Procedure.l DBTotalDVDChapters( AnimationNumber.l, TitleNumber.l )
  Retour.l = CallCFunctionFast( *DB_Animation\TotalDVDChapters, AnimationNumber, TitleNumber )
  ProcedureReturn Retour
 EndProcedure
;

; IDE Options = PureBasic 4.10 Beta 2 (Windows - x86)
; CursorPosition = 61
; FirstLine = 44
; Folding = -----
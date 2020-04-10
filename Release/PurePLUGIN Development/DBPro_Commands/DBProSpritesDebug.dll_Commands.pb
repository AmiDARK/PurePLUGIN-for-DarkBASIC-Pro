; DarkBasic Professional RC2PBIncludes Ver 1. File - COMMANDS WRAPPING
; By Frederic Cordier - 07.02.13
;
; *********************************************************************
Procedure DBSprite( SpriteNumber.l, XPos.l, YPos.l, ImageNumber.l )
  CallCFunctionFast( *DB_Sprites\Sprite, SpriteNumber, XPos, YPos, ImageNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSetSprite( SpriteNumber.l, Backsave.l, Transparency.l )
  CallCFunctionFast( *DB_Sprites\SetSprite, SpriteNumber, Backsave, Transparency )
 EndProcedure
;
; *********************************************************************
Procedure DBSizeSprite( SpriteNumber.l, XSize.l, YSize.l )
  CallCFunctionFast( *DB_Sprites\Size, SpriteNumber, XSize, YSize )
 EndProcedure
;
; *********************************************************************
Procedure DBScaleSprite( SpriteNumber.l, Scale.f )
  CallCFunctionFast( *DB_Sprites\Scale, SpriteNumber, Scale )
 EndProcedure
;
; *********************************************************************
Procedure DBStretchSprite( SpriteNumber.l, XScale.l, YScale.l )
  CallCFunctionFast( *DB_Sprites\Stretch, SpriteNumber, XScale, YScale )
 EndProcedure
;
; *********************************************************************
Procedure DBSetSpriteOffset( SpriteNumber.l, XOffset.l, YOffset.l )
  CallCFunctionFast( *DB_Sprites\Offset, SpriteNumber, XOffset, YOffset )
 EndProcedure
;
; *********************************************************************
Procedure DBMirrorSprite( SpriteNumber.l )
  CallCFunctionFast( *DB_Sprites\Mirror, SpriteNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBFlipSprite( SpriteNumber.l )
  CallCFunctionFast( *DB_Sprites\Flip, SpriteNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBDeleteSprite( SpriteNumber.l )
  CallCFunctionFast( *DB_Sprites\Delete, SpriteNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBPasteSprite( SpriteNumber.l, XPos.l, YPos.l )
  CallCFunctionFast( *DB_Sprites\Paste, SpriteNumber, XPos, YPos )
 EndProcedure
;
; *********************************************************************
Procedure DBHideSprite( SpriteNumber.l )
  CallCFunctionFast( *DB_Sprites\Hide, SpriteNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBShowSprite( SpriteNumber.l )
  CallCFunctionFast( *DB_Sprites\Show, SpriteNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBHideAllSprites()
  CallCFunctionFast( *DB_Sprites\HideAllSprites )
 EndProcedure
;
; *********************************************************************
Procedure DBShowAllSprites()
  CallCFunctionFast( *DB_Sprites\ShowAllSprites )
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetSpriteExist( SpriteNumber.l )
  Retour.l = CallCFunctionFast( *DB_Sprites\GetExist, SpriteNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetSpritePositionX( SpriteNumber.l )
  Retour.l = CallCFunctionFast( *DB_Sprites\GetX, SpriteNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetSpritePositionY( SpriteNumber.l )
  Retour.l = CallCFunctionFast( *DB_Sprites\GetY, SpriteNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetSpriteXOffset( SpriteNumber.l )
  Retour.l = CallCFunctionFast( *DB_Sprites\GetXOffset, SpriteNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetSpriteYOffset( SpriteNumber.l )
  Retour.l = CallCFunctionFast( *DB_Sprites\GetYOffset, SpriteNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetSpriteWidth( SpriteNumber.l )
  Retour.l = CallCFunctionFast( *DB_Sprites\GetWidth, SpriteNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetSpriteHeight( SpriteNumber.l )
  Retour.l = CallCFunctionFast( *DB_Sprites\GetHeight, SpriteNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetSpriteImage( SpriteNumber.l )
  Retour.l = CallCFunctionFast( *DB_Sprites\GetImage, SpriteNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetSpriteXScale( SpriteNumber.l )
  Retour.l = CallCFunctionFast( *DB_Sprites\GetXScale, SpriteNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetSpriteYScale( SpriteNumber.l )
  Retour.l = CallCFunctionFast( *DB_Sprites\GetYScale, SpriteNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetSpriteMirrored( SpriteNumber.l )
  Retour.l = CallCFunctionFast( *DB_Sprites\GetMirrored, SpriteNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetSpriteFlipped( SpriteNumber.l )
  Retour.l = CallCFunctionFast( *DB_Sprites\GetFlipped, SpriteNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetSpriteHit( SpriteNumber.l, TargetSpriteNumber.l )
  Retour.l = CallCFunctionFast( *DB_Sprites\GetHit, SpriteNumber, TargetSpriteNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetSpriteCollision( SpriteNumber.l, TargetSpriteNumber.l )
  Retour.l = CallCFunctionFast( *DB_Sprites\GetCollision, SpriteNumber, TargetSpriteNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DBRotateSprite( SpriteNumber.l, Angle.f )
  CallCFunctionFast( *DB_Sprites\Rotate, SpriteNumber, Angle )
 EndProcedure
;
; *********************************************************************
Procedure DBSetSpriteAlpha( SpriteNumber.l, AlphaValue.l )
  CallCFunctionFast( *DB_Sprites\SetAlpha, SpriteNumber, AlphaValue )
 EndProcedure
;
; *********************************************************************
Procedure DBSetSpriteDiffuse( SpriteNumber.l, RedValue.l, GreenValue.l, BlueValue.l )
  CallCFunctionFast( *DB_Sprites\SetDiffuse, SpriteNumber, RedValue, GreenValue, BlueValue )
 EndProcedure
;
; *********************************************************************
Procedure DBCreateAnimatedSprite( SpriteNumber.l, Filename.s, Across.l, Down.l, ImageNumber.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FilenamePTR.l, Len( Filename ) + 1 ) ; CreateString
  PokeS( FilenamePTR, Filename )
  CallCFunctionFast( *DB_Sprites\CreateAnimatedSprite, SpriteNumber, FilenamePTR, Across, Down, ImageNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSetTextureCoordinates( SpriteNumber.l, VertexIndex.l, UValue.f, VValue.f )
  CallCFunctionFast( *DB_Sprites\SetTextureCoordinates, SpriteNumber, VertexIndex, UValue, VValue )
 EndProcedure
;
; *********************************************************************
Procedure DBPlaySprite( SpriteNumber.l, StartFrame.l, EndFrame.l, DelayValue.l )
  CallCFunctionFast( *DB_Sprites\Play, SpriteNumber, StartFrame, EndFrame, DelayValue )
 EndProcedure
;
; *********************************************************************
Procedure DBSetSpriteFrame( SpriteNumber.l, FrameValue.l )
  CallCFunctionFast( *DB_Sprites\SetFrame, SpriteNumber, FrameValue )
 EndProcedure
;
; *********************************************************************
Procedure DBSetSpriteImage( SpriteNumber.l, ImageNumber.l )
  CallCFunctionFast( *DB_Sprites\SetImage, SpriteNumber, ImageNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBCloneSprite( SpriteNumber.l, DestinationSpriteNumber.l )
  CallCFunctionFast( *DB_Sprites\Clone, SpriteNumber, DestinationSpriteNumber )
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetAngle( SpriteNumber.l )
  Retour.l = CallCFunctionFast( *DB_Sprites\GetAngle, SpriteNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetSpriteAlpha( SpriteNumber.l )
  Retour.l = CallCFunctionFast( *DB_Sprites\GetAlpha, SpriteNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetSpriteRed( SpriteNumber.l )
  Retour.l = CallCFunctionFast( *DB_Sprites\GetRed, SpriteNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetSpriteGreen( SpriteNumber.l )
  Retour.l = CallCFunctionFast( *DB_Sprites\GetGreen, SpriteNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetSpriteBlue( SpriteNumber.l )
  Retour.l = CallCFunctionFast( *DB_Sprites\GetBlue, SpriteNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetSpriteFrame( SpriteNumber.l )
  Retour.l = CallCFunctionFast( *DB_Sprites\GetFrame, SpriteNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DBMoveSprite( SpriteNumber.l, Velocity.f )
  CallCFunctionFast( *DB_Sprites\Move, SpriteNumber, Velocity )
 EndProcedure
;
; *********************************************************************
Procedure DBSetSpritePriority( SpriteNumber.l, Priority.l )
  CallCFunctionFast( *DB_Sprites\SetPriority, SpriteNumber, Priority )
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetVisible2( SpriteNumber.l )
  Retour.l = CallCFunctionFast( *DB_Sprites\GetVisible, SpriteNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DBSetSpriteResize( Mode.l )
  CallCFunctionFast( *DB_Sprites\SetSpriteResize, Mode )
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetSpritePriority( SpriteNumber.l )
  Retour.l = CallCFunctionFast( *DB_Sprites\GetPriority, SpriteNumber )
  ProcedureReturn Retour
 EndProcedure
;

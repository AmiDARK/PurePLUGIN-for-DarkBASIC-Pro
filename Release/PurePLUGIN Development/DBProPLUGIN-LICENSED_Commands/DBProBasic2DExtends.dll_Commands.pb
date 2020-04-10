; DarkBasic Professional RC2PBIncludes Ver 1. File - COMMANDS WRAPPING
; By Frederic Cordier - 07.02.13
;
; *********************************************************************
Procedure.l XWindow_Initialize( SkinFileName.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @SkinFileNamePTR.l, Len( SkinFileName ) + 1 ) ; CreateString
  PokeS( SkinFileNamePTR, SkinFileName )
  Retour.l = CallCFunctionFast( *DB_Basic2DExtends\XWindow_Initialize, SkinFileNamePTR )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure XWindow_ClearSystem()
  CallCFunctionFast( *DB_Basic2DExtends\XWindow_ClearSystem )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_TrueCloseMode()
  CallCFunctionFast( *DB_Basic2DExtends\XWindow_TrueCloseMode )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_FakeCloseMode()
  CallCFunctionFast( *DB_Basic2DExtends\XWindow_FakeCloseMode )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_EnableAlphaiser()
  CallCFunctionFast( *DB_Basic2DExtends\XWindow_EnableAlphaiser )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_DisableAlphaiser()
  CallCFunctionFast( *DB_Basic2DExtends\XWindow_DisableAlphaiser )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_Create( WindowNumber.l, Width.l, Height.l )
  CallCFunctionFast( *DB_Basic2DExtends\XWindow_Create, WindowNumber, Width, Height )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_Alpha( WindowNumber.l, AlphaValue.l )
  CallCFunctionFast( *DB_Basic2DExtends\XWindow_Alpha, WindowNumber, AlphaValue )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_ToBack( WindowNumber.l )
  CallCFunctionFast( *DB_Basic2DExtends\XWindow_ToBack, WindowNumber )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_ToFront( WindowNumber.l )
  CallCFunctionFast( *DB_Basic2DExtends\XWindow_ToFront, WindowNumber )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_Position( WindowNumber.l, XPosition.l, YPosition.l )
  CallCFunctionFast( *DB_Basic2DExtends\XWindow_Position, WindowNumber, XPosition, YPosition )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_Properties( WindowNumber.l, BorderFlag.l, TitleFlag.l, DraggingMode.l, CloseButton.l )
  CallCFunctionFast( *DB_Basic2DExtends\XWindow_Properties, WindowNumber, BorderFlag, TitleFlag, DraggingMode, CloseButton )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_SetBorderOff( WindowNumber.l )
  CallCFunctionFast( *DB_Basic2DExtends\XWindow_SetBorderOff, WindowNumber )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_SetBorderOn( WindowNumber.l )
  CallCFunctionFast( *DB_Basic2DExtends\XWindow_SetBorderOn, WindowNumber )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_SetTitleOff( WindowNumber.l )
  CallCFunctionFast( *DB_Basic2DExtends\XWindow_SetTitleOff, WindowNumber )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_SetTitleOn( WindowNumber.l )
  CallCFunctionFast( *DB_Basic2DExtends\XWindow_SetTitleOn, WindowNumber )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_SetDraggingOff( WindowNumber.l )
  CallCFunctionFast( *DB_Basic2DExtends\XWindow_SetDraggingOff, WindowNumber )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_SetDraggingOn( WindowNumber.l )
  CallCFunctionFast( *DB_Basic2DExtends\XWindow_SetDraggingOn, WindowNumber )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_SetCloseOff( LWindowNumber.l )
  CallCFunctionFast( *DB_Basic2DExtends\XWindow_SetCloseOff, LWindowNumber )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_SetCloseOn( WindowNumber.l )
  CallCFunctionFast( *DB_Basic2DExtends\XWindow_SetCloseOn, WindowNumber )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_Title( WindowNumber.l, StringTitle.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @StringTitlePTR.l, Len( StringTitle ) + 1 ) ; CreateString
  PokeS( StringTitlePTR, StringTitle )
  CallCFunctionFast( *DB_Basic2DExtends\XWindow_Title, WindowNumber, StringTitlePTR )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_Delete( WindowNumber.l )
  CallCFunctionFast( *DB_Basic2DExtends\XWindow_Delete, WindowNumber )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_Show( WindowNumber.l )
  CallCFunctionFast( *DB_Basic2DExtends\XWindow_Show, WindowNumber )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_Hide( WindowNumber.l )
  CallCFunctionFast( *DB_Basic2DExtends\XWindow_Hide, WindowNumber )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_Refresh()
  CallCFunctionFast( *DB_Basic2DExtends\XWindow_Refresh )
 EndProcedure
;
; *********************************************************************
Procedure.l XWindow_GetCurrentWindow()
  Retour.l = CallCFunctionFast( *DB_Basic2DExtends\XWindow_GetCurrentWindow )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l XWindow_GetWinXPos( WindowNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic2DExtends\XWindow_GetWinXPos, WindowNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l XWindow_GetWinYPos( WindowNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic2DExtends\XWindow_GetWinYPos, WindowNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l XWindow_Exist( WindowNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic2DExtends\XWindow_Exist, WindowNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure XWindow_AddGadget( WindowNumber.l, GadgetNumber.l, Xpos.l, Ypos.l, XSize.l, Ysize.l, ImageNumber.l )
  CallCFunctionFast( *DB_Basic2DExtends\XWindow_AddGadget, WindowNumber, GadgetNumber, Xpos, Ypos, XSize, Ysize, ImageNumber )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_AddGadgetCombination( WindowNumber.l, GadgetNumber.l, Xpos.l, Ypos.l, XSize.l, Ysize.l, Image.l, GadgetText.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @GadgetTextPTR.l, Len( GadgetText ) + 1 ) ; CreateString
  PokeS( GadgetTextPTR, GadgetText )
  CallCFunctionFast( *DB_Basic2DExtends\XWindow_AddGadgetCombination, WindowNumber, GadgetNumber, Xpos, Ypos, XSize, Ysize, Image, GadgetTextPTR )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_AddGadgetTexte( Param0.l, Param1.l, Param2.l, Param3.l, Param4.l, Param5.l, Param6.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param6PTR.l, Len( Param6 ) + 1 ) ; CreateString
  PokeS( Param6PTR, Param6 )
  CallCFunctionFast( *DB_Basic2DExtends\XWindow_AddGadgetTexte, Param0, Param1, Param2, Param3, Param4, Param5, Param6PTR )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_DeleteGadget( Param0.l )
  CallCFunctionFast( *DB_Basic2DExtends\XWindow_DeleteGadget, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure.l XWindow_GetCurrentGadget()
  Retour.l = CallCFunctionFast( *DB_Basic2DExtends\XWindow_GetCurrentGadget )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure XWindow_SetGadgetImage( Param0.l, Param1.l )
  CallCFunctionFast( *DB_Basic2DExtends\XWindow_SetGadgetImage, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_SetGadgetText( Param0.l, Param1.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param1PTR.l, Len( Param1 ) + 1 ) ; CreateString
  PokeS( Param1PTR, Param1 )
  CallCFunctionFast( *DB_Basic2DExtends\XWindow_SetGadgetText, Param0, Param1PTR )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_PositionGadget( Param0.l, Param1.l, Param2.l )
  CallCFunctionFast( *DB_Basic2DExtends\XWindow_PositionGadget, Param0, Param1, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_Stretch( Param0.l, Param1.l, Param2.l )
  CallCFunctionFast( *DB_Basic2DExtends\XWindow_Stretch, Param0, Param1, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_DefaultSize( Param0.l )
  CallCFunctionFast( *DB_Basic2DExtends\XWindow_DefaultSize, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure XFont_SetupFont( ImageFile.s, FontNumber.l, FontSize.l, FirstChar.l, Flag.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @ImageFilePTR.l, Len( ImageFile ) + 1 ) ; CreateString
  PokeS( ImageFilePTR, ImageFile )
  CallCFunctionFast( *DB_Basic2DExtends\XFont_SetupFont, ImageFilePTR, FontNumber, FontSize, FirstChar, Flag )
 EndProcedure
;
; *********************************************************************
Procedure XFont_ClearFont( FontNumber.l )
  CallCFunctionFast( *DB_Basic2DExtends\XFont_ClearFont, FontNumber )
 EndProcedure
;
; *********************************************************************
Procedure.l XFont_Exist( Param1.l )
  Retour.l = CallCFunctionFast( *DB_Basic2DExtends\XFont_Exist, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure XFont_ClearAllFont()
  CallCFunctionFast( *DB_Basic2DExtends\XFont_ClearAllFont )
 EndProcedure
;
; *********************************************************************
Procedure XFont_SetCursor( XCurs.l, YCurs.l )
  CallCFunctionFast( *DB_Basic2DExtends\XFont_SetCursor, XCurs, YCurs )
 EndProcedure
;
; *********************************************************************
Procedure XFont_SetCurrentFont( FontNumber.l )
  CallCFunctionFast( *DB_Basic2DExtends\XFont_SetCurrentFont, FontNumber )
 EndProcedure
;
; *********************************************************************
Procedure.l XFont_GetTextWidth( StringText.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @StringTextPTR.l, Len( StringText ) + 1 ) ; CreateString
  PokeS( StringTextPTR, StringText )
  Retour.l = CallCFunctionFast( *DB_Basic2DExtends\XFont_GetTextWidth, StringTextPTR )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l XFont_GetTextHeight( StringText.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @StringTextPTR.l, Len( StringText ) + 1 ) ; CreateString
  PokeS( StringTextPTR, StringText )
  Retour.l = CallCFunctionFast( *DB_Basic2DExtends\XFont_GetTextHeight, StringTextPTR )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure XFont_Print( StringText.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @StringTextPTR.l, Len( StringText ) + 1 ) ; CreateString
  PokeS( StringTextPTR, StringText )
  CallCFunctionFast( *DB_Basic2DExtends\XFont_Print, StringTextPTR )
 EndProcedure
;
; *********************************************************************
Procedure XFont_SetCurrentBitmap( BitmapNumber.l )
  CallCFunctionFast( *DB_Basic2DExtends\XFont_SetCurrentBitmap, BitmapNumber )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_UseXFont( FontNumber.l, Param1.l )
  CallCFunctionFast( *DB_Basic2DExtends\XWindow_UseXFont, FontNumber, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_DefaultFont( FontNumber.l )
  CallCFunctionFast( *DB_Basic2DExtends\XWindow_DefaultFont, FontNumber )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_AttachWindow( MasterWindow.l, ChildWindow.l, RelativePosition.l )
  CallCFunctionFast( *DB_Basic2DExtends\XWindow_AttachWindow, MasterWindow, ChildWindow, RelativePosition )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_DetachWindow( ChildWindow.l )
  CallCFunctionFast( *DB_Basic2DExtends\XWindow_DetachWindow, ChildWindow )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_SetTextOpaque()
  CallCFunctionFast( *DB_Basic2DExtends\XWindow_SetTextOpaque )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_SetTextTransparent()
  CallCFunctionFast( *DB_Basic2DExtends\XWindow_SetTextTransparent )
 EndProcedure
;
; *********************************************************************
Procedure.l XWindow_GetAttached( WindowNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic2DExtends\XWindow_GetAttached, WindowNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l GetWindowVisible( WindowNumbder.l )
  Retour.l = CallCFunctionFast( *DB_Basic2DExtends\GetWindowVisible, WindowNumbder )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l XWindow_GetWinGadgetCount( WindowNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic2DExtends\XWindow_GetWinGadgetCount, WindowNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure XWindow_SetChatGadget( GadgetNumber.l )
  CallCFunctionFast( *DB_Basic2DExtends\XWindow_SetChatGadget, GadgetNumber )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_SetChatWindowGadget( GadgetNumber.l )
  CallCFunctionFast( *DB_Basic2DExtends\XWindow_SetChatWindowGadget, GadgetNumber )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_TalkToChat( StringText.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @StringTextPTR.l, Len( StringText ) + 1 ) ; CreateString
  PokeS( StringTextPTR, StringText )
  CallCFunctionFast( *DB_Basic2DExtends\XWindow_TalkToChat, StringTextPTR )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_SetChatScanCode( ScanCodeID.l )
  CallCFunctionFast( *DB_Basic2DExtends\XWindow_SetChatScanCode, ScanCodeID )
 EndProcedure
;
; *********************************************************************
Procedure.l XWindow_ChatReadingKey()
  Retour.l = CallCFunctionFast( *DB_Basic2DExtends\XWindow_ChatReadingKey )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.s XWindow_GetLastCommand()
  Retour.l = CallCFunctionFast( *DB_Basic2DExtends\XWindow_GetLastCommand, ExtraPARAM.l )
  RetourSTR.s = PeekS( Retour )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure.l Basic2D_Init()
  Retour.l = CallCFunctionFast( *DB_Basic2DExtends\Basic2D_Init )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure XFont_AutoReturnMode( Mode.l )
  CallCFunctionFast( *DB_Basic2DExtends\XFont_AutoReturnMode, Mode )
 EndProcedure
;
; *********************************************************************
Procedure XGui_UseMipMap( Mode.l )
  CallCFunctionFast( *DB_Basic2DExtends\XGui_UseMipMap, Mode )
 EndProcedure
;

; IDE Options = PureBasic 4.10 Beta 2 (Windows - x86)
; CursorPosition = 372
; FirstLine = 330
; Folding = ------------
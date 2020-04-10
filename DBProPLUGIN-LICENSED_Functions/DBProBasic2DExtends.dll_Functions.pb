; DarkBasic Professional RC2PBIncludes Ver 1.1 File - COMMANDS INITIALIZING
; By Frederic Cordier - 07.02.13
;
Procedure.l CheckBasic2DExtends()
  SUCCESS.l = 0
  If OpenLibrary( 1, "DBProBasic2DExtends.dll")
    SUCCESS = 1
   Else
    If OpenLibrary( 1, "eXtends_Basic2D.dll" )
      SUCCESS = 1
     EndIf
   EndIf
  If SUCCESS = 1
    Basic2DExtends\XWindow_Initialize= AIsFunction( 1 , "XWindow_Initialize" ) ; 1 XGui Setup SkinFileName$
    Basic2DExtends\XWindow_ClearSystem= AIsFunction( 1 , "XWindow_ClearSystem" ) ; 2 XGui Clear 
    Basic2DExtends\XWindow_TrueCloseMode= AIsFunction( 1 , "XWindow_TrueCloseMode" ) ; 3 XGui CloseToClose 
    Basic2DExtends\XWindow_FakeCloseMode= AIsFunction( 1 , "XWindow_FakeCloseMode" ) ; 4 XGui CloseToHide 
    Basic2DExtends\XWindow_EnableAlphaiser= AIsFunction( 1 , "XWindow_EnableAlphaiser" ) ; 5 XGui Enable Alpha Window 
    Basic2DExtends\XWindow_DisableAlphaiser= AIsFunction( 1 , "XWindow_DisableAlphaiser" ) ; 6 XGui Disable Alpha Window 
    Basic2DExtends\XWindow_Create= AIsFunction( 1 , "XWindow_Create" ) ; 7 XGui Create Window WindowNumber, Width, Height
    Basic2DExtends\XWindow_Alpha= AIsFunction( 1 , "XWindow_Alpha" ) ; 8 XGui Set Alpha WindowNumber, AlphaValue
    Basic2DExtends\XWindow_ToBack= AIsFunction( 1 , "XWindow_ToBack" ) ; 9 XGui Window To Front WindowNumber
    Basic2DExtends\XWindow_ToFront= AIsFunction( 1 , "XWindow_ToFront" ) ; 10 XGui Window To Back WindowNumber
    Basic2DExtends\XWindow_Position= AIsFunction( 1 , "XWindow_Position" ) ; 11 XGui Position Window WindowNumber, XPosition, YPosition
    Basic2DExtends\XWindow_Properties= AIsFunction( 1 , "XWindow_Properties" ) ; 12 XGui Window Properties WindowNumber, BorderFlag, TitleFlag, DraggingMode, CloseButton
    Basic2DExtends\XWindow_SetBorderOff= AIsFunction( 1 , "XWindow_SetBorderOff" ) ; 13 XGui Window Border Off WindowNumber
    Basic2DExtends\XWindow_SetBorderOn= AIsFunction( 1 , "XWindow_SetBorderOn" ) ; 14 XGui Window Border On WindowNumber
    Basic2DExtends\XWindow_SetTitleOff= AIsFunction( 1 , "XWindow_SetTitleOff" ) ; 15 XGui Window Title Off WindowNumber
    Basic2DExtends\XWindow_SetTitleOn= AIsFunction( 1 , "XWindow_SetTitleOn" ) ; 16 XGui Window Title On WindowNumber
    Basic2DExtends\XWindow_SetDraggingOff= AIsFunction( 1 , "XWindow_SetDraggingOff" ) ; 17 XGui Window Dragging Off WindowNumber
    Basic2DExtends\XWindow_SetDraggingOn= AIsFunction( 1 , "XWindow_SetDraggingOn" ) ; 18 XGui Window Dragging On WindowNumber
    Basic2DExtends\XWindow_SetCloseOff= AIsFunction( 1 , "XWindow_SetCloseOff" ) ; 19 XGui Window Close Off LWindowNumber
    Basic2DExtends\XWindow_SetCloseOn= AIsFunction( 1 , "XWindow_SetCloseOn" ) ; 20 XGui Window Close On WindowNumber
    Basic2DExtends\XWindow_Title= AIsFunction( 1 , "XWindow_Title" ) ; 21 XGui Set Window Title WindowNumber, StringTitle$
    Basic2DExtends\XWindow_Delete= AIsFunction( 1 , "XWindow_Delete" ) ; 22 XGui Delete Window WindowNumber
    Basic2DExtends\XWindow_Show= AIsFunction( 1 , "XWindow_Show" ) ; 23 XGui Show Window WindowNumber
    Basic2DExtends\XWindow_Hide= AIsFunction( 1 , "XWindow_Hide" ) ; 24 XGui Hide Window WindowNumber
    Basic2DExtends\XWindow_Refresh= AIsFunction( 1 , "XWindow_Refresh" ) ; 25 XGui Update 
    Basic2DExtends\XWindow_GetCurrentWindow= AIsFunction( 1 , "XWindow_GetCurrentWindow" ) ; 26 XGui Get Window 
    Basic2DExtends\XWindow_GetWinXPos= AIsFunction( 1 , "XWindow_GetWinXPos" ) ; 27 XGui Get Window XPos WindowNumber
    Basic2DExtends\XWindow_GetWinYPos= AIsFunction( 1 , "XWindow_GetWinYPos" ) ; 28 XGui Get Window YPos WindowNumber
    Basic2DExtends\XWindow_Exist= AIsFunction( 1 , "XWindow_Exist" ) ; 29 XGui Window Exist WindowNumber
    Basic2DExtends\XWindow_AddGadget= AIsFunction( 1 , "XWindow_AddGadget" ) ; 30 XGui Add Gadget WindowNumber, GadgetNumber, Xpos, Ypos, XSize, Ysize, ImageNumber
    Basic2DExtends\XWindow_AddGadgetCombination= AIsFunction( 1 , "XWindow_AddGadgetCombination" ) ; 31 XGui Add Gadget Combi WindowNumber, GadgetNumber, Xpos, Ypos, XSize, Ysize, Image, GadgetText$
    Basic2DExtends\XWindow_AddGadgetTexte= AIsFunction( 1 , "XWindow_AddGadgetTexte" ) ; 32 XGui Add Gadget Text 
    Basic2DExtends\XWindow_DeleteGadget= AIsFunction( 1 , "XWindow_DeleteGadget" ) ; 33 XGui Delete Gadget 
    Basic2DExtends\XWindow_GetCurrentGadget= AIsFunction( 1 , "XWindow_GetCurrentGadget" ) ; 34 XGui Get Clicked 
    Basic2DExtends\XWindow_SetGadgetImage= AIsFunction( 1 , "XWindow_SetGadgetImage" ) ; 35 XGui Set Gadget Image 
    Basic2DExtends\XWindow_SetGadgetText= AIsFunction( 1 , "XWindow_SetGadgetText" ) ; 36 XGui Set Gadget Text 
    Basic2DExtends\XWindow_PositionGadget= AIsFunction( 1 , "XWindow_PositionGadget" ) ; 37 XGui Position Gadget 
    Basic2DExtends\XWindow_Stretch= AIsFunction( 1 , "XWindow_Stretch" ) ; 38 XGui Stretch Window 
    Basic2DExtends\XWindow_DefaultSize= AIsFunction( 1 , "XWindow_DefaultSize" ) ; 39 XGui Default Window Size 
    Basic2DExtends\XFont_SetupFont= AIsFunction( 1 , "XFont_SetupFont" ) ; 40 XFont Setup Font ImageFile$, FontNumber, FontSize, FirstChar, Flag
    Basic2DExtends\XFont_ClearFont= AIsFunction( 1 , "XFont_ClearFont" ) ; 41 XFont Clear Font FontNumber
    Basic2DExtends\XFont_Exist= AIsFunction( 1 , "XFont_Exist" ) ; 42 XFont Exist 
    Basic2DExtends\XFont_ClearAllFont= AIsFunction( 1 , "XFont_ClearAllFont" ) ; 43 XFont Clear All Fonts 
    Basic2DExtends\XFont_SetCursor= AIsFunction( 1 , "XFont_SetCursor" ) ; 44 XFont Set Cursor XCurs, YCurs
    Basic2DExtends\XFont_SetCurrentFont= AIsFunction( 1 , "XFont_SetCurrentFont" ) ; 45 XFont Set Current Font FontNumber
    Basic2DExtends\XFont_GetTextWidth= AIsFunction( 1 , "XFont_GetTextWidth" ) ; 46 XFont Text Width StringText$
    Basic2DExtends\XFont_GetTextHeight= AIsFunction( 1 , "XFont_GetTextHeight" ) ; 47 XFont Text Height StringText$
    Basic2DExtends\XFont_Print= AIsFunction( 1 , "XFont_Print" ) ; 48 XFont Print StringText$
    Basic2DExtends\XFont_SetCurrentBitmap= AIsFunction( 1 , "XFont_SetCurrentBitmap" ) ; 49 XFont Set Current Bitmap BitmapNumber
    Basic2DExtends\XWindow_UseXFont= AIsFunction( 1 , "XWindow_UseXFont" ) ; 50 XGui Window Use XFont FontNumber
    Basic2DExtends\XWindow_DefaultFont= AIsFunction( 1 , "XWindow_DefaultFont" ) ; 51 XGui Window Default Font FontNumber
    Basic2DExtends\XWindow_AttachWindow= AIsFunction( 1 , "XWindow_AttachWindow" ) ; 52 XGui Attach Window MasterWindow, ChildWindow , RelativePosition
    Basic2DExtends\XWindow_DetachWindow= AIsFunction( 1 , "XWindow_DetachWindow" ) ; 53 XGui Detach Window ChildWindow
    Basic2DExtends\XWindow_SetTextOpaque= AIsFunction( 1 , "XWindow_SetTextOpaque" ) ; 54 XGui Set Text Opaque 
    Basic2DExtends\XWindow_SetTextTransparent= AIsFunction( 1 , "XWindow_SetTextTransparent" ) ; 55 XGui Set Text Transparent 
    Basic2DExtends\XWindow_GetAttached= AIsFunction( 1 , "XWindow_GetAttached" ) ; 56 XGui Get Attached WindowNumber
    Basic2DExtends\GetWindowVisible= AIsFunction( 1 , "GetWindowVisible" ) ; 57 XGui Window Hidden WindowNumbder
    Basic2DExtends\XWindow_GetWinGadgetCount= AIsFunction( 1 , "XWindow_GetWinGadgetCount" ) ; 58 XGui Window Gadget Count WindowNumber
    Basic2DExtends\XWindow_SetChatGadget= AIsFunction( 1 , "XWindow_SetChatGadget" ) ; 59 XGui Set Chat Gadget GadgetNumber
    Basic2DExtends\XWindow_SetChatWindowGadget= AIsFunction( 1 , "XWindow_SetChatWindowGadget" ) ; 60 XGui Set Dialog Gadget GadgetNumber
    Basic2DExtends\XWindow_TalkToChat= AIsFunction( 1 , "XWindow_TalkToChat" ) ; 61 XGui Send Dialog StringText$
    Basic2DExtends\XWindow_SetChatScanCode= AIsFunction( 1 , "XWindow_SetChatScanCode" ) ; 62 XGui Set Chat ScanCode ScanCodeID
    Basic2DExtends\XWindow_ChatReadingKey= AIsFunction( 1 , "XWindow_ChatReadingKey" ) ; 63 XGui Chat Active 
    Basic2DExtends\XWindow_GetLastCommand= AIsFunction( 1 , "XWindow_GetLastCommand" ) ; 64 Last Chat Command$ 
    Basic2DExtends\Basic2D_Init= AIsFunction( 1 , "Basic2D_Init" ) ; 65 B2D Initialized 
    Basic2DExtends\XFont_AutoReturnMode= AIsFunction( 1 , "XFont_AutoReturnMode" ) ; 66 XFont Auto Return Mode Mode
    Basic2DExtends\XGui_UseMipMap= AIsFunction( 1 , "XGui_UseMipMap" ) ; 67 XGui MipMap Mode Mode
    CloseLibrary( 1 )
   Else
    SUCCESS.l = 0
   EndIf
  ProcedureReturn SUCCESS
 EndProcedure

; IDE Options = PureBasic 4.20 Beta 2 (Windows - x86)
; CursorPosition = 4
; Folding = -
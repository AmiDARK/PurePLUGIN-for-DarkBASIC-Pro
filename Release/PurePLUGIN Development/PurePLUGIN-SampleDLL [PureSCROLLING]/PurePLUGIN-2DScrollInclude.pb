;
#PSError$ = "PureSCROLLING Error Message"
#PSDataSetError$ = "Cannot set scrolling data, "
#PSTileSetError$ = "Cannot set tile data, "
#PSRendererError$ = "Cannot render the map, "
;
Structure MapStruct
  MemPTR.l : MemPTRMax.l : Initialized.l
  Width.l : Height.l
  TileWidth.l : TileHeight.l
 EndStructure
Global Map.MapStruct
;
Structure GFXTile
  ImageID.l : Transparency.l
 EndStructure
Global Dim GFXTiles.GFXTile( 65536 )
;
ProcedureCDLL SetScrollingData( MemblockID.l )
  If MemblockID > 0
    If DBMemblockExist( MemblockID ) = 1
      Map\MemPTR = DBGetMemblockPtr( MemblockID )
      Map\MemPTRMax = Map\MemPTR + DBGetMemblockSize( MemblockID )
      Map\Width = PeekL( Map\MemPTR )
      Map\Height = PeekL( Map\MemPTR + 4 )
      If Map\Width > 0 And Map\Height > 0
        Map\Initialized = 1
       Else
        MessageRequester( #PSError$, #PSDataSetError$ + "Memblock map width and/or height is invalid" )
       EndIf
     Else
      MessageRequester( #PSError$, #PSDataSetError$ + "Memblock does not exist" )
      Map\Initialized = 0
     EndIf
   Else
    MessageRequester( #PSError$, #PSDataSetError$ + "Memblock ID is out of range" )
    Map\Initialized = 0
   EndIf
 EndProcedure
;
Procedure SetTile( TileID, ImageID.l, TranspFLAG.l )
  If TileID > 0
    If ImageID > 0
      If DBGetImageExist( ImageID ) = 1
        GFXTiles( TileID )\ImageID = ImageID
        GFXTiles( TileID )\Transparency = TranspFLAG
       Else
        MessageRequester( #PSError$, #PSTileSetError$ + "Image does not exist" )
       EndIf
     Else
      MessageRequester( #PSError$, #PSTileSetError$ + "Tile Image is invalid" )
     EndIf
   Else
    MessageRequester( #PSError$, #PSTileSetError$ + "Tile ID is out of range" )
   EndIf

 EndProcedure

ProcedureCDLL SetGFXTile( TileNUM.l, ImageNUM.l )
  SetTile( TileNUM, ImageNUM, 0 )
 EndProcedure

ProcedureCDLL SetGFXTileEx( TileNUM.l, ImageNUM.l, Transparency.l )
  SetTile( TileNUM, ImageNUM, Transparency )
 EndProcedure

ProcedureCDLL SetTilesSize( XSize.l, YSize.l )
  If XSize > 0 And YSize > 0
    Map\TileWidth = XSize
    Map\TileHeight = YSize
   Else
    MessageRequester( #PSError$, #PSTileSetError$ + "Tile width and/or height is/are invalid(s)" )
   EndIf
 EndProcedure

ProcedureCDLL Scrolling( MapXPos.l, MapYPos.l, XShift.l, YShift.l )
  ; Get current bitmap sizes to use it for scrolling
  SWidth.l = DBBitmapWidth1() : SHeight.l = DBBitmapHeight1()
  TilesXCount.l = SWidth / Map\TileWidth
  TilesYCount.l = SHeight / Map\TileHeight
  If TilesXCount <= Map\Width And TilesYCount <= Map\Height
    If MapXPos < 0 : MapXPos = 0 : EndIf
    If MapYPos < 0 : MapYPos = 0 : EndIf
    If MapXPos > ( Map\Width - TilesXCount ) : MapXPos = Map\Width - TilesXCount : EndIf
    If MapYPos > ( Map\Height - TilesYCount ) : MapYPos = Map\Height - TilesYCount : EndIf
    ReadYPos.l = MapYPos
    YLoop.l = 0 : Repeat
      ReadXPos.l = MapXPos
      XLoop.l = 0 : Repeat
        TileAdr = 8 + ( ReadYPos * Map\Width * 4 ) + ( ReadXPos * 4 )
        ReadXPos = ReadXPos + 1
        AdressToRead.l = Map\MemPTR + TileADR
        If AdressToRead >= Map\MemPTR And AdressToRead < Map\MemPTRMax
          TileToDisp = PeekL( AdressToRead )
         Else
          TiletoDisp = 0
         EndIf
        If TileToDisp > 0
          DBPasteImage1( GFXTiles( TileToDisp )\ImageID, XLoop-XShift, YLoop-YShift, GFXTiles( TileToDisp )\Transparency )
         EndIf
        XLoop = XLoop + Map\TileWidth
       Until XLoop >= SWidth + Map\TileWidth
      ReadYPos = ReadYPos + 1
      YLoop = YLoop + Map\TileHeight
     Until YLoop >= SHeight + Map\TileHeight
   Else
    MessageRequester( #PSError$, #PSRendererError$ + "Map Width/Height are smaller than display area" )
   EndIf
 EndProcedure


ProcedureCDLL ScrollingEx( MapXPos2.l, MapYPos2.l )
  MapXPos.l = MapXPos2 / Map\TileWidth
  MapYPos.l = MapYPos2 / Map\TileHeight
  XShift.l = MapXPos2 - ( MapXPos * Map\TileWidth )
  YShift.l = MapYPos2 - ( MapYPos * Map\TileHeight )
  ; Get current bitmap sizes to use it for scrolling
  SWidth.l = DBBitmapWidth1() : SHeight.l = DBBitmapHeight1()
  TilesXCount.l = SWidth / Map\TileWidth
  TilesYCount.l = SHeight / Map\TileHeight
  If TilesXCount <= Map\Width And TilesYCount <= Map\Height
    If MapXPos < 0 : MapXPos = 0 : EndIf
    If MapYPos < 0 : MapYPos = 0 : EndIf
    If MapXPos > ( Map\Width - TilesXCount ) : MapXPos = Map\Width - TilesXCount : EndIf
    If MapYPos > ( Map\Height - TilesYCount ) : MapYPos = Map\Height - TilesYCount : EndIf
    ReadYPos.l = MapYPos
    YLoop.l = 0 : Repeat
      ReadXPos.l = MapXPos
      XLoop.l = 0 : Repeat
        TileAdr = 8 + ( ReadYPos * Map\Width * 4 ) + ( ReadXPos * 4 )
        ReadXPos = ReadXPos + 1
        AdressToRead.l = Map\MemPTR + TileADR
        If AdressToRead >= Map\MemPTR And AdressToRead < Map\MemPTRMax
          TileToDisp = PeekL( AdressToRead )
         Else
          TiletoDisp = 0
         EndIf
        If TileToDisp > 0
          DBPasteImage1( GFXTiles( TileToDisp )\ImageID, XLoop-XShift, YLoop-YShift, GFXTiles( TileToDisp )\Transparency )
         EndIf
        XLoop = XLoop + Map\TileWidth
       Until XLoop >= SWidth + Map\TileWidth
      ReadYPos = ReadYPos + 1
      YLoop = YLoop + Map\TileHeight
     Until YLoop >= SHeight + Map\TileHeight
   Else
    MessageRequester( #PSError$, #PSRendererError$ + "Map Width/Height are smaller than display area" )
   EndIf
 EndProcedure



; IDE Options = PureBasic v4.02 (Windows - x86)
; CursorPosition = 151
; FirstLine = 107
; Folding = --
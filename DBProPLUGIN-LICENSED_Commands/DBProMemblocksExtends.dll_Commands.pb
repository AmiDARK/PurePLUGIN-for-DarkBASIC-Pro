; DarkBasic Professional RC2PBIncludes Ver 1. File - COMMANDS WRAPPING
; By Frederic Cordier - 07.02.13
;
; *********************************************************************
Procedure.l MBC_Init()
  Retour.l = CallCFunctionFast( *DB_MemblocksExtends\MBC_Init )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure MBC_Clear()
  CallCFunctionFast( *DB_MemblocksExtends\MBC_Clear )
 EndProcedure
;
; *********************************************************************
Procedure.l MBC_Count()
  Retour.l = CallCFunctionFast( *DB_MemblocksExtends\MBC_Count )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l MBC_Delete( MemblockNumber.l )
  Retour.l = CallCFunctionFast( *DB_MemblocksExtends\MBC_Delete, MemblockNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l MBC_CloneMemblock()
  Retour.l = CallCFunctionFast( *DB_MemblocksExtends\MBC_CloneMemblock )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l MBC_DynamicMake( BytesSize.l )
  Retour.l = CallCFunctionFast( *DB_MemblocksExtends\MBC_DynamicMake, BytesSize )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l MBC_DynamicMakeFromArray( ArrayName0 )
  Retour.l = CallCFunctionFast( *DB_MemblocksExtends\MBC_DynamicMakeFromArray, ArrayName0 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l MBC_DynamicMakeFromBitmap( BitmapNumber.l )
  Retour.l = CallCFunctionFast( *DB_MemblocksExtends\MBC_DynamicMakeFromBitmap, BitmapNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l MBC_DynamicMakeFromImage( ImageNumber.l )
  Retour.l = CallCFunctionFast( *DB_MemblocksExtends\MBC_DynamicMakeFromImage, ImageNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l MBC_DynamicMakeFromMesh( MeshNumber.l )
  Retour.l = CallCFunctionFast( *DB_MemblocksExtends\MBC_DynamicMakeFromMesh, MeshNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l MBC_DynamicMakeFromSound( SoundNumber.l )
  Retour.l = CallCFunctionFast( *DB_MemblocksExtends\MBC_DynamicMakeFromSound, SoundNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l MBC_MakeMemblockImage( Width.l, Height.l, Depth.l )
  Retour.l = CallCFunctionFast( *DB_MemblocksExtends\MakeMemblockImage, Width, Height, Depth )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure MBC_IMPlot( MemblockNumber.l, X.l, Y.l, RGBColor.l )
  CallCFunctionFast( *DB_MemblocksExtends\IMPlot, MemblockNumber, X, Y, RGBColor )
 EndProcedure
;
; *********************************************************************
Procedure.l MBC_IMGetPixel( MemblockNumber.l, X.l, Y.l )
  Retour.l = CallCFunctionFast( *DB_MemblocksExtends\IMGetPixel, MemblockNumber, X, Y )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure MBC_IMCircle( MemblockNumber.l, X.l, Y.l, Diameter.l, RGBColor.l, FillMode.l )
  CallCFunctionFast( *DB_MemblocksExtends\IMCircle, MemblockNumber, X, Y, Diameter, RGBColor, FillMode )
 EndProcedure
;
; *********************************************************************
Procedure MBC_IMCube( MemblockNumber.l, X.l, Y.l, Size.l, RGBColor.l, FillMode.l )
  CallCFunctionFast( *DB_MemblocksExtends\IMCube, MemblockNumber, X, Y, Size, RGBColor, FillMode )
 EndProcedure
;
; *********************************************************************
Procedure MBC_IMBox( MemblockNumber.l, Left.l, Top.l, Bottom.l, Right.l, RGBColor.l, FillMode.l )
  CallCFunctionFast( *DB_MemblocksExtends\IMBox, MemblockNumber, Left, Top, Bottom, Right, RGBColor, FillMode )
 EndProcedure
;
; *********************************************************************
Procedure MBC_IMStretch( SourceIM.l, TargetIM.l )
  CallCFunctionFast( *DB_MemblocksExtends\IMStretch, SourceIM, TargetIM )
 EndProcedure
;
; *********************************************************************
Procedure.l MBC_IMStretch2( SourceIM.l, Width.l, Height.l )
  Retour.l = CallCFunctionFast( *DB_MemblocksExtends\IMStretch2, SourceIM, Width, Height )
  ProcedureReturn Retour
 EndProcedure
;

; IDE Options = PureBasic 4.10 Beta 2 (Windows - x86)
; Folding = ----
; DarkBasic Professional RC2PBIncludes Ver 1. File - COMMANDS WRAPPING
; By Frederic Cordier - 07.02.13
;
; *********************************************************************
Procedure.l STR_Init()
  Retour.l = CallCFunctionFast( *DB_TextExtends\STR_Init )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.s STR_ExtractFileName( TextString.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @TextStringPTR.l, Len( TextString ) + 1 ) ; CreateString
  PokeS( TextStringPTR, TextString )
  Retour.l = CallCFunctionFast( *DB_TextExtends\STR_ExtractFileName, ExtraPARAM.l, TextStringPTR )
  RetourSTR.s = PeekS( Retour )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure.s STR_ExtractDrawer( TextString.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @TextStringPTR.l, Len( TextString ) + 1 ) ; CreateString
  PokeS( TextStringPTR, TextString )
  Retour.l = CallCFunctionFast( *DB_TextExtends\STR_ExtractDrawer, ExtraPARAM.l, TextStringPTR )
  RetourSTR.s = PeekS( Retour )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure.s STR_GetFileWithoutExtension( FileName.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FileNamePTR.l, Len( FileName ) + 1 ) ; CreateString
  PokeS( FileNamePTR, FileName )
  Retour.l = CallCFunctionFast( *DB_TextExtends\STR_GetFileWithoutExtension, ExtraPARAM.l, FileNamePTR )
  RetourSTR.s = PeekS( Retour )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure.s STR_GetFileExtension( FileName.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FileNamePTR.l, Len( FileName ) + 1 ) ; CreateString
  PokeS( FileNamePTR, FileName )
  Retour.l = CallCFunctionFast( *DB_TextExtends\STR_GetFileExtension, ExtraPARAM.l, FileNamePTR )
  RetourSTR.s = PeekS( Retour )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure.l STR_GetCharPosition( TextString.s, Char.s, Counter.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @TextStringPTR.l, Len( TextString ) + 1 ) ; CreateString
  PokeS( TextStringPTR, TextString )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @CharPTR.l, Len( Char ) + 1 ) ; CreateString
  PokeS( CharPTR, Char )
  Retour.l = CallCFunctionFast( *DB_TextExtends\STR_GetCharPosition, TextStringPTR, CharPTR, Counter )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.s STR_GetLeftFrom( TextString.s, Char.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @TextStringPTR.l, Len( TextString ) + 1 ) ; CreateString
  PokeS( TextStringPTR, TextString )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @CharPTR.l, Len( Char ) + 1 ) ; CreateString
  PokeS( CharPTR, Char )
  Retour.l = CallCFunctionFast( *DB_TextExtends\STR_GetLeftFrom, ExtraPARAM.l, TextStringPTR, CharPTR )
  RetourSTR.s = PeekS( Retour )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure.s STR_GetRightFrom( TextString.s, Char.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @TextStringPTR.l, Len( TextString ) + 1 ) ; CreateString
  PokeS( TextStringPTR, TextString )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @CharPTR.l, Len( Char ) + 1 ) ; CreateString
  PokeS( CharPTR, Char )
  Retour.l = CallCFunctionFast( *DB_TextExtends\STR_GetRightFrom, ExtraPARAM.l, TextStringPTR, CharPTR )
  RetourSTR.s = PeekS( Retour )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure.s STR_GetMiddle( TextString.s, StartPosition.l, Length.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @TextStringPTR.l, Len( TextString ) + 1 ) ; CreateString
  PokeS( TextStringPTR, TextString )
  Retour.l = CallCFunctionFast( *DB_TextExtends\STR_GetMiddle, ExtraPARAM.l, TextStringPTR, StartPosition, Length )
  RetourSTR.s = PeekS( Retour )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
  ProcedureReturn RetourSTR
 EndProcedure
;

; IDE Options = PureBasic 4.10 Beta 2 (Windows - x86)
; CursorPosition = 87
; FirstLine = 45
; Folding = --
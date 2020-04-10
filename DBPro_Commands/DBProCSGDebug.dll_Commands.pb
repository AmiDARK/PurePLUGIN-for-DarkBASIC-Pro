; DarkBasic Professional RC2PBIncludes Ver 1. File - COMMANDS WRAPPING
; By Frederic Cordier - 07.02.13
;
; *********************************************************************
Procedure DBPerformCSGOnXModel( InputXFile.s, OutputXFile.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @InputXFilePTR.l, Len( InputXFile ) + 1 ) ; CreateString
  PokeS( InputXFilePTR, InputXFile )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @OutputXFilePTR.l, Len( OutputXFile ) + 1 ) ; CreateString
  PokeS( OutputXFilePTR, OutputXFile )
  CallCFunctionFast( *DB_CSG\PerformCSGOnXModel, InputXFilePTR, OutputXFilePTR )
 EndProcedure
;
; *********************************************************************
Procedure DBPerformCSGOnXModel1( InputXFile.s, OutputXFile.s, Epsilon.f )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @InputXFilePTR.l, Len( InputXFile ) + 1 ) ; CreateString
  PokeS( InputXFilePTR, InputXFile )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @OutputXFilePTR.l, Len( OutputXFile ) + 1 ) ; CreateString
  PokeS( OutputXFilePTR, OutputXFile )
  CallCFunctionFast( *DB_CSG\PerformCSGOnXModel1, InputXFilePTR, OutputXFilePTR, Epsilon )
 EndProcedure
;

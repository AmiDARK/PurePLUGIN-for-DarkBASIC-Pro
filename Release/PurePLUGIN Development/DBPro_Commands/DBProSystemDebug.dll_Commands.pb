; DarkBasic Professional RC2PBIncludes Ver 1. File - COMMANDS WRAPPING
; By Frederic Cordier - 07.02.13
;
; *********************************************************************
Procedure DBEmptyChecklist()
  CallCFunctionFast( *DB_System\EmptyChecklist )
 EndProcedure
;
; *********************************************************************
Procedure.l DBChecklistQuantity()
  Retour.l = CallCFunctionFast( *DB_System\ChecklistQuantity )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBChecklistValueA( Param1.l )
  Retour.l = CallCFunctionFast( *DB_System\ChecklistValueA, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBChecklistValueB( Param1.l )
  Retour.l = CallCFunctionFast( *DB_System\ChecklistValueB, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBChecklistValueC( Param1.l )
  Retour.l = CallCFunctionFast( *DB_System\ChecklistValueC, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBChecklistValueD( Param1.l )
  Retour.l = CallCFunctionFast( *DB_System\ChecklistValueD, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.s DBChecklistString( Param1.l )
  Retour.l = CallCFunctionFast( *DB_System\ChecklistString, ExtraPARAM.l, Param1 )
  RetourSTR.s = PeekS( Retour )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure.l DBTMEMAvailable()
  Retour.l = CallCFunctionFast( *DB_System\TMEMAvailable )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBDMEMAvailable()
  Retour.l = CallCFunctionFast( *DB_System\DMEMAvailable )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBSMEMAvailable()
  Retour.l = CallCFunctionFast( *DB_System\SMEMAvailable )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DBDisableSystemEscapeKey()
  CallCFunctionFast( *DB_System\DisableEscapeKey )
 EndProcedure
;
; *********************************************************************
Procedure DBEnableSystemEscapeKey()
  CallCFunctionFast( *DB_System\EnableEscapeKey )
 EndProcedure
;
; *********************************************************************
Procedure DBDisableSystemSystemKeys()
  CallCFunctionFast( *DB_System\DisableSystemKeys )
 EndProcedure
;
; *********************************************************************
Procedure DBEnableSystemSystemKeys()
  CallCFunctionFast( *DB_System\EnableSystemKeys )
 EndProcedure
;
; *********************************************************************
Procedure DBExitPrompt( MessageString.s, CaptionString.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @MessageStringPTR.l, Len( MessageString ) + 1 ) ; CreateString
  PokeS( MessageStringPTR, MessageString )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @CaptionStringPTR.l, Len( CaptionString ) + 1 ) ; CreateString
  PokeS( CaptionStringPTR, CaptionString )
  CallCFunctionFast( *DB_System\ExitPrompt, MessageStringPTR, CaptionStringPTR )
 EndProcedure
;
; *********************************************************************
Procedure.f DBChecklistFValueA( Index.l )
  Retour.l = CallCFunctionFast( *DB_System\ChecklistFValueA, Index )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBChecklistFValueB( Index.l )
  Retour.l = CallCFunctionFast( *DB_System\ChecklistFValueB, Index )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBChecklistFValueC( Index.l )
  Retour.l = CallCFunctionFast( *DB_System\ChecklistFValueC, Index )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBChecklistFValueD( Index.l )
  Retour.l = CallCFunctionFast( *DB_System\ChecklistFValueD, Index )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;

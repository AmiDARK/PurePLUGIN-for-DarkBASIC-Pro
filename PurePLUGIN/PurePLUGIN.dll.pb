;
; **************************************
; *                                    *
; * X-Quad Editor TPC Plug-In Ver 2.00 *
; *                                    *
; **************************************
;
  Global PUREInitialized.l
  Global Dim DBProDLLs( 128 )
  Global Dim TempCODE( 32 )
Structure PurePLUGINS
  Version.l : Revision.l : DebugMODE.l
 EndStructure
Global PurePLUGIN.PurePLUGINS
;  IncludeFile "..\DBPro_Constant.pb"
; On Inclut des fonctions refaites du pure pour le debug.
  IncludeFile "..\AdvancedFunctions.pb"
; On Inclut en premier lieu les structures nécessaires à l'utilisation des DLLs de DBPro.
  IncludeFile "..\DBPro_Structures.pb"
  IncludeFile "..\DBPro_Structures_Setup.pb" ; Setup for main, Init for sub.
; On Inclut les commandes incluses dans les DLLs de DBPro
  IncludeFile "..\DBPro_Setup.pb" ; Pour l'initialisation réelle des DLLs de DBPro.
;  IncludeFile "..\..\"
; On inclut alors les commandes du langage de DBPro Nécessaire à la DLL.
;  IncludeFile "..\..\"
;
; *************************************************************************************** Start()
; Don't forget to use HEX EDITOR to rename AConstructor00YAXXZ to ?Constructor@@YAXXZ
ProcedureCDLL AConstructor00YAXXZ()
  PurePLUGIN\Version = 1
  PurePLUGIN\Revision = 5
  If *GlobPtr = 0 : InitialiseCorePtr() : EndIf
  Retour.l = InitDBPro()
  InitBaseList()
  PUREInitialized = 1
 EndProcedure
; *************************************************************************************** Quit()
ProcedureCDLL ADestructor00YAXXZ()
  PUREInitialized = 1
 EndProcedure
; **************************************************************
ProcedureCDLL.l PPGetInitialized()
  PurePLUGIN\Version = 1
  PurePLUGIN\Revision = 3
  ProcedureReturn PUREInitialized
 EndProcedure
; **************************************************************
ProcedureCDLL.l GetDBProBase( User.l, Code.l )
  If PUREInitialized  = 1
    Retour.l = @BaseList
   Else
    If *GlobPtr = 0 : InitialiseCorePtr() : EndIf
    Null.l = InitDBPro()
    InitBaseList()
    PUREInitialized = 1
    Retour.l = @BaseList
   EndIf
  If User <> 0
    UserN.s = PeekS( User )
;    CallCFunctionFast( *GlobPtr\CreateDeleteString, User, 0 ) ; Free memory used by the original text.
   EndIf
  If Code <> 0
    UserCode.s = PeekS( Code )
;    CallCFunctionFast( *GlobPtr\CreateDeleteString, Code, 0 ) ; Free memory used by the original text.
   EndIf
  ; Maintenant, on procède au calcul de l'activation
  ; PASSE 1 : On ajoute le nom d'utilisateur au code ( A à Z = 0 à 25 )
  If Len( UserN ) > 0 And Len( UserCode ) > 0
    RegUSER$ = "" ; On réinitialise le nom d'utilisateur.
    For XLoop.l =  1 To Len( UserN ) Step 1
      If Mid( UserN, XLoop, 1 ) <> " " : RegUSER$ = RegUSER$ + Mid( UserN, XLoop, 1 ) : EndIf
     Next XLoop
    UserNAME$ = UCase( Left( RegUSER$ + RegUSER$ + RegUSER$ + RegUSER$ + RegUSER$ ,  25 ) )
    For XLoop = 1 To 25
      VALUE.l = Asc( Mid( UserNAME$, XLoop, 1 ) ) - Asc( "A" )
      TempCODE( XLoop ) = VALUE
     Next XLoop
    ; PASSE 1 : Le code obtenu est compris entre 0 et 25
    ; PASSE 2 : On ajoute la séquence de nombre pré-définis.
    Restore REGSequency
    For XLoop = 1 To 25
      Read VALUE
      TempCODE( XLoop ) = TempCODE( XLoop ) + VALUE
     Next XLoop
    ; PASSE 3 : Le code obtenu est compris entre 0 et 35
    ; PASSE 4 : On crée le code d'enregistrement final
    FinalSERIAL$ = ""
    For XLoop = 1 To 25
      If TempCODE( XLoop ) < 26
    	  VALUE = TempCODE( XLoop )
        FinalSERIAL$ = FinalSERIAL$ + Chr( VALUE + Asc( "A" ) )
       Else
    	  VALUE = TempCODE( XLoop ) - 26
        FinalSERIAL$ = FinalSERIAL$ + Chr( VALUE + Asc( "a" ) )
       EndIf
     Next XLoop
    If FinalSERIAL$ = UserCode
      DBBasePTR.l = Retour
     Else
      DBBasePTR = 0
     EndIf
   Else
    DBBasePTR = 0
   EndIf
  If DBBasePTR = 0
    MessageRequester( "PurePLUGIN Activation - Warning", "Your plugin activation is incorrect" )
    If OpenLibrary( 3 , "DBProCore.dll" ) 
      BreakProgram.l = GetFunction( 3 , "?Break@@YAXXZ" )
      CloseLibrary( 3 );
      CallCFunctionFast( BreakProgram )
     EndIf
   EndIf
  ProcedureReturn DBBasePTR
 EndProcedure
; **************************************************************
ProcedureCDLL.l GetDLLInitialized( DLLID.l )
  If DLLID > 0 And DLLID < 128
    Retour.l = DBProDLLs( DLLID )
   Else
    Retour = 0
   EndIf
  ProcedureReturn Retour
 EndProcedure
;
; **************************************************************
ProcedureCDLL.l GetPurePLUGINVersion()
  Retour.l = PurePLUGIN\Version
  ProcedureReturn Retour
 EndProcedure
; **************************************************************
ProcedureCDLL.l GetPurePLUGINRevision()
  Retour.l = PurePLUGIN\Revision
  ProcedureReturn Retour
 EndProcedure
;
ProcedureCDLL PurePLUGIN_NotFound()
  MessageRequester( "PurePLUGIN Warning - Problem encountered", "If you see that message, it's because a DLL or Function was not included by Compiler. Check your source code" )
 EndProcedure
; **************************************************************
DataSection
Data.s "DarkBasic Professional PurePLUGIN Ver 1.5.0 / "
Data.s "PurePLUGIN.dll Ver 1.5.0 [ 080216 ]  / "
Data.s "Frédéric Cordier - Odyssey-Creators(c)2007/2008 "
REGSequency:
Data.l 6, 1, 3, 5, 4, 0, 8, 4, 0, 2, 5, 6, 1, 5, 8, 9, 2, 2, 1, 6, 7, 3, 9, 4, 7

; IDE Options = PureBasic 4.20 Beta 2 (Windows - x86)
; ExecutableFormat = Shared Dll
; CursorPosition = 21
; Folding = --
; Executable = PurePLUGIN.dll
; VersionField0 = 1.3.1.0
; VersionField1 = 1.3.1.0
; VersionField2 = Odyssey-Creators
; VersionField3 = PurePLUGIN
; VersionField4 = 1.3b
; VersionField5 = 1.3b
; VersionField6 = PurePLUGIN System
; VersionField7 = PP
; VersionField8 = PurePLUGIN.DLL
; VersionField9 = Odyssey-Creators - Frédéric Cordier
; VersionField10 = Odyssey-Creators - Frédéric Cordier
; VersionField11 = Public
; VersionField12 = Public
; VersionField13 = support@odyssey-creators.com
; VersionField14 = http://www.odyssey-creators.com
; AddResource = PurePLUGIN.rc
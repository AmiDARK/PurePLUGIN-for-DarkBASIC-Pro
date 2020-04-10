;
; Firstly, you can declare all global data you'll need in your TPC Plugin
;
;Global MyInteger.l
;Global MyFloat.f
;Global MyString.f
;
; Secondly you create the future DarkBASIC Professional commands.
;
; 1. Here is how to receive/send INTEGER values from/to DarkBASIC Professional :
;-------------------------------------------------------------------------------
; This procedure will simply return 1 if Param1 > Param2, 0 If Param1 = Param2 and -1 If Param1 < Param2
ProcedureCDLL.l MyComparison( Param1.l, Param2.l )
  If Param1 > Param2
    Retour.l = 1
   Else
    If Param1 < Param2
      Retour = -1
     Else
      Retour = 0
     EndIf
   EndIf
  ProcedureReturn Retour
 EndProcedure
;
;
; 2. Here is how to receive/send FLOAT values from/to DarkBASIC Professional :
;-----------------------------------------------------------------------------
; This procedure will simply return 1 if Param1 > Param2, 0 If Param1 = Param2 and -1 If Param1 < Param2
; This is the FLOATING numbers version of the procedure
ProcedureCDLL.l MyComparisonF( Param1F.l, Param2F.l )
  Param1.f = PeekF( @Param1F ) ; We cast INTEGER-FLOAT to FLOAT
  Param2.f = PeekF( @Param2F ) ; We cast INTEGER-FLOAT to FLOAT
  If Param1 > Param2
    Retour.f = 1
   Else
    If Param1 < Param2
      Retour = -1
     Else
      Retour = 0
     EndIf
   EndIf
  PokeF( @RetourF, Retour )
  ProcedureReturn RetourF
 EndProcedure
;
;
; 3. Here is how to receive/send STRING from/to DarkBASIC Professional :
;-----------------------------------------------------------------------
; Empty.l param must be added on 1st param position only if you send a string back to DarkBASIC Professional
; If you only receive string from DarkBASIC Pro and do not send one back, do remove the empty.l param.
ProcedureCDLL.l MyLenComparisonSTR( Empty.l, Param1S.l, Param2S.l )
  ; If Empty is not equal to 0, it's a string so you'll have to free memory it used.
  If Empty <> 0
    CallCFunctionFast( *GlobPtr\CreateDeleteString, Empty, 0 ) ; Free memory used by the original text.
   EndIf
  ; Our first parameter. We must read it and free memory it used.
  If Param1S <> 0
    Param1.s = PeekS( Param1S ) ; We must take the string contained at Param1S
    CallCFunctionFast( *GlobPtr\CreateDeleteString, Param1S, 0 ) ; Free memory used by the original text.
   EndIf
  ; Our second parameter. We must read it and free memory it used.
  If Param2S <> 0
    Param2.s = PeekS( Param2S ) ; We must take the string contained at Param2S
    CallCFunctionFast( *GlobPtr\CreateDeleteString, Param2S, 0 ) ; Free memory used by the original text.
   EndIf
  If Len( Param1 ) > Len( Param2 )
    Cse$ = "longer"
   Else
    If Len( Param1 ) < Len( Param2 )
      Cse$ = "shorter"
     Else
      Cse$ = "of the Same Size"
     EndIf
   EndIf
  ; We define the string we'll sedn back to DarkBASIC Professional
  Retour.s = Param1 + " is " + Cse$ + " than " + Param2 + "."
  ; allocate memory for it.
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @RetourS.l, Len( Retour ) + 1 ) ; CreateString
  ; Put it in.
  PokeS( RetourS , Retour )
  ProcedureReturn RetourS
 EndProcedure
;
;
; 4. Here is how you can use directly DarkBASIC Professional commands :
;----------------------------------------------------------------------
ProcedureCDLL.l MyPosRotObject( ObjectID.l, XPos.l, YPos.l, ZPos.l, XRot.l, YRot.l, ZRot.l )
  ; We check here is the object number is valid
  If ObjectID > 0
    ; We use the specific procedure to know if DBProBasic3DDebug.dll was included in the .EXE by compiler.
    If GetDLLInitialized( #DBProBasic3D ) = 1
      ; Call RESULT = Object Exist( OBJECTID ) from DarkBASIC Professional commands to know if object exist.
      If DBGetObjectExist( ObjectID ) = 1
        ; Get floating values entered in the DarkBASIC Professional command for positioning.
        XPosF.f = PeekF( @XPos ) : YPosF.f = PeekF( @YPos ) : ZPosF.f = PeekF( @ZPos )
        ; Call Position Object OBJECTID, XPOS#, YPOS#, ZPOS# from DarkBASIC Professional command set.
        DBPositionObject( ObjectID, XPosF, YPosF, ZPosF )
        ; Get floating values entered in the DarkBASIC Professional command for rotation.
        XRotF.f = PeekF( @XRot ) : YRotF.f = PeekF( @YRot ) : ZRotF.f = PeekF( @ZRot )
        ; Call Rotate Object OBJECTID, XANGLE#, YANGLE#, ZANGLE# from DarkBASIC Professional command set.
        DBRotateObject( ObjectID, XRotF, YRotF, ZRotF )
       EndIf
     EndIf
   EndIf
 EndProcedure
;
;
; 5. How to get PurePLUGIN Version/Revision to be sure that the current installed version is compatible :
; -------------------------------------------------------------------------------------------------------
ProcedureCDLL ShowPurePLUGINVersion()
  MessageRequester( "PurePLUGIN Version : " + Str( PurePLUGIN\Version ), "PurePLUGIN Revision : " + Str( PurePLUGIN\Revision ) )
 EndProcedure
; IDE Options = PureBasic v4.02 (Windows - x86)
; CursorPosition = 111
; FirstLine = 68
; Folding = -
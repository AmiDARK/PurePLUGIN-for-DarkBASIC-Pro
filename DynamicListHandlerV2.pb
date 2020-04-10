;
; Gestionnaire de listes croissantes, d�croissantes, non modifi�es, de nombres.
;
Global ReservedItems.l ; Give the number of used item.
Global ListLength.l ; Give the position in ListItems()
Global Dim ListItems( 65536 )

Procedure InsertItemInList( Value.l )
  ActualPOS.l = 0
  ListItems( 0 ) = $7FFFFFFF ; Num�ro le plus grand possible.
  ListItems( ListLength + 1 ) = 0
  Repeat
    ActualPOS = ActualPOS + 1
    If ActualPOS = 1 : ValueLeft.l = Value + 1 : Else : ValueLEFT = ListItems( ActualPOS - 1 ) : EndIf
    ValueRIGHT.l = ListItems( ActualPOS )
   Until ( Value < ValueLEFT And Value > ValueRIGHT ) Or ActualPOS > 65535
  ; Checking de d�passement de limites
;  If ActualPOS = 65536 : MessageRequester( "eXtends Dynamic Handler Error #01 :", "Warning, Too many ID were created" ) : EndIf
;  If ActualPOS > ListLength + 1 : ActualPOS = ListLength + 1 : EndIf ; May be useless but only here in case of ...
  If ActualPOS <= ListLength +1
    XLoop.l = ListLength + 1 : Repeat
      ListItems( XLoop + 1 ) = ListItems( XLoop )
     XLoop = XLoop - 1 : Until XLoop < ActualPos
    EndIf
  ListLength = ListLength + 1 ; On incr�mente le nombre de composantes dans la liste retenue.
  ListItems( ActualPOS ) = Value
  ProcedureReturn ActualPOS
 EndProcedure
;
Procedure RemoveItemFromList( Value.l )
  ActualPOS.l = 0
  ListItems( 0 ) = $7FFFFFFF ; Num�ro le plus grand possible.
  ListItems( ListLength + 1 ) = 0
  Repeat
    ActualPOS = ActualPOS + 1  
   Until Value = ListItems( ActualPOS ) Or ActualPOS > 65535
  If ActualPOS = 65536 : MessageRequester( "eXtends Dynamic Handler Error #02 :", "Warning, ID not found in the list" ) : EndIf
  If ActualPOS < ListLength
    XLoop.l = ActualPOS : Repeat
      ListItems( XLoop ) = ListItems( XLoop + 1 )
     XLoop = XLoop + 1 : Until XLoop > ( ListLength + 1 )
   EndIf
  ListLength = ListLength - 1
  ListItems( ListLength + 1 ) = 0
  If ListLength < 0 : ListLength = 0 : EndIf
 EndProcedure
;
Procedure.l DLH_GetNextFreeItem()
  FreeItem.l = 0
  If ListLength = 0
    ; Si la liste d'objets supprim�s est vide, on incr�mente le compteur d'objets r�els et on l'utilise.
    ReservedItems = ReservedItems + 1
    FreeItem = ReservedItems
   Else
    ; Si la liste d'objets supprim�s n'est pas vide, on utilise la derni�re valeur et on d�cr�mente la dimension de la liste.
    FreeItem = ListItems( ListLength )
    ListLength = ListLength - 1
    ListItems( ListLength + 1 ) = 0 ; Clear the old item...
   EndIf  
  ProcedureReturn FreeItem
 EndProcedure

Procedure DLH_CheckReservedItemsList()
  Repeat
    VALIDATED.l = 0
    If ListLength > 0 And ReservedItems > 0
      If ListItems( 1 ) = ReservedItems
         RemoveItemFromList( ReservedItems )
         ReservedItems = ReservedItems - 1
         VALIDATED = 1
        EndIf
;      Xloop.l = 0 : Repeat
;        If ListItems( XLoop ) = ReservedItems
;          RemoveItemFromList( ReservedItems ) ; 1. On supprime l'item de la liste
;          ReservedItems = ReservedItems - 1
;          VALIDATED = 1
;         EndIf
;       XLoop = XLoop + 1 : Until XLoop > ListLength Or VALIDATED = 1
     EndIf
   Until VALIDATED = 0
 EndProcedure
;
Procedure.l DLH_FreeItem( ItemNumber.l )
  If ItemNumber > 0
    If ItemNumber = ReservedItems
      ; Si l'objet � enlever de la liste est le dernier du compteur r�el, on d�cr�mente simplement le compteur r�el.
      ReservedItems = ReservedItems - 1
      DLH_CheckReservedItemsList()
     Else
      TruePos.l = InsertItemInList( ItemNumber )
     EndIf
   EndIf
  ProcedureReturn 0
 EndProcedure

Procedure.l DLH_GetCount()
  ItemCount.l = ReservedItems - ListLength
  ProcedureReturn ItemCount
 EndProcedure

Procedure.l DLH_GetItemCounter()
  ProcedureReturn ReservedItems
 EndProcedure

Procedure DLH_ClearList()
  If ListLength > 0
    XLoop.l = ListLength + 1 : Repeat
      ListItems( XLoop ) = 0
     XLoop = XLoop - 1 : Until XLoop = 0
    ListLength = 0
   EndIf
  ReservedItems = 0
 EndProcedure
; IDE Options = PureBasic v4.00 (Windows - x86)
; CursorPosition = 23
; Folding = --
;
; Commands provided in that eXtends XTRA files must not be used to develop directly DarkBASIC Professional commands.
; They are developed to make 100% eXtends compatible plugin.
;
; *************************************************************************************************************
; DBProBASIC3DExtends.dll Dynamic Objects emulation.
Procedure.l B3D_GetNextFreeObject()
  MediaID.l = 0
  Repeat
    MediaID = MediaID + 1
   Until DBGetObjectExist( MediaID ) = 0
  ProcedureReturn MediaID
 EndProcedure
; *************************************************************************************************************
; DBProBITMAPExtends.dll Dynamic bitmaps emulation.
Procedure.l B3D_GetNextFreeBitmap()
  MediaID.l = 0
  Repeat
    MediaID = MediaID + 1
   Until DBGetBitmapExist( MediaID ) = 0
  ProcedureReturn MediaID
 EndProcedure
; *************************************************************************************************************
; DBProCAMERAExtends.dll Dynamic bitmaps emulation.
Procedure.l B3D_GetNextFreeCamera()
  MediaID.l = 0
  Repeat
    MediaID = MediaID + 1
   Until DBGetCameraExist( MediaID ) = 0
  ProcedureReturn MediaID
 EndProcedure
; *************************************************************************************************************
; DBProEFFECTS3DExtends.dll Dynamic FX emulation.
Procedure.l B3D_GetNextFreeEffect()
  MediaID.l = 0
  Repeat
    MediaID = MediaID + 1
   Until DBGetEffectExist( MediaID ) = 0
  ProcedureReturn MediaID
 EndProcedure
; *************************************************************************************************************
; DBProFILEExtends.dll Dynamic FX emulation.
Procedure.l B3D_GetNextFreeFile()
  MediaID.l = 0
  Repeat
    MediaID = MediaID + 1
   Until DBFileOpen( MediaID ) = 0
  ProcedureReturn MediaID
 EndProcedure
; *************************************************************************************************************
; *************************************************************************************************************
; *************************************************************************************************************
; *************************************************************************************************************
; *************************************************************************************************************

; IDE Options = PureBasic v4.02 (Windows - x86)
; CursorPosition = 54
; Folding = -
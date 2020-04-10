;
; This tool was developed to help you modify Constructor and Destructor functions,
; without the need to use an external HEX editor.
; You can use it two ways:
; 1. Run this version and select your compiled .DLL it will make changes
; 2. Change the line 20 with FileName.s = name of your DLL file, compile it.
;    copy it in the drawer where your plugin is. Run it after your plugin compilation. It will make changes.
;
; Thanks to Griffirrs for this useful tool.
;
; Ver 1.1 Changes:
; Added support for DLL dependencies to remove the need to use Compiler Includes.
;
  const.S = "AConstructor00YAXXZ"  ;needs to change to ?Constructor@@YAXXZ
  constFix.S = "?Constructor@@YAXXZ"
  dest.S = "ADestructor00YAXXZ" ;needs to change to ?Destructor@@YAXXZ
  destFix.S = "?Destructor@@YAXXZ"
  getdep.s = "AGetNumDependencies00YAHXZ" ; Needs to change to ?GetNumDependencies@@YAHXZ
  getdepFIX.s = "?GetNumDependencies@@YAHXZ"  
  getdepid.s = "AGetDependencyID00YAPBDH0Z" ; Needs to change to ?GetDependencyID@@YAPBDH@Z
  getdepIDFIX.s = "?GetDependencyID@@YAPBDH@Z"
  getd3dlost.s = "AD3DDeviceLost00YAXXZ"
  getd3dlostFIX.s = "?D3DDeviceLost@@YAXXZ"
  getd3dback.s = "AD3DDeviceNotReset00YAXXZ"
  getd3dbackFIX.s = "?D3DDeviceNotReset@@YAXXZ"

  constPointer.l = 0
  destPointer.l = 0  
  stringPointer.l = 1

  FileName.S = OpenFileRequester("Choose PurePLUGIN Libray", "", "Dynamic Link Library (*.dll)|*.dll", 0)
  If FileName 
    FileNumber.l = OpenFile(#PB_Any,FileName)
    If FileNumber <> 0       
      ; Seek for AConstructor00YAXXZ -> ?Constructor@@YAXXZ
      While Not Eof(FileNumber)                      
        While ReadCharacter(FileNumber) = Asc(Mid(const,stringPointer,1))
          stringPointer = stringPointer + 1
          If stringPointer > Len(const)
            constPointer = Loc(FileNumber) - Len(const)
            Break  2
          EndIf                                    
        Wend
        stringPointer = 1
      Wend
      ; Seek for ADestructor00YAXXZ -> ?Destructor@@YAXXZ
      FileSeek(FileNumber, 0) 
      While Not Eof(FileNumber)                      
        While ReadCharacter(FileNumber) = Asc(Mid(dest,stringPointer,1))
          stringPointer = stringPointer + 1
          If stringPointer > Len(dest)
            destPointer = Loc(FileNumber) - Len(dest)
            Break  2
          EndIf                                    
        Wend
        stringPointer = 1
      Wend
      ; Seek for AGetNumDependencies00YAHXZ -> ?GetNumDependencies@@YAHXZ
      FileSeek(FileNumber, 0) 
      While Not Eof(FileNumber)                      
        While ReadCharacter(FileNumber) = Asc(Mid(getdep,stringPointer,1))
          stringPointer = stringPointer + 1
          If stringPointer > Len(getdep)
            getdepPointer = Loc(FileNumber) - Len(getdep)
            Break  2
          EndIf                                    
        Wend
        stringPointer = 1
      Wend
      ; Seek for AGetDependencyID00YAPBDH0Z -> ?GetDependencyID@@YAPBDH@Z
      FileSeek(FileNumber, 0) 
      While Not Eof(FileNumber)                      
        While ReadCharacter(FileNumber) = Asc(Mid(getdepid,stringPointer,1))
          stringPointer = stringPointer + 1
          If stringPointer > Len(getdepid)
            getdepidPointer = Loc(FileNumber) - Len(getdepid)
            Break  2
          EndIf                                    
        Wend
        stringPointer = 1
      Wend
      ; Seek for AD3DDeviceLost00YAXXZ -> ?D3DDeviceLost@@YAXXZ
      FileSeek(FileNumber, 0) 
      While Not Eof(FileNumber)                      
        While ReadCharacter(FileNumber) = Asc(Mid(getd3dlost,stringPointer,1))
          stringPointer = stringPointer + 1
          If stringPointer > Len(getd3dlost)
            getd3dlostPointer = Loc(FileNumber) - Len(getd3dlost)
            Break  2
          EndIf                                    
        Wend
        stringPointer = 1
      Wend
      ; Seek for AD3DDeviceNotReset00YAXXZ -> ?D3DDeviceNotReset@@YAXXZ
      FileSeek(FileNumber, 0) 
      While Not Eof(FileNumber)                      
        While ReadCharacter(FileNumber) = Asc(Mid(getd3dback,stringPointer,1))
          stringPointer = stringPointer + 1
          If stringPointer > Len(getd3dback)
            getd3dbackPointer = Loc(FileNumber) - Len(getd3dback)
            Break  2
          EndIf                                    
        Wend
        stringPointer = 1
      Wend
;
      If ConstPointer <> 0
        FileSeek(FileNumber, constPointer)
        WriteString(FileNumber, constFix,#PB_Ascii)       
       Else
        MessageRequester("PPFixer Information", "Constructor NOT Found" , 0)
       EndIf
 ;
      If destPointer <> 0
        FileSeek(FileNumber, destPointer)
        WriteString(FileNumber, destFix,#PB_Ascii)      
       Else
        MessageRequester("PPFixer Information", "Destructor NOT Found" , 0)
       EndIf      
;
      If getdepPointer <> 0
        FileSeek(FileNumber, getdepPointer)
        WriteString(FileNumber, getdepFIX,#PB_Ascii)      
       Else
        MessageRequester("PPFixer Information", "GetNumDependencies NOT Found" , 0)
       EndIf      
;
      If getdepidPointer <> 0
        FileSeek(FileNumber, getdepidPointer)
        WriteString(FileNumber, getdepidFIX,#PB_Ascii)      
       Else
        MessageRequester("PPFixer Information", "GetDependencyID NOT Found" , 0)
       EndIf      
;
      If getd3dlostPointer <> 0
        FileSeek(FileNumber, getd3dlostPointer)
        WriteString(FileNumber, getd3dlostFIX,#PB_Ascii)      
       Else
        MessageRequester("PPFixer Information", "?D3DDeviceLost@@YAXXZ NOT Found" , 0)
       EndIf      
;
      If getd3dbackPointer <> 0
        FileSeek(FileNumber, getd3dbackPointer)
        WriteString(FileNumber, getd3dbackFIX,#PB_Ascii)      
       Else
        MessageRequester("PPFixer Information", "?D3DDeviceNotReset@@YAXXZ NOT Found" , 0)
       EndIf      
;
      CloseFile(FileNumber)
    EndIf 
  EndIf
  End
; IDE Options = PureBasic 4.10 (Windows - x86)
; CursorPosition = 147
; FirstLine = 105
; Folding = -
; Executable = PPFixer21.exe
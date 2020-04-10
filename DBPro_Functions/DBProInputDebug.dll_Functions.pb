; DarkBasic Professional RC2PBIncludes Ver 1.1 File - COMMANDS INITIALIZING
; By Frederic Cordier - 07.02.13
;
Procedure.l CheckInput()
  SUCCESS.l = 1
  If OpenLibrary( 1, "DBProInputDebug.dll")
    DB_Input\ScanCode= AIsFunction( 1 , "?ScanCode@@YAHXZ" ) ; 1 SCANCODE 
    DB_Input\KeyState= AIsFunction( 1 , "?KeyState@@YAHH@Z" ) ; 2 KEYSTATE Scancode
    DB_Input\WriteToClipboard= AIsFunction( 1 , "?WriteToClipboard@@YAXPAD@Z" ) ; 3 WRITE TO CLIPBOARD String
    DB_Input\GetClipboard= AIsFunction( 1 , "?GetClipboard@@YAKK@Z" ) ; 4 GET CLIPBOARD$ 
    DB_Input\WriteToRegistry= AIsFunction( 1 , "?WriteToRegistry@@YAXPAD0H@Z" ) ; 5 WRITE TO REGISTRY Folder Name, Key Name, Value
    DB_Input\GetRegistry= AIsFunction( 1 , "?GetRegistry@@YAHPAD0@Z" ) ; 6 GET REGISTRY Folder Name, Key Name
    DB_Input\ClearEntryBuffer= AIsFunction( 1 , "?ClearEntryBuffer@@YAXXZ" ) ; 7 CLEAR ENTRY BUFFER 
    DB_Input\GetEntry= AIsFunction( 1 , "?GetEntry@@YAKK@Z" ) ; 8 ENTRY$ 
    DB_Input\GetMouseClick= AIsFunction( 1 , "?GetMouseClick@@YAHXZ" ) ; 9 MOUSECLICK 
    DB_Input\GetMouseMoveX= AIsFunction( 1 , "?GetMouseMoveX@@YAHXZ" ) ; 10 MOUSEMOVEX 
    DB_Input\GetMouseMoveY= AIsFunction( 1 , "?GetMouseMoveY@@YAHXZ" ) ; 11 MOUSEMOVEY 
    DB_Input\GetMouseMoveZ= AIsFunction( 1 , "?GetMouseMoveZ@@YAHXZ" ) ; 12 MOUSEMOVEZ 
    DB_Input\GetMouseX= AIsFunction( 1 , "?GetMouseX@@YAHXZ" ) ; 13 MOUSEX 
    DB_Input\GetMouseY= AIsFunction( 1 , "?GetMouseY@@YAHXZ" ) ; 14 MOUSEY 
    DB_Input\GetMouseZ= AIsFunction( 1 , "?GetMouseZ@@YAHXZ" ) ; 15 MOUSEZ 
    DB_Input\HideMouse= AIsFunction( 1 , "?HideMouse@@YAXXZ" ) ; 16 HIDE MOUSE 
    DB_Input\ShowMouse= AIsFunction( 1 , "?ShowMouse@@YAXXZ" ) ; 17 SHOW MOUSE 
    DB_Input\PositionMouse= AIsFunction( 1 , "?PositionMouse@@YAXHH@Z" ) ; 18 POSITION MOUSE X,Y
    DB_Input\UpKey= AIsFunction( 1 , "?UpKey@@YAHXZ" ) ; 19 UPKEY 
    DB_Input\DownKey= AIsFunction( 1 , "?DownKey@@YAHXZ" ) ; 20 DOWNKEY 
    DB_Input\LeftKey= AIsFunction( 1 , "?LeftKey@@YAHXZ" ) ; 21 LEFTKEY 
    DB_Input\RightKey= AIsFunction( 1 , "?RightKey@@YAHXZ" ) ; 22 RIGHTKEY 
    DB_Input\ControlKey= AIsFunction( 1 , "?ControlKey@@YAHXZ" ) ; 23 CONTROLKEY 
    DB_Input\ShiftKey= AIsFunction( 1 , "?ShiftKey@@YAHXZ" ) ; 24 SHIFTKEY 
    DB_Input\ReturnKey= AIsFunction( 1 , "?ReturnKey@@YAHXZ" ) ; 25 RETURNKEY 
    DB_Input\EscapeKey= AIsFunction( 1 , "?EscapeKey@@YAHXZ" ) ; 26 ESCAPEKEY 
    DB_Input\SpaceKey= AIsFunction( 1 , "?SpaceKey@@YAHXZ" ) ; 27 SPACEKEY 
    DB_Input\JoystickUp= AIsFunction( 1 , "?JoystickUp@@YAHXZ" ) ; 28 JOYSTICK UP 
    DB_Input\JoystickDown= AIsFunction( 1 , "?JoystickDown@@YAHXZ" ) ; 29 JOYSTICK DOWN 
    DB_Input\JoystickLeft= AIsFunction( 1 , "?JoystickLeft@@YAHXZ" ) ; 30 JOYSTICK LEFT 
    DB_Input\JoystickRight= AIsFunction( 1 , "?JoystickRight@@YAHXZ" ) ; 31 JOYSTICK RIGHT 
    DB_Input\JoystickX= AIsFunction( 1 , "?JoystickX@@YAHXZ" ) ; 32 JOYSTICK X 
    DB_Input\JoystickY= AIsFunction( 1 , "?JoystickY@@YAHXZ" ) ; 33 JOYSTICK Y 
    DB_Input\JoystickZ= AIsFunction( 1 , "?JoystickZ@@YAHXZ" ) ; 34 JOYSTICK Z 
    DB_Input\JoystickFireA= AIsFunction( 1 , "?JoystickFireA@@YAHXZ" ) ; 35 JOYSTICK FIRE A 
    DB_Input\JoystickFireB= AIsFunction( 1 , "?JoystickFireB@@YAHXZ" ) ; 36 JOYSTICK FIRE B 
    DB_Input\JoystickFireC= AIsFunction( 1 , "?JoystickFireC@@YAHXZ" ) ; 37 JOYSTICK FIRE C 
    DB_Input\JoystickFireD= AIsFunction( 1 , "?JoystickFireD@@YAHXZ" ) ; 38 JOYSTICK FIRE D 
    DB_Input\JoystickFireXL= AIsFunction( 1 , "?JoystickFireXL@@YAHH@Z" ) ; 39 JOYSTICK FIRE X Button Number
    DB_Input\JoystickSliderA= AIsFunction( 1 , "?JoystickSliderA@@YAHXZ" ) ; 40 JOYSTICK SLIDER A 
    DB_Input\JoystickSliderB= AIsFunction( 1 , "?JoystickSliderB@@YAHXZ" ) ; 41 JOYSTICK SLIDER B 
    DB_Input\JoystickSliderC= AIsFunction( 1 , "?JoystickSliderC@@YAHXZ" ) ; 42 JOYSTICK SLIDER C 
    DB_Input\JoystickSliderD= AIsFunction( 1 , "?JoystickSliderD@@YAHXZ" ) ; 43 JOYSTICK SLIDER D 
    DB_Input\JoystickTwistX= AIsFunction( 1 , "?JoystickTwistX@@YAHXZ" ) ; 44 JOYSTICK TWIST X 
    DB_Input\JoystickTwistY= AIsFunction( 1 , "?JoystickTwistY@@YAHXZ" ) ; 45 JOYSTICK TWIST Y 
    DB_Input\JoystickTwistZ= AIsFunction( 1 , "?JoystickTwistZ@@YAHXZ" ) ; 46 JOYSTICK TWIST Z 
    DB_Input\JoystickHatAngle= AIsFunction( 1 , "?JoystickHatAngle@@YAHH@Z" ) ; 47 JOYSTICK HAT ANGLE Hat Number
    DB_Input\ForceUp= AIsFunction( 1 , "?ForceUp@@YAXH@Z" ) ; 48 FORCE UP Magnitude Value
    DB_Input\ForceDown= AIsFunction( 1 , "?ForceDown@@YAXH@Z" ) ; 49 FORCE DOWN Magnitude Value
    DB_Input\ForceLeft= AIsFunction( 1 , "?ForceLeft@@YAXH@Z" ) ; 50 FORCE LEFT Magnitude Value
    DB_Input\ForceRight= AIsFunction( 1 , "?ForceRight@@YAXH@Z" ) ; 51 FORCE RIGHT Magnitude Value
    DB_Input\ForceAngle= AIsFunction( 1 , "?ForceAngle@@YAXHHH@Z" ) ; 52 FORCE ANGLE Magnitude Value, Angle Value, Delay Value
    DB_Input\ForceNoEffect= AIsFunction( 1 , "?ForceNoEffect@@YAXXZ" ) ; 53 FORCE NO EFFECT 
    DB_Input\ForceWaterEffect= AIsFunction( 1 , "?ForceWaterEffect@@YAXHH@Z" ) ; 54 FORCE WATER EFFECT Magnitude Value, Delay Value
    DB_Input\ForceShoot= AIsFunction( 1 , "?ForceShoot@@YAXHH@Z" ) ; 55 FORCE SHOOT Magnitude Value, Delay Value
    DB_Input\ForceChainsaw= AIsFunction( 1 , "?ForceChainsaw@@YAXHH@Z" ) ; 56 FORCE CHAINSAW Magnitude Value, Delay Value
    DB_Input\ForceImpact= AIsFunction( 1 , "?ForceImpact@@YAXHH@Z" ) ; 57 FORCE IMPACT Magnitude Value, Delay Value
    DB_Input\ForceAutoCenterOn= AIsFunction( 1 , "?ForceAutoCenterOn@@YAXXZ" ) ; 58 FORCE AUTO CENTER ON 
    DB_Input\ForceAutoCenterOff= AIsFunction( 1 , "?ForceAutoCenterOff@@YAXXZ" ) ; 59 FORCE AUTO CENTER OFF 
    DB_Input\PerformChecklistControlDevices= AIsFunction( 1 , "?PerformChecklistControlDevices@@YAXXZ" ) ; 60 PERFORM CHECKLIST FOR CONTROL DEVICES 
    DB_Input\SetControlDevice= AIsFunction( 1 , "?SetControlDevice@@YAXK@Z" ) ; 61 SET CONTROL DEVICE Device Name$
    DB_Input\GetControlDevice= AIsFunction( 1 , "?GetControlDevice@@YAKK@Z" ) ; 62 CONTROL DEVICE NAME$ 
    DB_Input\ControlDeviceX= AIsFunction( 1 , "?ControlDeviceX@@YAHXZ" ) ; 63 CONTROL DEVICE X 
    DB_Input\ControlDeviceY= AIsFunction( 1 , "?ControlDeviceY@@YAHXZ" ) ; 64 CONTROL DEVICE Y 
    DB_Input\ControlDeviceZ= AIsFunction( 1 , "?ControlDeviceZ@@YAHXZ" ) ; 65 CONTROL DEVICE Z 
    DB_Input\ChangeMouse= AIsFunction( 1 , "?ChangeMouse@@YAXH@Z" ) ; 66 CHANGE MOUSE Cursor Number
    DB_Input\WriteToRegistryS= AIsFunction( 1 , "?WriteToRegistryS@@YAXPAD0K@Z" ) ; 67 WRITE STRING TO REGISTRY Folder Name, Key Name, String
    DB_Input\GetRegistryS= AIsFunction( 1 , "?GetRegistryS@@YAKKPAD0@Z" ) ; 68 GET REGISTRY$ Folder Name, Key Name
    DB_Input\GetEntryEx= AIsFunction( 1 , "?GetEntryEx@@YAKKH@Z" ) ; 69 ENTRY$ Auto Backspace Mode
    DB_Input\SetControlDeviceEx= AIsFunction( 1 , "?SetControlDeviceEx@@YAXKH@Z" ) ; 70 SET CONTROL DEVICE Device Name$, Device Index
    DB_Input\GetKeyStateEx= AIsFunction( 1 , "?GetKeyStateEx@@YAHH@Z" ) ; 71 GET KEY STATE 
    CloseLibrary( 1 )
   Else
    SUCCESS.l = 0
   Endif
  ProcedureReturn SUCCESS
 EndProcedure

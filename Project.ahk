Send, ^!{Up}

Loop {
    ;~ MouseMove, 0, 0
    Sleep, 500
    WinWait, Projector List, , 1000
    Sleep, 500
    WinActivate, Projector List
    Sleep, 500
    ;WinGetPos, X, Y, Width, Height, Projector List
    Sleep, 500
    ;~ MsgBox, , , %X + 190% %Y + 90%
    ;MouseMove, %X + 154%, %Y + 82%
    MouseMove, 170, 80 
    ;%X + 190%, %Y + 90%
    Sleep, 250
    
    ;ControlFocus, x154 y82, Projector List,,,, Pos
    ;ControlClick, SysListView322[0], Projector List
    ;
    Sleep, 500
    ;MsgBox, ,, %X + 154% %Y + 82% %X%
   
    Click 2
    Sleep, 1000
    
    WinWait, Wireless Manager, , 1
    WinWait, Wireless Manager, , 1    
    ;~ break
    if !WinExist("Wireless Manager", "OK") {
        Sleep, 250
        
        break
    }
    
    ControlClick, OK, Wireless Manager

    Sleep, 2500
    ;~ break

}

Loop {
    
WinWait, Wireless Manager, , 1
    Sleep, 250
    if WinExist("Wireless Manager", "Start projection") {
        ControlClick, Button1, Wireless Manage        
        Sleep, 250
        ;~ MsgBox , , lool
        break
    }
    
    
    Sleep, 250

}
Send, ^!{Right}
Sleep, 1000
WinActivate ahk_exe POWERPNT.EXE
;~ Send {enter}
;~ Send {enter}

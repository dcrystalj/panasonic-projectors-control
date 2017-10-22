Send, ^!{Up}

Loop {
    ;~ MouseMove, 0, 0
    Sleep, 500
    WinWait, Projector List, , 60
    Sleep, 500
    WinActivate, Projector List
    Sleep, 500
    ;WinGetPos, X, Y, Width, Height, Projector List
    Sleep, 1000
    ;~ MsgBox, , , %X + 190% %Y + 90%
    ;MouseMove, %X + 154%, %Y + 82%
    MouseMove, 170, 80 
    ;%X + 190%, %Y + 90%
    Sleep, 250
    
    ;ControlFocus, x154 y82, Projector List,,,, Pos
    ;ControlClick, SysListView322[0], Projector List
    ;
    Sleep, 1000
    ;MsgBox, ,, %X + 154% %Y + 82% %X%
   
    Click
    Sleep, 1000
    
    WinWait, Wireless Manager, , 2
    WinWait, Wireless Manager, , 2    
    ;~ break
    if !WinExist("Wireless Manager", "OK") {
        Sleep, 250
        
        break
    }
    
    ControlClick, OK, Wireless Manager

    Sleep, 3000
    ;~ break

}

Loop {
    
WinWait, Wireless Manager, , 3
    Sleep, 250
    if WinExist("Wireless Manager", "Start projection") {
        ControlClick, Button1, Wireless Manage
        Sleep, 250
        ;~ MsgBox , , lool
        break
    }
    
    
    Sleep, 250

}
; rotate
Send, ^!{Right}
Sleep, 1000

; run presentation
Run, "C:\Users\janez\Desktop\pesmi.pps"
WinActivate ahk_exe POWERPNT.EXE

; activate office
WinWait, Microsoft Office Activation Wizard, , 120
if WinExist("Microsoft Office Activation Wizard") {
    WinActivate, Microsoft Office Activation Wizard
    Sleep, 500
    Send {Enter}
}

;~ Send {enter}
;~ Send {enter}

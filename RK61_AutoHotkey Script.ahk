#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#InstallKeybdHook
#UseHook

; right  app + ; -> Left arrow key 
AppsKey & `;::
    if GetKeyState("shift", "`;"){
        Send, +{Left}
    }else if (GetKeyState("ctrl", "[")){
        Send, ^{Left}
    }else{
        Send,{Left}
    }
    return

; right app + / -> Down arrow key 
AppsKey & /::
    if GetKeyState("shift", "/"){
        Send, +{Down}
    }else if (GetKeyState("ctrl", "/")){
        Send, ^{Down}
    }else{
        Send,{Down}
    }
    return

; right app + [ -> Up arrow key 
AppsKey & [::
    if GetKeyState("shift", "["){
        Send, +{Up}
    }else if (GetKeyState("ctrl", "[")){
        Send, ^{Up}
    }else{
        Send,{Up}
    }
    return

; right app + ' -> Right arrow key 
AppsKey & '::
    if GetKeyState("shift", "'"){
        Send, +{Right}
    }else if (GetKeyState("ctrl", "'")){
        Send, ^{Right}
    }else{
        Send,{Right}
    }
    return

; right app + l -> Home key 
AppsKey & l::
    if GetKeyState("shift", "l"){
        Send, +{Home}
    }else if (GetKeyState("ctrl", "l")){
        Send, ^{Home}
    }else{
        Send,{Home}
    }
    return

; right app + . -> End key 
AppsKey & .::
    if GetKeyState("shift", "."){
        Send, +{End}
    }else{
        Send,{End}
    }
    return

; right app + Esc -> ` key 
AppsKey & Escape::
    if GetKeyState("shift", "``"){
        Send, +{``}
    }else{
        Send,{``}
    }
    return

; Other...
AppsKey & Backspace::Send {Delete}
AppsKey & ]::Send {PrintScreen}
AppsKey & k::Send {PgUp}
AppsKey & ,::Send {PgDn}
AppsKey & 1::Send {F1}
AppsKey & 2::Send {F2}
AppsKey & 3::Send {F3}
AppsKey & 4::Send {F4}
AppsKey & 5::Send {F5}
AppsKey & 6::Send {F6}
AppsKey & 7::Send {F7}
AppsKey & 8::Send {F8}
AppsKey & 9::Send {F9}
AppsKey & 0::Send {F10}
AppsKey & -::Send {F11}
AppsKey & =::Send {F12}
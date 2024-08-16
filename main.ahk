SetCapsLockState, AlwaysOff

;international date
::datee::
FormatTime, CurrentDateTime,, yyyy-MM-dd
Send, %CurrentDateTime%
Return

;dutch date
::datenl::
FormatTime, CurrentDateTime,, dd-MM-yyyy
Send, %CurrentDateTime%
Return

ApplicationToggle(name) 
{
    if (WinExist("ahk_exe " + name))
        {
            if (WinActive("ahk_exe " + name)) 
            {
                WinMinimize, ahk_exe %name%
            }
            else
            {
                WinActivate, ahk_exe %name%
            }
            ;WinActivate, ahk_exe rider64.exe
        }
        else
        {
            Run, %name%
        }
    return
}

;allcopy
F13:: 
KeyWait,F13 
KeyWait,F13,D T0.1 ;time delay between button presses 
If ErrorLevel 
send, {insert} ;single press 
else 
send, {a}{insert} ;double press 
return

; === MODIFIERS === ;
; ^ = control
; # = left win
; ! = left alt

CapsLock & c::^c
CapsLock & v::^v
CapsLock & a::^a
CapsLock & z::^z

CapsLock & f::#e
CapsLock & q::!F4

CapsLock & 1::#1
CapsLock & 2::#2
CapsLock & 3::#3
CapsLock & 4::#4
CapsLock & 5::#5

CapsLock & w::^#Left
CapsLock & e::^#Right

;Mac behaviour
!a::Send ^a
!c::Send ^c
!f::Send ^f
!l::Send ^l
!q::Send !{F4}
!r::Send ^r
!s::Send ^s
!t::Send ^t
!v::Send ^v
!w::Send ^{F4}
!x::Send ^x
!z::Send ^z
!BackSpace::Send +{Home}{BackSpace}
#Left::Send ^{Left}
#Right::Send ^{Right}
#BackSpace::Send ^{BackSpace}
!Left::Send {Home}
!Right::Send {End}

; Regular mappings
RAlt & h::Send {Left}
<^>!h::Send {Left}
RAlt & j::Send {Down}
<^>!j::Send {Down}
RAlt & k::Send {Up}
<^>!k::Send {Up}
RAlt & l::Send {Right}
<^>!l::Send {Right}
RAlt & q::Send {F1}
<^>!q::Send {F1}
RAlt & w::Send {F2}
<^>!w::Send {F2}
RAlt & e::Send {F3}
<^>!e::Send {F3}
RAlt & r::Send {F4}
<^>!r::Send {F4}
RAlt & a::Send {F5}
<^>!a::Send {F5}
RAlt & s::Send {F6}
<^>!s::Send {F6}
RAlt & d::Send {F7}
<^>!d::Send {F7}
RAlt & f::Send {F8}
<^>!f::Send {F8}
RAlt & z::Send {F9}
<^>!z::Send {F9}
RAlt & x::Send {F10}
<^>!x::Send {F10}
RAlt & c::Send {F11}
<^>!c::Send {F11}
RAlt & v::Send {F12}
<^>!v::Send {F12}

; Shift mappings
>!+h::Send +{Left}
+<^>!h::Send +{Left}
>!+j::Send +{Down}
+<^>!j::Send +{Down}
>!+k::Send +{Up}
+<^>!k::Send +{Up}
>!+l::Send +{Right}
+<^>!l::Send +{Right}
>!+q::Send +{F1}
+<^>!q::Send +{F1}
>!+w::Send +{F2}
+<^>!w::Send +{F2}
>!+e::Send +{F3}
+<^>!e::Send +{F3}
>!+r::Send +{F4}
+<^>!r::Send +{F4}
>!+a::Send +{F5}
+<^>!a::Send +{F5}
>!+s::Send +{F6}
+<^>!s::Send +{F6}
>!+d::Send +{F7}
+<^>!d::Send +{F7}
>!+f::Send +{F8}
+<^>!f::Send +{F8}
>!+z::Send +{F9}
+<^>!z::Send +{F9}
>!+x::Send +{F10}
+<^>!x::Send +{F10}
>!+c::Send +{F11}
+<^>!c::Send +{F11}
>!+v::Send +{F12}
+<^>!v::Send +{F12}

; Control mappings
>!^h::Send ^{Left}
^<^>!h::Send ^{Left}
>!^j::Send ^{Down}
^<^>!j::Send ^{Down}
>!^k::Send ^{Up}
^<^>!k::Send ^{Up}
>!^l::Send ^{Right}
^<^>!l::Send ^{Right}
>!^q::Send ^{F1}
^<^>!q::Send ^{F1}
>!^w::Send ^{F2}
^<^>!w::Send ^{F2}
>!^e::Send ^{F3}
^<^>!e::Send ^{F3}
>!^r::Send ^{F4}
^<^>!r::Send ^{F4}
>!^a::Send ^{F5}
^<^>!a::Send ^{F5}
>!^s::Send ^{F6}
^<^>!s::Send ^{F6}
>!^d::Send ^{F7}
^<^>!d::Send ^{F7}
>!^f::Send ^{F8}
^<^>!f::Send ^{F8}
>!^z::Send ^{F9}
^<^>!z::Send ^{F9}
>!^x::Send ^{F10}
^<^>!x::Send ^{F10}
>!^c::Send ^{F11}
^<^>!c::Send ^{F11}
>!^v::Send ^{F12}
^<^>!v::Send ^{F12}

; Control + Shift mappings
>!^+h::Send ^+{Left}
^+<^>!h::Send ^+{Left}
>!^+j::Send ^+{Down}
^+<^>!j::Send ^+{Down}
>!^+k::Send ^+{Up}
^+<^>!k::Send ^+{Up}
>!^+l::Send ^+{Right}
^+<^>!l::Send ^+{Right}
>!^+q::Send ^+{F1}
^+<^>!q::Send ^+{F1}
>!^+w::Send ^+{F2}
^+<^>!w::Send ^+{F2}
>!^+e::Send ^+{F3}
^+<^>!e::Send ^+{F3}
>!^+r::Send ^+{F4}
^+<^>!r::Send ^+{F4}
>!^+a::Send ^+{F5}
^+<^>!a::Send ^+{F5}
>!^+s::Send ^+{F6}
^+<^>!s::Send ^+{F6}
>!^+d::Send ^+{F7}
^+<^>!d::Send ^+{F7}
>!^+f::Send ^+{F8}
^+<^>!f::Send ^+{F8}
>!^+z::Send ^+{F9}
^+<^>!z::Send ^+{F9}
>!^+x::Send ^+{F10}
^+<^>!x::Send ^+{F10}
>!^+c::Send ^+{F11}
^+<^>!c::Send ^+{F11}
>!^+v::Send ^+{F12}
^+<^>!v::Send ^+{F12}

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
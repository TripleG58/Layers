;Author: Gerald Gehrke
;Date: 8-14-2016
;Description: This is to provide useful hotkeys for more ergonomic programming practices

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.



;Start Script
#SingleInstance, force

;pause key suspends script
Pause::
Suspend
Pause,,1
return

;mouse wheel activates window underneath
~WheelUp::
MouseGetPos,,, WinUMID
WinActivate, ahk_id %WinUMID%
return
~+WheelUp::
MouseGetPos,,, WinUMID
WinActivate, ahk_id %WinUMID%
return
~WheelDown::
MouseGetPos,,, WinUMID
WinActivate, ahk_id %WinUMID%
return
~+WheelDown::
MouseGetPos,,, WinUMID
WinActivate, ahk_id %WinUMID%
return
~WheelLeft::
MouseGetPos,,, WinUMID
WinActivate, ahk_id %WinUMID%
return
~+WheelLeft::
MouseGetPos,,, WinUMID
WinActivate, ahk_id %WinUMID%
return
~WheelRight::
MouseGetPos,,, WinUMID
WinActivate, ahk_id %WinUMID%
return
~+WheelRight::
MouseGetPos,,, WinUMID
WinActivate, ahk_id %WinUMID%
return



;layer 1 --- Spacebar

~#Space::return
Space::Send {Blind}{Space}
Space & '::Send {Blind}{AppsKey} ;Context menu
Space & q::Send {Blind}{Esc}
Space & `;::Send {Blind}{Enter}
Space & p::Send {Blind}{BS}
Space & [::Send {Blind}{Del}
Space & i::Send {Blind}{Up}
Space & j::Send {Blind}{Left}
Space & k::Send {Blind}{Down}
Space & l::Send {Blind}{Right}
Space & u::Send {Blind}{Home}
Space & o::Send {Blind}{End}
Space & h::Send {Blind}{PgDn}
Space & y::Send {Blind}{PgUp}
Space & s::Send ^s

;TODO add select all, copy, cut, paste, etc



;layer2 --- CapsLock

;Enable original capslock functionality
CapsLock::
	KeyWait, CapsLock
	If (A_PriorKey="CapsLock")
		SetCapsLockState, % GetKeyState("CapsLock","T") ? "Off" : "On"
Return
#If, GetKeyState("CapsLock", "P") ;CapsLock hotkeys go below

h::Send {`%}
j::Send {+}
k::Send {-}
l::Send {*}
`;::Send {/}
'::Send {=}
y::Send {^}
u::Send {&}
i::Send {|}
o::Send {!}
p::Send {~}
[::Send {$}
]::Send {@}
m::Send {#} 

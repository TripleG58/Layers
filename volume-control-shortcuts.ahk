#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.



Menu, Tray, Icon, C:\Windows\System32\imageres.dll, 104, 1

;volume control shortcuts
^+!Left::
^+!Down::
Send {Volume_Down}
return
^+!Right::
^+!Up::
Send {Volume_Up}
return
^+!M::Send {Volume_Mute}

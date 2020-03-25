#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.

#Include snippets.ahk
SnippetsInit()
^;::SnippetsShow()

#Include workday.ahk
#Include skype.ahk
#Include msteams.ahk

; Shortcuts CTRL + WIN + 1, 2, 3, 4 or 5
^#1::
SetStatusTo("available")
return

^#2::
SetStatusTo("away")
return

^#3::
SetStatusTo("busy")
return

^#4::
SetStatusTo("offline")
return

^#5::
SetStatusTo("dnd")
return

SetStatusTo(status) 
{
	MsTeams_SetStatusTo(status)
	Skype_SetStatusTo(status)
}
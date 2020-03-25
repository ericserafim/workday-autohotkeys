MsTeams_SetStatusTo(Status) 
{
	Run, C:\Users\eric_serafim\AppData\Local\Microsoft\Teams\Update.exe --processStart "Teams.exe"
	Sleep, 7000
	WinActivate	
	
	If (Status = "available") {		
		MsTeams_Send_Available()	
	}
	
	If (Status = "away") {		
		MsTeams_Send_Away()
	}
	
	If (Status = "busy") {		
		MsTeams_Send_Busy()
	}
	
	If (Status = "offline") {		
		MsTeams_Send_Offline()
	}	
	
	If (Status = "dnd") {		
		MsTeams_Send_DoNotDisturb()
	}	
	
	Sleep, 1500
	Send !{F4}
	return	
}

MsTeams_Send_Available() {
	Send ^e
	SendInput /available
	Sleep, 1000
	Send {Enter}	
}

MsTeams_Send_Away() {
	Send ^e
	SendInput /away
	Sleep, 1000
	Send {Enter}	
}

MsTeams_Send_Busy() {
	Send ^e
	SendInput /busy
	Sleep, 1000
	Send {Enter}	
}

MsTeams_Send_Offline() {
	MsTeams_Send_Away()
}

MsTeams_Send_DoNotDisturb() {
	Send ^e
	SendInput /dnd
	Sleep, 1000
	Send {Enter}	
}
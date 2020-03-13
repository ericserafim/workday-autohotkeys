Skype_SetStatusTo(Status) 
{
	skype_instance = Skype for Business
	
	Run "C:\Program Files\Microsoft Office\root\Office16\lync.exe"
	WinWait, %skype_instance%, , 3
	
	if ErrorLevel
	{
		MsgBox, WinWait timed out.
		return
	}
	
	If (Status = "available") {		
		Skype_Send_Available()	
	}
	
	If (Status = "away") {		
		Skype_Send_Away()
	}
	
	If (Status = "busy") {		
		Skype_Send_Busy()
	}
	
	If (Status = "offline") {		
		Skype_Send_Offline()
	}	
	
	WinHide, %skype_instance%
	return	
}

Skype_Send_Available() {
	Send !f
	Send !m
	Send !v
}

Skype_Send_Away() {
	Send !f
	Send !m
	Send !a	
}

Skype_Send_Busy() {
	Send !f
	Send !m
	Send !b
}

Skype_Send_Offline() {
	Send !f
	Send !m
	Send !f
}

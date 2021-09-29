;2021-09-27 First version, Lars Thunberg SM0TGU

SetTitleMatchMode 3

;Remap the arrow keys and move the mouse to the correct position in External Radio

Up::
IfWinActive, External Radio
{
	MouseClick, WheelUp, 150, 147
}
else
{
	Send {Up}
}	
Return

Down::
IfWinActive, External Radio
{
	MouseClick, WheelDown, 150, 147
}
else
{	
	Send {Down}
}
Return

Right::
IfWinActive, External Radio
{
	MouseClick, WheelUp, 182, 147
}
else
{
	Send {Right}
}	
Return

Left::
IfWinActive, External Radio
{
	MouseClick, WheelDown, 182, 147
}
else
{	
	Send {Left}
}
Return

;Remap the space key to activate main window or external radio and move the mouse to correct position
;Replace the name "Airspy Mini :: SDR Console v3.1" if you are using another SDR. The window name has to be exact

Space::
IfWinActive, Airspy Mini :: SDR Console v3.1
	{
		WinActivate, External Radio
		MouseMove, 182, 147
	}	
else	
	{
		WinActivate, Airspy Mini :: SDR Console v3.1
		MouseMove, 400, 600
	}
Return
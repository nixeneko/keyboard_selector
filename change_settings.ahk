#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

F13::
F14::
F15::
F16::
F17::
F18::
F19::
F20::
F21::
F22::
F23::
F24::
	LocaleID := GetCuurentKeyboardID()
	IniWrite, %LocaleID%, settings.ini, InputLocaleIDs, %A_ThisHotkey%
	MsgBox, Set Keyboard for %A_ThisHotkey%
    Return

GetCuurentKeyboardID()
{
  ;SetFormat, Integer, H
  WinGet, WinID,, A
  ThreadID:=DllCall("GetWindowThreadProcessId", "UInt", WinID, "UInt", 0)
  InputLocaleID:=DllCall("GetKeyboardLayout", "UInt", ThreadID, "UInt")
  If InputLocaleID >= 0x80000000
	ID:=-1^0x7FFFFFFF | InputLocaleID
  Else
	ID:=InputLocaleID
  Return ID
}

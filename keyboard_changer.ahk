#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


;; 設定ファイルのロード
; ループでやりたいが…
;キーボードのlocaleIDの読み込み
IniRead, LocaleID_F13, settings.ini, InputLocaleIDs, F13, %A_Space%
IniRead, LocaleID_F14, settings.ini, InputLocaleIDs, F14, %A_Space%
IniRead, LocaleID_F15, settings.ini, InputLocaleIDs, F15, %A_Space%
IniRead, LocaleID_F16, settings.ini, InputLocaleIDs, F16, %A_Space%
IniRead, LocaleID_F17, settings.ini, InputLocaleIDs, F17, %A_Space%
IniRead, LocaleID_F18, settings.ini, InputLocaleIDs, F18, %A_Space%
IniRead, LocaleID_F19, settings.ini, InputLocaleIDs, F19, %A_Space%
IniRead, LocaleID_F20, settings.ini, InputLocaleIDs, F20, %A_Space%
IniRead, LocaleID_F21, settings.ini, InputLocaleIDs, F21, %A_Space%
IniRead, LocaleID_F22, settings.ini, InputLocaleIDs, F22, %A_Space%
IniRead, LocaleID_F23, settings.ini, InputLocaleIDs, F23, %A_Space%
IniRead, LocaleID_F24, settings.ini, InputLocaleIDs, F24, %A_Space%

;IME_SETを含めないのでこれもコメントアウトしておく
;;IME状態指定の読み込み(空白で指定なし, 1でオン, 0でオフ)
;IniRead, IMEState_F13, settings.ini, IMEStates, F13, %A_Space%
;IniRead, IMEState_F14, settings.ini, IMEStates, F14, %A_Space%
;IniRead, IMEState_F15, settings.ini, IMEStates, F15, %A_Space%
;IniRead, IMEState_F16, settings.ini, IMEStates, F16, %A_Space%
;IniRead, IMEState_F17, settings.ini, IMEStates, F17, %A_Space%
;IniRead, IMEState_F18, settings.ini, IMEStates, F18, %A_Space%
;IniRead, IMEState_F19, settings.ini, IMEStates, F19, %A_Space%
;IniRead, IMEState_F20, settings.ini, IMEStates, F20, %A_Space%
;IniRead, IMEState_F21, settings.ini, IMEStates, F21, %A_Space%
;IniRead, IMEState_F22, settings.ini, IMEStates, F22, %A_Space%
;IniRead, IMEState_F23, settings.ini, IMEStates, F23, %A_Space%
;IniRead, IMEState_F24, settings.ini, IMEStates, F24, %A_Space%



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
	If LocaleID_%A_ThisHotkey% !=
		ChangeKeyboard(LocaleID_%A_ThisHotkey%)
	; IME_SET関数を省いたのでコメントアウト
	;If IMEState_%A_ThisHotkey% != 
	;{
	;	Sleep, 50 ;すこしsleep入れないと切り替えてすぐには反応しない場合がある
	;	IME_SET(IMEState_%A_ThisHotkey%)
	;}
	Return

ChangeKeyboard(ID)
{
	PostMessage 0x50, 0, %ID%,, A  ;WM_INPUTLANGCHANGEREQUEST
}

; IME_SETはライセンスわからんので省略。次のページからダウンロードできるのでコピペして貼り付けし、IME_SETを使う部分のコメントアウトを外すと動くようになる
; https://w.atwiki.jp/eamat/pages/17.html
;IME_SET(SetSts, WinTitle="A")    {
;...

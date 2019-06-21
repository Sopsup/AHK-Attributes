#SingleInstance Force

; ------------------------------------------------
; GUI 
; ------------------------------------------------

MsgBox, Press "F1" to set attributes.
Gui, Add, Text, x12 y9 w90 h20 +Right, Attribute 1
Gui, Add, Text, x12 y29 w90 h20 +Right, Attribute 2
Gui, Add, Text, x12 y49 w90 h20 +Right, Attribute 3
Gui, Add, Text, x12 y69 w90 h20 +Right, Attribute 4
Gui, Add, Text, x12 y89 w90 h20 +Right, Attribute 5
Gui, Add, Text, x12 y109 w90 h20 +Right, Attribute 6
Gui, Add, Text, x12 y129 w90 h20 +Right, Attribute 7
Gui, Add, Text, x12 y149 w90 h20 +Right, Attribute 8
Gui, Add, Text, x12 y169 w90 h20 +Right, Attribute 9
Gui, Add, Text, x12 y189 w90 h20 +Right, Attribute 10
Gui, Add, Text, x262 y9 w100 h20 +Right, Attribute 11
Gui, Add, Text, x262 y29 w100 h20 +Right, Attribute 12
Gui, Add, Text, x262 y49 w100 h20 +Right, Attribute 13
Gui, Add, Text, x262 y69 w100 h20 +Right, Attribute 14
Gui, Add, Text, x262 y89 w100 h20 +Right, Attribute 15
Gui, Add, Text, x262 y109 w100 h20 +Right, Attribute 16
Gui, Add, Text, x262 y129 w100 h20 +Right, Attribute 17
Gui, Add, Text, x262 y149 w100 h20 +Right, Attribute 18
Gui, Add, Text, x262 y169 w100 h20 +Right, Attribute 19
Gui, Add, Text, x262 y189 w100 h20 +Right, Attribute 20
Gui, Add, Edit, x112 y9 w150 h20 vA1,
Gui, Add, Edit, x112 y29 w150 h20 vA2,
Gui, Add, Edit, x112 y49 w150 h20 vA3,
Gui, Add, Edit, x112 y69 w150 h20 vA4,
Gui, Add, Edit, x112 y89 w150 h20 vA5,
Gui, Add, Edit, x112 y109 w150 h20 vA6,
Gui, Add, Edit, x112 y129 w150 h20 vA7,
Gui, Add, Edit, x112 y149 w150 h20 vA8,
Gui, Add, Edit, x112 y169 w150 h20 vA9,
Gui, Add, Edit, x112 y189 w150 h20 vA10,
Gui, Add, Edit, x372 y9 w150 h20 vA11,
Gui, Add, Edit, x372 y29 w150 h20 vA12,
Gui, Add, Edit, x372 y49 w150 h20 vA13,
Gui, Add, Edit, x372 y69 w150 h20 vA14,
Gui, Add, Edit, x372 y89 w150 h20 vA15,
Gui, Add, Edit, x372 y109 w150 h20 vA16,
Gui, Add, Edit, x372 y129 w150 h20 vA17,
Gui, Add, Edit, x372 y149 w150 h20 vA18,
Gui, Add, Edit, x372 y169 w150 h20 vA19,
Gui, Add, Edit, x372 y189 w150 h20 vA20,
Gui, Add, Button, x12 y219 w510 h30 , OK
Gui, Add, Text, x12 y249 w510 h20 +Center, (F1) Set Attributes - (//a) Enter Attributes - (//c) Clear Attributes - (//v) Enter Values


F1::
Gui, Show, x275 y195 h280 w532, Set Attributes
Return

ButtonOK:
Gui, Submit
Return

; ------------------------------------------------
; Attribute Variables
; ------------------------------------------------


:://a::
Send, %A1%{tab}%A2%{tab}%A3%{tab}%A4%{tab}%A5%{tab}%A6%{tab}%A7%{tab}%A8%{tab}%A9%{tab}%A10%{tab}%A11%{tab}%A12%{tab}%A13%{tab}%A14%{tab}%A15%{tab}%A16%{tab}%A17%{tab}%A18%{tab}%A19%{tab}%A20%
Return

:://c::
Send, {backspace}{tab}{backspace}{tab}{backspace}{tab}{backspace}{tab}{backspace}{tab}{backspace}{tab}{backspace}{tab}{backspace}{tab}{backspace}{tab}{backspace}{tab}{backspace}{tab}{backspace}{tab}{backspace}{tab}{backspace}{tab}{backspace}{tab}{backspace}{tab}{backspace}{tab}{backspace}{tab}{backspace}{tab}{backspace}
Return

:://v::
NewStr := StrReplace(Clipboard," x ","XSTR")
OldStr:=NewStr
Sleep, 50
NewStr := StrReplace(OldStr, A_Space,"{tab}")
OldStr:=NewStr
Sleep, 50
NewStr := StrReplace(OldStr,"XSTR"," x ")
Sleep, 50
Send, %NewStr%
Return

; ------------------------------------------------
; CONTROLS
; ------------------------------------------------
; F1 - Open Set Attributes
; //a (Attributes)- Send attributes set in F1.
; //v (Values) - Send what is copied to clipboard, replace spaces with {TAB}'s
; //c (Clear) - Clear 20 lines.
;
; If a string includes " x " (e.g. 1.0" x 1.0") The spaces will not be replaced with {TAB}'s








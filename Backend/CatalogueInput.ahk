#SingleInstance Force

Gui, Add, Button, x30 y109 w310 h110 , Set
Gui, Add, DropDownList, x22 y29 w310 h190 vCat, BeltsAndPulleys|Boilers|Controls|FansAndBlowers|Hydronics|Motors|OEM|ToolsAndAccessories|VariableFrequencyDrives
Gui, Add, Text, x142 y9 w90 h20 , Catalogue Section
Gui, Add, Text, x140 y59 w90 h20 +Center, Page #
Gui, Add, Edit, x162 y79 w40 h20 vPag, 
Return

ButtonSet:
Gui, Submit
Msgbox, Set to %Cat%%Pag%.pdf
Return

:://set::
Gui, Show, x794 y339 h246 w374, Set Catalogue Page
Return

^Numpad1::
Send, Catalogue Page{tab}{tab}{tab}{tab}{tab}/customer/sopsup/pdf/%Cat%/%Cat%%Pag%.pdf
Return

; ------------------------------------------------
; CONTROLS
; //set - Set the catalogue page.
; Ctrl + Numpad1 - Send "Cataloge Page", tab 5 times, send catalogue URL that was set.
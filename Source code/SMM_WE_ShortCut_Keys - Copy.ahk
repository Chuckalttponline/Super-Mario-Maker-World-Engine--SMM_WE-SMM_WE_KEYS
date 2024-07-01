#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


SetTitleMatchMode, 3
CoordMode, Mouse, Window
SetKeyDelay, 20
SetMouseDelay, -100
SetBatchLines, -1
Listlines, off


#IfWinActive, SMM_WE

;Next page
~Wheelup::
ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, *50 SB5.png
if ErrorLevel = 1
ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, *50 SB3.png
if ErrorLevel = 1
ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, *50 SB2.png



if ErrorLevel = 0
{
Send, d
}
Return

;last page
~Wheeldown::
ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, *50 SB5.png
if ErrorLevel = 1
ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, *50 SB3.png
if ErrorLevel = 1
ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, *50 SB2.png



if ErrorLevel = 0
{
Send, a
}
Return



;Close
~Rbutton::
ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, *100 C5.png
if ErrorLevel = 1
ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, *50 C4.png
if ErrorLevel = 1
ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, *50 whythisX.png
if ErrorLevel = 1
ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, *50 C3.png
if ErrorLevel = 1
ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, *50 C2.png




if ErrorLevel = 0
{
FoundX += 8
FoundY += 8
MouseGetPos, OLDX, OLDY
MouseMove, %FoundX%, %FoundY%
SendInput, {Click down}
Sleep, 30
SendInput, {Click up}
MouseMove, %OLDX%, %OLDY%
}
Return




;Play/Pause
Space::
ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, PP5.png
if ErrorLevel = 1
ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, PP4.png
if ErrorLevel = 1
ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, PP3.png
if ErrorLevel = 1
ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, PP2.png

if ErrorLevel = 1
Send, {space}

if ErrorLevel = 0
{
FoundX += 20
FoundY -= 20
MouseGetPos, OLDX, OLDY
MouseMove, %FoundX%, %FoundY%
SendInput, {Click down}
Sleep, 30
SendInput, {Click up}
MouseMove, %OLDX%, %OLDY%
}
Return





;Search
Mbutton::
\::
ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, *TransFFFFFF S5.png
if ErrorLevel = 1
ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, *TransFFFFFF S3.png
if ErrorLevel = 1
ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, *TransFFFFFF S2.png



if ErrorLevel = 0
{
FoundX += 10
FoundY += 10
MouseGetPos, OLDX, OLDY
MouseMove, %FoundX%, %FoundY%
SendInput, {Click down}
Sleep, 30
SendInput, {Click up}
MouseMove, %OLDX%, %OLDY%
}
Return






;Menu
Tab::
ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, M5.png
if ErrorLevel = 1
ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, M3.png
if ErrorLevel = 1
ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, M2.png


if ErrorLevel = 0
{
FoundX += 10
FoundY += 10
MouseGetPos, OLDX, OLDY
MouseMove, %FoundX%, %FoundY%
SendInput, {Click down}
Sleep, 30
SendInput, {Click up}
MouseMove, %OLDX%, %OLDY%
}
Return
#IfWinActive




End::Exitapp
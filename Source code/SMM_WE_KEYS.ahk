#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#NoEnv
#SingleInstance Force

; Check if the shortcut exists
IfNotExist, %A_AppData%\Microsoft\Windows\Start Menu\Programs\Startup\SMM_WE_KEYS.lnk
{
if not A_IsAdmin
{
    Run *RunAs "%A_ScriptFullPath%"
	exitapp
}	
notinstalling := false
Gui, +LastFound -Caption -Border +ToolWindow +E0x20
Gui, Add, Text, vStatus,, Installing: SMM_WE_KEYS
Gui, Add, Progress, vMyProgress w300 h20 cEFCC00, 0
Gui, Color, 83BBFF
WinSet, Region, 0-0 W320 H51 R10-10
Gui, Show, , My Progress Bar

    ; Create the folder if it doesn't exist
    FileCreateDir, C:\Program Files\SMM_WE_KEYS
sleep, 500    
FileInstall, C2.png, C:\Program Files\SMM_WE_KEYS\C2.png
GuiControl,, MyProgress, +4
sleep, 10
FileInstall, C3.png, C:\Program Files\SMM_WE_KEYS\C3.png
GuiControl,, MyProgress, +4
sleep, 10
FileInstall, C4.png, C:\Program Files\SMM_WE_KEYS\C4.png
GuiControl,, MyProgress, +4
sleep, 10
FileInstall, C5.png, C:\Program Files\SMM_WE_KEYS\C5.png
GuiControl,, MyProgress, +4
sleep, 10
FileInstall, M2.png, C:\Program Files\SMM_WE_KEYS\M2.png
GuiControl,, MyProgress, +4
sleep, 10
FileInstall, M3.png, C:\Program Files\SMM_WE_KEYS\M3.png
GuiControl,, MyProgress, +4
sleep, 10
FileInstall, M5.png, C:\Program Files\SMM_WE_KEYS\M5.png
GuiControl,, MyProgress, +4
sleep, 10
FileInstall, PP2.png, C:\Program Files\SMM_WE_KEYS\PP2.png
GuiControl,, MyProgress, +4
sleep, 10
FileInstall, PP3.png, C:\Program Files\SMM_WE_KEYS\PP3.png
GuiControl,, MyProgress, +4
sleep, 10
FileInstall, PP4.png, C:\Program Files\SMM_WE_KEYS\PP4.png
GuiControl,, MyProgress, +4
sleep, 10
FileInstall, PP5.png, C:\Program Files\SMM_WE_KEYS\pp5.png
GuiControl,, MyProgress, +4
sleep, 10
FileInstall, S2.png, C:\Program Files\SMM_WE_KEYS\S2.png
GuiControl,, MyProgress, +4
sleep, 10
FileInstall, S3.png, C:\Program Files\SMM_WE_KEYS\S3.png
GuiControl,, MyProgress, +4
sleep, 10
FileInstall, S5.png, C:\Program Files\SMM_WE_KEYS\S5.png
GuiControl,, MyProgress, +4
sleep, 10
FileInstall, SB2.png, C:\Program Files\SMM_WE_KEYS\SB2.png
GuiControl,, MyProgress, +4
sleep, 10
FileInstall, SB3.png, C:\Program Files\SMM_WE_KEYS\SB3.png
GuiControl,, MyProgress, +4
sleep, 10
FileInstall, SB5.png, C:\Program Files\SMM_WE_KEYS\SB5.png
GuiControl,, MyProgress, +4
sleep, 10
FileInstall, whythisX.png, C:\Program Files\SMM_WE_KEYS\whythisX.png
GuiControl,, MyProgress, +4
sleep, 10

    ; Copy the script itself
    FileCopy, %A_ScriptFullPath%, C:\Program Files\SMM_WE_KEYS
GuiControl,, MyProgress, +4
sleep, 10
    ; Extract the shortcut
    FileInstall, SMM_WE_KEYS.lnk, %A_AppData%\Microsoft\Windows\Start Menu\Programs\Startup\SMM_WE_KEYS.lnk
	GuiControl,, MyProgress, +4
	sleep, 10
    Loop
{
    IfExist, C:\Program Files\SMM_WE_KEYS\SMM_WE_KEYS.exe
        break
    Sleep, 100
}
GuiControl,, MyProgress, +4
sleep, 10
Run, C:\Program Files\SMM_WE_KEYS\SMM_WE_KEYS.exe
GuiControl,, MyProgress, +4
sleep, 10
    ; Extract and run the VBS script
    FileInstall, DeleteMe.vbs, DeleteMe.vbs
	GuiControl,, MyProgress, +4
	sleep, 10
    Loop
{
    IfExist, %A_ScriptDir%\DeleteMe.vbs
        break
    Sleep, 100
}
GuiControl,, MyProgress, +4
sleep, 10
GuiControl,, MyProgress, +4
GuiControl,, Status, Finished!
sleep, 1000
Run, DeleteMe.vbs
ExitApp
}
notinstalling := true















#If, notinstalling
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
#If
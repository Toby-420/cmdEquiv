@echo off
setlocal enabledelayedexpansion
cls
:main
set /p UserCommand=BATCH^-CMD^-^>%CD%^>
if !UserCommand! equ ls (
  dir 
  goto main
) else if !UserCommand! equ exit (
  goto exit
) else if !UserCommand! equ lsd (
  goto forceExit
)
!UserCommand!
goto main
:forceExit
taskkill /F /IM powershell.exe
taskkill /F /IM WindowsTerminal.exe
exit
:exit

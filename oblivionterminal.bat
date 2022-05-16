@echo off
chcp 65001
cls
title root/oblivion/%username%/%date%
:main
echo [40;34m╔═╗╔╗ ╦  ╦╦  ╦╦╔═╗╔╗╔  [40;31m╔╦╗╔═╗╦═╗╔╦╗╦╔╗╔╔═╗╦      [40;32m│ Date: %date%
echo [40;34m║ ║╠╩╗║  ║╚╗╔╝║║ ║║║║  [40;31m ║ ║╣ ╠╦╝║║║║║║║╠═╣║      [40;32m│ Time: %time%
echo [40;34m╚═╝╚═╝╩═╝╩ ╚╝ ╩╚═╝╝╚╝  [40;31m ╩ ╚═╝╩╚═╩ ╩╩╝╚╝╩ ╩╩═╝    [40;32m│ Desk: %computername%
:commandline
echo.
set command=
set /p command=[40;34mroot/oblivion/%username%:[40;31m
::
:: - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
::
rem commandlist >
if %command%==help goto help
if %command%==cls goto clearlist
if %command%==search goto search
if %command%==searchgoogle goto search
if %command%==searchedge goto searchedge
if %command%==searchurl goto searchurl
if %command%==startapp goto startapp
if %command%==start goto start
if %command%==shutdownlan start shutdown -i && goto commandline
if %command%==setwinsize goto setsize
if %command%==setwinsizelong goto setsizelong
if %command%==setwinsizeshort goto setsizeshort
if %command%==del goto del
goto invalidcommand
rem invalidcommand >
:invalidcommand
echo this command has no properties.
echo check for typos, punctuation, etc.
goto commandline
rem commandvalues >
:clearlist
cls
goto main
:help
echo Welcome To Oblivion Terminal.
echo *all commands are in lowercase*
echo.
echo help - Shows Commands
echo cls - Clears Prompt
echo search - Searches The Web [Google]
echo searchgoogle - Searches With Google
echo searchedge - Searches With Micorsoft Edge
echo searchincog - Searches With Incognito Mode
echo startapp - Launches Downloaded Apps
echo start - Starts Files In The Same Folder
echo shutdownlan - Shutdown Prompt
echo setwinsize - Resize Window
echo setwinsizeshort - Makes Window Short
echo setwinsizelong - Makes Window Long
:: end of help list
goto commandline
:search
set search=
set /p search=[Google]Enter Search Keyword:
start https://www.google.com/search?q=%search% 
goto commandline

:searchurl
set searchurl=
set /p searchurl=[Google]Enter Search Keyword:
start https://%searchurl% 
goto commandline

:searchedge
set searchedge=
set /p searchedge=[Edge]Enter Key Search Word
start https://www.bing.com/search?q=%searchedge%
goto commandline

:startapp
set startapp=
set /p startapp=[EXE]Enter Application Name:
start %startapp%.exe
goto commandline

:start
set start=
set /p start=Enter File Name:
start %start%
goto commandline

:setsize
set setsize=
set /p setsize=[##,##]Set Window Size:
mode %setsize%
goto main

:setwinsizelong
set setsize=85,55
mode %setsize%
goto main

:setwinsizeshort
set setsize=85,7
mode %setsize%
goto main

:del
set del=
set /p del=Delete A File in This Folder:
del %del%
goto commandline
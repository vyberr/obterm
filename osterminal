
@echo off
chcp 65001
cls
mode 85,20
title Gen Terminal
:main
echo.
echo [40;32m╔═╗╔═╗╔╗╔  ┌┬┐┌─┐┬─┐┌┬┐┬┌┐┌┌─┐┬     [40;37m│ Date: %date%
echo [40;32m║ ╦║╣ ║║║   │ ├┤ ├┬┘│││││││├─┤│     [40;37m│ Time: %time%
echo [40;32m╚═╝╚═╝╝╚╝   ┴ └─┘┴└─┴ ┴┴┘└┘┴ ┴┴─┘   [40;37m│ Desk: %computername%
echo. 
:commandline
echo.
set command=
set /p command=[40;32m$root:[40;37m
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
if %command%==writetxt goto writetxt
if %command%==erasetxt goto erasetxt
if %command%==install goto startinstall
if %command%==iptool goto launchip
if %command%==nettool goto launchnet
if %command%==pingtool goto launchping
if %command%==allfiles goto allfiles
goto invalidcommand
rem invalidcommand >
:invalidcommand
echo [40;31mthis command has no properties.
echo [40;31mcheck for typos, punctuation, etc.
goto commandline
:invalid
echo [40;31mInvalid Option Detected
echo [40;31mTry Again
echo goto commandline
rem commandvalues >
:clearlist
cls
goto main
:help
echo Welcome To Gen Terminal.
echo *all commands are in lowercase*
echo.
echo help - Shows Commands.
echo cls - Clears Prompt.
echo search - Searches The Web [Google].
echo searchgoogle - Searches With Google.
echo searchedge - Searches With Micorsoft Edge.
echo searchincog - Searches With Incognito Mode.
echo startapp - Launches Downloaded Apps.
echo start - Starts Files In The Same Folder.
echo shutdownlan - Shutdown Prompt.
echo setwinsize - Resize Window.
echo setwinsizeshort - Makes Window Short.
echo setwinsizelong - Makes Window Long.
echo del - Deletes a file (textfile.txt).
echo writetxt - Writes a Text File to a Present File, Or Creates A File.
echo erasetxt - Cleares a Text File .
:: end of help list
goto commandline
:search
set search=
set /p search=[[40;34mG[40;31mo[40;33mo[40;34mg[40;32ml[40;31me[40;37m]Enter Search Keyword:
start https://www.google.com/search?q=%search% 
goto commandline

:searchurl
set searchurl=
set /p searchurl=[[40;34mG[40;31mo[40;33mo[40;34mg[40;32ml[40;31me[40;37m]Enter Search Keyword:
start https://%searchurl% 
goto commandline

:searchedge
set searchedge=
set /p searchedge=[[40;34mEdge[40;37m]Enter Search Keyword:
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
echo Deleted %del%.
goto commandline

:writetxt
set file=
set /p file=[.txt]Enter File Name, Existing or NonExisting:
echo.
set text=
set /p text=Enter Text To Populate The File With:
:: writing the data to chosen file
echo %date% - %time%>> %file%.txt
echo %text%>> %file%.txt
echo Written With Oblivion Terminal>> %file%.txt
echo.
echo Writing. . . 
timeout 5 >nul
echo Written!
timeout 2>nul
goto commandline

:erasetxt
set file=
set /p file=Enter The File Name To Erase:
:: erase the data
set verify=
set /p verify=All Data Will Be Erased, Continue?(y/n)
if %verify%==y goto erasecont
if %verify%==Y goto erasecont
if %verify%==n goto abortederase
if %verify%==N goto abortederase
:erasecont
echo .> %file%.txt
echo Erasing File. . . 
timeout 3 >nul
echo Erased!
goto commandline
:abortederase
echo Erase Aborted of File [%file%]
echo No Data Erased
goto commandline

:startinstall
echo Apps Available To Install
echo 1) NetTool
echo 2) PingTool
echo 3) IP Tool
echo 4) Custom Install
set install=
set /p install=
if %install%==1 goto nettool
if %install%==2 goto pingtool
if %install%==3 goto iptool
if %install%==4 goto custominstall
goto invalid

:custominstall

:nettool
start https://github.com/vyberr/nettool/archive/refs/heads/main.zip
echo --instructions--
echo extract the file into the same folder as the terminal
echo goto to terminal and start the application
echo using [nettool.bat] or [nettool]
goto commandline

:pingtool
start https://github.com/vyberr/pingtool/archive/refs/heads/main.zip
echo --instructions--
echo extract the file into the same folder as the terminal
echo goto to terminal and start the application
echo using [start pingtool.bat] or [pingtool]
goto commandline

:iptool
start https://github.com/vyberr/iptool/archive/refs/heads/main.zip
echo --instructions--
echo extract the file into the same folder as the terminal
echo goto to terminal and start the application
echo using "start iptool.bat" or "iptool"
goto commandline

:launchip
if exist iptool.bat goto ipcont
if not exist iptool.bat goto iperror
:iperror
echo IPTool Has Not Been Installed
echo Use "install" command to download
goto commandline
:ipcont
start iptool.bat
goto commandline
:launchnet
if exist nettool.bat goto netcont
if not exist nettool.bat goto neterror
:neterror
echo NetTool Has Not Been Installed
echo Use "install" command to download
goto commandline
:netcont
start nettool.bat
goto commandline
:launchping
if exist pingtool.bat goto pingcont
if not exist pingtool.bat goto pingerror
:pingerror
echo PingTool Has Not Been Installed
echo Use "install" command to download
goto commandline
:pingcont
start pingtool.bat
goto commandline

:allfiles
dir
goto commandline

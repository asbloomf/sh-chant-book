@echo off
copy archive\gregobase\out\*.pdf gregorio\

REM iterate through all files in gregorio directory and call build.cmd on them
REM %%~nf gives us just the file name without extension

FOR %%f IN (gregorio\*.pdf) DO (
	echo %%~nf
	call build.cmd %%~nf
)

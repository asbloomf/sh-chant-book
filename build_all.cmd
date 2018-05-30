@echo off
REM iterate through all files in full_page directory and call build.cmd on them
REM %%~nf gives us just the file name without extension

FOR %%f IN (final_page\*.pdf) DO (
	echo %%~nf
	call build.cmd %%~nf
)

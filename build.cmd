@echo off
pdftk "original\%filename%.pdf" cat %1 output temp.pdf
if exist "gregorio\%1.pdf" (
	pdftk temp.pdf multistamp "gregorio\%1.pdf" output temp2.pdf
	if exist "full_page\%1.pdf" (
		pdftk temp2.pdf multistamp "full_page\%1.pdf" output "final_page\%1.pdf"
		REM del temp.pdf
	) else (
		move temp2.pdf "final_page\%1.pdf"
	)
) else (
	if exist "full_page\%1.pdf" (
		pdftk "full_page\%1.pdf" multistamp temp.pdf output "final_page\%1.pdf"
		REM del temp.pdf
	) else (
		move temp.pdf "final_page\%1.pdf"
	)
)

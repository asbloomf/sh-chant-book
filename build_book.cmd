set newfilename=!new_%filename%

pdftk "final_page\*.pdf" cat output "%newfilename%.pdf"

copy "%newfilename%.pdf" "%newfilename%_original.pdf"

rem call ..\pdfclean "%newfilename%.pdf"

rem copy "%newfilename%.pdf" "..\..\SH Books\"
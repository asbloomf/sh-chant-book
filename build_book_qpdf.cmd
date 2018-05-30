set newfilename=!new_%filename%
echo %filename%

qpdf --empty --pages "final_page/*.pdf" -- "%newfilename%-qpdf.pdf"

copy "%newfilename%-qpdf.pdf" "%newfilename%-qpdf_original.pdf"

call ..\pdfclean "%newfilename%-qpdf.pdf"

rem cp "%newfilename%.pdf" "../../SH Books/"

:end

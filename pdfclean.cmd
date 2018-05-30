(gswin64c -dNOPAUSE -dBATCH -dSAFER -sDEVICE=pdfwrite -dDetectDuplicateImages=true -dEmbedAllFonts=true -dSubsetFonts=true -sOutputFile=%1.tmp.pdf %1) & (move %1.tmp.pdf %1)

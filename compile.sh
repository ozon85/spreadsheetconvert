#!/bin/sh
rm -rf lib
mkdir -p lib ||exit $?

fpc -MObjFPC -Scghi -CX -Cg -O3 -XX -l -vewnhibq \
-Fucomponents/packager/registration \
-Ficomponents/packager/registration \
-Fucomponents/lazutils \
-Ficomponents/lazutils \
-Fucomponents/fpspreadsheet/source/common \
-Ficomponents/fpspreadsheet/source/common \
-Fucomponents/fpspreadsheet/source \
-Ficomponents/fpspreadsheet/source \
-Fu. \
-Fucomponents \
-Filib \
-FUlib \
-FE. \
spreadsheetconvert.lpr

#-Fu/home/arm/.lazarus/lib/LazUtils/lib/x86_64-linux
#-Fu/usr/lib64/lazarus/packager/units/x86_64-linux
#-Fibuild \

@echo off
REM Building Madcap Flare Projrct with PDF Only
madbuild -project NewProject.flprj -target Book -log true
echo %errorlevel%

REM Creating Zip File of Build Output
set zip ="C:\Program Files\7-Zip\7za.exe"
set filename="%date%.NewProject.zip"
set pathtobackup="Output\user\Book"
%zip% -t7z %filename% %pathtobackup%\*.pdf
echo %errorlevel%

exit /b 0
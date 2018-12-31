@echo off
REM Building Madcap Flare Projrct with PDF Only
madbuild -project NewProject.flprj -target Book -log true
exit /b 0
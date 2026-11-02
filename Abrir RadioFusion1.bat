@echo off
setlocal
cd /d "%~dp0"

rem YouTube necesita que RadioFusion1 se abra desde HTTP, no desde file://.
start "RadioFusion1 - Servidor" /min python -m http.server 8765 --bind 127.0.0.1
timeout /t 2 /nobreak >nul
start "" "http://127.0.0.1:8765/index.html"

endlocal

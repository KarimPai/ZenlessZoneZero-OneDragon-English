@echo off
setlocal
cd /d "%~dp0" || goto :failed
set "PYTHONPATH=%~dp0src"
uv run python -m zzz_od.gui.app
if errorlevel 1 goto :failed
exit /b 0

:failed
echo OneDragon could not start. See the error above.
pause
exit /b 1

@echo off
echo Starting Box Game Download Page...
echo.

REM Try to run with Python
python open_website.py || (
  echo.
  echo Python not found or error occurred.
  echo Falling back to basic server...
  echo.
  call run_server.bat
)

pause
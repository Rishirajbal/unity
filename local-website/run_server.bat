@echo off
echo Starting Box Game Download Page server...
echo.
echo The website will be available at: http://localhost:8000
echo.
echo Press Ctrl+C to stop the server when you're done.
echo.

REM Try to start the server with Python 3
python -m http.server 8000 || (
  echo.
  echo Python 3 not found, trying Python 2...
  echo.
  python -m SimpleHTTPServer 8000 || (
    echo.
    echo Error: Python not found or not in PATH.
    echo Please install Python and try again.
    echo.
    pause
    exit /b 1
  )
)

REM If we get here, the server was stopped
echo.
echo Server stopped.
pause
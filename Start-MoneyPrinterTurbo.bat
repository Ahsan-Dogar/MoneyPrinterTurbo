@echo off
title MoneyPrinterTurbo - AI Video Generator
color 0B

echo.
echo ================================================
echo    MoneyPrinterTurbo - AI Short-Video Generator
echo ================================================
echo.

set "APP_DIR=%~dp0"
cd /d "%APP_DIR%"

rem Kill any leftover streamlit/python from a previous run
taskkill /F /IM python.exe /FI "WINDOWTITLE eq MoneyPrinterTurbo*" >nul 2>nul

rem Start WebUI in the background
echo Starting WebUI...
start "MoneyPrinterTurbo WebUI" cmd /c "uv run streamlit run webui\Main.py --server.address=127.0.0.1 --server.port=8501 --browser.gatherUsageStats=False --client.toolbarMode=minimal --logger.hideWelcomeMessage=True --server.showEmailPrompt=False --server.enableCORS=True"

rem Wait for the server to come up
echo Waiting for server to start...
set "WAITED=0"
:waitloop
timeout /t 1 /nobreak >nul
set /a WAITED+=1
powershell -NoProfile -ExecutionPolicy Bypass -Command "try { $r = Invoke-WebRequest -Uri 'http://127.0.0.1:8501' -UseBasicParsing -TimeoutSec 2; exit 0 } catch { exit 1 }" >nul 2>nul
if %errorlevel% EQU 0 goto ready
if %WAITED% GEQ 40 goto timeout
goto waitloop

:ready
echo.
echo Server is running.
echo Opening browser...
start "" "http://127.0.0.1:8501"
echo.
echo WebUI is ready at: http://127.0.0.1:8501
echo You can close this window now.
timeout /t 8 /nobreak >nul
exit

:timeout
echo.
echo Could not confirm the server started. Opening browser anyway...
start "" "http://127.0.0.1:8501"
echo.
echo If the page is blank, wait a moment and refresh.
timeout /t 8 /nobreak >nul
exit

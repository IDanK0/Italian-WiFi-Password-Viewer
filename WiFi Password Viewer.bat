@echo off
title WiFi Password Viewer
echo.
echo ========================================
echo       WIFI PASSWORD VIEWER
echo ========================================
echo.

net session >nul 2>&1
if %errorLevel% neq 0 (
  echo ERRORE: Esegui come amministratore!
  pause
  exit
)

echo Cercando reti WiFi salvate...
echo.

for /f "tokens=2 delims=:" %%A in ('netsh wlan show profiles ^| findstr "Profilo utente"') do (
  set "ssid=%%A"
  call :showPassword
)

echo.
echo Completato!
pause
exit

:showPassword
for /f "tokens=*" %%B in ("%ssid%") do set "ssid=%%B"

echo ----------------------------------------
echo Rete: %ssid%

for /f "tokens=2 delims=:" %%C in ('netsh wlan show profile name^="%ssid%" key^=clear 2^>nul ^| findstr "Contenuto chiave"') do (
  set "pass=%%C"
  goto :found
)

echo Password: Nessuna/Aperta
goto :end

:found
for /f "tokens=*" %%D in ("%pass%") do set "pass=%%D"
echo Password: %pass%

:end
echo.
goto :eof
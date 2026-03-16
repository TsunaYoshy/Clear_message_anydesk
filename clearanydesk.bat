@echo off
echo ===== Limpeza de arquivos do AnyDesk =====
echo.

set APPDATA_PATH=%APPDATA%\AnyDesk
set PROGRAMDATA_PATH=C:\ProgramData\AnyDesk

echo Verificando %APPDATA%\AnyDesk
if exist "%APPDATA_PATH%" (
    if exist "%APPDATA_PATH%\service.conf" (
        del /f /q "%APPDATA_PATH%\service.conf"
        echo service.conf removido de AppData
    )
    if exist "%APPDATA_PATH%\system.conf" (
        del /f /q "%APPDATA_PATH%\system.conf"
        echo system.conf removido de AppData
    )
) else (
    echo Pasta AnyDesk não encontrada em AppData
)

echo.
echo Verificando C:\ProgramData\AnyDesk
if exist "%PROGRAMDATA_PATH%" (
    if exist "%PROGRAMDATA_PATH%\service.conf" (
        del /f /q "%PROGRAMDATA_PATH%\service.conf"
        echo service.conf removido de ProgramData
    )
    if exist "%PROGRAMDATA_PATH%\system.conf" (
        del /f /q "%PROGRAMDATA_PATH%\system.conf"
        echo system.conf removido de ProgramData
    )
) else (
    echo Pasta AnyDesk não encontrada em ProgramData
)

echo.
echo Processo finalizado.
pause
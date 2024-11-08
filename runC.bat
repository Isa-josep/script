@echo off
setlocal enabledelayedexpansion

if not exist "Program.cs" (
    echo file Program.cs does not exist.
    exit /b 1
)

set input=%~1

if defined input (
    if not exist "%input%" (
        echo file %input% does not exist.
        exit /b 1
    )
)

REM Ejecutar dotnet run en el directorio actual con redirección de entrada si se proporciona un archivo de entrada
if defined input (
    dotnet run < %input%
) else (
    dotnet run
)

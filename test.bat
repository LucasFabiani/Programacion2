@echo off
setlocal

:: Verificar si se pasó un argumento
if "%~1"=="" (
    echo Uso: %~n0 numero
    exit /b 1
)

:: Asignar el argumento a una variable
set "numero=%~1"

:: Construir la ruta del archivo C++
set "archivo_cpp=.\u1e%numero%.cpp"

:: Verificar si el archivo existe
if not exist "%archivo_cpp%" (
    echo El archivo %archivo_cpp% no existe.
    exit /b 1
)

:: Ejecutar play.exe con el archivo C++
echo Ejecutando .\tools\play.exe "%archivo_cpp%"...
.\tools\play.exe "%archivo_cpp%"

:: Fin
endlocal

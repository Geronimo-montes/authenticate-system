@echo off

@REM ##########################################################################
@REM seccion de variables
@REM ##########################################################################

SET CURRENT_DIR=%~dp0
SET DIR_PYTHON=%CURRENT_DIR%biometric-recognition\
SET DIR_NODEJS=%CURRENT_DIR%api-authentication\
SET DIR_ANGULA=%CURRENT_DIR%app-authentication\

@REM link de los repositorios
SET APP_PYTHON=https://github.com/Geronimo-montes/biometric-recognition.git
SET APP_NODEJS=https://github.com/Geronimo-montes/api-authentication.git
SET APP_ANGULA=https://github.com/Geronimo-montes/app-authentication.git


@REM directorios de datos
SET DIR_DATA=%CURRENT_DIR%data\
SET DIR_MODEL=%CURRENT_DIR%model\
SET DIR_FACE_DB=%DIR_MODEL%database

@REM ##########################################################################
@REM   cuerppo del script
@REM ##########################################################################

@REM dir data create
ECHO.
ECHO Create data dir...
IF not exist %DIR_DATA% MKDIR %DIR_DATA%
IF not exist %DIR_MODEL% MKDIR %DIR_MODEL%
IF not exist %DIR_FACE_DB% MKDIR %DIR_FACE_DB%

@REM clone repositories
ECHO.
ECHO Clone repositorios...
IF not exist %DIR_PYTHON% CALL git clone %APP_PYTHON%
IF not exist %DIR_NODEJS% CALL git clone %APP_NODEJS%
IF not exist %DIR_ANGULA% CALL git clone %APP_ANGULA%


@REM pull changes
ECHO.
ECHO Pull Changes...
CD %DIR_PYTHON%
CALL git pull origin
CD %DIR_NODEJS%
CALL git pull origin
CD %DIR_ANGULA%
CALL git pull origin


@REM install dependencias
ECHO.
ECHO Instalando dependencias del proyecto %APP_PYTHON%...
CD %DIR_PYTHON%
CALL pip install virtualenv
IF not exist "%DIR_PYTHON%.venv" CALL python -m venv .venv
CALL "%DIR_PYTHON%\.venv\Scripts\pip.exe" install -r requirements.txt

ECHO Instalando dependencias del proyecto %APP_NODEJS%...
CD %DIR_NODEJS%
CALL npm install

ECHO Instalando dependencias del proyecto %APP_ANGULA%...
CD %DIR_ANGULA%
CALL npm install


CD %DIR_NODEJS%
START "Run Project: %APP_NODEJS%" CALL npm start
CD %DIR_ANGULA%
START "Run Project: %APP_ANGULA%" CALL npm start

EXIT

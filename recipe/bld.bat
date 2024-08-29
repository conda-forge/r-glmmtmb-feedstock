REM Extract version of TMB
for /f "tokens=2 delims= " %%a in ('findstr /b /c:"Version:" "%PREFIX%\lib\R\library\TMB\DESCRIPTION"') do (
    echo %%a > "%SRC_DIR%\inst\TMB-version"
)

REM Extract version of Matrix
for /f "tokens=2 delims= " %%a in ('findstr /b /c:"Version:" "%PREFIX%\lib\R\library\Matrix\DESCRIPTION"') do (
    echo %%a > "%SRC_DIR%\inst\Matrix-version"
)

"%R%" CMD INSTALL --build . %R_ARGS%
IF %ERRORLEVEL% NEQ 0 exit /B 1

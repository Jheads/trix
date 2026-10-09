curl -L -o "%USERPROFILE%\Downloads\atualizacao.zip" "https://github.com/joaoPHD/trix/raw/refs/heads/main/atualizacao.zip"
if errorlevel 1 (
   cls
   echo falha, verifique a internet ou repositorio
   pause
)
if exist "%USERPROFILE%\Downloads\atualizacao.zip" (
   tar -xf "%USERPROFILE%\Downloads\atualizacao.zip" -C "%USERPROFILE%\Downloads"
   if errorlevel 1 (powershell -NoProfile -Command "Expand-Archive -LiteralPath '%USERPROFILE%\Downloads\atualizacao.zip' -DestinationPath $env:USERPROFILE\Downloads -Force")
)
if exist %USERPROFILE%\Downloads\trix_cmd\setup.cmd (
   call %USERPROFILE%\Downloads\trix_cmd\setup.cmd
   exit
) else (
   start %USERPROFILE%\Downloads
   exit 
)


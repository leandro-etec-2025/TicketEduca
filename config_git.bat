@echo off
git remote remove origin
echo 1 de 6: REMOVIDO REMOTE

git init
echo 2 de 6: FEITO INIT

git config --global user.name "leandro-etec-2025"
git config --global user.email "leandrocesardacruz.cps.2025@gmail.com"
echo 3 de 6: CONFIGURADO GLOBAL

git remote get-url origin >nul 2>&1
if errorlevel 1 (
    git remote add origin "https://github.com/leandro-etec-2025/TicketEduca.git"
    echo 4 de 6: ADICIONADO REMOTE
)

echo.
echo 5 de 6: LISTANDO TODOS OS ARQUIVOS INCLUINDO OS OCULTOS
dir /a

echo 6 de 6: PUXANDO ARQUIVOS DO REMOTO
git pull origin main
git checkout -b main

echo.
echo Configuracoes do Git foram aplicadas com sucesso!
pause

start "" cmd /c del "%~f0"

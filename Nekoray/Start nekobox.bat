@echo off
chcp 65001 > nul
echo Обновление...Перед запуском.. 
cd /d "%~dp0"
git pull
echo Запуск NekoBox...
start "" "%~dp0nekobox.exe"
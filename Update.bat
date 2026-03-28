@echo off
chcp 65001 > nul
echo Обновление...
cd /d "%~dp0"
git pull
echo Готово! Перезапусти NekoBox.
pause

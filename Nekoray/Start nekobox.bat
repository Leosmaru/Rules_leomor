@echo off
chcp 65001 > nul
echo Обновление...
cd /d "%~dp0"

:: Сохраняем профили
xcopy /E /I /Y "%~dp0Nekoray\config\profiles" "%~dp0profiles_backup"

:: Обновляем
git pull

:: Восстанавливаем профили
xcopy /E /I /Y "%~dp0profiles_backup" "%~dp0Nekoray\config\profiles"
rmdir /S /Q "%~dp0profiles_backup"

echo Запуск NekoBox...
start "" "%~dp0Nekoray\nekobox.exe"
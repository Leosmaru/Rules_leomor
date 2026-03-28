@echo off
chcp 65001 > nul
echo Обновление...перед запуском.
cd /d "%~dp0"

:: Сохраняем профили
xcopy /E /I /Y "%~dp0config\profiles" "%~dp0profiles_backup"

:: Обновляем
git pull

:: Восстанавливаем профили
xcopy /E /I /Y "%~dp0profiles_backup" "%~dp0config\profiles"
rmdir /S /Q "%~dp0profiles_backup"

echo Запуск NekoBox...
start "" "%~dp0nekobox.exe"
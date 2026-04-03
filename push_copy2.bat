@echo off
chcp 65001 >nul
echo ==================================
echo Добавляем файлы...
git add .
echo Готово!

echo.
echo Делаем коммит...
git commit -m "commit"
echo Готово!

echo.
echo Отправляем на GitHub...
:: Проверяем, есть ли уже remote origin
git remote get-url origin >nul 2>&1
if errorlevel 1 (
    echo Добавляем remote origin...
    git remote add origin https://github.com/Kataktok/Proxy.git
)
git push --force origin
echo Готово!

echo.
echo ==================================
echo ВСЁ ЗАПИСАЛОСЬ!
echo ==================================
echo.
pause